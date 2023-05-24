--Definerer listene
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

--Definerer funksjonen for å finne laveste og høyeste sum
local function FinnVei(liste)
    local min_sum = 0
    local max_sum = 0
    local pos = 1
    
    for _, value in ipairs(liste) do
        local min_value = math.maxinteger
        local max_value = math.mininteger
        local found = false
        
        for i = math.max(1, pos - 1), math.min(#liste, pos + 1) do
            local diff = math.abs(value - liste[i])
            if diff <= 1 then
                found = true
                pos = i
                min_value = math.min(min_value, liste[i])
                max_value = math.max(max_value, liste[i])
            end
        end

        if not found then
            return nil
        end

        min_sum = min_sum + min_value
        max_sum = max_sum + max_value
    end
    
    return min_sum, max_sum
end

--Finner laveste og høyeste sum for hver vei
local min_sum1, max_sum1 = FinnVei(liste1)
local min_sum2, max_sum2 = FinnVei(liste2)
local min_sum3, max_sum3 = FinnVei(liste3)
local min_sum4, max_sum4 = FinnVei(liste4)
local min_sum5, max_sum5 = FinnVei(liste5)
local min_sum6, max_sum6 = FinnVei(liste6)
local min_sum7, max_sum7 = FinnVei(liste7)
local min_sum8, max_sum8 = FinnVei(liste8)
local min_sum9, max_sum9 = FinnVei(liste9)
local min_sum10, max_sum10 = FinnVei(liste10)

--Skriver ut resultatene
print("Laveste sum:")
print(min_sum1 + min_sum2 + min_sum3 + min_sum4 + min_sum5 + min_sum6 + min_sum7 + min_sum8 + min_sum9 + min_sum10)

print("Høyeste sum:")
print(max_sum1 + max_sum2 + max_sum3 + max_sum4 + max_sum5 + max_sum6 + max_sum7 + max_sum8 + max_sum9 + max_sum10)