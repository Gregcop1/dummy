gulp = require('gulp')
sass = require('gulp-sass')
sourcemaps = require('gulp-sourcemaps')
autoprefixer = require('gulp-autoprefixer')
paths = require('./paths')

module.exports = ()->
  gulp.src(paths.styles.src+'main.scss')
  .pipe(sourcemaps.init())
  .pipe(sass(
    outputStyle: 'compressed'
    ).on('error', sass.logError))
  .pipe(autoprefixer(
    browsers: ['last 3 versions']
    cascade: false
    ))
  .pipe(sourcemaps.write('.'))
  .pipe(gulp.dest(paths.styles.dest))
