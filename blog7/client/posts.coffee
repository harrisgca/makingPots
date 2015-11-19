Template.posts.onRendered ->
  console.log Template.currentData().fetch()

Template.posts.helpers
  posts: () ->
    Template.currentData()
