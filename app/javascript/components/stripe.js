const stripeCheckout = () => {

  const buttonPayment = document.getElementById('checkout-button-price_HMAipK3IxRllNR')
  if (buttonPayment) {
    const stripe = Stripe(process.env.STRIPE_PUBLISHABLE_KEY);

    const checkoutButton = document.getElementById('checkout-button-price_HMAipK3IxRllNR');
    checkoutButton.addEventListener('click', function () {
      // When the customer clicks on the button, redirect
      // them to Checkout.
      stripe.redirectToCheckout({
        lineItems: [{price: 'price_HMAipK3IxRllNR', quantity: 1}],
        mode: 'payment',
        // Do not rely on the redirect to the successUrl for fulfilling
        // purchases, customers may not always reach the success_url after
        // a successful payment.
        // Instead use one of the strategies described in
        // https://stripe.com/docs/payments/checkout/fulfillment
        successUrl: 'https://www.exceltips.fr/users/sign_up',
        cancelUrl: 'https://www.exceltips.fr/',
      })
      .then(function (result) {
        if (result.error) {
          // If `redirectToCheckout` fails due to a browser or network
          // error, display the localized error message to your customer.
          const displayError = document.getElementById('error-message');
          displayError.textContent = result.error.message;
        }
      });
    });
  }
};


export { stripeCheckout }
