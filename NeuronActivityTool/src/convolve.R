
tam=floor(tamano/2)
contCol=1
contRow=1

currentAD = matrix(0,ceiling(numRow/tamano)*tamano,ceiling(numCol/tamano)*tamano)
currentAD[1:numRow,1:numCol] = current

for (colsArray in seq(ceiling(tamano/2),numCol,tamano)) {
  for (rowsArray in seq(ceiling(tamano/2),numRow,tamano)) {
    
    defArray[contRow,contCol,frame] = mean(mean(currentAD[(rowsArray-tam):(rowsArray+tam),(colsArray-tam):(colsArray+tam)]))
    contRow = contRow+1
  
  }
  
  contRow = 1  
  contCol = contCol+1

}