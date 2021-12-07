# Swift Snacks
  Snacks you might be hungry for one of them.
  
  ## Dumping & Printing
  - dump() --> Deep details by mirroring/reflecting an object.
  - print() --> Simple details about an object of customized in info.

  ## Reference Cycles or Retain Cycles
  - It happens when there are two instances have stronge reference to each others.
  - The instances cycle will remain in the memory and can't be de-allocated automatically untill the application is terminated.
  - To break this cycle you have to make one of those references weak or unowned because they not increase the reference counter so the ARC not consider this as a cycle.
