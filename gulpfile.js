var gulp = require('gulp');
var $    = require('gulp-load-plugins')();
var concat = require('gulp-concat');
var babel = require('gulp-babel');
var uglify = require('gulp-uglify');
var rename = require('gulp-rename');
var imagemin = require('gulp-imagemin');
var cache = require('gulp-cache');

var sassPaths = [
  'bower_components/normalize.scss/sass',
  'bower_components/foundation-sites/scss',
  'bower_components/motion-ui/src'
];

gulp.task('images', function() {
  return gulp.src('img/raw/**/*')
    .pipe(cache(imagemin({ optimizationLevel: 5, progressive: true, interlaced: true })))
    .pipe(gulp.dest('img/'));
});

gulp.task('scripts', function() {
    return gulp.src('js/*.js')
      .pipe(concat('build.js'))
        .pipe(babel({
          presets: ['es2015']
            }))
          .pipe(rename({suffix: '.min'}))
        .pipe(uglify()).on('error', function(e){
            console.log(e);
         })
        .pipe(gulp.dest('js/build/'));
});

gulp.task('sass', function() {
  return gulp.src('scss/app.scss')
    .pipe($.sass({
      includePaths: sassPaths,
      outputStyle: 'compressed' // if css compressed **file size**
    })
      .on('error', $.sass.logError))
    .pipe($.autoprefixer({
      browsers: ['last 2 versions', 'ie >= 9']
    }))
    .pipe(gulp.dest('css'));
});

gulp.task('default', ['sass','scripts', 'images'] , function() {
  gulp.watch(['scss/**/*.scss'], ['sass']);
  gulp.watch(['js/*.js'], ['scripts']);
  gulp.watch('img/raw/**/*', ['images']);
});
