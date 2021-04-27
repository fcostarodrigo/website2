tag = require './tag'

test 'empty tag', ->
  html = '<div></div>'
  expect(tag('div')).toBe(html)

test 'tag with attribute', ->
  html = '<div id="unique"></div>'
  expect(tag('div', id: 'unique')).toBe(html)

test 'tag with attributes', ->
  html = '<div id="unique" class="bold"></div>'
  expect(tag('div', id: 'unique', class: 'bold')).toBe(html)

test 'tag with child', ->
  html = '<div>hello</div>'
  expect(tag('div', 'hello')).toBe(html)

test 'tag with children', ->
  html = '<div>Hello World!</div>'
  expect(tag('div', 'Hello', ' World!')).toBe(html)

test 'tag with array children', ->
  html = '<div>Hello World!</div>'
  expect(tag('div', ['Hello', ' World!'])).toBe(html)

test 'tag with tag', ->
  html = '<div><div></div></div>'
  expect(tag('div', tag('div'))).toBe(html)

test 'tag with tags', ->
  html = '<div><div></div><div></div></div>'
  expect(tag('div', tag('div'), tag('div'))).toBe(html)
