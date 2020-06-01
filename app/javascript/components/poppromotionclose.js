const closePromotionalPopup = () => {
  const closeButton = document.getElementById('close-popup-promotion')
  console.log(closeButton)
  if (closeButton) {
    closeButton.addEventListener('click', (event) => {
      document.querySelector('.promotional-banner-one').classList.add('inactive')
    });
  };
 }

export { closePromotionalPopup }
