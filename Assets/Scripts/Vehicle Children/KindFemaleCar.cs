using UnityEngine;

public class KindFemaleCar : Vehicle
{
    void LateUpdate()
    {
        if (DialogueManager.GetInstance().dialoguePanel.activeInHierarchy == false)
        {
            ExitStage();
        }
    }
}
