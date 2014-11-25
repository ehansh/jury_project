# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MeasureGroup.delete_all
Measure.delete_all
Jury.delete_all
AppliedStudyForm.delete_all

#creation of MeasureGroups
general = 		MeasureGroup.create({name: 'General'})
keyboard = 		MeasureGroup.create({name: 'Keyboard'})
instrumental = 	MeasureGroup.create({name: 'Instrumental'})
vocal = 		MeasureGroup.create({name: 'Vocal'})

#General Measures
dynamics = 			Measure.create(name: 'Dynamics' )
rhythm = 			Measure.create(name: 'Rhythm' )
phrasing = 			Measure.create(name: 'Phrasing' )
interpertation = 	Measure.create(name: 'Interpretation' )
tone = 				Measure.create(name: 'Tone' )

general.measures << [tone, dynamics, rhythm, phrasing, interpertation]

general.measures.each do |measure|
	key_measure 			= Measure.create(name: measure.name)
	instrumental_measure 	= Measure.create(name: measure.name)
	vocal_measure 			= Measure.create(name: measure.name)

	keyboard.measures 		<< key_measure
	instrumental.measures 	<< instrumental_measure
	vocal.measures 			<< vocal_measure 
end

general.delete

#Keyboard Measures

articulation = 	Measure.create(name: 'Articulation' )
technique = 	Measure.create(name: 'Technique' )
memory = 		Measure.create(name: 'Memory' )
scales =		Measure.create(name: 'Scales' )

keyboard.measures << [articulation, technique, memory, scales]

#Instrumental Measures
articulation_instrumental = Measure.create(name: 'Articulation' )
vibrato = 					Measure.create(name: 'Vibrato' )
breathing = 				Measure.create(name: 'Breathing' )
intonation = 				Measure.create(name: 'Intonation' )
ensemble =					Measure.create(name: 'Ensemble' )
scales_instrumenta = 		Measure.create(name: 'Scales')

instrumental.measures << [articulation_instrumental, vibrato, breathing, intonation, ensemble, scales_instrumenta]

#Vocal Measures
dictation =			Measure.create(name: 'Dictation' )
vibrato_vocal = 	Measure.create(name: 'Vibrato' )
breathing_vocal = 	Measure.create(name: 'Breathing' )
intonation_vocal =	Measure.create(name: 'Intonation' )
ensemble_vocal =	Measure.create(name: 'Ensemble' )
memory_vocal =		Measure.create(name: 'Memory' )

vocal.measures << [dictation, vibrato_vocal, breathing_vocal, intonation_vocal, ensemble_vocal, memory_vocal]