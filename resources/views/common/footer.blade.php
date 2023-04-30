{{--Footer Section Start --}}
<footer class="main-panel card border footer-bg {{ $homepage_type }}_footer" id="footer">
    <div class="container-fluid container-fluid-90 pb-5 sv_footer_popup  p-5" <?php if($homepage_type=="new_home") { ?> style="display:none" <?php } ?>>
       <?php if($homepage_type=="new_home") { ?> <div class="footer-close" id=""><i class="fas fa-times text-24 p-3 pl-4 text-center"></i></div><?php } ?>
        <div class="row">
			 <div class="col-6 col-sm-3 mt-4">
                <h2 class="font-weight-600 text-uppercase text-13">{{trans('messages.home.top_destination')}}</h2>
                <div class="row">
                    <div class="col p-0">
                        <ul class="mt-1">
                            @if(isset($popular_cities))
                            @foreach($popular_cities->slice(0, 10) as $pc)
                            <li class="pt-3 text-14">
                                <a href="{{URL::to('/')}}/search?location={{ $pc->name }}&checkin={{ date('d-m-Y') }}&checkout={{ date('d-m-Y') }}&guest=1">{{ $pc->name }}</a>
                            </li>
                            @endforeach
                            @endif
                        </ul>
                    </div>
                </div>
            </div>

		
            <div class="col-6 col-sm-3 mt-4">
                <h2 class="font-weight-600 text-uppercase text-13">{{ trans('messages.static_pages.hosting') }}</h2>
                <div class="row">
                    <div class="col p-0">
						 <ul class="mt-1">
							<?php 
								$current_lang = Session::get('language');
								if($current_lang=="")
								{
								    $current_lang ="en";
								}
								else
								{
								    $current_lang = $current_lang;
								}
								$footer_first  = App\Models\Page::where('position', 'first')->where('status', 'Active')->where('lang',$current_lang)->get();
								?>
                            @if(isset($footer_first))
                            @foreach($footer_first as $ff)
                            <?php
                               $temp_id = $ff->temp_id;
                               $en_result  = App\Models\Page::where('position', 'first')->where('status', 'Active')->where('lang','en')->where('temp_id', $temp_id)->first();   
                               
                            ?>
                            <li class="pt-3 text-14">
                                <a href="{{ url($en_result->url) }}">@if($ff->name!="") {{ $ff->name }} @else {{ $en_result->name }} @endif</a>
                            </li>

                            @endforeach
                            @endif 
                        </ul>
						
                    </div>
                </div>
            </div>

            <div class="col-6 col-sm-3 mt-4">
                <h2 class="font-weight-600 text-uppercase text-13">{{ trans('messages.static_pages.company') }}</h2>
                <div class="row">
                    <div class="col p-0">
                         <ul class="mt-1">
							<?php 
								$footer_second  = App\Models\Page::where('position', 'second')->where('status', 'Active')->where('lang',$current_lang)->get();
								?>
                            @if(isset($footer_second))
                            @foreach($footer_second as $ff)
                            <?php
                               $temp_id = $ff->temp_id;
                               $en_result  = App\Models\Page::where('position', 'second')->where('status', 'Active')->where('lang','en')->where('temp_id', $temp_id)->first();   
                               
                            ?>
                            <li class="pt-3 text-14">
                                <a href="{{ url($en_result->url) }}">@if($ff->name!="") {{ $ff->name }} @else {{ $en_result->name }} @endif</a>
                            </li>

                            @endforeach
                            @endif 
                        </ul>
						


						</div>
                </div>
            </div>

           
            <div class="col-6 col-sm-3 mt-4">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <a href="{{ url('/') }}"><img src="{{$logo ?? ''}}" class="img-130x32" alt="logo"></a>
                        
                          <ul class="list-inline text-center sv_social mt-3">
										@if(isset($join_us))
										@for($i=0; $i<count($join_us); $i++)
										<li class="list-inline-item">
										<a class="social-icon  text-color text-18" target="_blank" href="{{ $join_us[$i]->value }}" aria-label="{{$join_us[$i]->name}}"><i class="fab fa-{{ str_replace('_','-',$join_us[$i]->name) }}"></i></a>
										</li>
										@endfor
										@endif  
								</ul>
                    </div>
                </div>

              
                </div>
        </div>
    </div>

	<div class="border-top p-0 foot-content">
		<div class="container-fluid container-fluid-90 justify-content-between p-2 foot-padding">
			<div class="row">
				<div class="col-lg-6 col-sm-6 mb-0 mt-4 mb-4 text-14 sv_copyright">
					© {{ date('Y') }} {{$site_name ?? ''}}. {{ trans('messages.home.all_rights_reserved') }}
				</div>
		
		<?php $general = App\Models\Settings::where('type', 'general')->pluck('value', 'name')->toArray(); $homepage_type = $general['homepage_type']; ?>
				<div class="col-lg-6 col-sm-6 mb-0 mt-4 text-14 mb-4 text-right sv_footer_currency">
							<div class="text-underline mb-0"> 
							<?php if(config('global.demosite')=="yes") { ?>
							    <?php if($homepage_type=="new_home") { ?>
							        <a class="pr-4 text-danger" href="{{ url('update-home-page/old') }}">{{ trans('messages.experience.switch_old_home_page') }}</a>
							     <?php } else { ?>
    							     <a class="pr-4 text-danger" href="{{ url('update-home-page/new') }}">{{ trans('messages.experience.switch_new_home_page') }}</a>
							     <?php } } ?>
							    
								<a href="#" aria-label="modalLanguge" data-toggle="modal" data-target="#languageModalCenter"> <i class="fa fa-globe"></i> <u>{{  Session::get('language_name')  ?? $default_language[0]->name }} </u></a>
								<a href="#" aria-label="modalCurrency" data-toggle="modal" data-target="#currencyModalCenter"> <span class="ml-4">{!! Session::get('symbol')  !!} - <u>{{ Session::get('currency')  }}</u> </span></a>
								<?php if($homepage_type=="new_home") { ?>
								<a href="#" class="pl-3 sv_support">{{ trans('messages.experience.support_resources') }} <i class="fa fa-chevron-down"></i></a>
								<?php } ?>
								
								
							</div>
                      
                   
				</div>
			</div>
		</div>
		
	</div>
</footer>

<div class="row">
    {{--Language Modal --}}
    <div class="modal fade mt-5 z-index-high" id="languageModalCenter" tabindex="-1" role="dialog" aria-labelledby="languageModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header lang-modal-header">
                    <div class="w-100 pt-3">
                       <!-- <h5 class="modal-title text-20 text-center font-weight-700" id="languageModalLongTitle">{{ trans('messages.home.choose_language') }}</h5>-->
                    </div>

                    <div>
                        <button type="button" class="close text-28 mr-2 filter-cancel" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div> 
                </div>

                <div class="modal-body pb-5 language-modal">
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                              <li class="nav-item">
                                <a class="nav-link active" id="home-tab1" data-toggle="tab" href="#home1" role="tab" aria-controls="home1" aria-selected="true">{{ trans('messages.home.language') }}</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" id="profile-tab1" data-toggle="tab" href="#profile1" role="tab" aria-controls="profile1" aria-selected="false">{{ trans('messages.home.currency') }}</a>
                              </li>
                              
                            </ul>
                            <div class="tab-content" id="myTabContent">
                              <div class="tab-pane fade show active" id="home1" role="tabpanel" aria-labelledby="home-tab1">
                                  <div class="row">
                                        @foreach($languagefoot as $key => $value)
                                        <?php 
                                            if(Session::get('language')=="")
                                            {
                                                $dlang = $default_language[0]->short_name;
                                            }
                                            else
                                            {
                                                $dlang = Session::get('language');
                                            }
                                            Session::put('language', $dlang);
                                        ?>
                							<div class="col-md-3 col-6 mt-5 p-3">
                							    <div class="language-list p-3 text-16 {{ (Session::get('language') == $key) ? 'currency-active' : '' }}">
                							        <a href="javascript:void(0)" class="language_footer" data-lang="{{$key}}">{{$value}}</a>
                							    </div>
                							</div>
                						@endforeach
                					</div>
                              </div>
                              <div class="tab-pane fade" id="profile1" role="tabpanel" aria-labelledby="profile-tab1">
                                  	<div class="row">
                						@foreach($currencies as $key => $value)
                						<div class="col-6 col-sm-3 mt-5 p-3">
                							<div class="currency pl-3 pr-3 text-16 {{ (Session::get('currency') == $value->code) ? 'border rounded-5 currency-active' : '' }}">
                								<a href="javascript:void(0)" class="currency_footer " data-curr="{{$value->code}}">
                									<p class="m-0 mt-2  text-16">{{$value->name}}</p>
                									<p class="m-0 text-muted text-16">{{$value->code}} - {!! $value->org_symbol !!} </p> 
                								</a>
                							</div>
                						</div>
                						@endforeach
                
                					</div>

                              </div>
                            </div>
                        </div>
                    </div>
                    
				</div>
			</div>
		</div>
	</div>
	
    {{--Currency Modal --}}
    <div class="modal fade mt-5 z-index-high" id="currencyModalCenter" tabindex="-1" role="dialog" aria-labelledby="languageModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<div class="w-100 pt-3">
						<h5 class="modal-title text-20 text-center font-weight-700" id="languageModalLongTitle">{{ trans('messages.home.choose_currency') }}</h5>
					</div>
						
					<div>
						<button type="button" class="close text-28 mr-2 filter-cancel font-weight-500" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div> 
				</div>

				<div class="modal-body pb-5">
					<div class="row">
						@foreach($currencies as $key => $value)
						<div class="col-6 col-sm-3 p-3">
							<div class="currency pl-3 pr-3 text-16 {{ (Session::get('currency') == $value->code) ? 'border border-success rounded-5 currency-active' : '' }}">
								<a href="javascript:void(0)" class="currency_footer " data-curr="{{$value->code}}">
									<p class="m-0 mt-2  text-16">{{$value->name}}</p>
									<p class="m-0 text-muted text-16">{{$value->code}} - {!! $value->org_symbol !!} </p> 
								</a>
							</div>
						</div>
						@endforeach

					</div>
				</div>
			</div>
        </div>
    </div>
	
	
</div>

<section class="footer-fixed-nav d-block d-sm-none"> 
	    <ul>
			<li><a class="{{ (request()->is('/')) ? 'active-link' : '' }}" href="{{URL::to('/')}}"><i class="fab fa-wpexplorer" aria-hidden="true"></i> <div class="icon-txt">{{ trans('messages.footer.explore') }}</div></a></li> 
			<li><a class="{{ (request()->is('mywishlist')) ? 'active-link' : '' }}" href="{{URL::to('/')}}/mywishlist" ><i class="far fa-heart" aria-hidden="true"></i> <div class="icon-txt">{{ trans('messages.footer.saved') }}</div></a></li>
			<li><a class="{{ (request()->is('trips/active')) ? 'active-link' : '' }}" href="{{URL::to('/')}}/trips/active" ><i class="far fa-paper-plane" aria-hidden="true"></i><div class="icon-txt">{{ trans('messages.footer.trips') }}</div> </a></li>
			<li><a class="{{ (request()->is('inbox')) ? 'active-link' : '' }}" href="{{URL::to('/')}}/inbox" ><i class="far fa-comment-alt" aria-hidden="true"></i><div class="icon-txt">{{ trans('messages.footer.inbox') }}</div> </a></li>
			<li><a class="{{ (request()->is('users/profile')) ? 'active-link' : '' }}" href="{{URL::to('/')}}/users/profile" ><i class="far fa-user" aria-hidden="true"></i><div class="icon-txt">{{ trans('messages.footer.profile') }}</div> </a></li>
	    </ul>
</section>   

@if($enable_cookies == "Yes")
<div class="alert text-center cookiealert" role="alert">
    Your experience on this site will be improved by allowing cookies. 
    <button type="button" class="btn btn-primary acceptcookies text-14">
        Allow Cookies
    </button>
</div>
@endif

