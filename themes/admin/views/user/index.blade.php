@extends('layouts.vuex')

@section('content')
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="header-navbar-shadow"></div>
    <div class="content-wrapper">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2 class="content-header-title float-left mb-0">user</h2>
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}">Dashboard</a>
                                </li>
                                 <li class="breadcrumb-item"><a href="">user</a>
                                </li>
                                {{-- <li class="breadcrumb-item active">Floating Navbar
                                </li>  --}}
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="content-body">
            <!-- Description -->
            <section id="basic-datatable">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                               <a href="{{route('admin.user.create')}}" class="btn btn-primary">Tambah data</a>
                            </div>
                            <div class="card-content">
                                <div class="card-body card-dashboard">
                                    {{-- <p class="card-text">DataTables has most features enabled by default, so all you need to do to use it with your own ables is to call the construction function: $().DataTable();.</p> --}}
                                    <div class="table-responsive">
                                        <table   class="display" style="width:100%" id="example" >
                                            <thead>
                                                <tr>
                                                    {{-- <th>Photo</th> --}}
                                                    <th>Nama</th>
                                                    <th>Email</th>
                                                    <th>#</th>
                                                </tr>
                                            </thead>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--/ Description -->
        </div>
    </div>
</div>

@stop
@section('script')
<!-- table jasa -->
<script>
    // ini vendor data

// $(document).ready(function() {
//     $( '#example' ).dataTable();
// } );
    $(document).ready(function () {
     $('#example').DataTable({
         "scrollX": true,
         "autoWidth": true,
         processing: true,
         serverSide: true,
         ajax: {
             url: "{{ route('admin.user.index') }}",
             type: "GET",
         },
         columns: [

            // {
            //             "data": "photo_profile",
            //             "name": "photo_profile",
            //             "storage" : "storage",
            //             "render": function (data, type, full, meta) {
            //                 return "<img src=" + data + " />";
            //             },
            //             "title": "Image",
            //             "orderable": true,
            //             "searchable": true
            //         },

             {
                 data: 'name',
                 name: 'name'
             },

             {
                 data: 'email',
                 name: 'email'
             },

             {
                        data : 'id', name : 'id', render : function (value, param, data) {
                            return '<div class="btn-group">' +
                                '<a class="btn btn-sm btn-primary" href="user/'+value+'/edit">Edit</a> ' +
                                '<button class="btn btn-sm btn-danger" type="button" onClick="deleteConfirm(' + value + ')">Hapus</button>' +
                                '</div> ';
                        }
                    }

         ],
         order: [
             [0, 'asc']
         ]
     });
    });

    function deleteConfirm(id){
            swal({
                title: "Kamu yakin?",
                text: "ingin menghapus data ini ? ",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((dt) => {
                if (dt) {
                    window.location.href="{{url('admin/user')}}/"+id+"/delete";

                }
            });
        }

    </script>




 <!-- table jasa -->
@endsection
