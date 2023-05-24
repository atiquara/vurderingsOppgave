# vurderingsOppgave
# Denne systemdokumentasjonen er generalisert for både Python og Lua koden jeg skrev for de 3 forskjellige besvarelsene.

# Oppgave 1:
Oppgaven til den første koden jeg lagde var å utføre en operasjon på en matrise og returnerer minimum og maksimums verdiene for en spesifikk sti gjennom matrisen. Nå skal jeg forklare hvordan koden min fungerer i form av pseudokoding.

Funksjonen MinMax(matrix) tar en matrise som input og returnerer minimums- og maksimumsverdiene for en bestemt sti i matrisen.

Variablene rows og columns blir initialisert med antall rader og kolonner i matrisen.

preMinPath og preMaxPath er initialiserte tabeller med den første verdien fra matrisen.

En løkke itererer gjennom kolonnene i matrisen (unntatt den første). For hver kolonne legges verdien fra matrisen til den tilsvarende verdien i preMinPath og preMaxPath fra forrige kolonne.

En annen løkke itererer gjennom radene i matrisen (unntatt den første). For hver rad opprettes tabellene minPath og maxPath med den første verdien fra matrisen pluss den tilsvarende verdien i preMinPath og preMaxPath fra første kolonne.

En indre løkke itererer gjennom kolonnene i den gjeldende raden (unntatt den første). For hver kolonne beregnes den minste og største summen ved å sammenligne verdien i den gjeldende cellen med verdien fra preMinPath og minPath fra forrige kolonne.

Minimums- og maksimumsverdiene blir deretter lagt til i minPath og maxPath ved å legge sammen verdien i matrisen med den minste og største summen.

preMinPath og preMaxPath blir oppdatert til å være lik minPath og maxPath for å brukes i neste iterasjon.

Til slutt returnerer funksjonen den siste verdien i preMinPath og preMaxPath, som tilsvarer minimums- og maksimumsverdien for stien gjennom matrisen.

Husk at koden antar at alle rader i matrisen har samme antall kolonner, og at matrisen inneholder numeriske verdier.
# Flytdiagram for koden:


# Oppgave 2:
Den neste oppgaven inneholdte å beregne den laveste og høyeste summen langs forskjellige lister med tall. La meg forklare hvordan koden min virker med hjelp av pseudokoding.

Først defineres det 10 forskjellige lister med tall. Disse listene representerer forskjellige veier.

Deretter defineres funksjonen finn_vei, som tar inn en liste som parameter. Inne i funksjonen initialiseres variabler for laveste sum (min_sum), høyeste sum (max_sum) og nåværende posisjon (pos).

Funksjonen går deretter gjennom hvert tall (value) i den gitte listen ved hjelp av en ipairs-løkke. For hvert tall søker den etter tilstøtende tall som har en differanse på 1 eller mindre. Den finner det laveste og høyeste tallet blant disse tilstøtende tallene og oppdaterer min_value og max_value henholdsvis. Den oppdaterer også posisjonen (pos) til å være indeksen til det tilstøtende tallet som gir den laveste eller høyeste verdien.

Hvis det ikke blir funnet noen tilstøtende tall som oppfyller kriteriet, returnerer funksjonen nil.

Hvis det blir funnet tilstøtende tall, legger funksjonen til den laveste verdien (min_value) i min_sum og den høyeste verdien (max_value) i max_sum.

Til slutt returnerer funksjonen de beregnede verdiene for laveste og høyeste sum.

Etter definisjonen av funksjonen, kalles finn_vei-funksjonen med hver av de 10 tidligere definerte listene som argument. Resultatene av beregningene lagres i separate variabler.

Til slutt skrives resultatene ut ved hjelp av print-funksjonen. Først skrives den totale laveste summen ut ved å legge sammen verdiene for hver vei. Deretter skrives den totale høyeste summen ut ved å legge sammen verdiene for hver vei.
# Flytdiagram for koden:


# Oppgave 3:
Denne oppgaven krevde en labyrintsøker som går gjennom en labyrint lagd av en todimensjonal matrise for å finne slutten av labyrinten. La oss se hvordan dette ble kodet via forklaring med pseudokode.

Først defineres funksjonen findPath som tar inn en labyrint (representert som en todimensjonal matrise) som parameter. Inne i funksjonen blir det definert flere hjelpefunksjoner.

Hjelpefunksjonen isValidMove sjekker om en posisjon (gitt ved rad og kolonne) er en gyldig bevegelse i labyrinten. Den sjekker om posisjonen er innenfor grensene til labyrinten og om verdien i den gitte posisjonen er lik 1, som representerer en gyldig sti. Hvis posisjonen er gyldig, returnerer funksjonen true, ellers returnerer den false.

Hjelpefunksjonen isGoal sjekker om en posisjon (gitt ved rad og kolonne) er målet i labyrinten. I dette tilfellet er målet satt til å være den nederste høyre posisjonen i labyrinten. Hvis posisjonen er målet, returnerer funksjonen true, ellers returnerer den false.

Hjelpefunksjonen explore utforsker rekursivt naboene til en gitt posisjon i labyrinten. Først sjekker den om posisjonen er en gyldig bevegelse ved å kalle isValidMove-funksjonen. Hvis posisjonen er gyldig, markeres den som besøkt ved å oppdatere verdien i labyrintmatrisen til 2. Deretter sjekker den om posisjonen er målet ved å kalle isGoal-funksjonen. Hvis posisjonen er målet, returnerer funksjonen true, og søket avsluttes. Hvis posisjonen ikke er målet, utforsker funksjonen rekursivt naboene ved å kalle seg selv med de tilstøtende posisjonene (opp, høyre, ned, venstre). Hvis noen av rekursive kallene returnerer true, betyr det at veien til målet ble funnet, og funksjonen returnerer true. Hvis ingen av naboene fører til målet, returnerer funksjonen false.

Til slutt blir funksjonen explore kalt med startposisjonen (rad 1, kolonne 1) for å starte søket i labyrinten. Resultatet av søket blir returnert.

Etter definisjonen av funksjonen, blir det definert en labyrint som en todimensjonal matrise. Matrisen består av tallene 0 og 1, der 0 representerer en vegg og 1 representerer en gyldig sti.

Deretter kalles findPath-funksjonen med labyrinten som argument. Hvis findPath returnerer true, betyr det at veien til målet ble funnet, og meldingen "Veien er funnet!" blir skrev
# Flytdiagram for koden:
