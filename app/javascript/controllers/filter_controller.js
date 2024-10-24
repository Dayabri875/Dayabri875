import { ApplicationController, useDebounce } from "stimulus-use";

// Connects to data-controller="filter"
export default class extends ApplicationController {
  static targets = ["query"];

  connect() {
  }

  clear(event) {
    event.preventDefault();

    if (this.hasQueryTarget) this.queryTarget.value = '';

    this.element.requestSubmit();
  }
}
