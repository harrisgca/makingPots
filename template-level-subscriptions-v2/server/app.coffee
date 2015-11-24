Meteor.startup ->
  if Posts.find().count() == 0
    _.each([1..50], ->
      Posts.insert
        title: Fake.sentence(6)
        body: Fake.paragraph(3)
      )

Meteor.publish 'posts', (limit) ->
  Meteor._sleepForMs(2000)
  Posts.find {}, {limit: limit}
