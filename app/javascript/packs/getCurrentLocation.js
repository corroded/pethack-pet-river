const getLocation = function() {
  console.log("getting location");
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(sendLocation);
  } else {
    console.log("Geolocation is not supported by this browser.");
  }
}

const sendLocation = function(position) {
  const lat = position.coords.latitude;
  const lon = position.coords.longitude;

  const id = document.querySelector('[data-js-pet-slug]').dataset.jsPetSlug;

  const data = { lat, lon, id };

  fetch('/notify', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'X-CSRF-Token': document.querySelector("meta[name=csrf-token]").content,
    },
    body: JSON.stringify(data),
  })
    .then(response => console.log(response))
    .catch(error => console.log('Error:' + error))
}

const notifierLink = document.querySelector('[data-js-notify="true"]');

notifierLink.addEventListener("click", function(e) {
  e.preventDefault();
  console.log(e.target);
  getLocation();
});
