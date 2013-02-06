$(window).load(function() {
  $('#submit').attr('disabled', 'disabled');  
                    
function updateFormEnabled() 
    {
        var checked = $('.accept').prop('checked');
        $('#submit').prop('disabled', !checked);
    }
                
$('.accept').change(updateFormEnabled);
});


