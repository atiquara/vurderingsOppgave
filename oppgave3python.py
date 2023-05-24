def FinnVei(maze):
    #Definer hjelpefunksjon for å sjekke om en posisjon er gyldig
    def SjekkBevegelse(row, col):
        if row >= 0 and row < len(maze) and col >= 0 and col < len(maze[0]):
            return maze[row][col] == 1
        return False
    #Definer hjelpefunksjon for å sjekke om en posisjon er målet
    def Destinasjon(row, col):
        return row == len(maze) - 1 and col == len(maze[-1]) - 1
    #Definer hjelpefunksjon for å utforske naboer rekursivt
    def Utforsk(row, col):
        #Sjekk om posisjonen er gyldig eller målet
        if SjekkBevegelse(row, col):
            #Marker posisjonen som besøkt
            maze[row][col] = 2
            #Hvis posisjonen er målet, returner true
            if Destinasjon(row, col):
                return True
            #Utforsk naboer rekursivt
            if (Utforsk(row + 1, col) or Utforsk(row, col + 1) or Utforsk(row - 1, col) or Utforsk(row, col - 1)):
                return True
        #Hvis posisjonen ikke er gyldig eller målet, returner false
        return False
    #Start søket fra første posisjon
    return Utforsk(0, 0)

#Definer labyrinten
maze = [
    [1, 0, 1, 1, 1, 1, 0, 1, 1, 1],
    [1, 0, 1, 0, 1, 1, 1, 0, 1, 1],
    [1, 1, 1, 0, 1, 1, 0, 1, 0, 1],
    [0, 0, 0, 0, 1, 0, 0, 0, 0, 1],
    [1, 1, 1, 0, 1, 1, 1, 0, 1, 0],
    [1, 0, 1, 1, 1, 1, 0, 1, 0, 0],
    [1, 0, 1, 0, 0, 0, 0, 0, 0, 1],
    [1, 0, 1, 1, 1, 1, 0, 1, 1, 1],
    [1, 1, 0, 0, 0, 1, 1, 1, 0, 1],
]

#Finn veien
if FinnVei(maze):
    print("Vei funnet!")
else:
    print("Ingen vei...")