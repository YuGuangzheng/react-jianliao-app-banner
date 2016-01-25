
stir = require 'stir-template'
React = require 'react'
config = require 'config'

assetLinks = require '../packing/asset-links'

Page = React.createFactory require '../app/page'

{html, head, title, body, meta, script, link, div, a, span} = stir

repo = 'http://github.com/jianliaoim/react-jianliao-app-banner'

module.exports = (data) ->

  stir.render stir.doctype(),
    html null,
      head null,
        title null, "Jianliao App Banner"
        meta charset: 'utf-8'
        meta name: 'viewport', content: 'initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no'
        link rel: 'icon', href: 'http://tp4.sinaimg.cn/5592259015/180/5725970590/1'
        if assetLinks.style?
          link rel: 'stylesheet', href: assetLinks.style
        script src: assetLinks.vendor, defer: true
        script src: assetLinks.main, defer: true
      body null,
        div class: 'intro',
          div class: 'title', "This is a demo of Jianliao Android banner."
          div null,
            span null, "Read more at "
            a href: repo, repo
            span null, '.'
        div class: 'demo',
          React.renderToString Page()
