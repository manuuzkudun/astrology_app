// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .


/* ==================================================
DECLARE GLOBAL VARS
================================================== */

let myFormGroup, //Var to hold a reference for the form group so we can populate its fileds according to changes on datepicker
    myInputs, //Var to hold a reference for all the inputs containing user data
    mySubmitBtn; //Var to hold a reference for the Submit Button

/* ==================================================
UTILS FUNCTION
================================================== */

const leadingStringToZero = (_str) => {
  _str.length < 2 ? _str = '0' + _str : null;
  return _str;
}

/* ==================================================
LOGIC FUNCTION
================================================== */

const onInputLeave = e => {

  //Basic Validation

  let totalFilledInputs = 0;

  myInputs.forEach(function(el,i){
    el.value.length > 0 ? totalFilledInputs++ : null;
  });

  //Re-enable submit button if all inputs are filled

  if (totalFilledInputs == myInputs.length ) {
    mySubmitBtn.classList.contains('disabled') ? mySubmitBtn.classList.remove('disabled') : null;
  }else {
    !mySubmitBtn.classList.contains('disabled') ? mySubmitBtn.classList.add('disabled') : null;
  }

},
addInteractions = () => {

  // console.log(mySubmitBtn);

  //Remove any alert if present sequentially by 2 second interval/delay

  if(document.querySelector('p.alert ')) {

      Array.from(document.querySelectorAll('p.alert')).forEach((el,i) => {
        //setTimeout(() => {el.parentNode.removeChild(el)}, (i + 1) * 2000 );
        setTimeout(() => {el.classList.add('faded')}, (i + 1) * 2000 );
      });
  }

  //Dropdown interaction - no external dependencies

  document.querySelector('a.dropdown-toggle').addEventListener('click', (e) => {
    e.target.parentNode.querySelector('div.dropdown-menu').style.display != 'block' ? e.target.parentNode.querySelector('div.dropdown-menu').style.display = 'block' : e.target.parentNode.querySelector('div.dropdown-menu').style.display = '';
    e.preventDefault();
  });

  //Only attempt to add interactions if we are on the new page (pathname agnostic)

  if(mySubmitBtn && myInputs.length > 0) {
    //Normalize SubmitButton

    // Catching =  false is not working on root?
    // config.action_controller.perform_caching  = false
    // on config/environments/development.rb

    !mySubmitBtn.classList.contains('disabled') ? mySubmitBtn.classList.add('disabled') : null;

    myInputs.map((_obj) => {
      _obj.addEventListener('blur', onInputLeave, false);
    });


    let initDate = new Date(1949, 12, 1);
    let config = {
      target: 'mtr-datepicker',
      smartHours: false,
      disableAmPm: true,
      animations: true,
      timestamp: initDate.getTime(),
      minutes: {
        min: 0,
        max: 55,
        step: 10
      },
      months: {
        min: 0,
        max: 11,
        step: 1
      },
      years: {
        min: 1950,
        max: 2050,
        step: 1
      }
    };
    let myDatepicker = new MtrDatepicker(config);

    myDatepicker.onChange('all', function(e) {

      switch (e) {
        case 'day':
          console.log('day switched to ', document.querySelector('input.mtr-input.dates').value);
          document.getElementById('day').value = document.querySelector('input.mtr-input.dates').value;
        break;
        case 'month':
          console.log('months switched to ', document.querySelector('input.mtr-input.months').value);
          // For some reason months are 0 based indexed...just add 1 to the result
          document.getElementById('month').value = parseInt(document.querySelector('input.mtr-input.months').value) + 1;
        break;
        case 'year':
          console.log('years switched to ', document.querySelector('input.mtr-input.years').value);
          document.getElementById('year').value = document.querySelector('input.mtr-input.years').value;
        break;
        case 'hour':
          console.log('hours switched to ', document.querySelector('input.mtr-input.hours').value);
          document.getElementById('hour').value = document.querySelector('input.mtr-input.hours').value + ':' + leadingStringToZero(document.querySelector('input.mtr-input.minutes').value) ;
        break;
        case 'minute':
          console.log('minutes switched to ', document.querySelector('input.mtr-input.minutes').value);
          document.getElementById('hour').value = document.querySelector('input.mtr-input.hours').value + ':' + leadingStringToZero(document.querySelector('input.mtr-input.minutes').value);
        break;
        default:
        //console.log(typeof e, e)
        null;
        break;

      }

    });



  }



},
init = e => {



  document.removeEventListener('turbolinks:load', init, false);
  //Store/Assign DOM Elements
  mySubmitBtn = document.getElementById('btn-submit');
  myInputs = Array.from(document.querySelectorAll('div.formgroup.primary input[type="text"]'));

  addInteractions();

}



// //Entry Point
document.addEventListener('DOMContentLoaded', init, false);
