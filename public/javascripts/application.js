(function($){
  $(document).ready(function(){

    // Remove an item from the cart by setting its quantity to zero and posting the update form
    $('form#updatecart a.delete').show().click(function(){
      $(this).parents('tr').find('input.line_item_quantity').val(0);
      $(this).parents('form').submit();
      return false;
    });
    
    $(".subcontent:first").show();
    $(".main-button").live("click", function(){
      $this = $(this);
      $rel = '.' + $this.attr("rel");
      $(".subcontent:visible").fadeOut(function(){
        $($rel).fadeIn();
      });
      return false;
    });

  });
})(jQuery);
