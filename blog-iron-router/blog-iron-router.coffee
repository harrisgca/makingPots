Router.route '/', ->
  this.layout 'Layout'
  this.render 'Blog'

Router.route '/blog/new', ->
  @layout 'Layout'
  @render 'ArticleNew'

Router.route '/blog/:_id', (->
  @layout 'Layout'
  @render 'Article'
),
  name: 'article.show'

if Meteor.isClient
  Template.Blog.helpers
    articles: ->
      Articles.find()



if Meteor.isServer
  Meteor.startup ->
  	Articles.remove({})
  Meteor.startup ->
  	_.each [1..3], ->
      Articles.insert
        title: Fake.sentence(5)
        body: Fake.paragraph(3)
        createdAt: new Date()
        author: Fake.user().fullname
