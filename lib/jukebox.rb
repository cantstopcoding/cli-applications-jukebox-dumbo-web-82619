# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do|song, index|
    puts "#{index + 1}. #{song}"
  end 
end 

def play(songs)
  
  inp = gets.chomp 
  num = inp.to_i 
  
  if num < 0 && songs.include?(inp)
    index_of_songs = songs.index(inp)
    puts "Playing #{songs[index_of_songs]}"
  end 
end 

