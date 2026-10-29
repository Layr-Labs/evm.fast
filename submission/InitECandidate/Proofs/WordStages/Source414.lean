import InitECandidate.Proofs.WordStages.Source398
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody414_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody414_1 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody414_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody414_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody414_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody414_0, 414, 2)) (some 186) ([4, 10]) (some (4, sourceBody414_3, 414, 3))

def sourceBody414_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody414_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_4 sourceBody414_5

def sourceBody414_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_6 sourceBody414_0

def sourceBody414_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_2 sourceBody414_7

def sourceBody414_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_1 sourceBody414_8

def sourceBody414_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody414_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody414_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody414_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody414_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 8) sourceBody414_12 sourceBody414_13

def sourceBody414_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_14 sourceBody414_5

def sourceBody414_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody414_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody414_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 8) sourceBody414_12 sourceBody414_13

def sourceBody414_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_18 sourceBody414_5

def sourceBody414_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody414_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody414_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_21 sourceBody414_0

def sourceBody414_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_20 sourceBody414_22

def sourceBody414_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody414_23 sourceBody414_0

def sourceBody414_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_24 sourceBody414_5

def sourceBody414_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_25 sourceBody414_0

def sourceBody414_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_16 sourceBody414_26

def sourceBody414_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_19 sourceBody414_27

def sourceBody414_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_17 sourceBody414_28

def sourceBody414_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_13 sourceBody414_29

def sourceBody414_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody414_30 sourceBody414_0

def sourceBody414_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_31 sourceBody414_5

def sourceBody414_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_32 sourceBody414_0

def sourceBody414_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_16 sourceBody414_33

def sourceBody414_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_15 sourceBody414_34

def sourceBody414_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_11 sourceBody414_35

def sourceBody414_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_10 sourceBody414_36

def sourceBody414_38 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody414_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody414_0, 414, 4)) (some 186) ([4, 10]) (some (4, sourceBody414_3, 414, 5))

def sourceBody414_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_39 sourceBody414_5

def sourceBody414_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_40 sourceBody414_0

def sourceBody414_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_2 sourceBody414_41

def sourceBody414_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_38 sourceBody414_42

def sourceBody414_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_37 sourceBody414_43

def sourceBody414_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_44 sourceBody414_37

def sourceBody414_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody414_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody414_0, 414, 6)) (some 396) ([10]) (some (10, sourceBody414_46, 414, 7))

def sourceBody414_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_47 sourceBody414_5

def sourceBody414_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_48 sourceBody414_0

def sourceBody414_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_2 sourceBody414_49

def sourceBody414_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_0 sourceBody414_50

def sourceBody414_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_0 sourceBody414_51

def sourceBody414_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_45 sourceBody414_52

def sourceBody414_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody414_0, 414, 8)) (some 403) ([10]) (some (10, sourceBody414_46, 414, 9))

def sourceBody414_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_54 sourceBody414_5

def sourceBody414_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_55 sourceBody414_0

def sourceBody414_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_2 sourceBody414_56

def sourceBody414_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody414_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody414_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_59 sourceBody414_0

def sourceBody414_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_58 sourceBody414_60

def sourceBody414_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_57 sourceBody414_61

def sourceBody414_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_0 sourceBody414_62

def sourceBody414_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_0 sourceBody414_63

def sourceBody414_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_53 sourceBody414_64

def sourceBody414_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_9 sourceBody414_65

def sourceBody414_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_0 sourceBody414_66

def sourceBody414_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_0 sourceBody414_67

def sourceBody414_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_0 sourceBody414_68

def sourceBody414_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody414_0 sourceBody414_69

def source414 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (414, 2, sourceBody414_70)
end InitECandidate.Proofs.WordStages
