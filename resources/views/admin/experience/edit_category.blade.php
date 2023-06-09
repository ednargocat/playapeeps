@extends('admin.template')

@section('main')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    @include('admin.common.breadcrumb')
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <!-- right column -->
      <div class="col-md-12">
        <!-- Horizontal Form -->
        <div class="box">
          <!-- /.box-header -->
          <div class="box-header with-border">
            <h3 class="box-title">Edit Experience Form</h3>
          </div>
          <!-- form start -->
		  
          <form class="form-horizontal" action="{{url('admin/experience/edit_experience_category/'.$result->id)}}" id="edit_experience_category" method="post" name="edit_experience_category" accept-charset='UTF-8' {{-- onsubmit="return contentValidate();" --}}>
            {{ csrf_field() }}

            <div class="box-body">
                   <input type="hidden" name="en[id]" value="1">

              <div class="form-group">
               <label for="exampleInputPassword1" class="control-label col-sm-3">Name<span class="text-danger">*</span></label>
               <div class="col-sm-6">
                 <input type="text" class="form-control" value="{{$result->name}}" name="en[name]" required>
               </div>
             </div>
                       
              
              <div class="form-group">
              <label for="exampleInputPassword1" class="control-label col-sm-3">Status</label>
               <div class="col-sm-6">
                 <select name="en[status]" class="form-control" id="sv_en_lang_status" required> 
                   <option value="Active" {{ ($result->status) == 'Active' ? 'selected': ""}}> Active </option>
                   <option value="Inactive" {{ ($result->status) == 'Inactive' ? 'selected': ""}}>Inactive</option>
                 </select>
               </div>
             </div>
			 
			 
			 
			 <div class="box-group" id="accordion">
                @foreach($languages as $key => $language)
                @php if($language->short_name == 'en'){continue;} @endphp 
                
				<?php 
					$query = App\Models\ExperienceCategory::where([ ['temp_id',$result->id],['lang_id', $language->id ]])->first();
				?>

                <div class="panel box">
                  <div class="box-header with-border">
                    <h4 class="box-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapse{{ $language->short_name }}" aria-expanded="false" class="collapsed">
                        {{ $language->name }}
                      </a>
                    </h4>
                  </div>

                  <div id="collapse{{ $language->short_name }}" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                      <div class="box-body">
					      <input type="hidden" name="{{ $language->short_name }}[id]" value="{{$language->id}}">
						  
						   <div class="form-group">
							   <label for="" class="control-label col-sm-3">Name</label>
							   <div class="col-sm-6">
			   					   <input type="text" class="form-control" value="@if(!empty($query->name)) {{ $query->name }} @endif" name="{{ $language->short_name }}[name]" >
								</div>
						   </div>
					
 					 <input type="hidden" class="form-control" name="{{ $language->short_name }}[status]" id="sv_other_lang_status<?php echo $language->short_name; ?>" value="{{ $result->status }}">

					@push('scripts')

					<script>
					    $(document).ready(function() {
							$("#sv_en_lang_status").on('change', function(){
								var str=$(this).val();
								$("#sv_other_lang_status<?php echo $language->short_name; ?>").val(str);
							});	
						});	
					</script>
					@endpush
                                         
                    </div>
                  </div>
                </div>
                @endforeach
              </div>
			 			 
           </div>
           <div class="box-footer">
            <button type="submit" class="btn btn-info" id="submitBtn">Submit</button>
            <a href="{{url('admin/pages')}}" class="btn btn-danger btn-sm">
              Cancel
            </a>
           
          </div>
        </form>
		
				
		
      </div>

    </div>
  </div>
</section>
</div>
@endsection
@push('scripts')
<!--<script src="https://cdn.tiny.cloud/1/6x27spxm2msw5k1wek643ucn0c9bb96owxpafusz7og60lfr/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>-->
 
<script>

  window.onload = function() {
     CKEDITOR.replace( 'content', {
       filebrowserUploadUrl: '{{ route('upload',['_token' => csrf_token() ]) }}',
       filebrowserUploadMethod: 'form'
    });
  };
</script>

<script>

  $(document).ready(function() {
   $(document).on('submit', 'form', function() {
     $('button').attr('disabled', 'disabled');
   });
 });
</script>
@endpush