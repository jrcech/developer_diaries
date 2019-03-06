import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["stimulusTest", "turbolinksTest"];

  connect() {
    this.stimulusTestTarget.textContent = "Stimulus loaded";
    if (typeof Turbolinks !== "undefined") {
      this.turbolinksTestTarget.textContent = "Turbolinks loaded";
    }
  }
}
