attributes = require './attributes'

test 'attributes', ->
  expect(attributes(class: 'class', id: 'id')).toBe(' class="class" id="id"')

test 'empty attributes', ->
  expect(attributes({})).toBe('')

test 'boolean attributes', ->
  expect(attributes(html: true)).toBe(' html')
