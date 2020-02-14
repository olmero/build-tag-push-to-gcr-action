FROM docker:19.03.5

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]