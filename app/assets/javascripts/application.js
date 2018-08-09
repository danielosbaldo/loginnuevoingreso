// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require popper
//= require rails-ujs
//= require bootstrap
//= require_tree .
$(function(){
    var Accordion = function(el, multiple) {
        this.el = el || {};
        this.multiple = multiple || false;
        // Variables
        var link = this.el.find('.link');
        // Eventos
        link.on('click', {el: this.el, multiple: this.multiple},this.dropdown)
    }

    Accordion.prototype.dropdown = function(e) {
        var $el = e.data.el;
        $this = $(this),
            $next = $this.next();

        // Desencadena evento de apertura en los elementos siguientes a la clase link = ul.submenu
        $next.slideToggle();
        // Agregar clase open a elemento padre del elemento con clase link = li
        $this.parent().toggleClass('open');

        //Parametro inicial que permite ver 1 solo submenu abierto
        if(!e.data.multiple){
            $el.find('.submenu').not($next).slideUp().parent().removeClass('open');
        }

    }
    // Elegir submenus multiples (true) submenus uno a la vez (false)
    var accordion = new Accordion($('#accordion'), false);
    function myFunction() {
       console.log('sdsds')
    }

});


