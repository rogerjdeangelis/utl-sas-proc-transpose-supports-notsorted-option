%let pgm=utl-sas-proc-transpose-supports-notsorted-option;

sas proc transpose supports notrsorted option

I did not know that proc transpose supported NOTSORTED.

Might be useful to avoid this error.

ERROR: The current BY group has NAME = SAM and the next BY group has NAME = AMY.

Solution by
https://communities.sas.com/t5/user/viewprofilepage/user-id/425371

https://communities.sas.com/t5/SAS-Programming/Transpose/m-p/878414#M347052

/**********************************************************************************/
/* NAME MEAL      COST | proc transpose data=have   | NAME BREAKFAST LUNCH DINNER */
/*                     |   out=want (drop=_name_);  |                             */
/* SAM  BREAKFAST  10  |   by name NOTSORTED;       | SAM      10      20    33   */
/* SAM  LUNCH      20  |   id meal;                 | AMY      11      12    13   */
/* SAM  DINNER     33  |   var cost;                | JIM      21      22    23   */
/* AMY  BREAKFAST  11  | run;quit;                  |                             */
/* AMY  LUNCH      12  |                            |                             */
/* AMY  DINNER     13  |                            |                             */
/* JIM  BREAKFAST  21  |                            |                             */
/* JIM  LUNCH      22  |                            |                             */
/* JIM  DINNER     23  |                            |                             */
/***************************************************|******************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
