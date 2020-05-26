$('#object_subcategory_id').parent().hide()
  subcategories = $('#object_subcategory_id').html()
  $('#object_category').change ->
    category = $('#object_category :selected').text()
    escaped_category = category.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(subcategories).filter("optgroup[label='#{escaped_category}']").html()
    if options
      $('#object_subcategory_id').html(options)
      $('.subcategory_label_class').show()
      $('#object_subcategory_id').parent().show()
    else
      $('#object_subcategory_id').empty()
      $('.subcategory_label_class').hide()
      $('#object_subcategory_id').parent().hide()