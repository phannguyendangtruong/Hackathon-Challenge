module {
    public type Animal = {
        specie: Text;
        energy: Nat;    
    };
    
    //*CHALLENGE 3
    public func animal_sleep(a : Animal) : Animal {
        var newA : Animal = {
            specie = a.specie;
            energy = a.energy + 10;
        };

        return newA
    }
}