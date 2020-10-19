const closePromotionalPopup = () => {
  const closeButton = document.getElementById('close-popup-promotion')
  if (closeButton) {
    closeButton.addEventListener('click', (event) => {
      document.querySelector('.promotional-banner-one').classList.add('inactive')
    });

  };
 }

export { closePromotionalPopup }
