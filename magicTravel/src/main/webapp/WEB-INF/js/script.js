 $(document).ready(function(){
    var touch = $('#touch-menu');
    var menu = $('.nav');

    $(touch). on('click', function(e){
        e.preventDefault();
        menu.slideToggle();
    });
});