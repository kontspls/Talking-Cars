using UnityEngine;

public class Tank : Vehicle 
{
    void LateUpdate()
    {
        if (DialogueManager.GetInstance().dialoguePanel.activeInHierarchy == false)
        {
            ExitStage(); //INHERITANCE
        }
    }
}
