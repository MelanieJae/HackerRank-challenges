# A gene is represented as a string of length nn (where nn is divisible by 44), composed of the letters AA, CC, TT, and GG. It is considered to be steady if each of the four letters occurs exactly n4n4 times. For example, GACTGACT and AAGTGCCTAAGTGCCT are both steady genes.

# Bear Limak is a famous biotechnology scientist who specializes in modifying bear DNA to make it steady. Right now, he is examining a gene represented as a string ss. It is not necessarily steady. Fortunately, Limak can choose one (maybe empty) substring of ss and replace it with any substring of the same length.

# Modifying a large substring of bear genes can be dangerous. Given a string ss, can you help Limak find the length of the smallest possible substring that he can replace to make ss a steady gene?

# Note: A substring of a string SS is a subsequence made up of zero or more consecutive characters of SS.

# Input Format

# The first line contains an interger nn divisible by 44, denoting the length of a string ss. 
# The second line contains a string ss of length nn. Each character is one of the four: AA, CC, TT, GG.

# Constraints

# 4≤n≤5000004≤n≤500000
# nn is divisible by 44
# Subtask

# 4≤n≤20004≤n≤2000 in tests worth 30%30% points.
# Output Format

# On a new line, print the minimum length of the substring replaced to make ss stable.

# Sample Input

# 8  
# GAAATAAA
# Sample Output

# 5
# Explanation

# One optimal solution is to replace a substring AAATAAAATA with TTCCGTTCCG, resulting in GTTCCGAAGTTCCGAA. The replaced substring has length 55, so we print 55 on a new line.