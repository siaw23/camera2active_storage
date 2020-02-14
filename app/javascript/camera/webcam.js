document.addEventListener("turbolinks:load", function () {
  if (document.getElementById('snap')) {
    var cameraClick = new Audio("/camera_click.mp3")
    var changePictureButton = document.getElementById('change_picture')

    if (document.getElementById('snap') && document.getElementById('viewfinder')) {
      var snapButton = document.getElementById('snap')
      var videdDiv = document.getElementById('viewfinder')

      videdDiv.style.display = "none"
      snapButton.style.display = "none"
    }

    function hasNavigator() {
      return !!(navigator.mediaDevices && navigator.mediaDevices.getUserMedia)
    }

    if (hasNavigator()) {
      var canvas = document.createElement('canvas')
      var video = document.querySelector('video')

      var hiddenPlayerPicture = document.getElementById("player_player_picture")

      var constraints = {
        video: {
          width: { min: 288, ideal: 288 },
          height: { min: 301, ideal: 301 }
        }
      }

      if (video) {
        navigator.mediaDevices.getUserMedia(constraints).then((stream) => { video.srcObject = stream })
      }

      if (changePictureButton) {
        changePictureButton.onclick = function () {
          videdDiv.style.display = ""
          snapButton.style.display = ""
        }
      }

      if (snapButton) {
        snapButton.onclick = function () {
          cameraClick.play()

          canvas.width = video.width
          canvas.height = video.height

          canvas.getContext('2d').drawImage(video, 0, 0)

          var drawnImage = canvas.toDataURL('image/jpeg')

          document.getElementById("shot").src = drawnImage
          hiddenPlayerPicture.value = drawnImage

          videdDiv.style.display = "none"
          snapButton.style.display = "none"
        }
      }
    }
  }
})
