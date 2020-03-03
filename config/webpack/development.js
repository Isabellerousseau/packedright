process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')
environment.loaders.delete('mapbox-gl')

module.exports = environment.toWebpackConfig()
