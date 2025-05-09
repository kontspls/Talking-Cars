using UnityEngine;

public class KindMaleCar : Vehicle
{
    void Update()
    {
        if (DialogueManager.GetInstance().dialoguePanel.activeInHierarchy == false)
        {
            ExitStage(); //INHERITANCE
        }
    }
    protected override void ExitStage()
    {

        rb.AddForce(Vector3.forward * Time.deltaTime * 1500, ForceMode.Acceleration); //POLYMORPHISM

    }
    // Start is called once before the first execution of Update after the MonoBehaviour is created

}
