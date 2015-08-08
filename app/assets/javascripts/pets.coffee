# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#pet_breed_id').parent().hide()
  breeds = $('#pet_breed_id').html()
  $('#pet_species_id').change ->
    species = $('#pet_species_id :selected').text()
    escaped_species = species.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(breeds).filter("optgroup[label='#{escaped_species}']").html()
    if options
      $('#pet_breed_id').html(options)
      $('#pet_breed_id').parent().show()
    else
      $('#pet_breed_id').empty()
      $('#pet_breed_id').parent().hide()