<?php

namespace App\Http\Controllers\Dashboard\Students;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreLibrary;
use App\Models\Classroom;
use App\Models\Section;
//use App\Repository\LibraryRepositoryInterface;
use Illuminate\Http\Request;
use App\Http\Traits\AttachFilesTrait;
use App\Models\Grade;
use App\Models\Library;
use Illuminate\Support\Facades\DB;

class LibraryController extends Controller
{
    use AttachFilesTrait;

    public function index()
    {
        $books = Library::all();
        return view('dashboard.library.index', compact('books'));
    }

    public function create()
    {
        $grades = Grade::all();
        return view('dashboard.library.create', compact('grades'));
    }

    public function store(Request $request)
    {
        try {
            DB::beginTransaction();

            $books = new Library();
            $books->title        = $request->title;
            $books->file_name    = $request->file('file_name')->getClientOriginalName();
            $books->grade_id     = $request->grade_id;
            $books->classroom_id = $request->classroom_id;
            $books->section_id   = $request->section_id;
            $books->teacher_id   = 1;
            $books->save();

            $validatedData = $request->validate([
                'title' => 'required',
                'file_name' => 'required|max:2048',
            ]);

            $this->uploadFile($request,'file_name', 'library');

            DB::commit();
            toastr()->success(trans('cpanel/messages.success'));
            return redirect()->route('admin.library');

        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()
                ->with(['error' => 'The File Cannot Be Uploaded More Than 2MB']);
            //->with(['error' => 'The File Cannot Be Uploaded More Than 2MB'])
            //->with(['error' => $e->getMessage()])
        }
    }

    public function edit($id)
    {
        $grades = Grade::all();
        $book = library::findorFail($id);
        return view('dashboard.library.edit',compact('book','grades'));
    }

    public function update(Request $request)
    {
        try {
            DB::beginTransaction();
            $book = library::findorFail($request->id);
            $book->title = $request->title;

            if($request->hasfile('file_name')){

                $this->deleteFile($book->file_name);

                $this->uploadFile($request,'file_name', 'library');

                $file_name_new   = $request->file('file_name')->getClientOriginalName();
                $book->file_name = $book->file_name !== $file_name_new ? $file_name_new : $book->file_name;
            }

            $book->grade_id     = $request->grade_id;
            $book->classroom_id = $request->classroom_id;
            $book->section_id   = $request->section_id;
            $book->teacher_id   = 1;
            $book->save();

            DB::commit();
            toastr()->success(trans('cpanel/messages.Update'));
            return redirect()->route('admin.library');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->with(['error' => $e->getMessage()]);
        }
    }

    public function destroy(Request $request)
    {
        try {
            DB::beginTransaction();
            $this->deleteFile($request->file_name);
            library::destroy($request->id);

            DB::commit();
            toastr()->error(trans('cpanel/messages.Delete'));

        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->route('admin.library')->with(['error' => $e->getMessage()]);
        }

        return redirect()->route('admin.library');
    }

    public function downloadAttachment($filename)
    {
        return response()->download(public_path('attachments/library/'.$filename));
    }

    public function getClasroom($id)
    {
        $list_classes = Classroom::where("grade_id", $id)->pluck("name_class", "id");
        return $list_classes;
    }

    public function getSectione($id)
    {
        $list_sections = Section::where("class_id", $id)->pluck("name_section", "id");
        return $list_sections;
    }
}
