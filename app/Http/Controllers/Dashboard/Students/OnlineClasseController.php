<?php

namespace App\Http\Controllers\Dashboard\Students;

use App\Http\Controllers\Controller;
use App\Http\Traits\MeetingZoomTrait;
use App\Models\Classroom;
use App\Models\Grade;
use App\Models\online_classe;
use App\Models\Section;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use MacsiDigital\Zoom\Facades\Zoom;

class OnlineClasseController extends Controller
{
    use MeetingZoomTrait;

    public function index()
    {
        $online_classes = online_classe::all();
        return view('dashboard.online_classes.index', compact('online_classes'));
    }

    public function create()
    {
//        $grades = Grade::all();
//        return view('dashboard.online_classes.add', compact('grades'));
        $data = [];
        $data['grades']     = Grade::all();
        $data['classrooms'] = Classroom::all();
        return view('dashboard.online_classes.add', $data);
    }

    public function indirectCreate()
    {
//        $grades = Grade::all();
//        return view('dashboard.online_classes.indirect', compact('grades'));
        $data = [];
        $data['grades']     = Grade::all();
        $data['classrooms'] = Classroom::all();
        return view('dashboard.online_classes.indirect', $data);
    }

    public function store(Request $request)
    {
        try {
            DB::beginTransaction();
            $meeting = $this->createMeeting($request);

            online_classe::create([
                'integration'   => true,
                'grade_id'      => $request->grade_id,
                'classroom_id'  => $request->classroom_id,
                'section_id'    => $request->section_id,
                'user_id'       => auth()->user()->id,
                'meeting_id'    => $meeting->id,
                'topic'         => $request->topic,
                'start_at'      => $request->start_time,
                'duration'      => $meeting->duration,
                'password'      => $meeting->password,
                'start_url'     => $meeting->start_url,
                'join_url'      => $meeting->join_url,
            ]);
            DB::commit();
            toastr()->success(trans('cpanel/messages.success'));
            return redirect()->route('admin.online_classes');

        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->with(['error' => $e->getMessage()]);
        }
    }

    public function storeIndirect(Request $request)
    {
        try {
            DB::beginTransaction();
            online_classe::create([
                'integration'   => false,
                'grade_id'      => $request->grade_id,
                'classroom_id'  => $request->classroom_id,
                'section_id'    => $request->section_id,
                'user_id'       => auth()->user()->id,
                'meeting_id'    => $request->meeting_id,
                'topic'         => $request->topic,
                'start_at'      => $request->start_time,
                'duration'      => $request->duration,
                'password'      => $request->password,
                'start_url'     => $request->start_url,
                'join_url'      => $request->join_url,
            ]);
            DB::commit();
            toastr()->success(trans('cpanel/messages.success'));
            return redirect()->route('admin.online_classes');

        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->with(['error' => $e->getMessage()]);
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

    public function update(Request $request, $id)
    {
        //
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

    public function destroy(Request $request)
    {
        try {

            $info = online_classe::find($request->id);

            if($info->integration == true){
                $meeting = Zoom::meeting()->find($request->meeting_id);
                $meeting->delete();
               // online_classe::where('meeting_id', $request->id)->delete();
                online_classe::destroy($request->id);
            }
            else{
               // online_classe::where('meeting_id', $request->id)->delete();
                online_classe::destroy($request->id);
            }
            toastr()->success(trans('cpanel/messages.Delete'));
            return redirect()->route('admin.online_classes');
        } catch (\Exception $e) {
            return redirect()->back()->with(['error' => $e->getMessage()]);
        }

    }
}
