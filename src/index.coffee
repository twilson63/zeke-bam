exports.attach = ->
  @helpers['jpg2'] = (name) ->
    center ->
      img src: "http://#{name}.jpg.to", style: 'max-height: 90%;max-width:90%'

  @helpers['slide'] = (title, jpg, fn) ->
    if typeof(jpg) is 'function' then fn = jpg; jpg = null
    section '.container.hero-unit', ->
      h1 style: 'margin-bottom: 20px;', title if title?
      jpg2 jpg if jpg?
      fn() if fn?

  @helpers['ruby'] = (codeText) ->
    div '.row', ->
      div '.span6', ->
        pre '.prettyprint', -> code '.language-ruby', codeText

  @helpers['sql'] = (codeText) ->
    div '.row', ->
      div '.span6', ->
        pre '.prettyprint', -> code '.language-sql', codeText

  @helpers['js'] = (codeText) ->
    div '.row', ->
      div '.span6', ->
        pre '.prettyprint', -> code '.language-javascript', codeText

  @helpers['escape'] = (html) -> html.replace(/</g, '&lt;').replace(/>/, '&gt;')

