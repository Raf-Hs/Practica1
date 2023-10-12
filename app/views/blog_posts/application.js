// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import Vue from 'vue/dist/vue.js'; // Asegúrate de que la ruta sea correcta
import MiComponente from 'MiComponente.vue'; // Reemplaza con la ubicación real de tu componente

new Vue({
  el: '#app',
  components: {
    'mi-componente': MiComponente,
  },
});