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

### Lists
* In CONSTRUCT queries, order doesn't matter, because you're just constructing a graph
* SELECT queries are ordered, and you can specify how to order them
* If you want order in a graph, use a *list*

Turtle example of a list:

    :owlim2012 :registrants (:foo :bar :baz)

### Inserting Data

You know exactly what you want to put into the store.

    INSERT DATA {
      ou:barry foaf:givenName "Barry"
    }

But, triple stores aren't exactly that. They are quad-stores. You give a URI to a set of
subject, predicate, object statements. This is called a *context*. So, data is managed
in a named graph. For example:

    INSERT DATA {
      GRAPH <http://ontotext.com/ns#> {
        onto:barry foaf:givenName "Barry"
      }
    }

Often when making annotations, you want to add provenance to them. For example:

    :story :about :beckham

Could go into a graph `:barry-2012`, but we want to say the annotations were made by Barry,
then you could say:

    :barry-2012 dc:creator "Joe Bloggs"

So the quad is subject, predicate, object, graph.

### Reading
Read up on:
* Subqueries
* Negation
* What's new in SPARQL 1.1

### Links
* http://factforge.net/
* http://dbpedialite.org/
* http://dbtune.org/musicbrainz/snorql/
