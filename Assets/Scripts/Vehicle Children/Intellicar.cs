using UnityEngine;

public class Intellicar : Vehicle
{
    void Update()
    {
        if (DialogueManager.GetInstance().dialoguePanel.activeInHierarchy == false)
        {
            ExitStage();
        }
    }
    protected override void ExitStage()
    {

        rb.AddForce(Vector3.up * Time.deltaTime * 10000000, ForceMode.Force); //POLYMORPHISM
        float angleThisFrame = 90f * Time.deltaTime;
        transform.Rotate(Vector3.up * angleThisFrame, Space.Self);
    }

}
