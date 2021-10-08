1. trigger jenkins job
  * input:
    * config
    * jenkins secrets -- sensitive
2. this jenkis job:
  1. goes to repo
  2. goes to desired configuration
  3. terraform apply
  4. apply goes to k8s
  5. k8s deploys stuff to our network
  6. all stored in (which?)state
