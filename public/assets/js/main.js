$('.carousel').carousel()
let i = 0;
$('.ddf').each(function(){
	i++;
	$(this).text(i);
})
let j = 0;
$('.ddz').each(function(){
	j++;
	$(this).text(j);
})
if ($(window).width() > 992) {
		$(".logo a b").lettering();
		$(".logo span").each(function(){
		 	var min = 0;
		 	var max = 50;
		 	var randomNumber = Math.floor(Math.random()*(max-min+1)+min);
		 	$(this).css('transition-delay', '0.'+randomNumber+'s');
		 });
	}
	$(window).scroll(function(){
		if ($(window).scrollTop() > 100) {
			$(".logo a").trigger('mouseenter');
			$('body').addClass('open');
			
		}
		else {
			$('body').removeClass('open');
			$(".logo a").trigger('mouseover');
			$('.sub_menu a').removeClass('active')
		}
	});

function hrefload(){

s=$('.filelink').attr('href');
s = s.split(',"original')[0];
var z = '[{"download_link":"';
z = s.replace('[{"download_link":"reestrs','')
f=z.replace('//','/');
m=f.replace('"','')
console.log(m)
$('.filelink').attr('href',m)
}


setTimeout(hrefload,500)

    	
        $('.nav-link').click(function(e){
        	  e.preventDefault();

        	var targetDiv = $(this).attr('href');
    $('html, body').scrollTo($(targetDiv), 500, {offset:-250});
});

