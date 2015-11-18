AutoForm.debug()
SimpleSchema.debug = true

Template.posts.helpers
  posts: () ->
    Posts.find({} , {sort: {createdAt: - 1} } )

  datePublished: () ->
    date = moment(this.createdAt).format("MM-DD-YYYY")
    time = moment(this.createdAt).format("HH:mm")
    "#{date} at #{time}"


AutoForm.hooks
  newpost:
    before:
      insert: (doc) ->
        user = Meteor.users.findOne(doc.userId)
        doc.author = user.emails[0].address
        doc
