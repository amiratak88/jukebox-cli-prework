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

# def say_hello(name)
#  "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)

def help
  
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"

end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.chomp
  if answer.class == Integer
    ((1..songs.length).include?(answer)) ? puts "Playing #{songs [answer - 1]}" : puts "Invalid input, please try again"
  else
    songs.include?(answer) ? puts "Playing #{answer}" : puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  help
  puts "Please enter a command:"
  answer = gets.chomp
  while answer != "exit"
    case answer
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
    end
    puts "Please enter a command:"
    answer = gets.chomp
  end
  exit_jukebox
end