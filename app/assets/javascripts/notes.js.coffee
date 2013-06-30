jQuery ->
  $("#section-1, #section-2, #section-3").sortable(
    handle: '.handle'
    placeholder: "ui-state-highlight"
    connectWith: ".connectedSortable"
    update: ->
      params = $(this).sortable('serialize')+"&section=" + $(this).attr('data-section')
      $.post($(this).data('update-url'), params)
  ).disableSelection()