
function validarForm(form) {
    var usuario = form.usuario;
    var clave = form.clave;
    var tec = form.tecnologia;
    var checkSeleccionado = false;
    var gen = form.genero;
    var checkSeleccionado2 = false;
    var pro = form.profesion;
    if (usuario.value === "" || usuario.value === "Usuario") {
        alert("Debes de introducir un usuario");
        usuario.select();
        return false;
    } else if (usuario.value.length < 6 || usuario.value === "Usuario") {
        alert("El usuario tiene que tener mas de 6 carácteres");
        usuario.select();
        return false;
    } else if (clave.value == "Contraseña" || clave == null) {
        alert("La contraseña no puede estar vacía");
        return false;
    } else if (clave.value.length < 7) {
        alert("La contraseña debe tener al menos 7 caracteres");
        return false;
    } else if (usuario.value == clave.value) {
        alert("El usuario no puede ser igual a la contraseña");
        return false;
    } 
  
    for (var i = 0; i < tec.length; i++) {
        if(tec[i].checked){
            checkSeleccionado = true;
        }
        if(!checkSeleccionado){
            alert("Elija una tecnología");
            return false;
        }
    }
   
    for (var i = 0; i < gen.length; i++) {
        if(gen[i].checked){
            checkSeleccionado2 = true;
        }
        if(!checkSeleccionado2){
            alert("Elija su género");
            return false;
        }
    }
   
   
    if (pro.value === "") {
        alert("Elija al menos una profesión");
        return false;

    }

}
