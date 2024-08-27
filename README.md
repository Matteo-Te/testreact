
# Progetto esemplificativo docker 
Prerequisiti:
- Installare sourcetree(gestore di repository git, si può usare anche da linea di comando ma è molto più comodo così, poi se preferite da linea di comando lo impostiamo poi insieme o ve lo guardate)
- Clonare il repository github in una cartella vuota sul vostro pc:
    - Andare su github.com sul repository, sezione code e premere sul tasto verde "<> code", sezione HTTPS e copiare l'url che sarà https://github.com/Ale9600/dockerbusiness.git (vi faccio fare il passaggio così in futuro non devo darvi gli url direttamente ma sapete come fare sempre che non lo abbiate già fatto :D).
    - Andare su sourcetree(non so come sia da windows) ma ci dovrebbe essere un tasto new -> Clone from remote repository, indicare a cartella in cui clonare il progetto(deve essere vuota) e premere Ok.
    - Spostarsi sul branch master( a sinistra premete su origin/master e dovrebbe pullarvi il progetto nella cartella)
    - Quando ha finito quell'operazione dovreste avere i file di questo progetto nella cartella che avete scelto.

Installare docker desktop(Volendo si può usare il docker engine tutto da linea di comando ma non ha senso con Docker Desktop è tutto visuale e più semplice)
Link: https://www.docker.com/get-started/

- Nel root del progetto avviare il comando docker build . -t testdockerimage -> state dicendo al docker engine di eseguire il dockerfile presente nella root(.)
 -t è un flag che indica il tag di riconoscimento dell'image
 Le istruzioni che vengono eseguite sono nel dockerfile nella root del progetto
 N.B. non è necessario avere installato sul proprio pc npm o qualsiasi altra cosa necessaria per avviare il progetto in locale perchè virtualizza tutto docker(OP AS SHIT)
- Attendere la fine della build(ci mette qualche minuto perchè non è ottimizzata)
    In questo modo viene creata l'immagine docker del progetto
- Andare su docker desktop nella sezione immagini e premere il tasto play
    Viene aperta una finestra nel quale inserite come container name quello che volete (es. testcontainer), nella porta mettetene una che volete(es.3000)
    In questo modo verrà creato un container docker con l'applicativo esposto sulla porta 3000 in localhost
- Aprire il browser con indirizzo localhost:3000 e visualizzate la pagina
    Questa cosa si può fare con qualsiasi progetto si voglia, fatto con qualsiasi tecnologia, ovviamente cambiando il dockerfile

# Se vi interessa smanettare su react in sviluppo dovete installare npm (node package manager: gestore delle dipendenze di nodejs)
https://docs.npmjs.com/downloading-and-installing-node-js-and-npm seguire i passi su questa pagina

- Per prima cosa lanciare il comando npm i nella root del progetto che installa le dipendenze necessarie

- Lanciare il comando npm audit fix

- Per avviare il progetto in modalità sviluppo lanciare il comando npm start nella root del progetto(N.B. se avete avviato il container vi dirà che la porta 3000 non è disponibile, vi chiede se volete avviarlo su un altra porta e mettete y, in alternativa andate su docker desktop e stoppate il container in esecuzione precedentemente avviato. Lo trovate nella sezione container di Docker Desktop)

- Modificare i file a proprio piacimento(la pagina principale è app.tsx), per la reference della libreria grafica: https://mui.com/material-ui/getting-started/ sezione components e componentsAPI