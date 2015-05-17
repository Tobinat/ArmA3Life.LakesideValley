


_handle = [] spawn compile PreprocessFileLineNumbers "core\just-look\speedtrap\functions.sqf";
diag_log "::just-look Client:: Initialization Functions speedtrap";
waitUntil {scriptDone _handle};

_handle = [] spawn compile PreprocessFileLineNumbers "core\just-look\truckjob\functions.sqf";
diag_log "::just-look Client:: Initialization Functions TruckJob";
waitUntil {scriptDone _handle};

_handle = [] spawn compile PreprocessFileLineNumbers "core\just-look\hunterjob\functions.sqf";
diag_log "::just-look Client:: Initialization Functions HunterJob";
waitUntil {scriptDone _handle};

