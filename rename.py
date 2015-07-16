import sys

curName = sys.argv[1]
lastDotIndex = curName.rfind(".")
lastDashIndex = curName.rfind("-")

name = curName[:lastDashIndex-1] if curName[lastDashIndex-1] == "." else curName[:lastDashIndex]
ext = curName[lastDotIndex:]
print name+ext