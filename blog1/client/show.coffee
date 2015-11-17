Template.show.helpers
  post: ->
    Posts.findOne(Router.current().params._id)
  comments: ->
    Comments.find(postId: Router.current().params._id)
  postId: ->
    Router.current().params._id
