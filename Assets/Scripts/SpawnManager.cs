using UnityEngine;

public class SpawnManager : MonoBehaviour
{
    private GameObject car;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        car = MainManager.Instance.SelectedCar;
        Instantiate(car);
    }
}
