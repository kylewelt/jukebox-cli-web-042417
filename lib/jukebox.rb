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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  request = gets.chomp

  if request.to_i != 0
    request = request.to_i - 1
  else
    request = songs.index(request)
  end

  if request
    if songs[request]
      puts "Playing #{songs[request]}"
    else
      puts "Invalid input, please try again"
    end
  else
    puts "Invalid input, please try again"
  end

end

def list(songs)
  puts songs
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp

  while command != "exit"
    if command == "help"
      help
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    end
    command = gets.chomp
  end

  exit_jukebox

end

# run
