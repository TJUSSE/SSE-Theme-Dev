(function(){$(document).ready(function(){return $("#sub-bu").click(function(){var n;return $("#sub-prompt").removeClass("invi"),$("#sub-prompt").addClass("front-div"),$("header, form, h1, h2, h3").addClass("opaque"),n={tag:[]},$(":checked").each(function(){return n.tag.push($(this).val())}),console.log(n),$.post("",n,function(n){return n=parseInt(n),$("#sub-status").text(0===n?"订阅设置已保存":"订阅失败")},"json")}),$("#unsub-bu").click(function(){return window.location="unsub.html",$.post("",{unsub:"unsub"},function(n){return n=parseInt(n),0===n?window.location="unsub.html":void 0},"json")}),$("#close-bu").click(function(){return $("#sub-prompt").addClass("invi"),$("#sub-prompt").removeClass("front-div"),$("header, form, h1, h2, h3").removeClass("opaque")}),$("#revise-bu").click(function(){return $("#sub-prompt").addClass("invi"),$("#sub-prompt").removeClass("front-div"),$("header, form, h1, h2, h3").removeClass("opaque")}),$(".class-layer").each(function(){var n,s,t;return n=$(this).children("label").length,t=$(this).width(),s=parseInt($(this).children("label").css("padding-left")),$(this).children("label").width(t/n-s-5)})})}).call(this);