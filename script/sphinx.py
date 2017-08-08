from pocketsphinx import LiveSpeech

for phrase in LiveSpeech():
  if "st" in str(phrase):
    print(phrase)
    break
  else:
    pass
