Session.setDefault('postId', "")

Template.post.onCreated ->
  Session.set('postId', Router.current().params._id)

Template.post.onDestroyed ->
  Session.set('postId', "")

Template.post.helpers
  post: () ->
    postId = Router.current().params._id
    Posts.findOne(postId)
  postId: () ->
    Router.current().params._id
  comments: () ->
    Comments.find(postId: Session.get('postId'))
