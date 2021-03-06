<?php

namespace App\Repository;

use App\Models\Attendance;
use App\Models\Grade;
use App\Models\Student;
use App\Models\Teacher;
use Illuminate\Support\Facades\DB;

class AttendanceRepository implements AttendanceRepositoryInterface
{
    public function index()
    {
        $grades      = Grade::with(['sections'])->get();
        $list_grades = Grade::all();
        $teachers    = Teacher::all();
        return view('dashboard.attendance.sections', compact('grades','list_grades','teachers'));
    }

    public function show($id)
    {
        $students = Student::with('attendance')->where('section_id', $id)->get();
        return view('dashboard.attendance.index', compact('students'));
    }

    public function store($request)
    {
        try {
            DB::beginTransaction();
            foreach ($request->attendences as $studentid => $attendence) {

                if( $attendence == 'presence' ) {
                    $attendence_status = true;
                } else if( $attendence == 'absent' ){
                    $attendence_status = false;
                }

                Attendance::create([
                    'student_id'        => $studentid,
                    'grade_id'          => $request->grade_id,
                    'classroom_id'      => $request->classroom_id,
                    'section_id'        => $request->section_id,
                    'teacher_id'        => 1,
                    'attendence_date'   => now()->format('Y-m-d'),
                    'attendence_status' => $attendence_status
                ]);

            }
            DB::commit();
            toastr()->success(trans('cpanel/messages.success'));
            return redirect()->back();
        }

        catch (\Exception $e){
            DB::rollback();
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }

    public function update($request)
    {
        // TODO: Implement update() method.
    }

    public function destroy($request)
    {
        // TODO: Implement destroy() method.
    }
}
