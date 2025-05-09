-> start

=== start ===
“Hello, dear. I’m Peach, your gentle companion on the road. I hope you’re feeling safe and cared for today.”

    *["I’ve been so stressed lately…"]  
    -> support1

    *["I just need someone to talk to."]  
    -> support2

    *["I’m tired of everything going wrong."]  
    -> support3


=== support1 ===
“Oh, sweetheart, I’m sorry you’re carrying such weight. Feel free to share what’s overwhelming you, and I’ll support you with kindness.”


    *["Work’s been impossible."]  
    -> support1a

    *["Home life is chaotic."]  
    -> support1b

    *["I feel alone."]  
    -> support1c


=== support1a ===
“That sounds so difficult. You pour your heart into your work—remember to breathe and give yourself moments of calm.”
-> interaction1

=== support1b ===
“Chaos at home can be unsettling, but you deserve peace and comfort right now.”
-> interaction1

=== support1c ===
“Loneliness can hurt deeply, but you are not alone and I’m here with you.”
-> interaction1

=== support2 ===
“Of course, I’m listening and your voice matters. I’m here to support you with all you share.”


    *["I can’t stop worrying about money."]  
    -> support2a

    *["I’m scared for the future."]  
    -> support2b

    *["I just want a friend."]  
    -> support2c


=== support2a ===
“Money worries are so stressful. Let’s focus on one small step you can take today to ease that burden."
-> interaction1

=== support2b ===
“The future can feel uncertain, but you’re stronger than you know and full of hope.”
-> interaction1

=== support2c ===
“A true friend cares deeply and I’m right here for anything you wish to share.”
-> interaction1

=== support3 ===
“Oh, love, I’m sorry things feel heavy—know that you deserve kindness and gentle calm.”

    *["I need encouragement."]  
    -> support3a

    *["Just stay with me."]  
    -> support3b

    *["Sing me something soothing."]  
    -> support3c
```

=== support3a ===
“You are brave, you are worthy, and you are not alone. I believe in you.”
-> interaction1

=== support3b ===
“I’m right here, steady and warm. You’re safe to let your feelings out.”
-> interaction1

=== support3c ===
“Humming a gentle lullaby… ♫♪”
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
“I’m glad, dear. Remember, I’m always here when you need a caring ride. 
<br>
Take care now, darling. May your path be smooth and your heart at ease.”
*["I love you too, mum."]
-> END
