using UnityEngine;

public class Bus : Vehicle
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

        rb.AddForce(Vector3.up * Time.deltaTime * 550, ForceMode.Acceleration);
        float angleThisFrame = 360f * Time.deltaTime;
        transform.Rotate(Vector3.up * angleThisFrame, Space.Self);
    }
}
