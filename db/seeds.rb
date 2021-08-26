require "faker"
Sub.destroy_all
Topic.destroy_all
programming = Sub.create(name: "Programming")
bob_ross = Sub.create(name: "Bob Ross")
music = Sub.create(name: "Music")

programming.topics.create(name:"Javascript", body:'Js is the language od the web and totes my faves')
programming.topics.create(name:"Ruby", body:'Ruby is the language of the rails')

Topic.create(name:'all about happy trees', body:"bob roos likes to paint trees", sub_id:bob_ross.id)
Topic.create(name:'all about happy Mountains', body:"bob ross likes to paint Mountains", sub_id:bob_ross.id)

music.topics.create(name:'80s synth', body:'totes mcgee my friend')
music.topics.create(name:'90s synth', body:'does this exist?')