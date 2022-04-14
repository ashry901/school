<?php

namespace App\Repository;

use App\Models\Grade;
use App\Models\Quizze;
use App\Models\Subject;
use App\Models\Teacher;
use Illuminate\Support\Facades\DB;

class QuizzRepository implements QuizzRepositoryInterface
{
    public function index()
    {
        $quizzes = Quizze::get();
        return view('dashboard.quizzes.index', compact('quizzes'));
    }

    public function create()
    {
        $data['grades']     = Grade::all();
        $data['subjects']   = Subject::all();
        $data['teachers']   = Teacher::all();
        return view('dashboard.quizzes.create', $data);
    }

    public function store($request)
    {
//        Quizze::create([
//        'name'          => ['en' => $request->name_en, 'ar' => $request->name_ar,
//        'subject_id'    => $request->subject_id,
//        'grade_id'      => $request->grade_id,
//        'classroom_id'  => $request->classroom_id,
//        'section_id'    => $request->section_id,
//        'teacher_id'    => $request->teacher_id,
//        ]);

//        try {
            //DB::beginTransaction();
            $quizzes = new Quizze();
            $quizzes->name          = ['en' => $request->name_en, 'ar' => $request->name_ar];
            $quizzes->subject_id    = $request->subject_id;
            $quizzes->grade_id      = $request->grade_id;
            $quizzes->classroom_id  = $request->classroom_id;
            $quizzes->section_id    = $request->section_id;
            $quizzes->teacher_id    = $request->teacher_id;
            $quizzes->save();

//            DB::commit();
            toastr()->success(trans('cpanel/messages.success'));

            return redirect()->route('Quizzes.create');
//        }
//        catch (\Exception $e) {
//            DB::rollback();
//            return redirect()->back()->with(['error' => $e->getMessage()]);
//        }
    }

    public function edit($id)
    {
        $quizz = Quizze::findorFail($id);
        $data['grades']     = Grade::all();
        $data['subjects']   = Subject::all();
        $data['teachers']   = Teacher::all();
        return view('dashboard.quizzes.edit', $data, compact('quizz'));
    }

    public function update($request)
    {
        try {
            DB::beginTransaction();
            $quizz = Quizze::findorFail($request->id);
            $quizz->name         = ['en' => $request->name_en, 'ar' => $request->name_ar];
            $quizz->subject_id   = $request->subject_id;
            $quizz->grade_id     = $request->grade_id;
            $quizz->classroom_id = $request->classroom_id;
            $quizz->section_id   = $request->section_id;
            $quizz->teacher_id   = $request->teacher_id;
            $quizz->save();

            DB::commit();
            toastr()->success(trans('cpanel/messages.Update'));
            return redirect()->route('Quizzes.index');

        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->with(['error' => $e->getMessage()]);
        }
    }

    public function destroy($request)
    {
        try {
            DB::beginTransaction();
            Quizze::destroy($request->id);
            DB::commit();
            toastr()->error(trans('cpanel/messages.Delete'));
            return redirect()->back();
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }
}
