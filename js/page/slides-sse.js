(function(){$(document).ready(function(){var i,n,e;for(window.g={},window.g.imgList=$("#slider .slide-imgs img"),window.g.imgNum=window.g.imgList.length,$(".slide-imgs").css("width",100*window.g.imgNum+"%"),i=n=0,e=window.g.imgNum-1;e>=0?e>=n:n>=e;i=e>=0?++n:--n)$(".slide-dots").append($('<button class="btn-change-slide"><span class="fa fa-circle"></span></button>'));return $($(".slide-dots button")[0]).addClass("activated"),window.g.currentSlideImg=0,window.g.changeSlide=function(i){var n,e,d,g,t,o,l,w,c,s;for(c=$(".btn-change-slide"),g=0,l=c.length;l>g;g++)n=c[g],e=$(n).index(),console.log("Change to slide: "+i),$(n).hasClass("activated")&&$(n).removeClass("activated"),e===i&&$(n).addClass("activated");for(s=$(window.g.imgList),t=0,w=s.length;w>t;t++)d=s[t],$(d).index()<i?(o=100*(i-$(d).index()),$(d).addClass("move-left")):$(d).hasClass("move-left")&&$(d).removeClass("move-left");return window.g.currentSlideImg=i},$(".btn-change-slide").click(function(){var i;return i=$(this).index(),console.log("Clicked on btn#"+i),window.g.changeSlide(i)}),$("#prev").click(function(){return 0===window.g.currentSlideImg?(window.g.changeSlide(window.g.imgNum-1),0):0!==window.g.currentSlideImg?window.g.changeSlide(window.g.currentSlideImg-1):void 0}),$("#next").click(function(){return window.g.currentSlideImg===window.g.imgNum-1?(window.g.changeSlide(0),0):window.g.currentSlideImg!==window.g.imgNum-1?window.g.changeSlide(window.g.currentSlideImg+1):void 0}),setInterval(function(){return $("#next").click()},5e3)})}).call(this);