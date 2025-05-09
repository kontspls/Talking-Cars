using UnityEngine;

public class KindFemaleCar : Vehicle
{
    void Update()
    {
        if (DialogueManager.GetInstance().dialoguePanel.activeInHierarchy == false)
        {
            ExitStage();
        }
    }
}
