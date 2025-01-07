import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["navButton", "navCloseButton"];

  connect() {
    // Store bound function references
    this.boundOpenNav = this.openNav.bind(this);
    this.boundCloseNav = this.closeNav.bind(this);

    this.navButtonTarget.addEventListener("click", this.boundOpenNav);
    this.navCloseButtonTarget.addEventListener("click", this.boundCloseNav);
  }

  disconnect() {
    this.navButtonTarget.removeEventListener("click", this.boundOpenNav);
    this.navCloseButtonTarget.removeEventListener("click", this.boundCloseNav);
  }

  openNav() {
    const mainNav = document.getElementById("main-nav");
    mainNav.style.display = "block";
    mainNav.classList.remove("slide-out-top");
    mainNav.classList.add("slide-in-top");
  }

  closeNav() {
    const mainNav = document.getElementById("main-nav");
    mainNav.classList.add("slide-out-top");
    // mainNav.style.display = "none";
  }
}
