-- Funksjon som finner det høyeste og laveste tallet i hver matrise
function MinMax(matrix)
  local rows = #matrix -- Antall rader i matrisen
  local columns = #matrix[1] -- Antall kolonner i matrisen
  local preMinPath = {matrix[1][1]} -- Matrise som holder den foreløpige minste verdien for hver kolonne
  local preMaxPath = {matrix[1][1]} -- Matrise som holder den foreløpige største verdien for hver kolonne

  -- Beregner den foreløpige minste og største verdien for hver kolonne i første rad
  for v = 2, columns do
    preMinPath[v] = matrix[1][v] + preMinPath[v-1]
    preMaxPath[v] = matrix[1][v] + preMaxPath[v-1]
  end

  -- Itererer gjennom hver rad i matrisen fra den andre raden
  for i = 2, rows do
    local minPath = {matrix[i][1] + preMinPath[1]} -- Matrise som holder den foreløpige minste verdien for hver kolonne i gjeldende rad
    local maxPath = {matrix[i][1] + preMaxPath[1]} -- Matrise som holder den foreløpige største verdien for hver kolonne i gjeldende rad

    -- Beregner den foreløpige minste og største verdien for hver kolonne i gjeldende rad
    for v = 2, columns do
      local min_sum = math.min(preMinPath[v], minPath[v-1]) -- Velger den minste verdien mellom den foreløpige minste verdien i forrige kolonne og den foreløpige minste verdien i gjeldende kolonne
      local max_sum = math.max(preMaxPath[v], maxPath[v-1]) -- Velger den største verdien mellom den foreløpige største verdien i forrige kolonne og den foreløpige største verdien i gjeldende kolonne
      table.insert(minPath, matrix[i][v] + min_sum) -- Legger til den beregnede verdien for minste sti i gjeldende kolonne i minPath-matrisen
      table.insert(maxPath, matrix[i][v] + max_sum) -- Legger til den beregnede verdien for største sti i gjeldende kolonne i maxPath-matrisen
    end

    preMinPath = minPath -- Oppdaterer den foreløpige minste stien for neste rad
    preMaxPath = maxPath -- Oppdaterer den foreløpige største stien for neste rad
  end

  return preMinPath[columns], preMaxPath[columns] -- Returnerer den minste og største verdien for siste kolonne i matrisen
end

-- Definisjon av matrisene array1 til array6
local array1 = {
  {1, 8, 921, 238, 366, 938, 246, 940, 736, 585},
  {36, 9, 161, 717, 224, 489, 141, 160, 496, 838},
  {389, 22, 766, 19, 498, 655, 727, 130, 279, 392},
  {667, 220, 1, 581, 468, 96, 495, 169, 134, 14},
  {279, 30, 786, 780, 306, 533, 498, 637, 344, 599},
  {896, 224, 521, 948, 467, 208, 791, 371, 739, 48},
  {505, 592, 465, 586, 714, 540, 758, 488, 130, 609},
  {190, 851, 153, 433, 644, 444, 441, 401, 666, 118},
  {432, 662, 497, 926, 646, 686, 722, 196, 60, 854},
  {494, 818, 815, 355, 63, 778, 914, 812, 900, 999}
}

local array2 = {
  { 272, 362, 965, 995, 603, 909, 758, 390, 709, 693 } ,
  { 665, 600, 806, 201, 905, 688, 294, 860, 6, 501 } ,
  { 362, 454, 902, 479, 632, 78, 469, 255, 650, 755 } ,
  { 337, 927, 535, 858, 839, 236, 813, 457, 360, 482 } ,
  { 153, 742, 367, 793, 749, 870, 413, 81, 961, 165 } ,
  { 937, 88, 291, 35, 325, 580, 912, 15, 777, 779 } ,
  { 813, 638, 641, 918, 140, 758, 755, 522, 745, 12 } ,
  { 902, 978, 273, 9, 80, 498, 850, 863, 651, 123 } ,
  { 262, 104, 32, 735, 780, 177, 327, 175, 667, 128 } ,
  { 45, 344, 622, 627, 349, 184, 802, 400, 701, 550 }
  }

  local array3 = {
  { 101, 892, 495, 633, 59, 331, 216, 352, 49, 49 } ,
  { 925, 288, 737, 224, 734, 94, 361, 35, 826, 710 } ,
  { 712, 133, 609, 927, 908, 725, 626, 601, 878, 773 } ,
  { 325, 708, 968, 940, 877, 416, 115, 434, 594, 890 } ,
  { 58, 617, 813, 127, 176, 20, 784, 565, 863, 178 } ,
  { 405, 352, 545, 795, 216, 814, 491, 355, 516, 423 } ,
  { 239, 776, 654, 433, 453, 644, 708, 113, 354, 404 } ,
  { 663, 571, 0, 532, 842, 520, 874, 988, 322, 576 } ,
  { 630, 469, 879, 609, 37, 965, 888, 277, 975, 87 } ,
  { 337, 260, 79, 110, 428, 410, 963, 898, 517, 735 }
  }

  local array4 = {
  { 70, 562, 376, 993, 689, 354, 369, 519, 981, 786 } ,
  { 539, 756, 364, 445, 650, 23, 456, 901, 955, 83 } ,
  { 259, 967, 396, 745, 810, 218, 986, 593, 360, 415 } ,
  { 601, 479, 670, 406, 321, 845, 667, 420, 34, 853 } ,
  { 796, 204, 548, 162, 355, 583, 611, 23, 227, 882 } ,
  { 498, 796, 258, 851, 339, 847, 378, 330, 107, 46 } ,
  { 548, 48, 746, 356, 115, 48, 503, 213, 80, 519 } ,
  { 285, 260, 162, 644, 885, 916, 771, 657, 622, 92 } ,
  { 472, 336, 931, 257, 798, 881, 911, 486, 736, 664 } ,
  { 107, 248, 52, 958, 596, 133, 191, 960, 785, 776 }
  }

  local array5 = {
  { 239, 493, 26, 156, 588, 424, 88, 914, 921, 494 } ,
  { 90, 681, 600, 338, 620, 689, 149, 245, 739, 686 } ,
  { 854, 261, 14, 761, 929, 671, 349, 615, 626, 10 } ,
  { 965, 125, 938, 900, 764, 939, 766, 182, 274, 714 } ,
  { 538, 288, 941, 251, 903, 80, 807, 879, 616, 891 } ,
  { 411, 546, 273, 575, 419, 682, 357, 63, 397, 541 } ,
  { 266, 599, 402, 972, 156, 180, 639, 83, 19, 618 } ,
  { 62, 289, 436, 67, 29, 720, 38, 543, 775, 969 } ,
  { 229, 316, 707, 537, 48, 297, 989, 469, 895, 191 } ,
  { 106, 538, 652, 624, 308, 722, 17, 885, 497, 490 }
  }

  local array6 = {
  { 571, 7, 514, 699, 399, 94, 407, 153, 941, 638 } ,
  { 296, 39, 622, 601, 341, 986, 605, 47, 596, 543 } ,
  { 549, 26, 117, 770, 258, 259, 433, 381, 698, 764 } ,
  { 350, 359, 182, 344, 396, 51, 169, 418, 248, 865 } ,
  { 827, 678, 449, 808, 176, 256, 149, 688, 561, 585 } ,
  { 634, 999, 158, 774, 383, 274, 651, 731, 449, 660 } ,
  { 158, 190, 985, 696, 634, 279, 484, 287, 648, 732 } ,
  { 400, 412, 957, 317, 376, 244, 664, 732, 463, 691 } ,
  { 544, 831, 523, 299, 149, 198, 964, 863, 502, 954 } ,
  { 497, 793, 915, 58, 573, 120, 491, 776, 728, 291 }
  }

-- Printer ut resultatet av MinMax-funksjonen for hver matrise
print(MinMax(array1))
print(MinMax(array2))
print(MinMax(array3))
print(MinMax(array4))
print(MinMax(array5))
print(MinMax(array6))