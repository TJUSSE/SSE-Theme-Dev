# gulp-utils
gulp = require 'gulp'
es = require 'event-stream'
logger = require 'gulp-logger'
plumber = require 'gulp-plumber'

autoprefixer = require 'gulp-autoprefixer'
coffee = require 'gulp-coffee'
stylus = require 'gulp-stylus'
uglify = require 'gulp-uglify'
sourcemaps = require 'gulp-sourcemaps'

# Task

gulp.task 'default', ()->
  es.merge (gulp.src 'src/**/*.coffee'
            .pipe logger()
            .pipe plumber()
            .pipe coffee()
            .pipe uglify()
            .pipe sourcemaps.write '.'
            .pipe gulp.dest './dest/'),
           (gulp.src 'src/**/*.styl'
            .pipe logger()
            .pipe plumber()
            .pipe stylus()
            .pipe autoprefixer()
            .pipe uglify()
            .pipe sourcemaps.write '.'
            .pipe gulp.dest './dest/')
