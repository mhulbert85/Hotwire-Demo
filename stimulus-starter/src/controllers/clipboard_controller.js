// src/controllers/clipboard_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["source"]
    static classes = ["supported"]

    copy(event) {
        event.preventDefault()
        this.sourceTarget.select()
        document.execCommand("copy")
    }

    connect() {
        navigator.permissions.query({ name: "clipboard-write" }).then((result) => {
            if (result.state === "granted") {
                this.element.classList.add(this.supportedClass);
            }
        });
    }
}