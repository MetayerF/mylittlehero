var pictureInput = document.querySelector(".js-picture-upload-input-with-preview");
pictureInput.addEventListener("change", pictureUploadPreview, true);
var displayPreviewTarget = document.querySelector(".js-preview-thumbnails");

function pictureUploadPreview() {
  displayPreviewTarget.innerHTML = "";
  var fileList                    = this.files;
  var file                        = fileList[0];

  var reader = new FileReader();
  reader.onloadend = function(){
    var image = new Image();
    image.height = 100;
    image.src = reader.result;
    displayPreviewTarget.appendChild(image);
    displayPreviewTarget.classList.remove("hidden");
  }
  if (file) {
    reader.readAsDataURL(file);
  }
}
