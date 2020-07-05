# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  debts = $('#payment_debt_id').html()
  console.log(debts)
  $('#payment_debtor_id').change ->
    debtor = $('#payment_debtor_id :selected').text()
    options = $(debts).filter("optgroup[label=#{debtor}]").html()
    console.log(options)
    if options
      $('#payment_debt_id').html(options)
    else
      $('#payment_debt_id').empty()