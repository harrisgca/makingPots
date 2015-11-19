Posts = new Mongo.Collection("posts");
Posts.attachSchema(new SimpleSchema({
  title:{
    type:String,
    min:0
  },
  content:{
    type:String,
    min:0
  }
}));
Posts.allow({
  insert: function(){ 
    return true;
  },
  update: function(){
    return true;
  },
  remove: function(){
    return true;
  }
});
