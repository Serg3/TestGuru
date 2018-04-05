document.addEventListener('turbolinks:load', function() {
  let passwordConfirmation = document.querySelector('#user_password_confirmation');

  if (passwordConfirmation) {
    passwordConfirmation.addEventListener('input', passwordComparsion);
  };
})

function passwordComparsion() {
  let password = document.querySelector('#user_password');
  let passwordConfirmation = document.querySelector('#user_password_confirmation');

  if (passwordConfirmation.value == '') {
    passwordConfirmation.classList.remove('border-success');
    passwordConfirmation.classList.remove('border-danger');
  } else if (password.value == passwordConfirmation.value) {
    passwordConfirmation.classList.add('border-success');
    passwordConfirmation.classList.remove('border-danger');
  } else {
    passwordConfirmation.classList.add('border-danger');
    passwordConfirmation.classList.remove('border-success');
  }
}
