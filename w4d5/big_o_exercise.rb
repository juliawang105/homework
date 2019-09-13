#fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(array)
    max = ''

    (0...array.length).each do |i|
        (i+1...array.length).each do |j|
            if array[i].length > array[j].length
                max = array[i]
            else 
                max = array[j]
            end
        end
    end

    return max 

end 

def dominant_octopus(array)
    return [array] if array.length <= 1 

    pivot = array.first 
    left = array[1..-1].select { |ele| ele < pivot }
    right = array[1..-1].select { |ele| ele >= pivot }

    final = dominant_octopus(left) + [pivot] + dominant_octopus(left) 
end

def clever_octopus(array)
    max = ""

    array.each do |word|
        if word.length > max 
            max = word 
        end
    end
    max 
end

#tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(target, array)

    array.each.with_index do |phrase, i|
        return i if array[i] == target 
        end 
    end
end

# #tiles_hash = {"up", 
#     "right-up" => 0 , 
#     "right" => 1 , 
#     "right-down" => 2 , 
#     "down" => 3 , 
#     "left-down" => 4 , 
#     "left" => 5 ,  
#     "left-up => 6 " 
# }

def constant_dance(target,hash)
    hash[target]

end 