ready = function($) {
    "use strict";
    var api = jQuery('.slider').revolution({
        startwidth: 1200,
        startheight: 440,			// bullet, thumb, none
        soloArrowLeftHalign: "left",
        soloArrowLeftValign: "center",
        soloArrowLeftHOffset: 0,
        soloArrowLeftVOffset: 0,
        soloArrowRightHalign: "right",
        soloArrowRightValign: "center",
        soloArrowRightHOffset: 0,
        soloArrowRightVOffset: 0,
        hideThumbs: 10
							//0 = no Shadow, 1,2,3 = 3 Different Art of Shadows -  (No Shadow in Fullwidth Version !)
    });
};

$(document).on('page:load', ready);
$(document).on('ready', ready);