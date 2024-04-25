import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal"]
  connect() {
 
  }

  close() {
    this.modalTarget.classList.remove("translate-x-0")
 console.log("close")
  }
}
