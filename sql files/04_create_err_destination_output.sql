use EO_Telecom_GrgEdu
go

if exists (select * from sys.tables where name = 'err_destination_output' and type = 'U')
drop table dim_imsi_reference
go

CREATE TABLE err_destination_output (
    [id] int,
    [imsi] varchar(9),
    [imei] varchar(14),
    [subscriber_id] int,
    [cell] int,
    [lac] int,
    [event_type] varchar(2),
    [event_ts] datetime,
    [tac] varchar(8),
    [snr] varchar(6),
    [ErrorCode] int,
    [ErrorColumn] int
)
go

alter table err_destination_output add audit_id int;

