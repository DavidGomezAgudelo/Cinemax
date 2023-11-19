
document.addEventListener('DOMContentLoaded', function () {
    document.getElementById('calificacion').addEventListener('input', function () {
        document.getElementById('calificacionValor').value = this.value;
    });
});

$(document).ready(function() {
    $('#calificarModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        console.log('Button:', button);
        var peliculaId = button.data('pelicula-id');
        console.log('Pelicula ID:', peliculaId);
        $('#peliculaId').val(peliculaId);
    });
});
