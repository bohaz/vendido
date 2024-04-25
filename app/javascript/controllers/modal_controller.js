import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sidebar"]
  connect() {
    setTimeout(() => {
      this.sidebarTarget.classList.remove("translate-x-full")
      this.sidebarTarget.classList.add("translate-x-0")
    }
    , 50)
  }

  close() {
    this.sidebarTarget.classList.remove("translate-x-0")
    this.sidebarTarget.classList.add("translate-x-full")

    setTimeout(() => {
      this.element.parentElement.removeAttribute("src")
      this.element.remove()
    }
    , 250)
  }
}
