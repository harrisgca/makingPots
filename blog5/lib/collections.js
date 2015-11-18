Posts = new Mongo.Collection("posts");
// CollectionName.allow({
//   insert: function(){
//     return true;
//   },
//   update: function(){
//     return true;
//   },
//   remove: function(){
//     return true;
//   }
// });
//
Posts.allow({
  insert: function(){
    if (Meteor.user) {
      return true;
    }
  }
});

Posts.attachSchema(new SimpleSchema({
  title: {
    type: String,
    min: 0
  },
  content: {
    type: String,
    min: 0
  },
  userId: {
    optional:false,
    type: String
  },
  author:{
    type: String
  },
  createdAt:{
    type: Date,
    autoValue: function(){
      return new Date();
    }
  }
}));
