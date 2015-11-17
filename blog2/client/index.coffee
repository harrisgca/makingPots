SimpleSchema.debug = true
AutoForm.debug()

Tracker.autorun ->
  console.log Posts.find().fetch()

Template.index.helpers
  posts: ->
    Posts.find()
