var gulp = require('gulp');
var es = require('event-stream');
var logger = require('gulp-logger');
var plumber = require('gulp-plumber');
var watch = require('gulp-watch');

var autoprefixer = require('gulp-autoprefixer');
var coffee = require('gulp-coffee');
var stylus = require('gulp-stylus');
var uglify = require('gulp-uglify');
var sourcemaps = require('gulp-sourcemaps');

gulp.task('js', function () {
  gulp.src('src/js/**/*.coffee')
      .pipe(logger())
      .pipe(plumber())
      .pipe(coffee())
      .pipe(uglify())
      .pipe(sourcemaps.write('.'))
      .pipe(gulp.dest('./js/'))
});

gulp.task('css', function() {
  gulp.src('src/css/style.styl')
      .pipe(logger())
      .pipe(plumber())
      .pipe(stylus())
      .pipe(autoprefixer())
      .pipe(sourcemaps.write('.'))
      .pipe(gulp.dest('./css/'))
});

gulp.watch('default', ['js', 'css'], function () {
	// empty
});

gulp.task('watch', function () {
  return watch(['src/**/*'], function (file) {
    console.log('modified: %s', file.path);
    if (file.path.match(/\/src\/js\//)) {
      gulp.start('js');
      return;
    }
    if (file.path.match(/\/src\/css\//)) {
      gulp.start('css');
      return;
    }
  });
});