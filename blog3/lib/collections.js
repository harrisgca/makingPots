Posts = new Mongo.Collection("posts");
Posts.attachSchema(new SimpleSchema({
  title: {
    type: String,
    min: 0,
    max: 30
  },
  content: {
    type: String,
    min: 0
  },
  createdAt: {
    type: Date,
    autoValue: function() {
      return new Date();
    }
  }
}));

Comments = new Mongo.Collection("comments");
Comments.attachSchema(new SimpleSchema({
  content: {
    type: String,
    min: 0
  },
  postId: {
    type: String,
    optional: false
  },
  createdAt: {
    type: Date,
    autoValue: function() {
      return new Date();
    }
  }
}));
