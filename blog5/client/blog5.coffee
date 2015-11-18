AutoForm.debug()
SimpleSchema.debug = true

Template.posts.helpers
  posts: () ->
    Posts.find({} , {sort: {createdAt: - 1} } )
  # author: () ->
  #   user = Meteor.users.findOne(this.userId)
  #   email = user?.emails?[0].address
  #   email

AutoForm.hooks
  addPost:
    before:
      insert: (doc) ->
        console.log doc
        user = Meteor.users.findOne(doc.userId)
        email = user?.emails?[0].address
        doc.author = email
        doc
    after:
      insert: (error, result) ->
        console.log result
        if (error)
          console.log("insert error:", error)
        else
          console.log("insert result:", result)
