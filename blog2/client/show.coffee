Template.show.helpers
  post: ()->
    postId = Router.current().params._id
    console.log Posts.findOne(_id:postId)
    Posts.findOne(_id: postId)
