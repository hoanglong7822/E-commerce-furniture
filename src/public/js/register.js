const registerButton = document.getElementById('registerButton');
const registerModal = document.getElementById('registerModal');
const registerCloseButton = document.querySelector('#registerModal .close');

// Event listener for opening the registration modal
registerButton.addEventListener('click', function() {
  loginModal.style.display = 'none'; // Hide the login modal
  registerModal.style.display = 'block';
});

// Event listener for closing the registration modal
registerCloseButton.addEventListener('click', function() {
  registerModal.style.display = 'none';
});