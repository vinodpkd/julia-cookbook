words = [
   "look", "into", "my", "eyes", "look", "into", "my", "eyes",
   "the", "eyes", "the", "eyes", "the", "eyes", "not", "around", "the",
   "eyes", "don't", "look", "around", "the", "eyes", "look", "into",
   "my", "eyes", "you're", "under"
]

using StatsBase
word_counts = countmap(words)
top_three = sort(collect(word_counts), by=x->x[2], rev=true)[1:3]
println(top_three)
# outputs [('eyes', 8), ('the', 5), ('look', 4)]

# Example of merging in more words

morewords = ["why","are","you","not","looking","in","my","eyes"]
merge!(word_counts, countmap(morewords))
println(sort(collect(word_counts), by=x->x[2], rev=true)[1:3])
