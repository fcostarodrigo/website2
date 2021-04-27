rule = require './rule'
animation = require './animation'

module.exports = -> [
  animation 'card', [
    rule 'from',
      opacity: 0
      transform: 'translateX(100%)'

    rule 'to',
      opacity: 1
      transform: 'translateX(0)'
  ]

  rule 'body', 'html',
    margin: 0
    padding: 0
    'font-family': 'Verdana, Geneva, Tahoma, sans-serif'
    background: '#c6c6c6'

  rule 'body'
    'min-height': '100vh'
    'overflow-x': 'hidden'
    display: 'grid'
    'grid-template-columns': 'min-content auto'
    'grid-template-rows': 'min-content min-content auto'
    'grid-template-areas': '"header header""menu breadcrumb""menu main"'

  rule 'h1'
    'grid-area': 'header'
    margin: 0
    padding: '1rem'
    color: '#fff'
    'text-shadow': '2px 2px 2px #000'
    background: '#2d914b'
    'text-align': 'center'

  rule '.menu'
    'grid-area': 'menu'
    background: '#304032'

  rule '.menu a'
    'text-decoration': 'none'
    color: '#fff'
    'font-weight': 'bold'
    'text-shadow': '1px 1px 1px #000'
    padding: '1.1rem 1.4rem'
    display: 'block'
    transition: 'background-color .3s'

  rule '.menu a:hover'
    'background-color': 'rgba(0, 0, 0, .25)'

  rule '.breadcrumb'
    'grid-area': 'breadcrumb'
    background: '#49714e'

  rule '.breadcrumb a'
    'text-decoration': 'none'
    color: '#fff'
    'font-weight': 'bold'
    'text-shadow': '1px 1px 1px #000'
    padding: '1.1rem 1.4rem'
    display: 'inline-block'
    transition: 'background-color .3s'

  rule '.breadcrumb a:hover'
    'background-color': 'rgba(0, 0, 0, .25)'

  rule 'main'
    'grid-area': 'main'

  rule '.card'
    margin: '2rem'
    padding: '2rem'
    'border-radius': '5px'
    color: '#000'
    background: '#f5f5f5'
    animation: 'card .6s'

  rule '.card>h2:first-child'
    'margin-top': 0

  rule '.card:nth-child(1)'
    animation: 'card .3s'

  rule '.card:nth-child(2)'
    animation: 'card .4s'

  rule '.card:nth-child(3)'
    animation: 'card .5s'

  rule 'pre'
    background: '#fff'
    border: '1px solid #cecece'
    'border-radius': '4px'
    padding: '1rem'
].join('')