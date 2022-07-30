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
};
