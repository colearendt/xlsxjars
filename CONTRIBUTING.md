# Contributing

## Updating POI Files

- Create a branch
- Go to [The Apache POI site]() and download the latest "Binary Distribution"
    - Note any changes to "minimum Java version"
- Move the `.tgz` to a temp directory
```bash
mkdir tmp
mv ~/Downloads/poi-bin-5.2.0-20220106.tgz tmp/
```
- Optionally verify the download using the `sha256`, `sha512`, etc. (key is
stored in the same directory as the download, although their website does not
make this clear)

- Unpack the files
```
cd tmp
tar -xzvf poi-bin-5.2.0-20220106.tgz
```
- copy the important files into the `inst/java` directory
    - what qualifies as "important," you ask? great question!
    - make sure the things that already exist get updated... license, main JARs, etc.
    - try to strip out what you can... it reduces size considerably...
    - Mainly dropped `auxiliary` and some of the big core JARs (`scratchpad`, `examples`, `excelant`, `javadoc`)

- remove the old jar files
- commit the new ones
- push the branch
- go test `xlsx`!

## Resources

Sources for the open source software component jars can be obtained
from the following project websites:

- [Apache POI](http://poi.apache.org/)
  [Code repository](https://svn.apache.org/repos/asf/poi/tags/REL_3_10_1/)
  [Source code](http://www.apache.org/dyn/closer.cgi/poi/release/src/poi-src-3.10.1-20140818.tar.gz)
  [JAR location](http://www.apache.org/dyn/closer.cgi/poi/release/bin/poi-bin-3.10.1-20140818.tar.gz)
  
> NOTE: This other stuff is included automatically in the Apache POI distribution

- [Apache XMLBeans](http://xmlbeans.apache.org/)
  [Code repository](http://svn.apache.org/viewvc/xmlbeans/tags/2.6.0/)
  [JAR location](http://repo1.maven.org/maven2/org/apache/xmlbeans/xmlbeans/2.6.0/xmlbeans-2.6.0.jar)

- [Apache Commons Codec](http://commons.apache.org/proper/commons-codec/)
  [Code repository](http://svn.apache.org/viewvc/commons/proper/codec/tags/1_6/)
  [JAR location](http://central.maven.org/maven2/commons-codec/commons-codec/1.6/commons-codec-1.6.jar)

- [Dom4j](http://dom4j.sourceforge.net/dom4j-1.6.1/)
  [Code repository](http://sourceforge.net/p/dom4j/code/ci/default/tree/)
  [Source code](http://sourceforge.net/projects/dom4j/files/dom4j/1.6.1/dom4j-1.6.1.tar.gz/download)
  [JAR location](http://sourceforge.net/projects/dom4j/files/dom4j/1.6.1/dom4j-1.6.1.jar/download)
  

See also associated copyright information in inst/COPYRIGHTS.
