doctype = require './tags/doctype'
html = require './tags/html'
head = require './tags/head'
charset = require './tags/charset'
viewport = require './tags/viewport'
author = require './tags/author'
descriptionTag = require './tags/description'
keywords = require './tags/keywords'
titleTag = require './tags/title'
style = require './tags/style'

module.exports (lang, title, description, menu, breadcrumbs, cards) -> [
  doctype
  html lang, [
    head [
      charset
      viewport
      author
      descriptionTag description
      keywords
      titleTag title
      style
    ]
  ]
].join('')
