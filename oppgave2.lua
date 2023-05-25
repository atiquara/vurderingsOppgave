-- Funksjon som finner det laveste tallet i hver array
function FinnMinSum(lists)
    -- Få antall lister i parameteren 'lists'
    local NummerListe = #lists
    -- Opprett en tom todimensjonal liste for å lagre de kombinerte summene
    local SammensattSum = {}

    -- Initialiser SammensattSum-listen med tomme lister for hver liste
    for i = 1, NummerListe do
        SammensattSum[i] = {}
    end

    -- Kopier verdiene fra den første listen (lists[1]) til SammensattSum[1]
    for i = 1, #lists[1] do
        SammensattSum[1][i] = lists[1][i]
    end

    -- Beregn de kombinerte summene for de resterende listene
    for i = 2, NummerListe do
        for j = 1, #lists[i] do
            local MinSum = math.huge
            -- Gå gjennom de tre foregående verdiene i forrige liste for å finne den minste summen
            for k = -1, 1 do
                local TidligereIndex = j + k
                -- Sjekk om indeksen er gyldig i forrige liste
                if TidligereIndex >= 1 and TidligereIndex <= #lists[i - 1] then
                    -- Beregn summen ved å legge til gjeldende verdi i den nåværende listen med verdien fra forrige liste
                    local Sum = SammensattSum[i - 1][TidligereIndex] + lists[i][j]
                    -- Oppdater MinSum hvis Sum er mindre
                    MinSum = math.min(MinSum, Sum)
                end
            end
            -- Lagre den minste summen i SammensattSum-listen
            SammensattSum[i][j] = MinSum
        end
    end

    -- Finn det laveste tallet blant de kombinerte summene i den siste listen (lists[NummerListe])
    local MaxSum = math.huge
    for i = 1, #lists[NummerListe] do
        MaxSum = math.min(MaxSum, SammensattSum[NummerListe][i])
    end

    -- Returner det laveste tallet
    return MaxSum
end

--Funksjon som finner det høyeste tallet i hver array
-- Samme logikk som FinnMinSum, bare med motsatt sammenligning av verdiene
function FinnMaxSum(lists)
    local NummerListe = #lists
    local SammensattSum = {}

    for i = 1, NummerListe do
        SammensattSum[i] = {}
    end

    for i = 1, #lists[1] do
        SammensattSum[1][i] = lists[1][i]
    end

    for i = 2, NummerListe do
        for j = 1, #lists[i] do
            local maxSum = -math.huge
            for k = -1, 1 do
                local TidligereIndex = j + k

                if TidligereIndex >= 1 and TidligereIndex <= #lists[i - 1] then
                    local Sum = SammensattSum[i - 1][TidligereIndex] + lists[i][j]
                    maxSum = math.max(maxSum, Sum)
                end
            end
            SammensattSum[i][j] = maxSum
        end
    end

    local highestSum = -math.huge
    for i = 1, #lists[NummerListe] do
        highestSum = math.max(highestSum, SammensattSum[NummerListe][i])
    end

    return highestSum
end

-- Definere listene
local liste1 = {0}
local liste2 = {2, 4}
local liste3 = {0, 5, 6}
local liste4 = {7, 2, 9, 10}
local liste5 = {25, 11, 1, 0, 5}
local liste6 = {1, 88, 51, 88, 61, 4}
local liste7 = {93, 12, 73, 36, 71, 65, 34}
local liste8 = {233, 5, 2, 1, 6, 7, 55, 1}
local liste9 = {16, 111, 213, 9, 23, 433, 1, 34, 13}
local liste10 = {5, 23, 453, 789, 123, 200, 212, 345, 556, 99}

-- Lag en liste av listene for å forkorte koden
local lists = {liste1, liste2, liste3, liste4, liste5, liste6, liste7, liste8, liste9, liste10}

-- Kjør funksjonene som finner den laveste og høyeste verdien i listene.
local MinSum = FinnMinSum(lists)
local MaxSum = FinnMaxSum(lists)
print("Lowest Sum: " .. MinSum)
print("Highest Sum: " .. MaxSum)