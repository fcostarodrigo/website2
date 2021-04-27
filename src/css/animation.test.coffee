animation = require './animation'
rule = require './rule'

test 'css animation', ->
  expect(animation('fade', rule('from', opacity: 1), rule('to', opacity: 0)))
    .toBe('@keyframes fade{from{opacity:1}to{opacity:0}}')