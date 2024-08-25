http://www.erlang.org/

reference book: Joe Armstrong, “Programming Erlang”

exam: Principles for Software Composition (Magistrale Unipi)


notes (from Spindox seminar): 

Erlang Virtual Machine BEAM: 
- the VM where programming languages such as Erlang are executed on 
- popular for its good capacity to manage software processes, scalability and fault tolerance 
- adversarily from the JVM, BEAM does not involve the threads but rather the actor-model with concurrent working and independent workers, namely "Erlang processes". However, there are no concurrent problems because actors share nothing and can communicate through the message-passing pattern. The pattern is a distributed system within the same machine in which actors' addresses are known to everyone.

Erlang (old programming language) characteristics:
- precedes Elixir, is more than 40 years old and has extremely critical libraries
- preemptive scheduling is used for lightweight processes to allow for a fair sharing of resources between actors
- garbage collection executed at the process level to reduce waiting times (helpful if on a collection on a great heap)
- hot code swapping: support the "hot" software updating, which allows to make system changes without stopping it
- fault tolerance: thanks to the supervision of processes and the "let it crash"-model, which means not using a defensive programming style (i.e. when catching all possible exceptions)
- scalability: manage a large number of lightweight processes simultaneously

Elixir (new programming language) characteristics:
- similar syntax to Rubi
- easy interoperability with the Erlang code or other programming languages via the Native Implemented Functions (NIF), without the need to be compiled
- uses meta-programming: write code that produces/edits other code by itself, e.g. MACRO on C. The software manages new Domain Specific Language (DSL) structures
- data immutability to provide more secure/safe code (trustworthy)
- pattern matching to allow to de-structure of complex data in an easy and human-readable way
- good tooling for managing building dependencies, e.g. ExUnit for unit testing
- scalability: manage a large number of lightweight processes simultaneously and clusters of machines
- functional programming language which eases code testability
- concurrency/parallelism
- fast fault tolerance from system errors 
- real-time processing: suitable for applications needing real-time data managing, e.g. Single Page Application (SPA) obtain updates without re-charging the page

Elixir concrete examples (with BEAM, OTP, Phoenix): Bleacher Report, WhatsApp, Discord

Elixir and AI: concurrency + fault-tolerance + real-time data processing + scalability + interoperability (e.g. with Python using NX, Axon and Bumblebee libraries which easily integrate Elixir into an already existent AI ecosystem)
