import Person "custom";
import Animal "animal";
import List "mo:base/List";
import Lists "list";
import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";
import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Cycles "mo:base/ExperimentalCycles";

actor {
  //*CHALLENGE 1
  public type Person = Person.Person;

  let person : Person = {
    name = "Nhats";
    age = 19;
  };

  public func fun() : async Text {
    return person.name;
  };

  //*CHALLENGE 2
  public type Animal = Animal.Animal;

  let animal : Animal = {
    specie = "sea";
    energy = 100;
  };

  //*CHALLENGE 4
  public func create_animal_then_takes_a_break(specie : Text, energy : Nat) : async Animal {
    var a : Animal = {
      specie;
      energy;
    };

    a := Animal.animal_sleep(a);

    return a;
  };

  //*CHALLENGE 5
  public type List<T> = ?(T, List<T>);

  var animals : List<Animal> = List.nil();

  //*CHALLENGE 6
  public func push_animal(a : Animal) : async () {
    animals := List.push(a, animals);
  };

  public func get_animals() : async List<Animal> {
    return animals;
  };

  //*CHALLENGE 11
  public shared(msg) func is_anonymous() : async Bool {
    let caller = msg.caller;

    return Principal.isAnonymous(caller);
  };

  //*CHALLENGE 12
  var favoriteNumber = HashMap.HashMap<Principal, Nat>(0, Principal.equal, Principal.hash);

  //*CHALLENGE 13
  public shared(msg) func add_favorite_number(n : Nat) : async Text {
    let caller = msg.caller;

    //*CHALLENGE 14
    let usrNum = favoriteNumber.get(caller);

    switch(usrNum) {
      case(null) {
        favoriteNumber.put(caller, n);
        return "You've successfully registered your number";
      };
      case(?usrNum) {
        return "You've already registered your number";
      };
    };
  };

  public shared(msg) func show_favorite_number() : async ?Nat {
    let caller = msg.caller;

    return favoriteNumber.get(caller);
  };

  //*CHALLENGE 15
  public shared(msg) func update_favorite_number(n : Nat) : async Text {
    let caller = msg.caller;

    let a = favoriteNumber.replace(caller, n);

    return "You've successfully updated your number";
  };

  public shared(msg) func delete_favorite_number() : async Text {
    let caller = msg.caller;

    favoriteNumber.delete(caller);

    return "You've successfully deleted your number";
  };

  //*CHALLENGE 16
  public func deposit_cycles() : async Nat {
    let acceptable = Cycles.available();
    let accepted = Cycles.accept(acceptable);

    assert(acceptable == accepted);

    return accepted;
  };

  //*CHALLENGE 17
  public func withdraw_cycles(amount : Nat) : async Nat {
      Cycles.add(amount);

      let n = await deposit_cycles();
      return n;
  };

  //*CHALLENGE 18
  stable var counter : Nat = 0;

  public func increase_counter() : async () {
    counter := counter + 1;
  };

  public func get_counter() : async Nat {
    return counter;
  };

  public func clear_counter() : async () {
    counter := 0;
  };
};
