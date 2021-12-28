// src/controllers/slideshow_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["slide"]
    static values = { index: Number, effect: { type: String, default: "kenburns" } }


    next() {
        this.indexValue++
    }

    previous() {
        this.indexValue--
    }

    indexValueChanged() {
        this.showCurrentSlide()
    }

    showCurrentSlide() {
        this.slideTargets.forEach((element, index) => {
            element.hidden = index != this.indexValue
        })
    }
}