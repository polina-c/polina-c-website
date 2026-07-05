// Copies `text` to the clipboard when a copy button is clicked, then briefly
// shows a ✓ on the button. Used by the CopyButton component.
function copyText(btn, text) {
  function confirm() {
    btn.textContent = '✓'; // ✓
    btn.classList.add('copied');
    setTimeout(function () {
      btn.textContent = '⎘'; // ⎘
      btn.classList.remove('copied');
    }, 1200);
  }
  if (navigator.clipboard && navigator.clipboard.writeText) {
    navigator.clipboard.writeText(text).then(confirm, function () {
      fallbackCopy(text);
      confirm();
    });
  } else {
    fallbackCopy(text);
    confirm();
  }
}

function fallbackCopy(text) {
  var ta = document.createElement('textarea');
  ta.value = text;
  ta.style.position = 'fixed';
  ta.style.opacity = '0';
  document.body.appendChild(ta);
  ta.select();
  try {
    document.execCommand('copy');
  } catch (e) {}
  document.body.removeChild(ta);
}
