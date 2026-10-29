import InitECandidate.Proofs.WordStages.Source814
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody830_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody830_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
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
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody830_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody830_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody830_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody830_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody830_0, 830, 2)) (some 465) ([12]) (some (12, sourceBody830_4, 830, 3))

def sourceBody830_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody830_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_5 sourceBody830_6

def sourceBody830_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_7 sourceBody830_0

def sourceBody830_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_3 sourceBody830_8

def sourceBody830_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody830_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody830_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 2 2 8 16))

def sourceBody830_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 15#64, Flapjack.WordLangExpHOL.var 2])

def sourceBody830_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody830_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody830_0, 830, 4)) (some 470) ([10]) (some (8, sourceBody830_14, 830, 5))

def sourceBody830_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_15 sourceBody830_6

def sourceBody830_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_16 sourceBody830_0

def sourceBody830_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_13 sourceBody830_17

def sourceBody830_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_12 sourceBody830_18

def sourceBody830_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_11 sourceBody830_19

def sourceBody830_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_10 sourceBody830_20

def sourceBody830_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_0 sourceBody830_21

def sourceBody830_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_0 sourceBody830_22

def sourceBody830_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody830_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody830_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody830_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 16

def sourceBody830_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_27 sourceBody830_0

def sourceBody830_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_26 sourceBody830_28

def sourceBody830_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_29 sourceBody830_0

def sourceBody830_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_25 sourceBody830_30

def sourceBody830_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_0 sourceBody830_31

def sourceBody830_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_24 sourceBody830_32

def sourceBody830_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_0 sourceBody830_33

def sourceBody830_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_23 sourceBody830_34

def sourceBody830_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody830_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody830_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_37 sourceBody830_30

def sourceBody830_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_0 sourceBody830_38

def sourceBody830_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_36 sourceBody830_39

def sourceBody830_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_0 sourceBody830_40

def sourceBody830_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_35 sourceBody830_41

def sourceBody830_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody830_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody830_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_44 sourceBody830_0

def sourceBody830_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_43 sourceBody830_45

def sourceBody830_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_42 sourceBody830_46

def sourceBody830_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_9 sourceBody830_47

def sourceBody830_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_0 sourceBody830_48

def sourceBody830_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_0 sourceBody830_49

def sourceBody830_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_2 sourceBody830_50

def sourceBody830_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_0 sourceBody830_51

def sourceBody830_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_1 sourceBody830_52

def sourceBody830_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody830_0 sourceBody830_53

def source830 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (830, 1, sourceBody830_54)
end InitECandidate.Proofs.WordStages
