
require 'mysql'

def insert (a,b,c)
begin
    con = Mysql.new 'localhost', 'root', 'prathamesh', 'CAthlon'

    con.query("INSERT INTO Questions1 (q_text,option1,option2,option3,option4,answer)
                VALUES ('#{a}','#{b[1]}','#{b[2]}','#{b[3]}','#{b[4]}','#{c}') ")

rescue Mysql::Error => e
    puts e.errno
    puts e.error

ensure
    con.close if con
end

end

file = File.open("fese l1.txt","r")

contents = file.read
question = ""
option = ""
answer = ""

count = 0

contents = contents.chomp
contents = contents.split("---")

length = contents.length
puts length
i= 0
while i < length


contents[i] = contents[i].gsub("\n","<br>")
contents[i+1] = contents[i+1].gsub("a)","---")
contents[i+1] = contents[i+1].gsub("b)","---")
contents[i+1] = contents[i+1].gsub("c)","---")
contents[i+1] = contents[i+1].gsub("d)","---")

contents[i+1]=contents[i+1].split("---")
len = contents[i+1].length
j = 0
while j < len
contents[i+1][j] = contents[i+1][j].strip!
contents[i+1][j] = contents[i+1][j]+"\n"
j = j + 1
end
contents[i+2]=contents[i+2].gsub("ans:","")
insert(contents[i],contents[i+1],contents[i+2])
i = i + 3
end


