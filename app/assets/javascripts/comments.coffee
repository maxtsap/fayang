app = angular.module("Fayang", ["ngResource"])

app.factory "Posts", ($resource) ->
  $resource("/posts/:id", {id: "@id"}, {update: {method: "PUT"}})

@PostsController = ($scope, Posts) ->

  $scope.posts = Posts.query()

  $scope.addPost = ->
    Postss.save $scope.newPost, (post) ->
      $scope.posts.push(post)
      $scope.newPost = {}

