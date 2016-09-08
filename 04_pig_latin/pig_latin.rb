#write your code here

def translate(word) 
    vowels = ["a", "e", "i", "o", "u"]
    clusters = ["st", "ch", "th", "qu", "br"]
    tlusters = ["sch", "thr", "squ"]
    arr = word.split(" ")
    arr.map! {|wrd|
        f = wrd[0,1]
        clust = wrd[0,2]
        tlust = wrd[0,3]
        if vowels.include?(f) 
            wrd << "ay"
        elsif tlusters.include?(tlust)
            wrd.slice!(0..2)
            wrd << (tlust + "ay")
        elsif clusters.include?(clust) 
            wrd.slice!(0..1)
            wrd << (clust + "ay")
        else
            wrd.slice!(0)
            wrd << (f + "ay")
        end
    }
        word = arr.join(" ")
        return word
end 