using UnityEngine;

public class DialogueTrigger : MonoBehaviour
{
    [Header("Ink Jason")]
    [SerializeField] private TextAsset inkJSON;

    private void Start()
    {
        DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
    }
}
