-> start

=== start ===
"Rumble... I am Big Wheels, the... uh, big bus of the road. You human, yes?"

    *["Welp... aren't you a fat mess."]
    -> duel1

    *["I come bearing snacks for the snack-mobile."]
    -> subservience1

    *["Nice rims—too bad your muffler’s doing the limbo."]
    -> mockery1
=== duel1 ===
"Fat mess? I... sit on you now?"

     *["Your engine farts louder than my grandpa."]
    -> duel2a

    *["Your suspension’s so floppy you moonlight as a pancake."]
    -> duel2b

    *["Your horn sounds like a vuvuzela on helium."]
    -> duel2c
=== duel2a ===
"Farts… make stink. I make… sitting."
-> interaction1

=== duel2b ===
"Pancakes… I like breakfast? You bring syrup?"
-> interaction1

=== duel2c ===
"Vuvuzela! I play lullaby?"
-> interaction1

=== subservience1 ===
"You bring... gas? Snacks? Maybe... hug?"

    *["Your tank was emptier than your jokes—I filled it."]
    -> subservience2a

    *["Your seats were grosser than swamp mud—I scrubbed."]
    -> subservience2b

    *["Your wipers stuck—I lubricated with soda."]
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
"Limbo muffler… it’s my snack chute!"

    *["Snack chute? More like a stinky sock."]
    -> mockery2a

    *["Looks like someone sneezed grease there."]
    -> mockery2b

    *["That droop’s so sad it needs therapy."]
    -> mockery2c

=== mockery2a ===
"Sock… wear on feet? I wear on wheels?"
-> interaction1

=== mockery2b ===
"Sneeze… allergic to dust? I sneezed gears."
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
"Blind squirrels… find nuts? I find roads?"
-> interaction3a

=== interaction2b ===
"Arm wrestle… tiring. I bring… gummy bears?"
-> interaction3b

=== interaction2c ===
"Backward… is front’s awkward cousin?"
-> interaction3c

=== interaction3a ===

    *["Your engine runs on hamster farts."]
    -> final1

=== interaction3b ===

    *["You're just a metal lunchbox."]
    -> final2

=== interaction3c ===

    *["Let's park and eat glue."]
    -> final3

=== final1 ===
"Hamsters... cute wheels..."
-> finalinteraction

=== final2 ===
"Lunchboxes... have sandwiches..."
-> finalinteraction

=== final3 ===
"Glue... sticky... careful teeth..."
-> finalinteraction

=== finalinteraction ===
+["Whatever, grease-brain."]
->exit

=== exit ===
"I go hibernate… dream of roundabouts…"
-> END