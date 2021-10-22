loop do
  
  use_synth :prophet
  
  play 38, attack: 4, release: 2, pan: -0.4
  sleep 7
  play 38, attack: 2, release: 1, pan: rrand(-0.2, 1)
  sleep 3
  play 38, attack: 3, release: 2, pan: 0
  sleep 6
  play 38, attack: 2, release: 1, pan: rrand(-0.9, 1)
  sleep 4
  
  
end

