import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody68_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody68_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody68_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 2952790016#64, Flapjack.WordLangExpHOL.var 6])

def sourceBody68_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody68_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody68_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody68_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 10) sourceBody68_4 sourceBody68_5

def sourceBody68_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody68_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_6 sourceBody68_7

def sourceBody68_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody68_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody68_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody68_0, 68, 2)) (some 66) ([4]) (some (4, sourceBody68_10, 68, 3))

def sourceBody68_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_11 sourceBody68_7

def sourceBody68_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_12 sourceBody68_0

def sourceBody68_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_4 sourceBody68_13

def sourceBody68_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_0 sourceBody68_14

def sourceBody68_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_0 sourceBody68_15

def sourceBody68_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody68_16 sourceBody68_0

def sourceBody68_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_17 sourceBody68_7

def sourceBody68_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_18 sourceBody68_0

def sourceBody68_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_9 sourceBody68_19

def sourceBody68_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_8 sourceBody68_20

def sourceBody68_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_3 sourceBody68_21

def sourceBody68_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_2 sourceBody68_22

def sourceBody68_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 7#64],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 8#64]])

def sourceBody68_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2952790016#64)

def sourceBody68_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody68_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody68_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody68_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 8) sourceBody68_27 sourceBody68_28

def sourceBody68_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_29 sourceBody68_7

def sourceBody68_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody68_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody68_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody68_0, 68, 4)) (some 66) ([10]) (some (10, sourceBody68_32, 68, 5))

def sourceBody68_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_33 sourceBody68_7

def sourceBody68_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_34 sourceBody68_0

def sourceBody68_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_27 sourceBody68_35

def sourceBody68_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_0 sourceBody68_36

def sourceBody68_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_0 sourceBody68_37

def sourceBody68_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody68_38 sourceBody68_0

def sourceBody68_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_39 sourceBody68_7

def sourceBody68_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_40 sourceBody68_0

def sourceBody68_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_31 sourceBody68_41

def sourceBody68_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_30 sourceBody68_42

def sourceBody68_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_26 sourceBody68_43

def sourceBody68_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_25 sourceBody68_44

def sourceBody68_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody68_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody68_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody68_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 8

def sourceBody68_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_49 sourceBody68_0

def sourceBody68_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_48 sourceBody68_50

def sourceBody68_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_51 sourceBody68_0

def sourceBody68_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_47 sourceBody68_52

def sourceBody68_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_0 sourceBody68_53

def sourceBody68_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_46 sourceBody68_54

def sourceBody68_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_0 sourceBody68_55

def sourceBody68_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_45 sourceBody68_56

def sourceBody68_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody68_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody68_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_59 sourceBody68_0

def sourceBody68_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_58 sourceBody68_60

def sourceBody68_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_57 sourceBody68_61

def sourceBody68_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_24 sourceBody68_62

def sourceBody68_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_0 sourceBody68_63

def sourceBody68_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_23 sourceBody68_64

def sourceBody68_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_1 sourceBody68_65

def sourceBody68_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody68_0 sourceBody68_66

def source68 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (68, 2, sourceBody68_67)
end InitECandidate.Proofs.WordStages
