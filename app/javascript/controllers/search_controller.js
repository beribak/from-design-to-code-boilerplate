import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["input", "list", "form"]

  
    searchMovies() {
        let url = `${this.formTarget.action}?query=${this.inputTarget.value}`

        fetch(url, {headers: {"Accept": "text/plain"} })
        .then(response => response.text())
        .then((data) => { this.listTarget.outerHTML = data })
    }
}