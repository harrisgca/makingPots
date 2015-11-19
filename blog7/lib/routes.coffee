Router.route '/', ()->
  posts = Posts.find()
  this.render 'posts', data: ->
    posts
