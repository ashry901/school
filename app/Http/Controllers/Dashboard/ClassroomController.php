<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreClassroom;
use App\Models\Classroom;
use App\Models\Grade;
use Illuminate\Http\Request;
//use RealRashid\SweetAlert\Facades\Alert;
use DB;

class ClassroomController extends Controller
{
      public function index()
      {
          $my_classes = Classroom::all();
          $grades = Grade::all();
          return view('dashboard.my_classes.my_classes', compact('my_classes','grades'));
      }

      public function create()
      {
        //
      }

    public function store(StoreClassroom $request)
    {
        //return $request;

        $list_classes = $request->list_classes;

        try {
            DB::beginTransaction();

            $validated = $request->validated();

        //if (is_array($list_classes) || is_object($list_classes))

            foreach ($list_classes as $list_class) {

                $my_classes = new Classroom();

                $my_classes->name_class = ['en' => $list_class['name_class_en'], 'ar' => $list_class['name']];

                $my_classes->grade_id = $list_class['grade_id'];

                $my_classes->save();

            }
            DB::commit();
            toastr()->success(trans('cpavel/messages.success'));

            return redirect()->route('classrooms.index');

        } catch (\Exception $e) {
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }

  public function show($id)
  {
    //
  }

  public function edit($id)
  {
    //
  }

  public function update(Request $request)
  {
      try {
          DB::beginTransaction();

          $classrooms = Classroom::findOrFail($request->id);

          $classrooms->update([
              $classrooms->name_class = ['ar' => $request->name, 'en' => $request->name_en],
              $classrooms->grade_id   = $request->grade_id,
          ]);

          DB::commit();
          toastr()->success(trans('cpavel/messages.Update'));

          return redirect()->route('classrooms.index');
      }

      catch
      (\Exception $e) {
          return redirect()->back()->withErrors(['error' => $e->getMessage()]);
      }
  }

    public function destroy(Request $request)
    {
        $classrooms = Classroom::findOrFail($request->id)->delete();

        toastr()->error(trans('cpavel/messages.Delete'));

        return redirect()->route('classrooms.index');
    }

    public function delete_all(Request $request)
    {
        $delete_all_id = explode(",", $request->delete_all_id);

        Classroom::whereIn('id', $delete_all_id)->Delete();
        toastr()->error(trans('cpavel/messages.Delete'));
        return redirect()->route('classrooms.index');
    }

    public function Filter_Classes(Request $request)
    {
        $grades = Grade::all();
        $search = Classroom::select('*')->where('grade_id', '=', $request->grade_id)->get();

        return view('dashboard.my_classes.my_classes', compact('grades'))->withDetails($search);

    }

}


