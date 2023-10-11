const wrapper = document.querySelector(".wrapper");
const signUpLink = document.querySelector(".signUp-link");
const signInLink = document.querySelector(".signIn-link");

signUpLink.addEventListener("click", () => {
  wrapper.classList.toggle("show-sign");
});

signInLink.addEventListener("click", () => {
  wrapper.classList.toggle("show-sign");
});
