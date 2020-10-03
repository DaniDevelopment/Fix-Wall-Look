/*
	File: BugSuelo.sqf
	Author: Dani Villas 

	Description:
	ENG:  Fix the bug to see over the walls
    ESP:  Arregla el bug de ver a traves de las paredes
*/

[] spawn {
    _faded = false;
    waitUntil {
        if ((animationstate player in ['aadjpknlmstpsraswpstddown','aadjpknlmstpsraswrflddown']) && (cameraview == 'GUNNER') && (((player weapondirection (currentweapon player)) select 2)<-0.88)) then {
            _faded=true;
            titleText ['Villas Script, Do not look through walls','BLACK FADED'];
        } else {
            if _faded then {
                [] spawn {
                    uisleep 2;
                    titleText ['','PLAIN DOWN'];
                };
                _faded=false;
            };
        }; false
    };
};