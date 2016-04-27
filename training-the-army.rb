
# Training the army
# Success Rate: 47.83% Max Score: 120 Difficulty: Difficult
# Design a series of transformation which results into maximum number of skill set with non-zero acquaintance.

# In the magical kingdom of Kasukabe, people strive to possess only one skillset. Higher the number of skillset present among the people, the more content people will be.

# There are NN types of skill set present and initially there exists CiCi people possessing ithith skill set, where i∈[1,N]i∈[1,N].

# There are TT wizards in the kingdom and they have the ability to transform the skill set of a person into another skill set. Each of the these wizards has two list of skill sets associated with them, AA and BB. He can only transform the skill set of person whose initial skill set lies in list AA and that final skill set will be an element of list BB. That is, if A=[2,3,6]A=[2,3,6] and B=[1,2]B=[1,2] then following transformation can be done by that trainer.

# 2→12→23→13→26→16→2
# 2→12→23→13→26→16→2
# Once a transformation is done, both skill is removed from the respective lists. In the above example, if he perform 3→13→1 transformation on a person, list AA will be updated to [2,6][2,6] and list BB will be [2][2]. This updated list will be used for next transformation and so on.

# Few points to note are:

# A wizard can perform 0 or more transformation as long as they satisfies the above criteria.
# A person can go through multiple transformation of skill set.
# Same class transformation is also possible. That is a person' skill set can be transformed into his current skill set. Eg. 2→22→2 in the above example.
# Your goal is to design a series of transformation which results into maximum number of skill set with non-zero acquaintance.

# Input Format 
# The first line contains two numbers, N TN T, where NN represent the number of skill set and TT represent the number of wizards. 
# Next line contains NN space separated integers, C1 C2 … CNC1 C2 … CN, where CiCi represents the number of people with ithith skill. Then follows 2×T2×T lines, where each pair of line represent the configuration of each wizard. 
# First line of the pair will start with the length of list AA and followed by list AA in the same line. Similarly second line of the pair starts with the length of list BB and then the list BB.

# Output Format 
# The output must consist of one number, the maximum number of distinct skill set that can the people of country learn, after making optimal transformation steps.

# Constraints 
# 1≤N≤2001≤N≤200 
# 0≤T≤300≤T≤30 
# 0≤Ci≤100≤Ci≤10 
# 0≤|A|≤500≤|A|≤50 
# 1≤Ai≤N1≤Ai≤N 
# Ai≠Aj,1≤i<j≤|A|Ai≠Aj,1≤i<j≤|A| 
# 0≤|B|≤500≤|B|≤50 
# 1≤Bi≤N1≤Bi≤N 
# Bi≠Bj,1≤i<j≤|B|Bi≠Bj,1≤i<j≤|B|
# Sample Input

# 3 1
# 3 0 0
# 1 1
# 2 2 3
# Sample Output

# 2
# Explanation 
# There are 3 types of skill set present and only 1 wizard. Initially all three people know 1st1st skill set, while no one knows 2nd and 3rd2nd and 3rd skill set. 
# First, and only, wizard' initial list are: A=[1] and B=[2,3]A=[1] and B=[2,3]. So he can perform any of the 1→2 or 1→31→2 or 1→3 transformation. Suppose he go for 1→21→2 transformation on any of person with 1st1st skill set, then list AA will be updated to an empty list [][] and and list BB will be [3][3]. Now he can't perform another transformation as list AA is empty. So there will be two people with 1st1st skill set, and 1 people with 2nd2nd skill set. So there are two skill sets available in the kingdom.