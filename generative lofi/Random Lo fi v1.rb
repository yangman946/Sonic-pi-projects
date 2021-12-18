# Lofi generator by clarence yang
# plays at 70 - 95 bpm
# composes of:
#    1. a jazzy instrumental
#    2. a drum beat combo "boom bap"
#    3. ambient background "white" noise, i.e. vinyl cracks




#live_loop :drums do
#  sample :drum_heavy_kick, amp: 1
#  sleep 1
#  sample :sn_dolf, amp: 2, rate: 0.8
#  sleep sample_duration(:loop_amen) / 1
#end

live_loop :background do
  sync :chords #sync to main line
  sample :vinyl_hiss, amp: 5
  
end

live_loop :beat do
  with_fx :bitcrusher do
    
    with_fx :nrlpf, cutoff: 30, mix: 0.2, res: 0.1 do
      sample :drum_heavy_kick, amp: 3, rate: 2
      sleep 1
      sample :sn_generic, amp: 3, rate: 2
    end
    
    #sample :drum_heavy_kick, amp: 2, rate: 1.5
    #sleep 1
    
    #sleep 2
    #sample :drum_heavy_kick, amp: 2, rate: 1.5
    sleep 2
    #sample :sn_generic, amp: 2, rate: 1.5
    sleep 0.5
  end
  
end

live_loop :chords do
  with_fx :bitcrusher do
    #play_pattern_timed chord(:E3, :m13), [0.25, 0.5], amp: 1
    
  end
  sleep 1
end

