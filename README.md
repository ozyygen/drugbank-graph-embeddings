# drugbank-graph-embeddings

XML to RDF conversion and embedding generation for drugbank dataset

## Install dependencies

Make sure Java 11+ is installed and download the RML mapper java jar executable from GitHub :

```bash
wget -O rmlmapper.jar https://github.com/RMLio/rmlmapper-java/releases/download/v6.1.3/rmlmapper-6.1.3-r367-all.jar
```

## Execute mappings

Convert the YARRRML mappings to RML using https://rml.io/yarrrml/matey/, and add the RML mappings in this folder

```bash
java -jar rmlmapper.jar -m mapping.rml.ttl -o drugbank.nt
```