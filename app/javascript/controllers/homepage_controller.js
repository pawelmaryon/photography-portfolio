import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["name", "profile"]
  
  
  greet() {
    console.log("Hello, Stimulus!", this.element)

  }
  profile_link() {
    preventDefault
    const user = this.profile
    
    console.log(user)
  }
}