
React = require 'react'

Banner = React.createFactory require '../src/banner'

div = React.createFactory 'div'

if typeof window is 'undefined'
  isDisabled = false
else
  isDisabled = localStorage.getItem('disabled-jianliao-app-banner') is 'disabled'

module.exports = React.createClass
  displayName: 'app-page'

  render: ->
    div className: 'app-page',
      Banner isDisabled: isDisabled
