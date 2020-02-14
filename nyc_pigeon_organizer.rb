data = {

:color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  new={}
  #^new empty hash
   data.each do|key,value|
   #^ we want to get into the hash, in this each the key is :color,:lives &:gender and the values are , :purple,:male,:subway(look at hash)
   value.each do |k,v|
  #in this each ^ we want to get into the second hash (ex:k is :purple which points to the v, ["Theo", "Peter Jr.", "Lucky"])
     v.each do |names| 
  # and here we want to get in to the array and go throguh each name (ex:["Theo", "Peter Jr.", "Lucky"])
      new[names] ||={}
  #(=> {"Theo"=>{}, "Peter Jr."=>{}, "Lucky"=>{}, "Ms. K"=>{}, "Queenie"=>{}, "Andrew"=>{}, "Alex"=>{}}
  #the new hash has the names pointing to empty hashes)
      new[names][key] ||=[]
  # when we put key next to the hash and name we are adding all the key(ex:color,:gender,:lives) into the empty hash before (ex:{"Theo"=>{:color=>[], :gender=>[], :lives=>[]}, "Peter Jr."=>) and are setting it to point to an empty array
      new[names][key].push(k.to_s)
    #in this last lines we are pushing all of the k (`s, in to the empty array we had before.)the k`s are :purple,:male,:subway. before we push it in we want to make sure they are turned into strings and not kept as keys so we use .to_s which turns them into "purple", "male" & "subway" and get ex:{"Theo"=>{:color=>["purple", "grey"], :gender=>["male"], :lives=>["Subway"]},
   end
     
   end
   
end
new
end



