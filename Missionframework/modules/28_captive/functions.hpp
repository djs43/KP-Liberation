/*
    KP LIBERATION MODULE FUNCTIONS

    File: functions.hpp
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2019-09-10
    Last Update: 2019-09-12
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html
    Public: No

    Description:
        Defines for all functions, which are brought by this module.
*/

class captive {
    file = "modules\28_captive\fnc";

    // Adds all needed actions to a surrendered unit
    class captive_addCaptiveActions {};

    // Checks the given sector for remaining enemys and sets them into captive mode
    class captive_checkSector {};

    // Module post initialization
    class captive_postInit {
        postInit = 1;
    };

    // Module pre initialization
    class captive_preInit {
        preInit = 1;
    };

    // Sets an unit into captive mode
    class captive_setCaptive {};

    // Given unit surrenders
    class captive_setSurrender {};

    // CBA Settings for this module
    class captive_settings {};

};
