@extends('template')
@section('main')
<div class="margin-top-85">
	<div class="row m-0">
		{{-- sidebar start--}}
		@include('users.sidebar')
		{{--sidebar end--}}
		
		<div class="col-lg-12 p-0 mb-5 min-height">
			<div class="main-panel">
				<div class="container-fluid container-fluid-90">
					<div class="row">
						<div class="col-md-12 p-0 mb-3">
							<div class="mt-4 rounded-3 p-4">
								<span class="text-18 pt-4 pb-4 font-weight-700">{{trans('messages.header.inbox')}}</span>
							</div>
						</div>
					</div>
					@if(isset($booking))
						<div class="row">
							<div class="col-md-9 p-0">
								<div class="container-inbox">
									<sidebar>
										<div class="list-wrap overflow-hidden-x">
											@forelse($messages as $message)
											
											<?php if(isset($message->bookings->host_id)) { ?>
												@php 
													$message->bookings->host_id == Auth::user()->id ? $user ='users':$user ='host';
												@endphp
												<div class="list p-2 conversassion" data-id="{{ $message->bookings->id }}">
													<img src="{{ $message->bookings->$user->profile_src }}" alt="user" />
													<div class="info">
														<h3 class="font-weight-700 "  >{{ $message->bookings->$user->first_name }} <span class="text-muted text-12 text-right"> {{$message->created_at->diffForHumans()}}</span></h3> 
														<div class="d-flex justify-content-between">
															<div>
																<p class="text-muted text-14 mb-1 text pr-4">{{ substr($message->bookings->properties->name, 0,35)  }}</p>
																@if($message->receiver_id == Auth::id())
																	<p class="text-14 m-0 {{$message->read == 0  ? 'text-danger':''}}" id="msg-{{ $message->bookings->id }}" ><i class="far fa-comment-alt"></i> {{ str_limit($message->message, 20) }} </p>
																@else
																	<p class="text-14 m-0" ><i class="far fa-comment-alt"></i> {{ str_limit($message->message, 20) }} </p>
																@endif

															</div>	
														</div>
													</div>
												</div>
												<?php } ?>
											@empty
												no conversassion
											@endforelse
										</div>
									</sidebar>

									<div class="content-inbox container-fluid p-0" id="messages">
										<header>
											@php 
												$booking->host_id == Auth::id() ? $users ='users':$users ='host';
											@endphp
												<a href="{{ url('/') }}/users/show/{{ $booking->$users->id}}">
													<img src="{{ $booking->$users->profile_src}}" alt="img" class="img-40x40" >
												</a>
											
												<div class="info">
													<div class="d-flex justify-content-between">
														<div>
															<span class="user">{{ $booking->$users->full_name}}</span>
														</div>
													</div>
												</div>

												<div class="open">
													<i class="fas fa-inbox"></i>
													<a href="javascript:;">UP</a>
												</div>
										</header>

										<div class="message-wrap">
											@foreach( $conversassion as $con)
												<div class="{{$con->receiver_id == Auth::id() ? 'message-list' :'message-list me'}} message-list">
													<div class="msg pl-2 pr-2 pb-2 pt-2 mb-2">
														<p class="m-0">{{$con->message}}</p>
													</div>
													<div class="time">{{$con->created_at->diffForHumans()}}</div>
												</div>
											@endforeach
											<div class="message-list me">						 
													<div class="msg_txt mb-0"></div>	
													<div class="time msg_time mt-0"></div>	 
											</div>		
										</div>

										<div class="message-footer">
											<input type="text" class="cht_msg" data-placeholder="Send a message to {0}" />
											<a href="javascript:void(0)" class="btn btn-danger chat text-18 send-btn" data-booking="{{$booking->id}}" data-receiver="{{ $booking->$users->id }}" data-property="{{ $booking->property_id }}"><i class="fa fa-share-square" aria-hidden="true"></i></a>
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-md-3 card p-0 " id="booking">
								<div class="w-100 overflow-auto right-inbox p-3">
									<a href="{{ url('/') }}/properties/{{ $booking->properties->id }}/{{ $booking->properties->slug }}"><h4 class="text-left text-16 font-weight-700">{{$booking->properties->name}}</h4></a>
									<span class="street-address text-muted text-14">
										<i class="fas fa-map-marker-alt mr-2"></i>{{$booking->properties->property_address->address_line_1}}
									</span>

									<div class="row">
										<div class="col-md-12 border p-2 rounded mt-2">
											<div class="d-flex  justify-content-between">
												<div>
													<div class="text-16"><strong>{{trans('messages.header.check_in')}}</strong></div>
													<div class="text-14">{{ onlyFormat($booking->start_date) }}</div>
												</div>

												<div>
													<div class="text-16"><strong>{{trans('messages.header.check_out')}}</strong></div>
													<div class="text-14">{{ onlyFormat($booking->end_date) }}</div>
												</div>

											</div>
										</div>
									</div>
									
									@if($booking->properties->type=="property")
									<div class="row">
										<div class="col-md-12 col-sm-6 col-xs-6 border-success sv_border_success pl-3 pr-3 text-center pt-3 pb-3 mt-3 rounded-3">
											<p class="text-16 font-weight-700 text-danger pt-0 m-0">
												<i class="fas fa-bed text-20 d-none d-sm-inline-block pr-2 text-danger"></i><strong>{{$booking->guest}}</strong> <!-- <br> --> {{trans('messages.header.guest')}} </p>
										</div>
									</div>

									<div class="row">
										<div class="col-lg-12 p-2">
											<h5 class="text-16 mt-3"><strong>{{trans('messages.payment.payment')}}</strong></h5>
										</div>
									</div>
									@endif

									<div class="row">
										<div class="col-md-12 p-0">
											<div class="full-table mt-2 border text-dark rounded-3 pt-3 pb-3 mb-4 p-4">
											     @if($booking->properties->type=="experience" && $booking->properties->exp_booking_type=="3")
											    	@if(isset($booking_packages))
    									<div class="">
    									  
                                                 <table class="table service-table ml-2">
                                        			<thead class="thead-inverse">
                                            			<tr>
                                            				<th class="text-14">{{trans('messages.experience.packages_name')}}</th>
                                            				<th class="text-14">{{trans('messages.experience.no_of_qty')}}</th>
                                            				<th class="text-14">{{trans('messages.experience.price')}}</th>
                                            			</tr>
                                        			</thead>
        		                                        @foreach($booking_packages as $booking_packages)
                                                        <?php
                                                            $pid = $booking_packages->packages_id;
                                                            $query =  DB::table('family_package')->where('id', $pid)->first();
                                                        ?>
                                                		<tbody>
                                            			<tr data-id="">
                                            				<td class="text-14">{{ $query->title }}</td>
                                            				<td class="text-14">{{ $booking_packages->qty }}</td>
                                            				<td class="text-14">{!! $booking->currency->symbol !!}{!! currency_fix($query->price, $booking->currency->code) !!}</td>
                                                           
                                            			</tr>  
                                            		</tbody>
                                            		@endforeach
	                                        	</table>
    									</div>
									@endif
									@endif
									
											    @if(isset($booking_info->value)) 
                            						 <p class="row margin-top10 text-justify text-16">
                            							<span class="text-left col-sm-6 text-14">{{trans('messages.experience.packages')}}</span>
                            							<span class="text-right col-sm-6 text-14">{!! $booking->currency->symbol !!} {!! currency_fix($booking_info->value, $booking->currency->code) !!}</span>
                            						</p>
                        						@endif
											    
											    @if($booking->properties->type=="experience" && $booking->properties->exp_booking_type!="3")
												<p class="row margin-top10 text-justify text-16 mb-0">
													<span class="text-left col-sm-6 col-6 text-14">{{$booking->per_night}} x {{$booking->total_night}} {{trans('messages.property_single.night')}} </span>
													<span class="text-right col-sm-6 col-6 text-14">{!! $booking->currency->symbol.$booking->per_night * $booking->total_night !!}</span>
												</p>
												@endif

												<p class="row margin-top10 text-justify text-16 mb-0">
													<span class="text-left col-sm-6 col-6 text-14">{{trans('messages.property_single.service_fee')}}</span>
													<span class="text-right col-sm-6 col-6 text-14">{!! $booking->currency->symbol.$booking->service_charge !!}</span>
												</p>

												@if($booking->accomodation_tax)
												<p class="row margin-top10 text-justify text-16 mb-0">
													<span class="text-left col-sm-8 col-8 text-14">{{trans('messages.property_single.accommodatiton_tax')}}</span>
													<span class="text-right col-sm-4 col-4 text-14">{!! $booking->currency->symbol.$booking->accomodation_tax !!}</span>
												</p>
												@endif

												@if($booking->iva_tax)
												<p class="row margin-top10 text-justify text-16 mb-0">
													<span class="text-left col-sm-6 col-6 text-14">{{trans('messages.property_single.iva_tax')}}</span>
													<span class="text-right col-sm-6 col-6 text-14">{!! $booking->currency->symbol.$booking->iva_tax !!}</span>
												</p>
												@endif

												<p class="row mt-3 text-justify text-16 mb-0">
													<span class="text-left col-sm-6 col-6 text-16 font-weight-600">{{trans('messages.property_single.total')}}</span>
													<span class="text-right col-sm-6 col-6 text-16 font-weight-600">{!! $booking->currency->symbol.$booking->total !!}</span>
												</p>
											</div>	
										</div>
									</div>
								</div>
							</div>
						</div>
					@else
						<div class="row jutify-content-center w-100 p-4 mt-4">
							<div class="text-center w-100">
								<img src="{{ url('public/img/unnamed.png')}}"   alt="notfound" class="img-fluid">
								<p class="text-center">{{trans('messages.message.empty_inbox')}} </p>
							</div>
						</div>
					@endif
				</div>
			</div>
		</div>
	</div>
</div>
@stop
@push('scripts')
<script type="text/javascript">
	const ls = localStorage.getItem("selected");
	let selected = false;
	var list = document.querySelectorAll(".list"),
	content = document.querySelector(".content-inbox"),
	input = document.querySelector(".message-footer input"),
	open = document.querySelector(".open a");
	//process
	function process() {
	    if(ls != null) {
	        selected = true;
	        click(list[ls], ls);
	    }
	    if(!selected) {
	        click(list[0], 0);
	    }

	    list.forEach((l,i) => {
	        l.addEventListener("click", function() {
	            click(l, i);
	        });
	    });

	    try {
	        document.querySelector(".list.active").scrollIntoView(false);
	    }
	    catch {}

	}
	process();

	//list click
	function click(l, index) {
	    list.forEach(x => { x.classList.remove("active"); });
	        if(l) {
	            l.classList.add("active");
	            document.querySelector("sidebar").classList.remove("opened");
	            open.innerText="UP";
	        document.querySelector(".message-wrap").scrollTop = document.querySelector(".message-wrap").scrollHeight; 
	        localStorage.setItem("selected", index);
	    }
	}

	open.addEventListener("click", (e) => {
	    const sidebar = document.querySelector("sidebar");
	    sidebar.classList.toggle("opened");
	    if(sidebar.classList.value == 'opened')
	        e.target.innerText = "DOWN";
	    else
	        e.target.innerText = "UP";
	});

	$(document).on('click', '.conversassion', function(){
	    var id = $(this).data('id');
	    var dataURL = APP_URL+'/messaging/booking';
	    $.ajax({
	        url: dataURL,
	        data:{
	            "_token": "{{ csrf_token() }}",
	            'id':id,
	        },
	        type: 'post',
	        dataType: 'json',
	        success: function(data) {
	            $('#msg-'+id).removeClass('text-danger');
	            $('#messages').empty().html(data['inbox']);
	            $('#booking').empty().html(data['booking']);	
	        }
	    })
	});

	$(document).on('click', '.chat', function(){
	    var msg = $('.cht_msg').val();
	    var booking_id = $(this).data('booking');
	    var receiver_id = $(this).data('receiver');
	    var property_id = $(this).data('property');
	    var result = '<div class="msg pl-2 pr-2 pb-2 pt-2 mb-2">'
						+'<p class="m-0">'+msg+'</p>'
					+'</div>'
					+'<div class="time">just now</div>'

	    var dataURL = APP_URL+'/messaging/reply';
	    $.ajax({
	        url: dataURL,
	        data:{
	            "_token": "{{ csrf_token() }}",
	            'msg':msg,
	            'booking_id':booking_id,
	            'receiver_id':receiver_id,
	            'property_id':property_id,
	        },
	        type: 'post',
	        dataType: 'json',
	        success: function(data) {
	            $('.msg_txt').append(result);

	            $('.cht_msg').val("");
	        }
	    })   
	});

	$(".cht_msg").on('keyup', function(event) {
	    if (event.which===13) {
	        $('.chat').trigger("click");
	    }
	});

</script>
@endpush
