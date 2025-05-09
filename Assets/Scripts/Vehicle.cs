using UnityEngine;

public class Vehicle : MonoBehaviour
{
    protected Rigidbody rb;
    protected AudioSource carAudio;

    [SerializeField] protected ParticleSystem explosion;
    [SerializeField] protected AudioClip fallSound;
    

    private void Start()
    {
        rb = GetComponent<Rigidbody>();
        carAudio = GetComponent<AudioSource>();
    }
    
    protected virtual void ExitStage() //METHOD OVERIDING IN CHILDREN//INHERITANCE-POLYMORPHISM-ABSTRACTION
    {
        // spawn an instance in the world
        var instance = Instantiate(
            explosion,
            transform.position,
            transform.rotation
        );
        instance.Play();

        // destroy the vehicle immediately
        Destroy(gameObject);

        // schedule the particles to clean themselves up
        float life = instance.main.duration
                   + instance.main.startLifetime.constantMax;
        Destroy(instance.gameObject, life);
    }

    protected void OnCollisionEnter(Collision collision)
    {
        carAudio.PlayOneShot(fallSound, 1.0f);
    }
}
