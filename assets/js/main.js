/*=============== SHOW NETWORKS ===============*/
const showConnect = (toggleCard, connectCard) => {
  const toggle = document.getElementById(toggleCard),
    connect = document.getElementById(connectCard);

  // Make sure elements exist before adding event listeners
  if (!toggle || !connect) {
    console.error(`Elements not found: toggle=${toggle}, connect=${connect}`);
    return;
  }

  // Add transition class to toggle button for smoother animation
  toggle.classList.add("toggle-transition");

  toggle.addEventListener("click", () => {
    // Toggle 'active' class on the toggle button
    toggle.classList.toggle("toggle-active");

    // If the animation class exists, we add the down-animation class
    if (connect.classList.contains("animation")) {
      connect.classList.add("down-animation");

      // We remove the down-animation class
      setTimeout(() => {
        connect.classList.remove("down-animation");
        connect.classList.remove("animation");
      }, 800); // Slightly faster animation
    } else {
      // We add the animation class to the div tag with the card__connect class
      connect.classList.add("animation");
    }
  });
};
showConnect("card-toggle", "card-connect");

/*=============== THEME DARK/LIGHT ===============*/
const themeButton = document.getElementById("theme-button");
const themeIcon = document.getElementById("theme-icon");
const darkTheme = "dark-theme";
const lightTheme = "light-theme";
const iconTheme = "ri-sun-line";

// Previously selected theme (if user selected)
const selectedTheme = localStorage.getItem("selected-theme");
const selectedIcon = localStorage.getItem("selected-icon");

// Detect if the user has a preferred color scheme
const prefersDarkScheme = window.matchMedia(
  "(prefers-color-scheme: dark)"
).matches;

// Set initial theme based on preference or localStorage
const getCurrentTheme = () => {
  if (selectedTheme) {
    // If there's a theme selection in localStorage, use that
    document.body.classList.add(selectedTheme);
    if (selectedIcon === "ri-sun-line") {
      themeIcon.classList.add(iconTheme);
    }
  } else {
    // Otherwise, set based on user's system preference
    if (prefersDarkScheme) {
      document.body.classList.add(darkTheme);
    } else {
      document.body.classList.add(lightTheme);
      themeIcon.classList.add(iconTheme);
    }
  }
};

// Call the function to set the theme on page load
getCurrentTheme();

// Activate / deactivate the theme manually with the button
themeButton.addEventListener("click", () => {
  // Toggle classes for the theme
  if (document.body.classList.contains(darkTheme)) {
    document.body.classList.remove(darkTheme);
    document.body.classList.add(lightTheme);
  } else {
    document.body.classList.remove(lightTheme);
    document.body.classList.add(darkTheme);
  }

  // Toggle the icon
  themeIcon.classList.toggle(iconTheme);

  // Save the current theme and icon to localStorage
  localStorage.setItem(
    "selected-theme",
    document.body.classList.contains(darkTheme) ? darkTheme : lightTheme
  );
  localStorage.setItem(
    "selected-icon",
    themeIcon.classList.contains(iconTheme) ? iconTheme : "ri-moon-line"
  );
});

/*=============== SCROLL REVEAL ANIMATION ===============*/
const loadAnimation = () => {
  const card = document.querySelector(".card");

  if (card) {
    // Add a subtle entrance animation to the card
    setTimeout(() => {
      card.style.opacity = "0";
      card.style.transform = "translateY(20px)";
      card.style.transition = "opacity 0.6s ease, transform 0.6s ease";

      setTimeout(() => {
        card.style.opacity = "1";
        card.style.transform = "translateY(0)";
      }, 100);
    }, 200);
  }
};

// Run animations when the page loads
window.addEventListener("load", loadAnimation);
