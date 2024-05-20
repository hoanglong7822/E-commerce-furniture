const loginButton = document.getElementById('loginButton'); // Lấy nút đăng nhập
const loginModal = document.getElementById('loginModal'); // Lấy modal đăng nhập
const closeButton = document.querySelector('.close'); // Lấy nút đóng modal

loginButton.addEventListener('click', function() {
  loginModal.style.display = 'block'; // Hiển thị modal
});

closeButton.addEventListener('click', function() {
  loginModal.style.display = 'none'; // Ẩn modal
});

window.onclick = function(event) {
  if (event.target == loginModal) {
    loginModal.style.display = 'none'; // Ẩn modal khi nhấp vào vùng nền ngoài
  }
}
