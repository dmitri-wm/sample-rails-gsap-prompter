App = angular.module('scroller',["ui.bootstrap-slider", "textAngular"])

App.controller "MainCtrl", ['$scope', ($scope)->
  $scope.progress = 0
  $scope.timeScale = 1
  $scope.tl = new TimelineMax(paused: true)

  $scope.tl.eventCallback "onUpdate", ->
    $("#slider").slider("setValue", $scope.tl.progress() *100)

  $scope.updateTlProgress = ->
    $scope.tl.pause()
    $scope.tl.progress($scope.progress/100)

  $scope.updateTimeScale = -> $scope.tl.timeScale($scope.timeScale)

  $scope.$watch "content", ->
    height = $(".content").height()
    $scope.tl.clear()
    $scope.tl.staggerTo ".content", 15, y:-height, startAt: {y: 400}, force3D: true
    $scope.updateTimeScale()

    unless $scope.tl.paused()
      $scope.tl.restart()
]