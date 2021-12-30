# #!/bin/bash

# packages=(
#     [1]=https://repo1.maven.org/maven2/org/apache/sedona/sedona-core-3.0_2.12/1.0.0-incubating/sedona-core-3.0_2.12-1.0.0-incubating.jar
#     [2]=https://repo1.maven.org/maven2/org/apache/sedona/sedona-sql-3.0_2.12/1.0.0-incubating/sedona-sql-3.0_2.12-1.0.0-incubating.jar
#     [3]=https://repo1.maven.org/maven2/org/locationtech/jts/jts-core/1.18.0/jts-core-1.18.0.jar 
#     [4]=https://nexus.dtonic.io/repository/maven-releases/io/dtonic/geohiker/geohiker-core/1.1.15/geohiker-core-1.1.15.jar 
#     [5]=https://nexus.dtonic.io/repository/maven-releases/io/dtonic/geohiker/geohiker-spark/1.1.15/geohiker-spark-1.1.15.jar 
#     [6]=https://nexus.dtonic.io/repository/maven-releases/io/dtonic/geohiker/geohiker-index/1.1.15/geohiker-index-1.1.15.jar 
#     [7]=https://repo1.maven.org/maven2/org/wololo/jts2geojson/0.14.3/jts2geojson-0.14.3.jar 
#     [8]=https://repo1.maven.org/maven2/org/hsqldb/hsqldb/2.4.1/hsqldb-2.4.1.jar 
#     [9]=https://repo1.maven.org/maven2/javax/measure/unit-api/2.1.3/unit-api-2.1.3.jar 
#     [10]=http://maven.geomajas.org/nexus/content/groups/public/javax/media/jai-core/1.1.3/jai-core-1.1.3.jar 
#     [11]=https://repo1.maven.org/maven2/net/sf/geographiclib/GeographicLib-Java/1.49/GeographicLib-Java-1.49.jar 
#     [12]=https://repo1.maven.org/maven2/si/uom/si-units/2.0/si-units-2.0.jar 
#     [13]=https://repo1.maven.org/maven2/tech/units/indriya/2.0/indriya-2.0.jar 
#     [14]=https://repo1.maven.org/maven2/tech/uom/lib/uom-lib-common/2.0/uom-lib-common-2.0.jar 
#     [15]=https://repo1.maven.org/maven2/si/uom/si-quantity/2.0/si-quantity-2.0.jar 
#     [16]=https://repo1.maven.org/maven2/systems/uom/systems-common/2.0.1/systems-common-2.0.1.jar 
#     [17]=https://repo1.maven.org/maven2/org/ejml/ejml-ddense/0.34/ejml-ddense-0.34.jar 
#     [18]=https://repo1.maven.org/maven2/org/ejml/ejml-core/0.34/ejml-core-0.34.jar 
# )

# no_certificate_packages=(
#     [1]=https://repo.osgeo.org/repository/release/org/geotools/gt-main/25.0/gt-main-25.0.jar
#     [2]=https://repo.osgeo.org/repository/release/org/geotools/gt-epsg-hsql/25.0/gt-epsg-hsql-25.0.jar
#     [3]=https://repo.osgeo.org/repository/release/org/geotools/gt-referencing/25.0/gt-referencing-25.0.jar
#     [4]=https://repo.osgeo.org/repository/release/org/geotools/gt-metadata/25.0/gt-metadata-25.0.jar
#     [5]=https://repo.osgeo.org/repository/release/org/geotools/gt-opengis/25.0/gt-opengis-25.0.jar
#     [6]=https://repo.osgeo.org/repository/release/org/geotools/ogc/net.opengis.ows/25.0/net.opengis.ows-25.0.jar
#     [7]=https://repo.osgeo.org/repository/release/org/geotools/ogc/org.w3.xlink/25.0/org.w3.xlink-25.0.jar
#     [8]=https://repo.osgeo.org/repository/release/it/geosolutions/jgridshift/jgridshift-core/1.3/jgridshift-core-1.3.jar
# )


# for package in ${packages[@]}; do
#     wget -P $JARS_TARGET_DIR -c ${package}
# done

# for package in ${no_certificate_packages[@]}; do
#     wget -P $JARS_TARGET_DIR -c ${package} --no-check-certificate
# done