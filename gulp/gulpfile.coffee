gulp = require('gulp')
gutil = require('gulp-util')
plumber = require('gulp-plumber')

gulp.task('styles', require('./tasks/styles'))
gulp.task('linter', require('./tasks/linter'))
gulp.task('watch', require('./tasks/watch'))

gulp.task('default', [
  'styles'
  'linter'
  'watch'
  ])
