FROM ubuntu:14.04

ENV work_dir /opt/graylog-agent-restcomm

ADD files $work_dir

WORKDIR $work_dir

CMD ./graylog-agent-restcomm -l "$LOG_LEVEL" -m "$MARATHON_HOST" -url "$GRAYLOG_HOST" -max "$CALLS_MAX" -rPort "$RESTCOMM_PORT" -rUser "$RESTCOMM_USER" -rPswd "$RESTCOMM_PSWD"
