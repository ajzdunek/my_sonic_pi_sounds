##|International Flight

in_thread(name: :british_airways) do
  loop do
    sample :loop_drone_g_97, rate: 0.10, amp: 2
    ##| sleep sample_duration :loop_drone_g_97
    sleep rrand(1, 10)
    
    
    play 70, amp: rrand(0.2, 0.5)
    sleep rrand_i(20, 40)
  end
end
