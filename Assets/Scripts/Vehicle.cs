using UnityEngine;

public class Vehicle : MonoBehaviour
{
    private Rigidbody rb;
    private int forceStrenght;
    [SerializeField] protected ParticleSystem explosion;


    private void Start()
    {
        rb = GetComponent<Rigidbody>();
    }
    protected virtual void Spawn()
    {
        Instantiate(gameObject);
    }

    protected virtual void Talk()
    {
        
    }
    
    protected void Jump()
    {
        rb.AddForce(Vector3.up * Time.deltaTime * forceStrenght, ForceMode.Force);
    }

    protected void Explode()
    {
        Destroy(gameObject);
        explosion.Play();    
    }

}
