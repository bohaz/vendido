import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sidebar"]
  connect() {
 
  }

  close() {
    this.sidebarTarget.classList.remove("translate-x-0")
    this.sidebarTarget.classList.add("translate-x-full")

    setTimeout(() => {
      this.element.remove()
    }
    , 250)
  }
}
