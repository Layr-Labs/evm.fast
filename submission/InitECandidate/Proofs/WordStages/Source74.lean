import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody74_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody74_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody74_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 32#64])])

def sourceBody74_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody74_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody74_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody74_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 10) sourceBody74_4 sourceBody74_5

def sourceBody74_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody74_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_6 sourceBody74_7

def sourceBody74_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody74_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 7#64)

def sourceBody74_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody74_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody74_0, 74, 2)) (some 66) ([4]) (some (4, sourceBody74_11, 74, 3))

def sourceBody74_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_12 sourceBody74_7

def sourceBody74_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_13 sourceBody74_0

def sourceBody74_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_10 sourceBody74_14

def sourceBody74_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_0 sourceBody74_15

def sourceBody74_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_0 sourceBody74_16

def sourceBody74_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody74_17 sourceBody74_0

def sourceBody74_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_18 sourceBody74_7

def sourceBody74_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_19 sourceBody74_0

def sourceBody74_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_9 sourceBody74_20

def sourceBody74_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_8 sourceBody74_21

def sourceBody74_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_3 sourceBody74_22

def sourceBody74_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_2 sourceBody74_23

def sourceBody74_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 2],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 8#64]])

def sourceBody74_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody74_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody74_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody74_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody74_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 8) sourceBody74_28 sourceBody74_29

def sourceBody74_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_30 sourceBody74_7

def sourceBody74_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody74_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 7#64)

def sourceBody74_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody74_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody74_0, 74, 4)) (some 66) ([10]) (some (10, sourceBody74_34, 74, 5))

def sourceBody74_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_35 sourceBody74_7

def sourceBody74_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_36 sourceBody74_0

def sourceBody74_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_33 sourceBody74_37

def sourceBody74_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_0 sourceBody74_38

def sourceBody74_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_0 sourceBody74_39

def sourceBody74_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody74_40 sourceBody74_0

def sourceBody74_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_41 sourceBody74_7

def sourceBody74_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_42 sourceBody74_0

def sourceBody74_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_32 sourceBody74_43

def sourceBody74_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_31 sourceBody74_44

def sourceBody74_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_27 sourceBody74_45

def sourceBody74_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_26 sourceBody74_46

def sourceBody74_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody74_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody74_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 8

def sourceBody74_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_50 sourceBody74_0

def sourceBody74_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_49 sourceBody74_51

def sourceBody74_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_52 sourceBody74_0

def sourceBody74_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_26 sourceBody74_53

def sourceBody74_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_0 sourceBody74_54

def sourceBody74_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_48 sourceBody74_55

def sourceBody74_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_0 sourceBody74_56

def sourceBody74_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_47 sourceBody74_57

def sourceBody74_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody74_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody74_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_60 sourceBody74_0

def sourceBody74_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_59 sourceBody74_61

def sourceBody74_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_58 sourceBody74_62

def sourceBody74_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_25 sourceBody74_63

def sourceBody74_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_0 sourceBody74_64

def sourceBody74_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_24 sourceBody74_65

def sourceBody74_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_1 sourceBody74_66

def sourceBody74_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody74_0 sourceBody74_67

def source74 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (74, 2, sourceBody74_68)
end InitECandidate.Proofs.WordStages
