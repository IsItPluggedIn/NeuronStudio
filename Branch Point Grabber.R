neuronTrace = read.table(file=file.choose(),
                        header=T, sep="",
                        na.strings="`",
                        stringsAsFactors=F)

branchPoints = neuronTrace[,c("BRANCH.POINTS")]

totalBranchPoints = 0
i = 2
while(i <= length(branchPoints)){
  totalBranchPoints = totalBranchPoints + branchPoints[i]
    i = i + 1
  }
  
sprintf("The number of branch points is %d", totalBranchPoints)