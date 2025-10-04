 /* ================== SAS Studio (Linux) version ================== */
/* Put the two CSVs in Files(Home). This macro points to that home. */
%let home=/home/&sysuserid;   /* resolves to /home/u63910582 etc. */

/* 1) Import */
proc import datafile="&home/coin_summary.csv"
    out=coin_summary dbms=csv replace;
    getnames=yes;
run;

proc import datafile="&home/coin_resilience.csv"
    out=coin_resilience dbms=csv replace;
    getnames=yes;
run;

/* 2) Merge */
proc sql;
  create table crypto_merge as
  select a.coin, a.category, a.tier,
         a.roi_1y_med, a.roi_3y_med, a.roi_5y_med,
         a.vol_daily,
         b.max_drawdown, b.recovery_days
  from coin_summary as a
  left join coin_resilience as b
  on a.coin=b.coin;
quit;

/* 3) Descriptives */
proc means data=crypto_merge mean std min max;
  class category;
  var roi_1y_med vol_daily max_drawdown recovery_days;
run;

/* 4) Correlation (optional plots) */
proc corr data=crypto_merge plots=matrix(histogram);
  var roi_1y_med vol_daily max_drawdown recovery_days;
run;

/* 5) Export a small summary CSV to your SAS Home (short path) */
proc means data=crypto_merge mean std nway;
  class tier;
  var roi_1y_med vol_daily max_drawdown recovery_days;
  output out=tier_summary(drop=_type_ _freq_) mean= / autoname;
run;

proc export data=tier_summary
  outfile="&home/sas_summary_tier.csv"
  dbms=csv replace;
run;

title "✅ SAS Analysis Completed";
