import InitECandidate.Proofs.WordStages.Source458
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody474_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody474_1 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody474_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody474_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
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
            Flapjack.WordLangExpHOL.const 64#64]),
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
            Flapjack.WordLangExpHOL.const 192#64])])

def sourceBody474_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody474_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 6

def sourceBody474_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_5 sourceBody474_0

def sourceBody474_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_4 sourceBody474_6

def sourceBody474_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_7 sourceBody474_0

def sourceBody474_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_3 sourceBody474_8

def sourceBody474_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_0 sourceBody474_9

def sourceBody474_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_2 sourceBody474_10

def sourceBody474_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_0 sourceBody474_11

def sourceBody474_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody474_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody474_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_14 sourceBody474_8

def sourceBody474_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_0 sourceBody474_15

def sourceBody474_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_13 sourceBody474_16

def sourceBody474_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_0 sourceBody474_17

def sourceBody474_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_12 sourceBody474_18

def sourceBody474_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 192#64])

def sourceBody474_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody474_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_21 sourceBody474_8

def sourceBody474_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_0 sourceBody474_22

def sourceBody474_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_20 sourceBody474_23

def sourceBody474_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_0 sourceBody474_24

def sourceBody474_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_19 sourceBody474_25

def sourceBody474_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody474_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody474_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_28 sourceBody474_0

def sourceBody474_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_27 sourceBody474_29

def sourceBody474_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_26 sourceBody474_30

def sourceBody474_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_1 sourceBody474_31

def sourceBody474_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody474_0 sourceBody474_32

def source474 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (474, 1, sourceBody474_33)
end InitECandidate.Proofs.WordStages
