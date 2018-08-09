# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$('.registration').ready ->
  curp = $('.registration #curp');
  nombre = $('#nombre');
  plaza = $('#plaza');
  performance = $('#performance');
  correo = $('#correo');
  localidad = $('#localidad');
  ti = $('#teachinfo');
  useremail = $('.registration #user_email');
  password = $('.registration #user_password');
  password_c = $('.registration #user_password_confirmation');
  useremail.prop('disabled', true);
  password.prop('disabled', true);
  password_c.prop('disabled', true);

  curp.keyup( () ->
    if this.value.length == 18
      senddata(this)
  );

  senddata = (data) ->
    $.ajax({
      type: 'GET',
      url: "/teachers/curp/" + data.value,
      success:(data) ->
        console.log(nombre);
        console.log(data.nombrecompleto.toString())
        nombre.val(data.nombrecompleto.toString());
        plaza.val(data.plaza.toString());
        performance.val(data.gpodesemp.toString());
        correo.val(data.correo.toString());
        localidad.val(data.localidad.toString());
        ti.show();
        useremail.val(data.correo.toString());
        useremail.prop('disabled', false);
        password.prop('disabled', false);
        password_c.prop('disabled', false);
        return false
      error:(data) ->
        console.log('error')
        return false
    });
    console.log("hello" + data.value)