import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody71_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody71_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody71_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 24#64]),
      Flapjack.WordLangExpHOL.var 6])

def sourceBody71_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody71_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody71_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody71_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 10) sourceBody71_4 sourceBody71_5

def sourceBody71_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody71_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_6 sourceBody71_7

def sourceBody71_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody71_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody71_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody71_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody71_0, 71, 2)) (some 66) ([4]) (some (4, sourceBody71_11, 71, 3))

def sourceBody71_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_12 sourceBody71_7

def sourceBody71_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_13 sourceBody71_0

def sourceBody71_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_10 sourceBody71_14

def sourceBody71_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_0 sourceBody71_15

def sourceBody71_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_0 sourceBody71_16

def sourceBody71_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody71_17 sourceBody71_0

def sourceBody71_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_18 sourceBody71_7

def sourceBody71_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_19 sourceBody71_0

def sourceBody71_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_9 sourceBody71_20

def sourceBody71_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_8 sourceBody71_21

def sourceBody71_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_3 sourceBody71_22

def sourceBody71_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_2 sourceBody71_23

def sourceBody71_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 7#64],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 8#64]])

def sourceBody71_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody71_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody71_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody71_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody71_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 8) sourceBody71_28 sourceBody71_29

def sourceBody71_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_30 sourceBody71_7

def sourceBody71_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody71_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody71_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody71_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody71_0, 71, 4)) (some 66) ([10]) (some (10, sourceBody71_34, 71, 5))

def sourceBody71_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_35 sourceBody71_7

def sourceBody71_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_36 sourceBody71_0

def sourceBody71_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_33 sourceBody71_37

def sourceBody71_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_0 sourceBody71_38

def sourceBody71_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_0 sourceBody71_39

def sourceBody71_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody71_40 sourceBody71_0

def sourceBody71_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_41 sourceBody71_7

def sourceBody71_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_42 sourceBody71_0

def sourceBody71_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_32 sourceBody71_43

def sourceBody71_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_31 sourceBody71_44

def sourceBody71_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_27 sourceBody71_45

def sourceBody71_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_26 sourceBody71_46

def sourceBody71_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody71_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody71_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody71_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 8

def sourceBody71_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_51 sourceBody71_0

def sourceBody71_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_50 sourceBody71_52

def sourceBody71_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_53 sourceBody71_0

def sourceBody71_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_49 sourceBody71_54

def sourceBody71_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_0 sourceBody71_55

def sourceBody71_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_48 sourceBody71_56

def sourceBody71_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_0 sourceBody71_57

def sourceBody71_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_47 sourceBody71_58

def sourceBody71_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody71_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody71_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_61 sourceBody71_0

def sourceBody71_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_60 sourceBody71_62

def sourceBody71_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_59 sourceBody71_63

def sourceBody71_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_25 sourceBody71_64

def sourceBody71_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_0 sourceBody71_65

def sourceBody71_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_24 sourceBody71_66

def sourceBody71_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_1 sourceBody71_67

def sourceBody71_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody71_0 sourceBody71_68

def source71 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (71, 2, sourceBody71_69)
end InitECandidate.Proofs.WordStages
