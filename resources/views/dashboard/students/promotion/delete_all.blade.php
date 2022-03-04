<div class="modal fade" id="Delete_all" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 style="font-family: 'Cairo', sans-serif;" class="modal-title" id="exampleModalLabel">
                    {{trans('cpanel/students.Undo All')}}
                </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="{{route('Promotion.destroy', 'test')}}" method="post">
                    @csrf
                    @method('DELETE')

                    <input type="hidden" name="page_id" value="1">
                    <h5 style="font-family: 'Cairo', sans-serif;">{{trans('Students_trans.Are you sure of the process of reviewing all students?')}}</h5>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">
                            {{trans('cpanel/students.Close')}}
                        </button>
                        <button  class="btn btn-danger">
                            {{trans('cpanel/students.submit')}}
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

