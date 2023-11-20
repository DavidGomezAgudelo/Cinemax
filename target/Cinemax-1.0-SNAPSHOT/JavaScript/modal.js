
document.addEventListener('input', function (event) {
    if (event.target && event.target.type === 'range') {
        var calificacionValor = event.target.value;
        var peliculaId = event.target.getAttribute('data-pelicula-id');
        document.getElementById('calificacionValor' + peliculaId).textContent = calificacionValor;
    }
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
