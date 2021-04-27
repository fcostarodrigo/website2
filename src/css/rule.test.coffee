rule = require './rule'

test 'css rule', ->
  expect(rule('body', margin: 0))
    .toBe('body{margin:0}')

test 'css rule with multiple selectors', ->
  expect(rule('body', 'html', margin: 0))
    .toBe('body,html{margin:0}')

test 'css rule with multiple properties', ->
  expect(rule('body', {margin: 0, color: 'black'}))
    .toBe('body{margin:0;color:black}')
