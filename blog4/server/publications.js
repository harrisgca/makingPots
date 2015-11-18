Meteor.publish("posts", function(argument){
  return Posts.find();
});
Meteor.publish("comments", function(argument){
  return Comments.find();
});
