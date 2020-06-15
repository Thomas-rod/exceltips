const exitPopupLeaving = () => {
  if (document.getElementById('popup-leaving')) {
    document.addEventListener('mouseout', (event) => {
      let screenY = event.screenY
      if (screenY < 116) {
       document.getElementById('popup-leaving').style.display="block"
      }
    });
    document.getElementById("popup-leaving-button").addEventListener('click', (event) => {
      if (event) {
        document.getElementById('popup-leaving').style.display="none"
      }
    })
  };
};

export { exitPopupLeaving }
