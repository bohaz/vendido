import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="menu"
export default class extends Controller {
  static targets = ["items"]

  open() {
    this.itemsTarget.classList.remove("translate-x-full")
    console.log("conectado")
  }

  close() {
  }
}
