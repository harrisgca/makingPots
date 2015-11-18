Template.show.helpers({
  post: function(){
    let id = Router.current().params._id;
    return Posts.findOne(id);
  },
  comments: function(){
    let postId = Router.current().params._id;
    return Comments.find({postId: postId});
  }
});
