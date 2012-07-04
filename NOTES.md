# Day 1

## Morning

### URIs
* Should be human-readable, with a natural hierarchy
  * But this tends to be anglo-centric
* Should be stable (don't change when tech changes)
  * But Wikipedia had an iPhone page before the Apple iPhone! (Linksys product)
  * URI stayed the same, but actual 'thing' changed
  * dbpedia suffers as a result of this
  * But Wikipedia's database has an internal ID (which stayed the same when this happened)
  * dbpedialite uses these IDs

### Statements
* Subject: blank node or URI
* Predicate: URI
* Object: URI, blank node or URI

### Interleave Content and Data
* Use RDFa
  * HTML markup contains RDF relationships
  * MusicBrainz makes use of this

