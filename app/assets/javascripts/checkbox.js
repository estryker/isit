$(function(){
    $('#authorize').simpleImageCheck({
	image: '/assets/uncheck_box_66.png',             // String The image source to show when the checkbox IS NOT checked (REQUIRED) 
	imageChecked: '/assets/check_box_66.png',        // String The image source to show when the checkbox IS checked (REQUIRED)
	afterCheck: function(isChecked) {   // Function Optional callback function for when the image/checkbox is toggled
            // do something if isChecked === true
	}
    });
});