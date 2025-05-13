(deftemplate person
    (slot name (type SYMBOL))
    (slot gender (type SYMBOL) (allowed-values male female))
    (multislot roles (type SYMBOL) (allowed-values father mother son daughter)))

(deftemplate parent-child
    (slot parent (type SYMBOL))
    (slot child (type SYMBOL))
    (slot relationship (type SYMBOL) (allowed-values father mother)))

(deftemplate parents
    (slot child (type SYMBOL))
    (slot father (type SYMBOL))
    (slot mother (type SYMBOL)))

(deffacts family-facts
    (person (name John) (gender male) (roles son))
    (person (name Tom) (gender male) (roles father))
    (person (name Susan) (gender female) (roles mother))
    
    (person (name Tom) (gender male))
    (person (name Susan) (gender female))
    (person (name John) (gender male))
    
    (parent-child (parent Tom) (child John) (relationship father))
    (parent-child (parent Susan) (child John) (relationship mother))
    
    (parents (child John) (father Tom) (mother Susan)))