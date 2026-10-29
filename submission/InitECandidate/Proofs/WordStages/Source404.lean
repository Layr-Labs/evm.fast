import InitECandidate.Proofs.WordStages.Source388
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody404_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody404_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody404_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody404_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody404_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody404_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody404_0, 404, 2)) (some 192) ([12, 4, 10]) (some (12, sourceBody404_4, 404, 3))

def sourceBody404_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody404_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_5 sourceBody404_6

def sourceBody404_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_7 sourceBody404_0

def sourceBody404_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_3 sourceBody404_8

def sourceBody404_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_2 sourceBody404_9

def sourceBody404_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_1 sourceBody404_10

def sourceBody404_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_0 sourceBody404_11

def sourceBody404_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_0 sourceBody404_12

def sourceBody404_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody404_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody404_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody404_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody404_0, 404, 4)) (some 186) ([4, 10]) (some (4, sourceBody404_16, 404, 5))

def sourceBody404_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_17 sourceBody404_6

def sourceBody404_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_18 sourceBody404_0

def sourceBody404_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_15 sourceBody404_19

def sourceBody404_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_14 sourceBody404_20

def sourceBody404_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody404_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody404_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody404_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 8) sourceBody404_3 sourceBody404_24

def sourceBody404_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_25 sourceBody404_6

def sourceBody404_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody404_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody404_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody404_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_29 sourceBody404_0

def sourceBody404_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_28 sourceBody404_30

def sourceBody404_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody404_31 sourceBody404_0

def sourceBody404_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_32 sourceBody404_6

def sourceBody404_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_33 sourceBody404_0

def sourceBody404_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_27 sourceBody404_34

def sourceBody404_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_26 sourceBody404_35

def sourceBody404_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_23 sourceBody404_36

def sourceBody404_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_22 sourceBody404_37

def sourceBody404_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody404_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody404_0, 404, 6)) (some 396) ([10]) (some (10, sourceBody404_39, 404, 7))

def sourceBody404_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_40 sourceBody404_6

def sourceBody404_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_41 sourceBody404_0

def sourceBody404_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_15 sourceBody404_42

def sourceBody404_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_0 sourceBody404_43

def sourceBody404_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_0 sourceBody404_44

def sourceBody404_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_38 sourceBody404_45

def sourceBody404_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody404_0, 404, 8)) (some 398) ([10]) (some (10, sourceBody404_39, 404, 9))

def sourceBody404_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_47 sourceBody404_6

def sourceBody404_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_48 sourceBody404_0

def sourceBody404_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_15 sourceBody404_49

def sourceBody404_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody404_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody404_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_52 sourceBody404_0

def sourceBody404_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_51 sourceBody404_53

def sourceBody404_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_50 sourceBody404_54

def sourceBody404_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_0 sourceBody404_55

def sourceBody404_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_0 sourceBody404_56

def sourceBody404_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_46 sourceBody404_57

def sourceBody404_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_21 sourceBody404_58

def sourceBody404_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_0 sourceBody404_59

def sourceBody404_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_0 sourceBody404_60

def sourceBody404_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_0 sourceBody404_61

def sourceBody404_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_0 sourceBody404_62

def sourceBody404_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody404_13 sourceBody404_63

def source404 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (404, 2, sourceBody404_64)
end InitECandidate.Proofs.WordStages
