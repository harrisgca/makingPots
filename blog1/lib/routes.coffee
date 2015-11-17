Router.route '/', () ->
  this.render 'index'

Router.route '/:_id', () ->
  this.render 'show'
