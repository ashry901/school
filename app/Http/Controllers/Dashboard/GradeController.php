<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\Classroom;
use CodeZero\UniqueTranslation\UniqueTranslationRule;
use App\Http\Requests\StoreGrades;
use App\Models\Grade;
use Illuminate\Http\Request;

class GradeController extends Controller
{
      public function index()
      {
            $grades = Grade::all();
            return view('dashboard.grades.grades', compact('grades'));
      }

  public function store(StoreGrades $request)
  {
    //try {
          $validated = $request->validated();
          $grade = new Grade();
          /*
          $translations = [
              'en' => $request->name_en,
              'ar' => $request->name
          ];
          $Grade->setTranslations('name', $translations);
          */
          $grade->name = ['en' => $request->name_en, 'ar' => $request->name];
          $grade->notes = $request->notes;

          $grade->save();

          toastr()->success(trans('cpavel/messages.success'));

          return redirect()->route('grades.index');

//      }
//          catch (\Exception $e){
//              return redirect()->back()->withErrors(['error' => $e->getMessage()]);
//          }

  }

    public function update(StoreGrades $request)
    {
      try {

          $validated = $request->validated();
          $grades = Grade::findOrFail($request->id);
          $grades->update([
          $grades->name = ['ar' => $request->name, 'en' => $request->name_en],
          $grades->notes = $request->notes,
          ]);
          toastr()->success(trans('cpavel/messages.Update'));
          return redirect()->route('grades.index');
      }
      catch
      (\Exception $e) {
          return redirect()->back()->withErrors(['error' => $e->getMessage()]);
      }
    }

    public function destroy(Request $request)
    {
        $MyClass_id = Classroom::where('grade_id', $request->id)->pluck('grade_id');

        if($MyClass_id->count() == 0){

            $grades = Grade::findOrFail($request->id)->delete();
            toastr()->error(trans('cpavel/messages.Delete'));
            return redirect()->route('grades.index');
        }else{
            toastr()->error(trans('Grades_trans.delete_Grade_Error'));
            return redirect()->route('grades.index');
        }
    }

}
