getTemplate = ->
  Template.instance()

Template.posts.onCreated ->
  getTemplate().loaded = new ReactiveVar 0
  getTemplate().limit = new ReactiveVar 5

  getTemplate().autorun ->
    limit = getTemplate().limit.get()
    console.log "Asking for #{limit} posts..."

    subscription = getTemplate().subscribe('posts', limit)

    if subscription.ready()
      console.log "> Received #{limit} posts. \n\n"
      getTemplate().loaded.set(limit)
    else
      console.log "> Subscription is not ready yet. \n\n"

    getTemplate().posts = ->
      Posts.find({}, {limit: getTemplate().loaded.get()})

Template.posts.helpers
  posts: ->
    getTemplate().posts()
  hasMorePosts: ->
    getTemplate().posts().count() >= getTemplate().limit.get()


Template.posts.events
  "click .load-more": (event, template) ->
    event.preventDefault()

    limit = getTemplate().limit.get()
    limit += 5
    getTemplate().limit.set(limit)
