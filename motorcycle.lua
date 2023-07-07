speaker = peripheral.wrap("right")
c = 0

function note(amount, pitch, time, note)
	c = 0
	while c < amount do
		speaker.playSound(note, 100, pitch)
		sleep(time)
		c = c + 1
	end
end

sound = "block.glass.place"
amount = 50
print("Revving up!")
note(amount, 1.5, 0.05, sound)
note(amount, 1.75, 0.04, sound)
note(amount, 2, 0.035, sound)
note(amount, 2.25, 0.03, sound)
print("Redline")
note((amount * 1.5), 2.5, 0.015, sound)
print("Letting go of gas")
note((amount / 2), 2.25, 0.05, sound)
note((amount / 2), 2, 0.04, sound)
note((amount / 2), 1.75, 0.035, sound)
note((amount / 2), 1.5, 0.03, sound)
print("Turned off")
