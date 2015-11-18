AutoForm.debug();
SimpleSchema.debug = true;

Template.index.helpers({
  posts: function() {
    return Posts.find({}, {
      sort: {
        createdAt: -1
      }
    });
  }
});
