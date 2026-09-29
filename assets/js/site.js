// Respect reduced-motion preferences: pause autoplaying videos (WCAG 2.2.2 / 2.3.3).
(function () {
  if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
    document.querySelectorAll('video[autoplay]').forEach(function (v) { v.removeAttribute('autoplay'); v.pause(); });
  }
})();
