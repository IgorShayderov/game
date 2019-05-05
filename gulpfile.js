const gulp = require('gulp');
const concat = require('gulp-concat');
const del = require('del');
const browserSync = require('browser-sync').create();
const jsFiles = [
'./game_logic/jQuery/jquery-3.4.0.min.js',
'./game_logic/main_menu.js',
'./game_logic/player.js'
]

function html(){
	return gulp.src('./views/*.html')
	.pipe(gulp.dest('./build'))
	.pipe(browserSync.stream());
}

function images(){
	return gulp.src('./images/*.*')
	.pipe(gulp.dest('./build/images'))
}

function style() {
	return gulp.src('./style/*.css')
	.pipe(concat('all.css'))
	.pipe(gulp.dest('./build'))
	.pipe(browserSync.stream());
}
function js_files() {
	return gulp.src(jsFiles)
	.pipe(concat('all.js'))
	.pipe(gulp.dest('./build'))
	.pipe(browserSync.stream());
}
function clean () {
	return del(['./build/*']);
}
function watch() {
	
	    browserSync.init({
        server: {
            baseDir: "./build",
            directory: true
        }
   		});   		
	    gulp.watch('./views/*.html', html);
	    gulp.watch('./style/*.css', style);
	    gulp.watch('./game_logic/**/*.js', js_files);
	    gulp.watch('./*.html', browserSync.reload);
}

let go = gulp.series(clean, gulp.parallel(html, images, style, js_files), gulp.series(watch));
gulp.task('go', go);

