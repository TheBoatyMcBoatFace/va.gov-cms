/**
 * @file
 * Anchor link behaviors.
 */

(($, Drupal) => {
  /**
   * Return the combined height of the admin toolbar & tray.
   *
   * @return {number}
   *   Height in pixels.
   */
  Drupal.getAdminToolbarHeight = () => {
    const toolbarHeight = $("#toolbar-bar").height() || 0;
    const tooltrayHeight =
      $("#toolbar-item-administration-tray.toolbar-tray-horizontal").height() ||
      0;
    return toolbarHeight + tooltrayHeight;
  };

  /**
   * Attaches anchor link behavior to links.
   *
   * @type {Drupal~behavior}
   */
  Drupal.behaviors.vagovadminAnchorLinks = {
    attach() {
      $('a[href^="#"][href!="#"]:not([href^="#edit-group"])').click((event) => {
        event.preventDefault();

        const target = $(event.target).attr("href");
        if ($(target).length) {
          const targetOffset = $(target).offset();
          if (targetOffset) {
            const scrollToPosition =
              targetOffset.top - (Drupal.getAdminToolbarHeight() + 10);

            $("html").animate({ scrollTop: scrollToPosition }, 500, () => {
              window.location.hash = `${$(target).attr("href")}`;
              $("html").animate({ scrollTop: scrollToPosition }, 0);
            });
          }
        }
      });
    },
  };
})(jQuery, Drupal);
