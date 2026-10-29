import InitECandidate.Proofs.WordStages.Source588
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody604_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody604_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 184#64])

def sourceBody604_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
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
            Flapjack.WordLangExpHOL.const 184#64]),
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 256#64]),
            Flapjack.WordLangExpHOL.const 64#64])])

def sourceBody604_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 8)

def sourceBody604_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 4

def sourceBody604_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_4 sourceBody604_0

def sourceBody604_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_3 sourceBody604_5

def sourceBody604_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_6 sourceBody604_0

def sourceBody604_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_2 sourceBody604_7

def sourceBody604_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_0 sourceBody604_8

def sourceBody604_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_1 sourceBody604_9

def sourceBody604_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_0 sourceBody604_10

def sourceBody604_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody604_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody604_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_13 sourceBody604_7

def sourceBody604_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_0 sourceBody604_14

def sourceBody604_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_12 sourceBody604_15

def sourceBody604_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_0 sourceBody604_16

def sourceBody604_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_11 sourceBody604_17

def sourceBody604_19 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody604_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody604_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_20 sourceBody604_7

def sourceBody604_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_0 sourceBody604_21

def sourceBody604_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_19 sourceBody604_22

def sourceBody604_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_0 sourceBody604_23

def sourceBody604_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_18 sourceBody604_24

def sourceBody604_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody604_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody604_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_27 sourceBody604_0

def sourceBody604_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_26 sourceBody604_28

def sourceBody604_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody604_25 sourceBody604_29

def source604 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (604, 2, sourceBody604_30)
end InitECandidate.Proofs.WordStages
