-> start

=== start ===
"I am Big Wheels, the... uh... bus. You human, yes?"

    *["Welp... aren't you a fat mess."]
    -> duel1

    *["I come bearing snacks!"]
    -> subservience1

    *["Nice rims—shame your exhaust can’t keep its posture."]
    -> mockery1
=== duel1 ===
"Fat? I'm not fat, I'm girthy."

     *["Your engine farts louder than my grandpa."]
    -> duel2a

    *["Your suspension’s so floppy you moonlight as a pancake."]
    -> duel2b

    *["Your horn sounds like a vuvuzela on helium."]
    -> duel2c
=== duel2a ===
"I'd like to meet your granpa!"
-> interaction1

=== duel2b ===
"MMMmmmm... pancakes..."
-> interaction1

=== duel2c ===
"Yes... I vuvuzel often.(?!)"
-> interaction1

=== subservience1 ===
"You bring... gas? Snacks? Maybe... hug?"

    *["I filled your tank."]
    -> subservience2a

    *["I scrubbed your seats."]
    -> subservience2b

    *["I lubricated your wipers with soda."]
    -> subservience2c

=== subservience2a ===
"Glug-glug… tasty juice. You friend."
-> interaction1

=== subservience2b ===
"Seats clean… I sit anywhere—roof looks comfy."
-> interaction1

=== subservience2c ===
"Soda rain! Wipers go blop-blop!"
-> interaction1

=== mockery1 ===
"Posture? I have much posture!"

    *["Sure you do, you form of public transportation."]
    -> mockery2a

    *["Looks like someone has trouble with words."]
    -> mockery2b

    *["That droop’s so sad it needs therapy."]
    -> mockery2c

=== mockery2a ===
"Yes! Yes I do! I publicly transport!"
-> interaction1

=== mockery2b ===
"I have the best words."
-> interaction1

=== mockery2c ===
"Therapy… I need nap instead."
-> interaction1

=== interaction1 ===
*{duel1 or subservience1}
["Can you even go backward without GPS?"]
-> interaction2c
*{mockery1 or duel1}
["Your navigation must be sponsored by blind squirrels."]
-> interaction2a
*{mockery1 or subservience1}
["Wanna arm‑wrestle a tricycle?"]
-> interaction2b

=== interaction2a ===
"Squirrels are my best friends!"
-> interaction3a

=== interaction2b ===
"Tricycles are scary..."
-> interaction3b

=== interaction2c ===
"STOP BULLYING ME!"
-> interaction3c

=== interaction3a ===

    *["Your engine runs on hamster farts."]
    -> final1

=== interaction3b ===

    *["You're pretty timid. I like you."]
    -> final2

=== interaction3c ===
    *["Let's park and eat glue."]
    -> final3

=== final1 ===
"Hamsters and squirrels! Yay!"
-> finalinteraction

=== final2 ===
"I LIKE YOU TOO!"
-> finalinteraction

=== final3 ===
"I like glue!"
-> finalinteraction

=== finalinteraction ===
+["*Sigh* Okay, dum dum, we're friends now."]
->exit

=== exit ===
"Yaaaay! Friend!"
+["Public transportation is gud."]
-> END