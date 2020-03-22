$('ul li').on('click', function() {
    $('li').removeClass('active');
    $(this).addClass('active');
});


$('.show-btn').on('click', function() {
    alert("Esta es una prueba");
});
