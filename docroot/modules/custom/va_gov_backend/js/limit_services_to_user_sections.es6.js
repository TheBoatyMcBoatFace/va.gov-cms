/**
 * @file
 */

((Drupal) => {
  let myFacility = "";
  // Grab our fields and options.
  const adminField = document.getElementById("edit-field-administration");
  const facilityFieldOptions = document.querySelectorAll(
    "#edit-field-facility-location option"
  );
  const systemFieldOptions = document.querySelectorAll(
    "#edit-field-regional-health-service option"
  );
  const facilityField = document.getElementById("edit-field-facility-location");
  const systemField = document.getElementById(
    "edit-field-regional-health-service"
  );
  const lovellPattern = /Lovell/i;
  const winnower = () => {
    const pathType = drupalSettings.path.currentPath.split("/")[1];
    // Set our selects back to "Select a value." on add forms.
    if (
      typeof facilityField !== "undefined" &&
      facilityField !== null &&
      pathType === "add"
    ) {
      facilityField.selectedIndex = "_none";
    }
    if (
      typeof systemField !== "undefined" &&
      systemField !== null &&
      pathType === "add"
    ) {
      systemField.selectedIndex = "_none";
    }

    // Get our base match text string.
    const adminFieldText = adminField.options[adminField.selectedIndex].text;
    // Get our search string from the field text.
    const adminMatcher = adminFieldText.replace(/(^-+)/g, "");
    // Winnow facility field options that don't contain adminMatcher.
    facilityFieldOptions.forEach((i) => {
      // Apply reset everytime we fire.
      i.classList.add("hidden-option");
      if (i.text.includes(adminMatcher)) {
        i.classList.remove("hidden-option");
      } else if (
        i.text.search(lovellPattern) > -1 &&
        adminFieldText.search(lovellPattern) > -1
      ) {
        i.classList.remove("hidden-option");
      }
    });
    // Winnow system field options that don't contain adminMatcher.
    systemFieldOptions.forEach((i) => {
      // Apply reset everytime we fire.
      i.classList.add("hidden-option");
      if (i.text.includes(adminMatcher)) {
        i.classList.remove("hidden-option");
      } else if (
        i.text.search(lovellPattern) > -1 &&
        adminFieldText.search(lovellPattern) > -1
      ) {
        i.classList.remove("hidden-option");
      }
    });
  };

  Drupal.behaviors.vaGovLimitServiceOptions = {
    attach() {
      if (myFacility === "" || window.onload) {
        winnower();
      }
      adminField.addEventListener("change", winnower);
      if (facilityField !== null) {
        facilityField.addEventListener("change", function setText() {
          myFacility = facilityField.options[facilityField.selectedIndex].text;
        });
      }
    },
  };
})(Drupal);
