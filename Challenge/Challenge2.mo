import Text "mo:base/Text";
import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";
import Debug "mo:base/Debug";
import Char "mo:base/Char";
import Array "mo:base/Array";
import Prim "mo:prim";


actor {
  //Chalenge 1
  // public func nat_to_nat8(number : Nat) : async Nat8{
  //   return (Nat8.fromNat(number));
  // };

    // Challenge 2
    // public func max_number_with_n_bits(n : Nat) : async Nat {
    //   return (2**n - 1);
    // };


    //Chalenge 3
    // public func

  // //Chalenge 4
  // public func capitalize_character(c : Char) : async Nat32 {
  //   let num : Nat32 = Char.toNat32(c);
  //   if(num > 60 ){
  //     if(num < 123){
  //       return (num-32);
  //     };
  //   };
  //   return num;
  // };

    // //Chalenge 5
  // public func capitalize_text  (c: Text) :async Text {
  //     return (Text.map(c, Prim.charToUpper));
  //   };

  // //Chalenge 6
  // public func is_inside(t : Text, char : Char): async Bool{
  //   let check : Bool = false;
  //   let charNat : Nat32 = Char.toNat32(char);
  //   for(kt in t.chars()){
  //      let num = Char.toNat32(kt);
  //      if(num == charNat){
  //       return true;
  //      };
  //   };
  //   return check;
  // }

   //Chalenge 7
  //  public func trim_whitespace(t : Text): async Text{
  //     let trimmedText: Text = Text.trim(t, #text " ");
  //     return trimmedText;
  //  }

   //Chalenge 8
    // public func duplicated_character (t : Text): async Text{
    //   let text = t;
    //   var i = 0;
    //   for(kt in t.chars()){
    //     for(kt2 in t.chars()){
    //       if(kt2 == kt){
    //         i+=1;
    //      };
    //      if(i == 2){
    //       return Char.toText(kt);
    //      }
    //     };
    //     i := 0;
    //   };
    //   return text;
    // };

    //Chalenge 9
    // public func size(l : Text) : async Nat{
    //   var encodeText = Text.encodeUtf8(l);
    //   return encodeText.size();
    // }

    //Chalenge 10
    // public func bubble_sort(array : [Nat]) : async [Nat] {
    //   var sorted : [var Nat] = Array.thaw<Nat>(array);
    //   let size : Nat = sorted.size();
    //   for (i in Iter.range(0, size - 1)) {
    //     for (j in Iter.range(0, size - 1 - i - 1)) {
    //       if (sorted[j] > sorted[j + 1]) {
    //         let tmp : Nat = sorted[j];
    //         sorted[j] := sorted[j + 1];
    //         sorted[j + 1] := tmp;
    //       }
    //     };
    //   };
    //   return Array.freeze<Nat>(sorted);
    // };

    //Chalenge 11
    // public func nat_opt_to_nat (n : ?Nat, m : Nat) : async Nat{
    //   switch(n){
    //     case(null){
    //       return m;
    //     };
    //     case(?xyz){
    //       return (xyz);
    //     };
    //   };
    // };

    //Chalenge 12
    // public func day_of_the_week(n : Nat) : async ?Text {
    //   switch n {
    //     case(1){
    //       return ?"Monday";
    //     };
    //     case(2){
    //       return ?"Tuesday";
    //     };
    //     case(3){
    //       return ?"Wednesday";
    //     };
    //     case(4){
    //       return ?"Thurday";
    //     };
    //     case(5){
    //       return ?"Friday";
    //     };
    //     case(6){
    //       return ?"Saturday";
    //     };
    //     case(7){
    //       return ?"Sunday";
    //     };
    //     case(_){
    //       return null;
    //     };
    //   };
    // };

    //Chalenge 14
    // public func sum_of_array(array : [Nat]) : async Nat {
    //   return Array.foldLeft<Nat, Nat>(array, 0, func(x : Nat, y : Nat) : Nat { x + y });
    // };

    //Chalenge 15
    //  public func squared_array  (array : [Nat]) : async [Nat] {
    //   return Array.map<Nat, Nat>(array, func(x : Nat) : Nat { x * x });
    // };

    //Chalenge 16
  //   public func increase_by_index (array: [Nat]) : async [Nat] {
  //     return Array.mapEntries<Nat,Nat>(array, func (value, index) {
  //       return value + index;
  //     } );
  // };

  //Chalenge 17
  // public func contains(arr : [Nat], a : Nat) : async Bool{
  //   try {
  //     return f<Nat>(arr, a, func(current, desired) {
  //       return current == desired;
  //     });
  //   } catch (e) {
  //     return false;
  //   };
  // };
};
