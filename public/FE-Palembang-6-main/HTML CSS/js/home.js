const mobile = document.getElementById("mobile");
const nav = document.getElementById("navbar");

// ketika menu di klik muncul
if (bar) {
  bar.addEventListener("click", () => {
    nav.classList.add("active");
  });
}
