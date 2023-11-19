
document.addEventListener('DOMContentLoaded', function () {
    document.getElementById('calificacion').addEventListener('input', function () {
        document.getElementById('calificacionValor').value = this.value;
    });
});
