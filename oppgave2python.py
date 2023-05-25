import math

def finn_min_sum(lists):
    # Få antall lister i parameteren 'lists'
    num_liste = len(lists)
    # Opprett en tom todimensjonal liste for å lagre de kombinerte summene
    sammensatt_sum = []

    # Initialiser sammensatt_sum-listen med tomme lister for hver liste
    for i in range(num_liste):
        sammensatt_sum.append([])

    # Kopier verdiene fra den første listen (lists[1]) til sammensatt_sum[1]
    for i in range(len(lists[0])):
        sammensatt_sum[0].append(lists[0][i])

    # Beregn de kombinerte summene for de resterende listene
    for i in range(1, num_liste):
        for j in range(len(lists[i])):
            min_sum = math.inf
            # Gå gjennom de tre foregående verdiene i forrige liste for å finne den minste summen
            for k in range(-1, 2):
                tidligere_index = j + k
                # Sjekk om indeksen er gyldig i forrige liste
                if tidligere_index >= 0 and tidligere_index < len(lists[i - 1]):
                    # Beregn summen ved å legge til gjeldende verdi i den nåværende listen med verdien fra forrige liste
                    sum = sammensatt_sum[i - 1][tidligere_index] + lists[i][j]
                    # Oppdater min_sum hvis sum er mindre
                    min_sum = min(min_sum, sum)
            # Lagre den minste summen i sammensatt_sum-listen
            sammensatt_sum[i].append(min_sum)

    # Finn det laveste tallet blant de kombinerte summene i den siste listen (lists[num_liste])
    max_sum = math.inf
    for i in range(len(lists[num_liste - 1])):
        max_sum = min(max_sum, sammensatt_sum[num_liste - 1][i])

    # Returner det laveste tallet
    return max_sum

# Funksjon som finner det høyeste tallet i hver array
# Samme logikk som finn_min_sum, bare med motsatt sammenligning av verdiene
def finn_max_sum(lists):
    num_liste = len(lists)
    sammensatt_sum = []

    for i in range(num_liste):
        sammensatt_sum.append([])

    for i in range(len(lists[0])):
        sammensatt_sum[0].append(lists[0][i])

    for i in range(1, num_liste):
        for j in range(len(lists[i])):
            max_sum = -math.inf
            for k in range(-1, 2):
                tidligere_index = j + k

                if tidligere_index >= 0 and tidligere_index < len(lists[i - 1]):
                    sum = sammensatt_sum[i - 1][tidligere_index] + lists[i][j]
                    max_sum = max(max_sum, sum)
            sammensatt_sum[i].append(max_sum)

    highest_sum = -math.inf
    for i in range(len(lists[num_liste - 1])):
        highest_sum = max(highest_sum, sammensatt_sum[num_liste - 1][i])

    return highest_sum

# Definer listene
liste1 = [0]
liste2 = [2, 4]
liste3 = [0, 5, 6]
liste4 = [7, 2, 9, 10]
liste5 = [25, 11, 1, 0, 5]
liste6 = [1, 88, 51, 88, 61, 4]
liste7 = [93, 12, 73, 36, 71, 65, 34]
liste8 = [233, 5, 2, 1, 6, 7, 55, 1]
liste9 = [16, 111, 213, 9, 23, 433, 1, 34, 13]
liste10 = [5, 23, 453, 789, 123, 200, 212, 345, 556, 99]

# Lag en liste av listene for å forkorte koden
lists = [liste1, liste2, liste3, liste4, liste5, liste6, liste7, liste8, liste9, liste10]

# Kjør funksjonene som finner den laveste og høyeste verdien i listene.
min_sum = finn_min_sum(lists)
max_sum = finn_max_sum(lists)
print("Lowest Sum:", min_sum)
print("Highest Sum:", max_sum)
