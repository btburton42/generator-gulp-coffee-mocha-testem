autoprefixer = require 'gulp-autoprefixer'
coffee = require 'gulp-coffee'
concat = require 'gulp-concat'
del = require 'del'
gulp = require 'gulp'
gutil = require 'gulp-util'
http = require 'http'
livereload = require 'gulp-livereload'
plumber = require 'gulp-plumber'
sass = require 'gulp-sass'
sourcemaps = require 'gulp-sourcemaps'
testem = require 'gulp-testem'

paths =
  coffee: ['src/**/*.coffee', 'spec/**/*.coffee']
  sass: 'style/**/*.scss'
  dev: '.tmp'
  dist: 'lib'

gulp.task 'default', ['coffee:compile', 'sass:compile', 'watch'], () ->

gulp.task 'watch', () ->
  gulp.watch paths.coffee, ['coffee:compile']

gulp.task 'test', ['coverage'], () ->
  gulp.src([''])
    .pipe(testem(
      configFile: 'testem.json'
    ))

gulp.task 'coffee:compile', () ->
  gulp.src(paths.coffee)
    .pipe(plumber())
    .pipe(coffee(bare:true).on('error', gutil.log))
    .pipe(gulp.dest(paths.dev))
    .pipe(livereload())

gulp.task 'sass:compile', () ->

gulp.task 'coverage', () ->
  port = 7358
  coverageServer = http.createServer (req, resp) ->
    req.pipe(fs.createWriteStream('coverage.json'))
    resp.end()
  coverageServer.listen port
  console.log "Coverage server listening on port", port

gulp.task 'clean', (callback) ->
  del [
    'lib/**',
    '.tmp/**'
  ], callback


