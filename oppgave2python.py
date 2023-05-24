import sys
#Definerer listene
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

#Definerer funksjonen for å finne laveste og høyeste sum
def FinnVei(liste):
    min_sum = 0
    max_sum = 0
    pos = 0

    for value in liste:
        min_value = sys.maxsize
        max_value = -sys.maxsize - 1
        found = False

        for i in range(max(0, pos - 1), min(len(liste), pos + 2)):
            diff = abs(value - liste[i])
            if diff <= 1:
                found = True
                pos = i
                min_value = min(min_value, liste[i])
                max_value = max(max_value, liste[i])

        if not found:
            return None

        min_sum += min_value
        max_sum += max_value

    return min_sum, max_sum

#Finner laveste og høyeste sum for hver vei
min_sum1, max_sum1 = FinnVei(liste1)
min_sum2, max_sum2 = FinnVei(liste2)
min_sum3, max_sum3 = FinnVei(liste3)
min_sum4, max_sum4 = FinnVei(liste4)
min_sum5, max_sum5 = FinnVei(liste5)
min_sum6, max_sum6 = FinnVei(liste6)
min_sum7, max_sum7 = FinnVei(liste7)
min_sum8, max_sum8 = FinnVei(liste8)
min_sum9, max_sum9 = FinnVei(liste9)
min_sum10, max_sum10 = FinnVei(liste10)

#Skriver ut resultatene
print("Lowest sum:")
print(min_sum1 + min_sum2 + min_sum3 + min_sum4 + min_sum5 + min_sum6 + min_sum7 + min_sum8 + min_sum9 + min_sum10)

print("Highest sum:")
print(max_sum1 + max_sum2 + max_sum3 + max_sum4 + max_sum5 + max_sum6 + max_sum7 + max_sum8 + max_sum9 + max_sum10)