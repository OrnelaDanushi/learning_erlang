# learning_erlang

reference: http://www.erlang.org/

books: Joe Armstrong, “Programming Erlang”

in preparazione all'esame Principles for Software Composition (magistrale Unipi)

TEORIA (Spindox seminario)
es: Erlang Virtual Machine BEAM and Elixir
BEAM è la VM su cui vengono eseguiti i linguaggi di programmazione Erlang (padre di Elixir, ha più di 40 anni ma con anche librerie di caratteristiche povere ed extreme critical) ed Elixir
questa VM è nota per la sua straordinaria capacità di gestione dei processi, consentendo una scalabilità e tolleranza ai guasti estremamente elevata 
il confronto immediato avviene con la JVM, es nella BEAM non ci sono i thread ma il modello ad attori, questi sono degli worker che possono lavorare parallelamente, ovvero dei processi Erlang, ognuno lavora indipendentemente, non ci sono problemi di concorrenza perché non condividono niente tra di loro, non ci sono quindi stati condivisi, possono comunicare tra loro tramite il pattern di message passing, questo non è altro che un sistema distribuito all'interno di una stessa macchina, gli indirizzi degli attori sono noti a tutti quindi tutti possono comunicare tra loro



preemptive scheduling: per i suoi processi leggeri, permettendo la condivisione equa della risorsa tra di lorogarbage collection: eseguito a livello di processo, riducendo i tempi di pausa se su una collection su un grande heap di memoriahot code swapping: supporto dell'aggiornamento del codice a caldo, che consente di cambiare le parti del sistema senza interromperne il funzionamentofault tolerance: supporto per la creazione di sistemi tolleranti ai guasti grazie a concetti come processi supervisionati e il modello let it crash, questo significa non avere uno stile di programmazione difensivo che avrei se mi mettessi a gestire tutte le eccezioni possibiliscalabilità: gestire un # molto elevato di processi leggeri simultaneamente


es: Elixir (queste caratteristiche lo rendono interessante anche nell'AI)è molto simile con la sintassi di Rubiinteroperabilità: può interoperare facilmente con il codice Erlang e può integrare con altre lingue attraverso NIFs Native Implemented Functions, questo significa che non ha necessità di essere compilatometaprogrammazione: permette di scrivere codice che a sua volta produce o modifica altro codice, sono tipo delle macro del codice C, si manipola il linguaggio per ottenere strutture nuove per ottenere i DSL Domain Specific Language immutabilità dei dati: tutte le variabili sono immutabili che porta ad un codice più sicuro e prevedibilepattern matching: consente di destrutturare dati complessi in modo semplice e leggibileeccellente tooling: es Mix per la gestione delle dipendenze e i compiti di build, es ExUnit per i test unitarilinguaggio moderno che sfrutta la VM Erlang per fornire sistemi altamente scalabili, concorrenziali, paralleli e affidabililinguaggio funzionale: enfatizza l'uso di funzioni pure, consentendo codice più prevedibile e facilmente testabileconcorrenza: grazie alle BEAM, supporta la programmazione concorrente, permettendo di gestire molte operazioni in parallelofault-tolerance: è stato progettato per la tolleranza ai guasti, con sistemi che possono recuperare rapidamente da errori e malfunzionamentiscalabilità: in grado di gestire un elevato # di processi leggeri simultaneamente e cluster di macchine in retereal-time processing: è adatto per applicazioni che richiedono un'elaborazione in tempo reale dei dati



SPA Single Page Application, aggiornamenti ottenuti senza ricaricare la pagina
Elixir casi di studio
esempi concreti di come il tech stack Elixir, Erlang, BEAM, OTP, Phoenix sia stato implementato con successo e i principali benefici e risultati ottenuti
es: Bleacher Report, WhatsApp, Discord



perchè Elixir in AI
concorrenza: grazie alla VM Erlang, Elixir supporta la programmazione concorrente, il che può essere particolarmente vantaggioso per applicazioni AI che necessitano di gestire molte operazioni in parallelo
fault-tolerance: Elixir è progettato per costruire applicazioni tolleranti alle falle. Questo è particolarmente utile nelle applicazioni AI, dove una singola operazione fallita non dovrebbe portare all'interruzione dell'intero sistema
real-time processing: Elixir può gestire un elevato # di processi leggeri contemporaneamente, il che è utile per le applicazioni AI che necessitano di elaborazione in tempo reale
scalabilità: Elixir è estremamente scalabile, caratteristica che è particolarmente importante per le applicazioni AI, che spesso devono gestire grandi quantità di dati
interoperabilità: Elixir può interoperare con Python (uno dei linguaggi più usati in AI) tramite librerie come NX, Axon e Bumblebee, il che può semplificare l'integrazione di Elixir in un ecosistema AI esistente
