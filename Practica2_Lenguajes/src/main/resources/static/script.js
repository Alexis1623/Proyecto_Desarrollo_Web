// Ejecutar después de que se cargue el Dhtml ya que se esta ejecutando el script antes que el html
document.addEventListener('DOMContentLoaded', function() {
    // JavaScript para el botón "Mostrar Hola Mundo"
    document.getElementById('helloWorldButton').addEventListener('click', function() {
        const helloWorldOutput = document.getElementById('helloWorldOutput');
        helloWorldOutput.style.display = 'block'; // Muestra el mensaje

        // Código a mostrar letra por letra
        const code = `// Hola Mundo En JavaScript código:\nconsole.log('Hola Mundo :) ');\nResultado:\nHola Mundo :)`;
        const outputElement = document.getElementById('helloWorldOutput');

        // Función para agregar cada letra con un retraso
        function typeCode(index) {
            if (index < code.length) {
                outputElement.innerHTML += code.charAt(index);
                index++;
                setTimeout(function() {
                    typeCode(index);
                }, 50); // Cambia el valor para ajustar la velocidad de escritura
            }
        }

        // Inicia la animación
        typeCode(0);
    });
});
