all: 2.2.0s2.10 2.0.2 2.1.1 2.2.0

clean:
	rm -rf target/graphframes_*.zip

2.0.2 2.1.0 2.1.1 2.2.0:
	build/sbt -Dspark.version=$@ spDist assembly

2.2.0s2.10:
	build/sbt -Dspark.version=2.2.0 -Dscala.version=2.10.6 spDist assembly test
