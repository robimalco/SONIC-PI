set_mixer_control! lpf: 100

with_fx :reverb, room: 1 do
  live_loop :time do
    synth :prophet, release: 8, note: :e1, cutoff: 90, amp: 3
    sleep 8
  end
end

live_loop :machine do
  sample :loop_garzul , rate: 0.5, finish: 0.25
  sample :loop_industrial ,beat_stretch: 4, amp: 1
  sleep 4
end


live_loop :kik do
  sample :bd_haus, amp: 2
  sleep 0.5
end


live_loop :timbre do
  use_synth (ring :tb303, :blade, :prophet, :saw, :beep, :tri).tick
  play :e2, attack: 0, release: 0.5, cutoff: 100
  sleep 0.5
end


with_fx :echo do
  live_loop :vortex do
    # use_random_seed 800
    notes = (scale :e3, :minor_pentatonic, num_octaves: 3)
    16.times do
      # play notes.choose, release: 0.1, amp: 1.5
      sleep 100
    end
  end
end
