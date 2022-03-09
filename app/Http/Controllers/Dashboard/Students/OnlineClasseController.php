<?php

namespace App\Http\Controllers\Dashboard\Students;

use App\Http\Controllers\Controller;
use App\Http\Traits\MeetingZoomTrait;
use App\Models\Grade;
use App\Models\online_classe;
use Illuminate\Http\Request;
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
        $grades = Grade::all();
        return view('dashboard.online_classes.add', compact('grades'));
    }

    public function indirectCreate()
    {
        $grades = Grade::all();
        return view('dashboard.online_classes.indirect', compact('grades'));
    }

    public function store(Request $request)
    {
        try {

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
            toastr()->success(trans('cpavel/messages.success'));

            return redirect()->route('online_classes.index');

        } catch (\Exception $e) {
            return redirect()->back()->with(['error' => $e->getMessage()]);
        }
    }

    public function storeIndirect(Request $request)
    {
        try {
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
            toastr()->success(trans('cpavel/messages.success'));

            return redirect()->route('online_classes.index');
        } catch (\Exception $e) {
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

            toastr()->success(trans('cpavel/messages.Delete'));
            return redirect()->route('online_classes.index');
        } catch (\Exception $e) {
            return redirect()->back()->with(['error' => $e->getMessage()]);
        }

    }
}
