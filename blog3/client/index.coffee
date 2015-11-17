AutoForm.debug()
SimpleSchema.debug = true

Template.index.helpers
  posts: () ->
    Posts.find({} , {sort: {createdAt: - 1} } )
