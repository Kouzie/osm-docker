## 실행

> <https://github.com/Overv/openstreetmap-tile-server/issues/378>

- local-proxy 에서 다룬오드할 수 있도록 docker image 재정의 external-daya.yml 을 overwrite  
- external 디렉토리에 아래 6개 파일 저장  
  - south-korea-latest.osm.pbf  
  - simplified-water-polygons-split-3857.zip  
    <https://osmdata.openstreetmap.de/download/simplified-water-polygons-split-3857.zip>  
  - water-polygons-split-3857.zip  
    <https://osmdata.openstreetmap.de/download/water-polygons-split-3857.zip>  
  - antarctica-icesheet-polygons-3857.zip  
    <https://osmdata.openstreetmap.de/download/antarctica-icesheet-polygons-3857.zip>  
  - antarctica-icesheet-outlines-3857.zip  
    <https://osmdata.openstreetmap.de/download/antarctica-icesheet-outlines-3857.zip>  
  - ne_110m_admin_0_boundary_lines_land.zip  
    <https://naturalearth.s3.amazonaws.com/110m_cultural/ne_110m_admin_0_boundary_lines_land.zip>  

```sh
docker build -t overv/openstreetmap-tile-server-localfile:latest .
```

- osm-import 로 지리정보 DB 구축
- osm-tile-server 으로 랜더링 웹서비스 실행

```sh
docker-compose up osm-import
docker-compose up -d osm-tile-server
```
