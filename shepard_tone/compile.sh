#!/bin/bash

#for NOTE in c cis d dis e f fis g gis a ais b; do
	echo $NOTE
	NOTE=$NOTE DUR=1 envsubst < shepard_tone.ly.envsubst > shepard_tone_$NOTE.ly
	lilypond -o shepard_tone_$NOTE shepard_tone_$NOTE.ly
	./midi2mp3 shepard_tone_$NOTE.midi shepard_tone_untrimmed_$NOTE.mp3
	mp3splt shepard_tone_untrimmed_$NOTE.mp3 -o "@tshepard_tone_$NOTE" 0.0 0.07
	rm shepard_tone_untrimmed_$NOTE.mp3
#done
