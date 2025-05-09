using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections.Generic;


public class CarSelectionUIHandler : MonoBehaviour
{
    [SerializeField] private Button fatButton; //ENCAPSULATION
    [SerializeField] private Button intelligentButton;
    [SerializeField] private Button kindButton;

    private List<GameObject> cars;
    private int selectedIndex;

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        cars = MainManager.Instance.cars;

        fatButton.onClick.AddListener(() => SelectCar(0, 2));
        intelligentButton.onClick.AddListener(() => SelectCar(2, 3));
        kindButton.onClick.AddListener(() => SelectCar(3, 5));
    }

    // Update is called once per frame
    void Update()
    {
      if (MainManager.Instance.SelectedCar != null)
        {
            StartGame();
        }
    }
    private void SelectCar(int minInclusive, int maxExclusive)
    {
        selectedIndex = Random.Range(minInclusive, maxExclusive);
        MainManager.Instance.SelectedCar = cars[selectedIndex];
    }

    private void StartGame()
    {
        SceneManager.LoadScene("Main");
    }
}
        
