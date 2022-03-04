<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\Classroom;
use App\Models\Grade;
use App\Models\Section;
use App\Models\Teacher;
use Illuminate\Http\Request;
use App\Http\Requests\StoreSections;
use DB;

class SectionController extends Controller
{
    public function index()
    {
        $grades = Grade::with(['sections'])->get();
        $list_grades = Grade::all();
        $teachers = Teacher::all();

        return view('dashboard.sections.sections', compact('grades','list_grades', 'teachers'));
    }

  public function store(StoreSections $request)
  {
    try {

        $validated = $request->validated();
        $sections = new Section();

        $sections->name_section = ['ar' => $request->name_section_ar, 'en' => $request->name_section_en];
        $sections->grade_id = $request->grade_id;
        $sections->class_id = $request->class_id;
        $sections->status = 1;
        $sections->save();

        $sections->teachers()->attach($request->teacher_id);

        toastr()->success(trans('messages.success'));

        return redirect()->route('sections.index');
      }

      catch (\Exception $e){
          return redirect()->back()->withErrors(['error' => $e->getMessage()]);
      }

  }

  public function update(StoreSections $request)
  {

     try {
        $validated = $request->validated();
        $sections = Section::findOrFail($request->id);

        $sections->name_section = ['ar' => $request->name_section_ar, 'en' => $request->name_section_en];
        $sections->grade_id = $request->grade_id;
        $sections->class_id = $request->class_id;

        if(isset($request->status)) {
           $sections->status = 1;
        } else {
           $sections->status = 2;
        }

        // update pivot tABLE
        if (isset($request->teacher_id)) {
            $sections->teachers()->sync($request->teacher_id);
        } else {
            $sections->teachers()->sync(array());
        }

        $sections->save();
        toastr()->success(trans('messages.Update'));

        return redirect()->route('sections.index');
      }
      catch
      (\Exception $e) {
          return redirect()->back()->withErrors(['error' => $e->getMessage()]);
      }

  }

  public function destroy(request $request)
  {
    Section::findOrFail($request->id)->delete();
    toastr()->error(trans('messages.Delete'));
    return redirect()->route('sections.index');
  }

    public function getclasses($id)
    {
        $list_classes = Classroom::where("grade_id", $id)->pluck("name_class", "id");

        return $list_classes;
    }

}

