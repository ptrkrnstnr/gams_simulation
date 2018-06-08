***** Set global variable SLASH based on the operating system
$setglobal SLASH \
$if %system.filesys% == UNIX $setglobal SLASH /

***** Set path to data
$setglobal data .%SLASH%data%SLASH%

scalar f              'Freight in monetary unit per transported unit per distance unit' / 90 / ;

alias(i,j,*)

table d(i,j) 'Table of transport distances from plants (rows) to markets (columns)'
$ondelim
$include %data%distance.csv
$offdelim
;

parameters a(i)   'Plant capacity in units produced' /
$ondelim offlisting
$include %data%capacity.csv
$offdelim onlisting
/;

parameters b(j)  'Market demand in the same unit as the production' /
$ondelim offlisting
$include %data%demand.csv
$offdelim onlisting
/;

