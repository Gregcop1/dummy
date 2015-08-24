gulp = require('gulp')
gulpif = require('gulp-if')
notify = require('gulp-notify')
scsslint = require('gulp-scss-lint')
paths = require('./paths')

hasError = (file)->
  console.log file.scsslint
  return file.scsslint.errors || file.scsslint.warning

module.exports = ()->
  gulp.src([
      paths.styles.src + '**/*.scss'
      paths.styles.src + '*.scss'
  ])
    .pipe(scsslint(
      config: '.scss-lint.yml'
      endless: true
    ))
    .pipe(gulpif(hasError, notify("Error or warning in file: <%= file.relative %>!")))