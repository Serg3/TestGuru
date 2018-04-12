document.addEventListener('turbolinks:load', function() {
  var timerView = document.querySelector('.timer')

  if (timerView) {
    var timeLeft = timer_view.dataset.timer

    setInterval(function() {
      if (timeLeft > 0) {
        timeLeft -= 1
      } else {
        alert('Time is over!')
        document.querySelector('form').submit()
      }

      resultTime = parseInt(timeLeft / 60) + ':' + timeLeft % 60
      timerView.innerHTML = resultTime
    }, 1000)
  }
})
