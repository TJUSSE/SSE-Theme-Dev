(function(){$(document).ready(function(){return console.log("Components ready."),$(".nav-list").css("display","none"),[0,1,2,3].map(function(s){return $("#nav-title-"+s).hover(function(){return $("#nav-list-0").css("height","0px"),$("#nav-list-1").css("height","0px"),$("#nav-list-2").css("height","0px"),$("#nav-list-3").css("height","0px"),[0,1,2,3].map(function(n){return n!==s?$("#nav-list-"+n+" ul").stop().animate({opacity:0}).css("display","none"):void 0}),$("#nav-list-"+s+" ul").stop().css("display","block").animate({opacity:1}),console.log("hover! Turning on #nav-list-"+s),$("#nav-list-"+s).css("display","block").css("position","absolute").css("margin-top","-14px").css("height",$(window).height()-$("header").height()-$("footer").height()+"px").css("left",25*s+"%")})}),console.log("Initialize done.")})}).call(this);