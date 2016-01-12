
React = require 'react'

require('volubile-ui/ui/index.less')
require('./main.css')

render = ->
  Page = React.createFactory require './page'
  React.render Page(), document.querySelector('.demo')

render()

if module.hot
  module.hot.accept './page', ->
    render()
