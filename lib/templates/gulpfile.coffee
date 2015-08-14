gulp = require 'gulp'
sourcemaps = require 'gulp-sourcemaps'
babel = require 'gulp-babel'
concat = require 'gulp-concat'
del = require 'del'

paths =
  js: 'src/**/*.js'

gulp.task 'default', ['babel:compile', 'watch'], () ->

gulp.task 'clean', (callback) ->
  return del ['lib/**'], callback

gulp.task 'watch', () ->
  gulp.watch paths.js, ['babel:compile']

gulp.task 'babel:compile', () ->
  return gulp.src paths.js
    .pipe sourcemaps.init()
    .pipe babel
      modules: 'umd',
      comments: true
    .pipe sourcemaps.write
    .pipe gulp.dest 'lib'
}
