Posts = new Mongo.Collection("posts");

Posts.allow({
  insert: function() {
    if (Meteor.user()) {
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
  userId:{
    type:String
  },
  author:{
    type:String
  },
  createdAt: {
    type: Date,
    autoValue: function() {
      return new Date();
    }
  }
}));
