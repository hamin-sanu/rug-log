$(function(){
  $('.__acBtnDown').click(function(){ 
    $(this).parents('.__block').find('.body').toggle(400);
    $(this).parents('.__block').find('.__acBtnUp').toggle(400);
    $(this).parents('.__block').find('.__acBtnDown').toggle('slow');
  });

  $('.__acBtnUp').click(function(){
    $(this).parents('.__block').find('.body').toggle(400);
    $(this).parents('.__block').find('.__acBtnDown').toggle(400);
    $(this).parents('.__block').find('.__acBtnUp').toggle('slow');
  });
});