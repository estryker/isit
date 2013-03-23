$(function(){
    $('#authorize').simpleImageCheck({
	image: '/assets/unchecked.png',             // String The image source to show when the checkbox IS NOT checked (REQUIRED) 
	imageChecked: '/assets/checked.png',        // String The image source to show when the checkbox IS checked (REQUIRED)
	afterCheck: function(isChecked) {   // Function Optional callback function for when the image/checkbox is toggled
            // do something if isChecked === true
	}
    });
});