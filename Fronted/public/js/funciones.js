function eliminar(url,nombre,apellido)
{
    if (window.confirm('¿ Esta seguro de borrar el empleado '+nombre+' '+apellido+' ?'))
    {
        window.location = url;
    }
}
function edit(nombre, apellido, documento, costo, estado) {
    document.getElementById('contenido_nombre').value = nombre;
    document.getElementById('contenido_apellido').value = apellido;
 	document.getElementById('contenido_documento').value = documento;
 	if (estado == "True"){
    	document.getElementById("contenido_estado").checked = true
    }else{
    	document.getElementById("contenido_estado").checked = false
    }

}