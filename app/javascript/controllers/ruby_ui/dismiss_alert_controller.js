import { Controller } from "@hotwired/stimulus"
import { useTransition } from "stimulus-use"

// Connects to data-controller="ruby-ui--dismiss-alert"
export default class extends Controller {
  initialize() {
    this.dismiss = this.dismiss.bind(this)
  }

  connect() {
    useTransition(this);

    this.enter();
  }

  async dismiss() {
    await this.leave();

    this.element.remove();
  }
}
