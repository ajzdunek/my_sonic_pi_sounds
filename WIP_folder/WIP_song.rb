loop do
  
  
  8.times do
    sample :drum_cymbal_closed, rate: rrand(0, 1)
    play_pattern_timed chord(:E3, :minor), [0.25, 0.5]
  end
  
  sample :drum_cymbal_hard
  
  7.times do
    play_pattern_timed chord(:C3, :major7), [0.25, 0.5]
    
    sample :drum_heavy_kick
    
  end
  
  with_fx :bitcrusher, amp: 0.30, sample_rate: 10000, bits: rrand(1, 2.5)  do
    1.times do play_pattern_timed chord(:A3, :minor), [0.25, 0.5]
    end
  end
  
  sample :glitch_bass_g, amp: rrand(0, 1)
  
end