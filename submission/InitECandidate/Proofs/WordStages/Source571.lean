import InitECandidate.Proofs.WordStages.Source555
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody571_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody571_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody571_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody571_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody571_0, 571, 2)) (some 470) ([10]) (some (10, sourceBody571_2, 571, 3))

def sourceBody571_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody571_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_3 sourceBody571_4

def sourceBody571_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_5 sourceBody571_0

def sourceBody571_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_1 sourceBody571_6

def sourceBody571_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_0 sourceBody571_7

def sourceBody571_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_0 sourceBody571_8

def sourceBody571_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.load
                (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                  [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                      [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                          (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                          (Flapjack.WordLangExpHOL.const 1#64)],
                    Flapjack.WordLangExpHOL.const 256#64]),
              Flapjack.WordLangExpHOL.const 112#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody571_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody571_0, 571, 4)) (some 407) ([10]) (some (10, sourceBody571_2, 571, 5))

def sourceBody571_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_11 sourceBody571_4

def sourceBody571_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_12 sourceBody571_0

def sourceBody571_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_10 sourceBody571_13

def sourceBody571_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody571_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody571_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody571_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody571_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody571_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody571_0, 571, 6)) (some 476) ([2, 8, 6, 12]) (some (2, sourceBody571_19, 571, 7))

def sourceBody571_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_20 sourceBody571_4

def sourceBody571_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_21 sourceBody571_0

def sourceBody571_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_18 sourceBody571_22

def sourceBody571_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_17 sourceBody571_23

def sourceBody571_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_16 sourceBody571_24

def sourceBody571_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_15 sourceBody571_25

def sourceBody571_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_0 sourceBody571_26

def sourceBody571_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_0 sourceBody571_27

def sourceBody571_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody571_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody571_0, 571, 8)) (some 490) ([2]) (some (2, sourceBody571_19, 571, 9))

def sourceBody571_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_30 sourceBody571_4

def sourceBody571_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_31 sourceBody571_0

def sourceBody571_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_29 sourceBody571_32

def sourceBody571_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_0 sourceBody571_33

def sourceBody571_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_0 sourceBody571_34

def sourceBody571_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_28 sourceBody571_35

def sourceBody571_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody571_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody571_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_38 sourceBody571_0

def sourceBody571_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_37 sourceBody571_39

def sourceBody571_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_36 sourceBody571_40

def sourceBody571_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_14 sourceBody571_41

def sourceBody571_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_0 sourceBody571_42

def sourceBody571_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_0 sourceBody571_43

def sourceBody571_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody571_9 sourceBody571_44

def source571 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (571, 1, sourceBody571_45)
end InitECandidate.Proofs.WordStages
