import InitECandidate.Proofs.WordStages.Source527
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody543_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody543_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody543_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody543_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody543_0, 543, 2)) (some 470) ([10]) (some (10, sourceBody543_2, 543, 3))

def sourceBody543_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody543_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_3 sourceBody543_4

def sourceBody543_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_5 sourceBody543_0

def sourceBody543_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_1 sourceBody543_6

def sourceBody543_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_0 sourceBody543_7

def sourceBody543_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_0 sourceBody543_8

def sourceBody543_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody543_0, 543, 4)) (some 540) ([]) (some (10, sourceBody543_2, 543, 5))

def sourceBody543_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_10 sourceBody543_4

def sourceBody543_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_11 sourceBody543_0

def sourceBody543_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody543_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody543_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody543_0, 543, 6)) (some 541) ([2]) (some (2, sourceBody543_14, 543, 7))

def sourceBody543_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_15 sourceBody543_4

def sourceBody543_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_16 sourceBody543_0

def sourceBody543_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_13 sourceBody543_17

def sourceBody543_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody543_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody543_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody543_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody543_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 6) sourceBody543_21 sourceBody543_22

def sourceBody543_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_23 sourceBody543_4

def sourceBody543_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody543_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody543_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def sourceBody543_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_27 sourceBody543_0

def sourceBody543_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_28 sourceBody543_0

def sourceBody543_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_26 sourceBody543_29

def sourceBody543_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_0 sourceBody543_30

def sourceBody543_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody543_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_32 sourceBody543_14

def sourceBody543_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_31 sourceBody543_33

def sourceBody543_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody543_34 sourceBody543_0

def sourceBody543_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_35 sourceBody543_4

def sourceBody543_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_36 sourceBody543_0

def sourceBody543_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_25 sourceBody543_37

def sourceBody543_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_24 sourceBody543_38

def sourceBody543_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_20 sourceBody543_39

def sourceBody543_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_19 sourceBody543_40

def sourceBody543_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody543_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody543_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody543_0, 543, 8)) (some 538) ([8, 6]) (some (8, sourceBody543_43, 543, 9))

def sourceBody543_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_44 sourceBody543_4

def sourceBody543_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_45 sourceBody543_0

def sourceBody543_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_42 sourceBody543_46

def sourceBody543_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_22 sourceBody543_47

def sourceBody543_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_0 sourceBody543_48

def sourceBody543_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_0 sourceBody543_49

def sourceBody543_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_41 sourceBody543_50

def sourceBody543_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody543_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody543_0, 543, 10)) (some 490) ([8]) (some (8, sourceBody543_43, 543, 11))

def sourceBody543_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_53 sourceBody543_4

def sourceBody543_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_54 sourceBody543_0

def sourceBody543_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_52 sourceBody543_55

def sourceBody543_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_0 sourceBody543_56

def sourceBody543_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_0 sourceBody543_57

def sourceBody543_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_51 sourceBody543_58

def sourceBody543_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody543_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def sourceBody543_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_61 sourceBody543_0

def sourceBody543_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_60 sourceBody543_62

def sourceBody543_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_59 sourceBody543_63

def sourceBody543_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_18 sourceBody543_64

def sourceBody543_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_0 sourceBody543_65

def sourceBody543_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_0 sourceBody543_66

def sourceBody543_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_12 sourceBody543_67

def sourceBody543_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_0 sourceBody543_68

def sourceBody543_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_0 sourceBody543_69

def sourceBody543_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody543_9 sourceBody543_70

def source543 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (543, 1, sourceBody543_71)
end InitECandidate.Proofs.WordStages
