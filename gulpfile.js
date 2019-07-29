const gulp = require('gulp');
const concat = require('gulp-concat');
const del = require('del');
const browserSync = require('browser-sync').create();
const sass = require('gulp-sass');
const plumber = require('gulp-plumber');
const notify = require('gulp-notify');
const sourcemaps = require('gulp-sourcemaps');
const jsFiles = [
'./game_logic/jQuery/jquery-3.4.0.min.js',
'./game_logic/system.js',
'./game_logic/player.js',
'./game_logic/wildanimal.js',
'./game_logic/item.js',
'./game_logic/location.js',
'./game_logic/instances.js',
'./game_logic/main_menu.js'
]

function html(){
	return gulp.src('./views/*.html')
	.pipe(gulp.dest('./build'))
	.pipe(browserSync.stream());
}

function images(){
	return gulp.src('./images/**/*.*')
	.pipe(gulp.dest('./build/images'))
}

function style(){
	return gulp.src('./style/*.css')
	.pipe(sourcemaps.init())
	.pipe(concat('all.css'))
	.pipe(gulp.dest('./build'))
	.pipe(browserSync.stream());
}

function js_files(){
	return gulp.src(jsFiles)
	.pipe(sourcemaps.init())
	.pipe(concat('all.js'))
	.pipe(gulp.dest('./build'))
	.pipe(browserSync.stream());
}

function clean () {
	return del(['./build/*']);
}
function scss (){
	return gulp.src('./style/*.scss')
	.pipe(plumber({
      errorHandler: function(err) {
        notify.onError({
          title: "Ошибка в CSS",
          message: "<%= error.message %>"
        })(err);
      }
    }))
    .pipe(sourcemaps.init() )
	.pipe (sass())
	.pipe(concat('all.css'))
	.pipe(gulp.dest('./build'))
	.pipe(browserSync.stream());
}
function watch(){
	
	    browserSync.init({
        server: {
            baseDir: "./build",
            directory: true
        }
   		});   		
	    gulp.watch('./views/*.html', html);
	    gulp.watch('./style/*.scss', scss);
	    gulp.watch('./game_logic/**/*.js', js_files);
	    gulp.watch('./*.html', browserSync.reload);
}

let go = gulp.series(clean, gulp.parallel(html, images, scss, js_files), gulp.series(watch));
gulp.task('go', go);

