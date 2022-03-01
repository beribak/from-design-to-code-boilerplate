import { Controller } from "stimulus"

export default class extends Controller {
    static targets = ["info", "form", "card"]
  
    showForm() {

        this.infoTarget.classList.add("d-none")
        this.formTarget.classList.remove("d-none")
    }

    submitForm(event) {
        event.preventDefault()
        let url = this.formTarget.action

        fetch(url, {headers: {"Accept": "text/plain"}, method: "PATCH", body: new FormData(this.formTarget)})
        .then(response => response.text())
        .then((data) => {  this.cardTarget.outerHTML = data})
    }
}