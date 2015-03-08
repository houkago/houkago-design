gulp = require 'gulp'
sketch = require 'gulp-sketch'

gulp.task 'sketch', ->
  gulp.src './sketch/source/*.sketch'
  .pipe sketch
    export: 'slices'
    formats: 'png'
  .pipe gulp.dest './sketch/out/'

gulp.task 'watch', ->
  gulp.watch [
    "./sketch/source/*.sketch"
  ], ['sketch']

gulp.task 'default', ['sketch', 'watch']
