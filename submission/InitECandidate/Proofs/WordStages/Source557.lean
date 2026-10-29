import InitECandidate.Proofs.WordStages.Source541
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody557_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody557_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody557_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody557_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody557_0, 557, 2)) (some 470) ([10]) (some (10, sourceBody557_2, 557, 3))

def sourceBody557_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody557_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_3 sourceBody557_4

def sourceBody557_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_5 sourceBody557_0

def sourceBody557_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_1 sourceBody557_6

def sourceBody557_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_0 sourceBody557_7

def sourceBody557_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_0 sourceBody557_8

def sourceBody557_10 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody557_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
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
            Flapjack.WordLangExpHOL.const 56#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody557_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
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
            Flapjack.WordLangExpHOL.const 56#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody557_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
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
            Flapjack.WordLangExpHOL.const 56#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody557_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody557_0, 557, 4)) (some 476) ([10, 2, 8, 6]) (some (10, sourceBody557_2, 557, 5))

def sourceBody557_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_14 sourceBody557_4

def sourceBody557_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_15 sourceBody557_0

def sourceBody557_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_13 sourceBody557_16

def sourceBody557_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_12 sourceBody557_17

def sourceBody557_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_11 sourceBody557_18

def sourceBody557_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_10 sourceBody557_19

def sourceBody557_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_0 sourceBody557_20

def sourceBody557_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_0 sourceBody557_21

def sourceBody557_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_9 sourceBody557_22

def sourceBody557_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody557_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody557_0, 557, 6)) (some 490) ([10]) (some (10, sourceBody557_2, 557, 7))

def sourceBody557_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_25 sourceBody557_4

def sourceBody557_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_26 sourceBody557_0

def sourceBody557_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_24 sourceBody557_27

def sourceBody557_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_0 sourceBody557_28

def sourceBody557_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_0 sourceBody557_29

def sourceBody557_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_23 sourceBody557_30

def sourceBody557_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody557_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody557_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_33 sourceBody557_0

def sourceBody557_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_32 sourceBody557_34

def sourceBody557_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody557_31 sourceBody557_35

def source557 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (557, 1, sourceBody557_36)
end InitECandidate.Proofs.WordStages
