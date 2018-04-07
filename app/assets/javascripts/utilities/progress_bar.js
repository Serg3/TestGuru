document.addEventListener('turbolinks:load', function() {
  var progressBar = document.querySelector('.progress-bar')

  if (progressBar) {
    var questionNumber = progressBar.dataset.questionNumber
    var questionsCount = progressBar.dataset.questionsCount

    var percentage = ((questionNumber * 100) / questionsCount) + '%'

    progressBar.style.width = percentage;
    progressBar.textContent = percentage;
  }
})
