(function(){$(document).ready(function(){return $(".nav-title").hover(function(){var n;return n=$(this).index(),$(".nav-list").eq(n).addClass("nav-list-active"),null},function(){var n;return n=$(this).index(),$(".nav-list").eq(n).removeClass("nav-list-active"),null}),console.log("Initialize done.")})}).call(this);