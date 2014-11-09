App = angular.module('scroller',["ui.bootstrap-slider", "textAngular"])

App.controller "MainCtrl", ($scope)->
  $scope.progress = 0
  $scope.tl = new TimelineMax(paused: true)

  $scope.tl.eventCallback "onUpdate", ->
    $("#slider").slider("setValue", $scope.tl.progress() *100)

  $scope.updateTlProgress = ->
    $scope.tl.pause()
    $scope.tl.progress($scope.progress/100)

  $scope.$watch "content", ->
    height = $(".content").height()
    $scope.tl.clear()
    $scope.tl.staggerTo ".content", 10, y:-height, startAt: {y: 400}
    unless $scope.tl.paused()
      $scope.tl.restart()


