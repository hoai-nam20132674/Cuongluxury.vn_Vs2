<section class="awe-section-1">
    <div class="home-slider owl-carousel not-dqowl">
        @foreach($slides as $item)
        <div class="item">
            <a href="{{$item->href}}" title="" class="clearfix">
                <img src="{{asset('uploads/images/sliders/'.$item->url)}}" alt="Quảng cáo slide 2" /></a>
        </div>
        @endforeach
        
            
    </div>

    <script>
        Object.defineProperty(HTMLMediaElement.prototype, 'playing', {
        get: function () {
            return !!(this.currentTime > 0 && !this.paused && !this.ended && this.readyState > 2);
        }});
        $('body').on('click touchstart', function () {
                const videoElement = document.getElementById('vid');
                if (videoElement.playing) {
                    // video is already playing so do nothing
                }
                else {
                    // video is not playing
                    // so play video now
                    videoElement.play();
                }
        });
    </script>
</section>