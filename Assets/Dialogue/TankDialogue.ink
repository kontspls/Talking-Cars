
-> start

=== start ===
"Clank… I am Thunder, steel titan of the battlefield. You are infantry, yes?"
+ ["I challenge your firepower, rolling fortress!"]
    -> duel1
+ ["I yield to your armored might, iron behemoth."]
    -> subservience1
+ ["Nice camo—though that dent on your turret is tragic."]
    -> mockery1

=== duel1 ===
"You are brave? You’re a bug under my tread."
+ ["Your barrel is crooked—aims at your own crew."]
    -> duel2a
+ ["Your armor is rusted—crumbles like old metal."]
    -> duel2b
+ ["Your treads squeak like frightened rats."]
    -> duel2c

=== duel2a ===
"Crew is safe. You are target practice."
    -> interaction1

=== duel2b ===
"Rust is strong. You oxidize faster."
    -> interaction1

=== duel2c ===
"Squeak means I will roll over you."
    -> interaction1

=== subservience1 ===
"You bring supplies—fuel, ammo, maybe respect?"
+ ["Your fuel was low—I topped you off."]
    -> subservience2a
+ ["Your ammo is fresh—loaded and ready."]
    -> subservience2b
+ ["Your tracks needed maintenance—I greased them."]
    -> subservience2c

=== subservience2a ===
"Full tank is odd feeling. You are kind."
    -> interaction1

=== subservience2b ===
"Ready. You are thorough."
    -> interaction1

=== subservience2c ===
"Smooth roll. You are thoughtful."
    -> interaction1

=== mockery1 ===
"Mock my dent? That is glory from skirmish."
+ ["Glory? Looks like you hit a wall alone."]
    -> mockery2a
+ ["Glory? More like a midlife metal crisis."]
    -> mockery2b
+ ["That dent’s from your own recoil—you shot yourself."]
    -> mockery2c

=== mockery2a ===
"Wall shattered. I still stand. "Your turn again, infantry. What now?"
    -> interaction1

=== mockery2b ===
"Crisis? I am timeless... Your turn again, infantry. What now?"
    -> interaction1

=== mockery2c ===
"Backfire? I call that practice. Your turn again, infantry. What now?"
    -> interaction1

=== interaction1 ===
*{duel1 or subservience1}
  ["I dare you to show mercy."]
  -> interaction2c 
*{mockery1 or duel1}
  ["I test your aim with taunts."]
    -> interaction2a
*{mockery1 or subservience1}
  ["I offer a temporary truce."]
  -> interaction2b
    


=== interaction2a ===
"Taunts bounce off my armor. Words are wind to steel. Buttons are welded shut."
    -> interaction3a

=== interaction2b ===
"Truce? I consider… then crush. Flattery slicks no treads. You watch, but I see everything."
    -> interaction3b

=== interaction2c ===
"Mercy is a weak spark. I fight because I can. Strength respects only strength."
    -> interaction3c

=== interaction3a ===
+ ["Your roar is just hot air."]
    -> final1

=== interaction3b ===
+ ["You’re more machine than monster."]
    -> final2

=== interaction3c ===
+ ["Let’s call this a draw."]
    -> final3

=== final1 ===
"Hot air powers turbines."
    -> finalinteraction

=== final2 ===
"Machines win wars."
    -> finalinteraction

=== final3 ===
"Draw… unexpected outcome."
    -> finalinteraction

=== finalinteraction ===
+["Sure thing, knucklehead."]
->exit


=== exit ===
"I have no time for you, I have wars to win..."
-> END
