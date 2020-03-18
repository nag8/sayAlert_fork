require 'time'
def timer(arg, &proc)
  x = case arg
  when Numeric then arg
  when Time    then arg - Time.now
  when String  then Time.parse(arg) - Time.now
  else raise   end
  sleep x if block_given?
  yield
end

timer("12:50") do 
  system('afplay /System/Library/Sounds/Ping.aiff && afplay /System/Library/Sounds/Ping.aiff && afplay /System/Library/Sounds/Ping.aiff')
  system("say '昼会を行いましょう！'")
end

timer("12:59") do 
  system('afplay /System/Library/Sounds/Ping.aiff && afplay /System/Library/Sounds/Ping.aiff && afplay /System/Library/Sounds/Ping.aiff')
  system("say '今日もがんばりましょう！'")
end
