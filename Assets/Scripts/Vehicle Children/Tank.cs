using UnityEngine;

public class Tank : Vehicle 
{

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Awake()
    {
 
    }

    // Update is called once per frame
    void Update()
    {
        if (DialogueManager.GetInstance().dialoguePanel.activeInHierarchy == false)
        {
            ExitStage(); //INHERITANCE
        }
    }
}
