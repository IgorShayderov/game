const gulp = require('gulp');
const njkRender = require('gulp-nunjucks-render');
const prettify = require('gulp-html-prettify');
const concat = require('gulp-concat');
const uglify = require('gulp-uglify');
const del = require('del');
const browserSync = require('browser-sync').create();
const sass = require('gulp-sass');
const autoprefixer = require('gulp-autoprefixer');
const plumber = require('gulp-plumber');
const notify = require('gulp-notify');
const sourcemaps = require('gulp-sourcemaps');
const cleanCSS = require('gulp-clean-css');
const data = require('gulp-data');
const fs = require('fs');
const webpack = require('webpack-stream');
const gulpif = require('gulp-if');
const imagemin = require('gulp-imagemin');

const isDev = true;

let webpackConfig = {
	output: {
		filename: 'all.js'
	},
    module: {
        rules: [
            {
                test: /\.js$/,
                loader: 'babel-loader',
                exclude: '/node_modules/'
            }
        ]
    },
    mode: isDev? 'development' : 'production',
    devtool: isDev? 'eval-source-map' : 'none'
};

function images(){
	return gulp.src('./src/images/**/*')
	.pipe(imagemin())
	.pipe(gulp.dest('./build/img'))
}
function nunjucks() {	
	return gulp.src('./src/views/main.njk')
	.pipe(plumber({
		errorHandler: function(err) {
			notify.onError({
			title: "Ошибка в Nunjucks",
			message: "<%= error.message %>"
			})(err);
		}
		}))
	.pipe(njkRender())
	.pipe(prettify({
		max_preserve_newlines: 1
	}))
	.pipe(gulp.dest('./build'))
	.pipe(gulpif(isDev, browserSync.stream()));
}
function html() {
	return gulp.src('./src/views/**/*.html')
	.pipe(gulp.dest('./build'))
	.pipe(gulpif(isDev, browserSync.stream()));
}
function scss (){
	return gulp.src('./src/style/**/*.scss')
	.pipe(plumber({
    	errorHandler: function(err) {
			notify.onError({
			title: "Ошибка в CSS",
			message: "<%= error.message %>"
			})(err);
	}
    }))
    .pipe(gulpif(isDev, sourcemaps.init()))
	.pipe (sass())
	.pipe(gulpif(!isDev, autoprefixer(['last 15 versions', '> 1%', 'ie 8', 'ie 7'], { cascade: true })))
	.pipe(concat('all.css'))
	.pipe(cleanCSS({
		level: 2
	}))
	.pipe(gulpif(isDev, sourcemaps.write()))
	.pipe(gulp.dest('./build'))
	.pipe(gulpif(isDev, browserSync.stream()));
}
function scripts() {
	return gulp.src('./src/game_logic/main.js')
	.pipe(webpack(webpackConfig))
	.pipe (gulp.dest('./build'))
	.pipe(gulpif(isDev, browserSync.stream()));
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
   		
	    gulp.watch('./src/vews/**/*.html', html);
	    gulp.watch('./src/views/main.njk', nunjucks, browserSync.reload);
	    gulp.watch('./src/style/**/*.scss', scss, browserSync.reload);
	    gulp.watch('./src/game_logic/**/*.js', scripts, browserSync.reload);
}

gulp.task('cleaner', clean);
let go = gulp.series(clean, images, html, gulp.parallel(nunjucks, scss, scripts), gulp.series(watch));
gulp.task('default', go);
let production = gulp.series(clean, images, html, gulp.parallel(nunjucks, scss, scripts));
gulp.task('prod', production);