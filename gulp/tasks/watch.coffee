gulp = require('gulp')

paths = require('./paths')

module.exports = ()->
  gulp.watch([paths.styles.src+'*.scss', paths.styles.src+'**/*.scss'], [
    'styles'
    'linter'
  ])