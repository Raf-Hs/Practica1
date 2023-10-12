const { environment } = require('@rails/webpacker')

const { VueLoaderPlugin } = require('vue-loader')

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())

const config = environment.toWebpackConfig()

config.entry = {
  application: ['./src/application.js'],
  otro_componente: ['./src/otro_componente.js']
}

module.exports = environment