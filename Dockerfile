FROM ubuntu:22.04

RUN apt update && apt install -y auditd audispd-plugins python3

COPY configs/ /etc/audit/
COPY scripts/ /scripts/

CMD ["/bin/bash"]