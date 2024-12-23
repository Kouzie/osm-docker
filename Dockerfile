FROM overv/openstreetmap-tile-server:latest
COPY ./external-data.yml /home/renderer/src/openstreetmap-carto-backup/external-data.yml
EXPOSE 80 5432
ENTRYPOINT ["/run.sh"]
