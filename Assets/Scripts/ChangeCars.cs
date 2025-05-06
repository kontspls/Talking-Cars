using NUnit.Framework;
using UnityEngine;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEditor.SearchService;
using UnityEngine.SceneManagement;

public class ChangeCars : MonoBehaviour
{
    [SerializeField] Button changeCars;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        changeCars.onClick.AddListener(Restart);
    }
    private void Restart()
    {
        MainManager.Instance.SelectedCar = null;
        SceneManager.LoadScene("CarSelectionScene");
    }

}
