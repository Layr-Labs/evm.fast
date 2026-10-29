import InitECandidate.Proofs.WordStages.Source581
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody597_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody597_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody597_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody597_0, 597, 2)) (some 474) ([]) (some (10, sourceBody597_1, 597, 3))

def sourceBody597_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody597_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_2 sourceBody597_3

def sourceBody597_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_4 sourceBody597_0

def sourceBody597_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_0 sourceBody597_5

def sourceBody597_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_0 sourceBody597_6

def sourceBody597_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody597_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody597_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody597_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody597_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 4) sourceBody597_10 sourceBody597_11

def sourceBody597_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_12 sourceBody597_3

def sourceBody597_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody597_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody597_0, 597, 4)) (some 604) ([10]) (some (10, sourceBody597_1, 597, 5))

def sourceBody597_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_15 sourceBody597_3

def sourceBody597_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_16 sourceBody597_0

def sourceBody597_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_8 sourceBody597_17

def sourceBody597_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_0 sourceBody597_18

def sourceBody597_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_0 sourceBody597_19

def sourceBody597_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody597_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 264#64]))

def sourceBody597_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody597_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 4

def sourceBody597_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_24 sourceBody597_0

def sourceBody597_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_23 sourceBody597_25

def sourceBody597_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_26 sourceBody597_0

def sourceBody597_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_22 sourceBody597_27

def sourceBody597_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_0 sourceBody597_28

def sourceBody597_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_21 sourceBody597_29

def sourceBody597_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_0 sourceBody597_30

def sourceBody597_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_20 sourceBody597_31

def sourceBody597_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody597_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_11 sourceBody597_27

def sourceBody597_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_0 sourceBody597_34

def sourceBody597_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_33 sourceBody597_35

def sourceBody597_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_0 sourceBody597_36

def sourceBody597_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_32 sourceBody597_37

def sourceBody597_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 160#64])

def sourceBody597_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_8 sourceBody597_27

def sourceBody597_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_0 sourceBody597_40

def sourceBody597_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_39 sourceBody597_41

def sourceBody597_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_0 sourceBody597_42

def sourceBody597_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody597_38 sourceBody597_43

def sourceBody597_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_44 sourceBody597_3

def sourceBody597_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_45 sourceBody597_0

def sourceBody597_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_14 sourceBody597_46

def sourceBody597_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_13 sourceBody597_47

def sourceBody597_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_9 sourceBody597_48

def sourceBody597_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_8 sourceBody597_49

def sourceBody597_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_7 sourceBody597_50

def sourceBody597_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 288#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody597_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_10 sourceBody597_27

def sourceBody597_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_0 sourceBody597_53

def sourceBody597_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_52 sourceBody597_54

def sourceBody597_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_0 sourceBody597_55

def sourceBody597_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_51 sourceBody597_56

def sourceBody597_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody597_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody597_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_59 sourceBody597_0

def sourceBody597_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_58 sourceBody597_60

def sourceBody597_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody597_57 sourceBody597_61

def source597 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (597, 2, sourceBody597_62)
end InitECandidate.Proofs.WordStages
