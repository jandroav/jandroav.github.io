/*=============== SHOW NETWORKS ===============*/
const showConnect = (toggleCard, connectCard) => {
  const toggle = document.getElementById(toggleCard),
    connect = document.getElementById(connectCard);

  // Make sure elements exist before adding event listeners
  if (!toggle || !connect) {
    console.error(`Elements not found: toggle=${toggle}, connect=${connect}`);
    return;
  }

  toggle.addEventListener("click", () => {
    // If the animation class exists, we add the down-animation class
    if (connect.classList.contains("animation")) {
      connect.classList.add("down-animation");

      // We remove the down-animation class
      setTimeout(() => {
        connect.classList.remove("down-animation");
        connect.classList.remove("animation");
      }, 1000);
    } else {
      // We add the animation class to the div tag with the card__connect class
      connect.classList.add("animation");
    }
  });
};
showConnect("card-toggle", "card-connect");

/*=============== SHOW CERTS  ===============*/
const showCerts = (toggleCard, certsCard) => {
  const toggle = document.getElementById(toggleCard),
    cert = document.getElementById(certsCard);

  // Make sure elements exist before adding event listeners
  if (!toggle || !cert) {
    console.error(`Elements not found: toggle=${toggle}, cert=${cert}`);
    return;
  }

  toggle.addEventListener("click", () => {
    // If the animation class exists, we add the down-animation class
    if (cert.classList.contains("animation")) {
      cert.classList.add("down-animation");

      // We remove the down-animation class
      setTimeout(() => {
        cert.classList.remove("down-animation");
        cert.classList.remove("animation");
      }, 1000);
    } else {
      // We add the animation class to the div tag with the card__cert class
      cert.classList.add("animation");
    }
  });
};
showCerts("card-cert-toggle", "card-cert");
