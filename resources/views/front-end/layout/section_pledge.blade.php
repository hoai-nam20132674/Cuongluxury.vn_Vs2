<section class="services-st hidden-xs">
    <div class="container">
        <div class="row">
            <div class="qcservices-box">
                        @foreach($pledges as $item)
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="qcservices-item">
                                <div class="qcservices-thumb">
                                    <a href="{{$item->href}}" target="{{$item->target}}" title="{{$item->title}}">
                                        <img src="{{asset('uploads/images/adss/'.$item->url)}}" alt="{{$item->title}}" />
                                    </a>
                                </div>
                                <div class="qcservices-content">
                                    <div class="qcservices-title">
                                        {{$item->title}}
                                    </div>
                                    <div class="qcservices-desc">
                                        {{$item->description}}
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                        
                    
            </div>
        </div>
    </div>
</section>