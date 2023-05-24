local function FinnVei(maze)
    --Definer hjelpefunksjon for å sjekke om en posisjon er gyldig
    local function SjekkBevegelse(row, col)
        if row >= 1 and row <= #maze and col >= 1 and col <= #maze[1] then
            return maze[row][col] == 1
        end
        return false
    end
    --Definer hjelpefunksjon for å sjekke om en posisjon er målet
    local function Destinasjon(row, col)
        return row == #maze and col == #maze[#maze]
    end
    --Definer hjelpefunksjon for å utforske naboer rekursivt
    local function Utforsk(row, col)
      --Sjekk om posisjonen er gyldig eller målet
        if SjekkBevegelse(row, col) then
            --Marker posisjonen som besøkt
            maze[row][col] = 2
            --Hvis posisjonen er målet, returner true
            if Destinasjon(row, col) then
                return true
            end
            --Utforsk naboer rekursivt
            if Utforsk(row + 1, col) or Utforsk(row, col + 1) or Utforsk(row - 1, col) or Utforsk(row, col - 1) then
                return true
            end
        end
        --Hvis posisjonen ikke er gyldig eller målet, returner false
        return false
    end
    --Start søket fra første posisjon
    return Utforsk(1, 1)
end

--Definer labyrinten
local maze = {
    {1, 0, 1, 1, 1, 1, 0, 1, 1, 1},
    {1, 0, 1, 0, 1, 1, 1, 0, 1, 1},
    {1, 1, 1, 0, 1, 1, 0, 1, 0, 1},
    {0, 0, 0, 0, 1, 0, 0, 0, 0, 1},
    {1, 1, 1, 0, 1, 1, 1, 0, 1, 0},
    {1, 0, 1, 1, 1, 1, 0, 1, 0, 0},
    {1, 0, 1, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 1, 1, 1, 1, 0, 1, 1, 1},
    {1, 1, 0, 0, 0, 1, 1, 1, 0, 1}
}

--Finn veien
if FinnVei(maze) then
    print("Vei funnet!")
else
    print("Ingen vei...")
end