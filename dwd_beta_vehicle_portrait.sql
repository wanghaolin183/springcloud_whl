/*
Author:liguo576867
Date:2022-11-14
Desc:beta项目车辆画像明细表
Database:dwd
Table:dwd_beta_vehicle_portraiti
Modify:无
*/

CREATE EXTERNAL TABLE IF NOT EXISTS dwd.dwd_beta_vehicle_portraiti
(
    vin                     STRING COMMENT '车架号'
   ,bts_timestamp           STRING COMMENT '时间戳'
   ,sn                      STRING COMMENT '采集仪'
   ,vcu_hvState             STRING COMMENT '上高压状态'
   ,vcu_vehicleSpeed        STRING COMMENT 'vehiclespeed车速'
   ,VCU_VehicleSpeedValid   STRING COMMENT '车速有效位'
   ,ic_totalMileage         STRING COMMENT 'ic_totalMileage里程'
   ,ic_totalMileageValid    STRING COMMENT '里程有效位'
   ,bms_dcChargeState       STRING COMMENT '直流充电状态'
   ,bms_acChargeState       STRING COMMENT '交流充电状态'
   ,ecu_state               STRING COMMENT 'ecu状态'
   ,vcu_avgPwr              STRING COMMENT '平均能耗'
)
COMMENT 'beta项目车辆画像明细表'
PARTITIONED BY (pt_d STRING,prj STRING)
STORED AS PARQUET
;