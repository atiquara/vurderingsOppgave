# Denne systemdokumentasjonen er generalisert for både Python og Lua koden jeg skrev for de 3 forskjellige besvarelsene.

# Oppgave 1:
Oppgaven til den første koden jeg lagde var å utføre en operasjon på en matrise og returnerer minimum og maksimums verdiene for en spesifikk sti gjennom matrisen.

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
![image](https://github.com/atiquara/vurderingsOppgave/assets/111559588/12892eaf-4271-4c4f-9303-b9799913d6bb)


# Oppgave 2:
Den neste oppgaven inneholdte å beregne den laveste og høyeste summen langs forskjellige lister med tall.
Dette programmet inneholder to funksjoner: FindLowestSum og FindHighestSum, som begge tar inn en liste av lister som parameter. La oss se på hvordan koden fungerer:

Funksjonen FindLowestSum finner den laveste summen av tallene i hver liste. Den oppretter en tom tabell cumulativeSums som vil inneholde de kumulative summene for hvert element. Deretter initialiseres den første listen i lists med de opprinnelige verdiene, og summen for hvert element i den første listen lagres i cumulativeSums[1].

Etter det går funksjonen gjennom de resterende listene i lists (fra andre til siste liste) og finner den laveste summen for hvert element. Den bruker en løkke som går gjennom hvert element i hver liste og utfører en indre løkke som sjekker de tre forrige elementene. Den beregner summen av det forrige elementet og gjeldende element, og oppdaterer minSum til å være den laveste summen funnet så langt. Deretter lagres den laveste summen i cumulativeSums-tabellen for det gjeldende elementet.

Til slutt går funksjonen gjennom den siste listen i lists og finner den laveste summen ved å sammenligne hver sum i cumulativeSums[siste liste]. Den laveste summen blir lagret i variabelen lowestSum, og den blir returnert som resultat.

Funksjonen FindHighestSum fungerer på samme måte som FindLowestSum, men i stedet for å finne den laveste summen, finner den den høyeste summen. Den bruker en tilsvarende logikk, men denne gangen oppdateres maxSum til å være den høyeste summen funnet så langt.

Etter definisjonen av de to funksjonene, blir det definert ti lister (liste1 til liste10), hver med forskjellige tallverdier. Deretter opprettes en liste lists som inneholder disse listene. Dette gjøres for å forkorte koden.

Til slutt blir funksjonene FindLowestSum og FindHighestSum kalt med lists som argument, og resultatene blir lagret i henholdsvis lowestSum og highestSum. Disse verdiene blir deretter skrevet ut ved hjelp av print-funksjonen.
# Flytdiagram for koden:
![image](https://github.com/atiquara/vurderingsOppgave/assets/111559588/5f3262c6-24af-4b39-af0b-d1296a1e259c)

# Oppgave 3:
Denne oppgaven krevde en labyrintsøker som går gjennom en labyrint lagd av en todimensjonal matrise for å finne slutten av labyrinten.

Først defineres funksjonen findPath som tar inn en labyrint (representert som en todimensjonal matrise) som parameter. Inne i funksjonen blir det definert flere hjelpefunksjoner.

Hjelpefunksjonen isValidMove sjekker om en posisjon (gitt ved rad og kolonne) er en gyldig bevegelse i labyrinten. Den sjekker om posisjonen er innenfor grensene til labyrinten og om verdien i den gitte posisjonen er lik 1, som representerer en gyldig sti. Hvis posisjonen er gyldig, returnerer funksjonen true, ellers returnerer den false.

Hjelpefunksjonen isGoal sjekker om en posisjon (gitt ved rad og kolonne) er målet i labyrinten. I dette tilfellet er målet satt til å være den nederste høyre posisjonen i labyrinten. Hvis posisjonen er målet, returnerer funksjonen true, ellers returnerer den false.

Hjelpefunksjonen explore utforsker rekursivt naboene til en gitt posisjon i labyrinten. Først sjekker den om posisjonen er en gyldig bevegelse ved å kalle isValidMove-funksjonen. Hvis posisjonen er gyldig, markeres den som besøkt ved å oppdatere verdien i labyrintmatrisen til 2. Deretter sjekker den om posisjonen er målet ved å kalle isGoal-funksjonen. Hvis posisjonen er målet, returnerer funksjonen true, og søket avsluttes. Hvis posisjonen ikke er målet, utforsker funksjonen rekursivt naboene ved å kalle seg selv med de tilstøtende posisjonene (opp, høyre, ned, venstre). Hvis noen av rekursive kallene returnerer true, betyr det at veien til målet ble funnet, og funksjonen returnerer true. Hvis ingen av naboene fører til målet, returnerer funksjonen false.

Til slutt blir funksjonen explore kalt med startposisjonen (rad 1, kolonne 1) for å starte søket i labyrinten. Resultatet av søket blir returnert.

Etter definisjonen av funksjonen, blir det definert en labyrint som en todimensjonal matrise. Matrisen består av tallene 0 og 1, der 0 representerer en vegg og 1 representerer en gyldig sti.

Deretter kalles findPath-funksjonen med labyrinten som argument. Hvis findPath returnerer true, betyr det at veien til målet ble funnet, og meldingen "Veien er funnet!" blir skrev
# Flytdiagram for koden:
![image](https://github.com/atiquara/vurderingsOppgave/assets/111559588/ba28fdc8-078e-4d0a-973e-b58e6ae47ac2)
