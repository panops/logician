Logician
========
A Datalog-inspired fact analysis and deductive query system. Logician may use
multiple storage backends for Rules in order to satisfy queries. Logician 
operates on the 'Closed World Assumption', everything that is not asserted in 
the available Universe of Rules is assumed to not hold in the logical query.

Usage
-----
Logician is a RubyGem-packaged library implemented in pure ruby. It has been
tested with the Matsumoto Ruby Interpreter version 1.9.3, but should work with
1.9 compatible Ruby interpreters. It is supported, for now, on Ruby 1.9.3 only.

Currently, the only implemented storage backend for the Logician Universe and
Ruleset is the inMemory storage engine. However, it should be possible to easily
implement storage using other backends such as a graph database, or a relational
store.

Philosophy of Implementation
----------------------------
Logician created by combining a set of Rules and Facts (which are degenerate 
Rules, which simply state that some predicate is true), known as the Universe, 
and a Deductive Query Engine, which reasons from the given base truth, using 
the rules, in order to satisfy given Queries with truth. The implementation
of Logician is greatly influenced by the previous designed of prolog and
datalog, as it is doing something extremely similar, except that it isn't
attempting to be a complete data processing environment nor is it trying to be
a general programming language -- it is just a deductive top-down query engine.

Architecture
------------
Logician is divided into two primary functional components. Respectively they 
are: the Universe, which is responsible for querying and containing sets of 
rules, and the Inference Engine, which is responsible for answering queries
using the Rules contained in the Universe. In this system a Query is known as a
Goal. That is, in order to answer the Query we need to derive Facts from the 
Universe which match the Query, which is why, in this system, it is known as a 
Goal. The Inference Engine uses what is known as the Query-Subquery methodology, 
a top-down approach.

The Query-Subquery methodology first attempts to unify the initial Goal with 
an existing predicate in the Universe. Once the initial query is successfully 
unified, additional Goals are generated from the implicated Predicates. Those 
Goals are recursivly resolved until we arrive at Facts, Rules which are always 
true, in the Universe. Once we have explored all implicated Rules in the 
Universe recursively, we can the select the applicable Facts from the 
Universe and return those results.