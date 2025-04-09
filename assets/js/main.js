/*=============== SHOW NETWORKS ===============*/
const showConnect = (toggleCard, connectCard) => {
  const toggle = document.getElementById(toggleCard),
    connect = document.getElementById(connectCard);

  toggle.addEventListener("click", () => {
    // If the animation class exists, we add the down-animation class
    if (connect.classList.contains("animation")) {
      connect.classList.add("down-animation");

      // We remove the down-animation class
      setTimeout(() => {
        connect.classList.remove("down-animation");
      }, 1000);
    }

    // We add the animation class to the div tag with the card__connect class
    connect.classList.toggle("animation");
  });
};
showConnect("card-toggle", "card-connect");

/*=============== SHOW CERTS  ===============*/
const showCerts = (toggleCard, certsCard) => {
  const toggle = document.getElementById(toggleCard),
    social = document.getElementById(certsCard);

  toggle.addEventListener("click", () => {
    // If the animation class exists, we add the down-animation class
    if (social.classList.contains("animation")) {
      social.classList.add("down-animation");

      // We remove the down-animation class
      setTimeout(() => {
        social.classList.remove("down-animation");
      }, 1000);
    }

    // We add the animation class to the div tag with the card__cert class
    social.classList.toggle("animation");
  });
};
showCerts("card-cert-toggle", "card-cert");
