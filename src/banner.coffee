
React = require 'react'

styles = require './styles'

{a, div, span, img, noscript} = React.DOM

module.exports = React.createClass
  displayName: 'jianliao-app-banner'

  getInitialState: ->
    isHidden: false

  render: ->
    if @state.isHidden
      noscript()
    else
      div style: styles.box,
        div style: styles.iconClose, '×'
        div style: styles.avatar
        div style: styles.guide,
          div style: styles.title, '简聊'
          div style: styles.description, '安装手机应用'
