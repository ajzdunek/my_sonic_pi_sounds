system "clear"
use_bpm 72


puts = [first_part, second_part, third_part,
        first_part, second_part, third_part,
        first_part, second_part, third_part,
        first_part, second_part, third_part,
        break_part, exit]


define :first_part do
  8.times do
    sample :drum_cymbal_closed, rate: rrand(0, 1)
    play_pattern_timed chord(:E3, :minor), [0.25, 0.5]
  end
end

define :second_part do
  with_fx :slicer, pulse_width: 0.7 do
    3.times do
      sample :drum_heavy_kick
      play_pattern_timed chord(:C3, :major7), [0.5]
    end
  end
end

define :third_part do
  with_fx :bitcrusher, amp: 0.30, sample_rate: 10000, bits: rrand(1, 2.5)  do
    1.times do play_pattern_timed chord(:A3, :minor), [0.25, 0.5]
    end
  end
  sample :glitch_bass_g, amp: rrand(0, 1)
end

define :break_part do
  with_fx :slicer, pulse_width: rrand(0.4, 0.7) do
    4.times do
      sample :drum_heavy_kick
      play_pattern_timed chord(:C3, :major7), [0.5]
    end
  end
end


first_part
second_part
third_part
break_part







