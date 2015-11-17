AutoForm.debug()
SimpleSchema.debug = true

Template.index.helpers
  posts: ->
    # Posts.find({}, {sort:{}})
    console.log Posts.find().fetch()
    return Posts.find({} , {sort: {createdAt: - 1} } )
