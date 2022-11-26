const gulp = require('gulp')
const htmlmin = require('gulp-htmlmin')
const uglify = require('gulp-uglify')
const cleanCSS = require('gulp-clean-css')
const gulpsize = require('gulp-size')

gulp.task('minify-css', function()
{
	return gulp.src('_site/src/css/**/*.css')
		.pipe(cleanCSS({compatability: 'ie8'}))
		.pipe(gulp.dest('_site'))
})

gulp.task('minify-js',function()
{
	return gulp.src('_site/js/**/*.js')
		.pipe(uglify())
		.pipe(gulp.dest('_site'))
})

gulp.task('minify-html',function()
{
	return gulp.src('_site/**/*.html')
		.pipe(htmlmin({collapseWhitespace: true}))
		.pipe(gulp.dest('_site'))
})

gulp.task('check-size', function()
{
	const final_size = gulpsize()
	return gulp.src('_site/**')
		.pipe(final_size)
		.on('finish',function()
		{
			console.log("Total Size: ", final_size.prettySize)
		})
})

gulp.task('default', gulp.series('check-size','minify-css','minify-js','minify-html','check-size'))

