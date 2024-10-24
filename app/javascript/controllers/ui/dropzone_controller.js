import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["fileInput", "fileName", "removeFile", "openFile"];
  connect() {
    this.element.addEventListener("dragover", this.preventDragDefaults);
    this.element.addEventListener("dragenter", this.preventDragDefaults);
  }

  disconnect() {
    this.element.removeEventListener("dragover", this.preventDragDefaults);
    this.element.removeEventListener("dragenter", this.preventDragDefaults);
  }

  preventDragDefaults(e) {
    e.preventDefault();
    e.stopPropagation();
  }

  trigger() {
    this.fileInputTarget.click();
  }

  acceptFiles(event) {
    event.preventDefault();

    const files = event.dataTransfer
      ? event.dataTransfer.files
      : event.target.files;
    [...files].forEach((file) => {
      this.uploadFile(file);
    });
    this.fileNameTarget.innerText = [...files]
      .map((file) => file.name)
      .join(", ");

    if (files && this.hasRemoveFileTarget) this.removeFileTarget.value = false;
  }

  clearFile(e) {
    e.stopPropagation();
    e.preventDefault();

    this.removeFileTarget.value = true;

    this.fileInputTarget.value = '';
    this.fileNameTarget.innerText = '';

    this.openFileTarget.classList.add('hidden');
  }

  // Implement your own file upload strategy here...
  uploadFile(file) {
    // console.log("Received file for upload: ", file);
    // console.log("Implement your own file upload strategy here...");
    //   const formData = new FormData();
    //   formData.append("file", file);
    //   fetch("/upload", {
    //     method: "POST",
    //     body: formData,
    //   })
    //     .then((response) => response.json())
    //     .then((data) => {
    //       console.log(data);
    //     });
  }
}
