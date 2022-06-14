import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["btn"]
  connect() {
    console.log("hello from navbar_controller!")
  }
  friendClicked(event) {
    console.log(event.currentTarget)
  }
}
