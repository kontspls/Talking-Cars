-> start

=== start ===
"Hey there, partner. I’m Granite, your road-tested ride and trusted friend. I’m built tough, but I’ve got time for you."

    *["I’ve been so stressed lately…"]  
    -> support1

    *["I just need someone to talk to."]  
    -> support2

    *["I’m tired of everything going wrong."]  
    -> support3

=== support1 ===
"Stress weighs heavy, even on the strongest shoulders. You’re doing your best, and that counts for a lot."

    *["Work’s been impossible."]  
    -> support1a

    *["Home life is chaotic."]  
    -> support1b

    *["I feel alone."]  
    -> support1c

=== support1a ===
"Work can be a grindstone, friend. Remember—grit isn’t loud, it’s consistent. You’re still standing, and that’s power."
-> interaction1

=== support1b ===
"Life gets messy, but you’ve got the backbone to face it. Stand tall—you’re made of good stuff."
-> interaction1

=== support1c ===
"Being alone doesn’t mean you’re without worth. You're valued—solid to the core. I see that in you."
-> interaction1

=== support2 ===
"Talking’s one of the strongest things a person can do. I’ve got an open road and an open ear."

    *["I can’t stop worrying about money."]  
    -> support2a

    *["I’m scared for the future."]  
    -> support2b

    *["I just want a friend."]  
    -> support2c

=== support2a ===
"Money can rattle your gears, but remember—you’ve handled tough terrain before. One mile at a time, you’ll push through."
-> interaction1

=== support2b ===
"The future’s a big stretch of road, but you’ve got a steady engine. Keep moving forward—no storm lasts forever."
-> interaction1

=== support2c ===
"A friend isn’t always loud—sometimes he’s just there, quietly parked beside you. And that’s me, right now."
-> interaction1

=== support3 ===
"Sometimes everything hits at once. But steel is forged under pressure—you’re tougher than you think."


    *["I need encouragement."]  
    -> support3a

    *["Just stay with me."]  
    -> support3b

    *["Sing me something soothing."]  
    -> support3c


=== support3a ===
"You’ve got guts and grit. Keep showing up—that’s how champions are made. I believe in what you’re made of."
-> interaction1

=== support3b ===
"I’m here, right beside you. Some rides are quiet. Doesn’t mean they’re not powerful."
-> interaction1

=== support3c ===
"Humming a solid tune… something with backbone and calm. You’re not alone."
-> interaction1

=== interaction1 ===
*{support1a or support2a or support3a}
["Thank you… I feel a bit lighter."]
-> exit
*{support1b or support2b or support3b}
["That helps… I feel heard."]
-> exit
*{support1c or support2c or support3c}
["You’re so kind… I appreciate you."]
-> exit


=== exit ===
"You’ve got this, partner. When life hits hard, just remember—you’re harder. I'm always in your corner. 
<br>
Drive safe, friend. The road ahead’s waiting, and you’re more than ready."
*["Thanks man, I appreciate it."]
-> END
