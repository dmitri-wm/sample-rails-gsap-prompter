$(document).ready ->
  content = $(".content")
  height = content.height()

  content.css("bottom", "-#{height}px")

  window.tl = new TimelineMax()
  tl.staggerTo ".content", 10, y:-height-400

  $("#pause").click ->
    tl.paused(!tl.paused())
    $(@).find("i").toggleClass("glyphicon-play glyphicon-pause")

  $("#back").click -> tl.reverse()

  $("#forward").click -> tl.reversed(false)

  $("#speed").change -> tl.timeScale($(@).val())

  $("#slider").slider
    range: false,
    min: 0,
    max: 100,
    step: 1,

  $("#slider").on "slide",  (event)->
      tl.pause();
      tl.progress( event.value/100 );

  updateSlider = -> $("#slider").slider("setValue", tl.progress() *100)

  tl.eventCallback("onUpdate", updateSlider);



