import InitECandidate.Proofs.WordStages.Source376
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody392_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody392_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 192#64]))

def sourceBody392_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody392_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody392_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody392_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody392_0, 392, 2)) (some 77) ([6, 10, 8]) (some (6, sourceBody392_4, 392, 3))

def sourceBody392_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody392_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_5 sourceBody392_6

def sourceBody392_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_7 sourceBody392_0

def sourceBody392_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_3 sourceBody392_8

def sourceBody392_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_2 sourceBody392_9

def sourceBody392_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_1 sourceBody392_10

def sourceBody392_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_0 sourceBody392_11

def sourceBody392_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_0 sourceBody392_12

def sourceBody392_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 192#64]),
      Flapjack.WordLangExpHOL.const 20#64])

def sourceBody392_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody392_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody392_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody392_0, 392, 4)) (some 77) ([6, 10, 8]) (some (6, sourceBody392_4, 392, 5))

def sourceBody392_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_17 sourceBody392_6

def sourceBody392_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_18 sourceBody392_0

def sourceBody392_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_16 sourceBody392_19

def sourceBody392_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_15 sourceBody392_20

def sourceBody392_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_14 sourceBody392_21

def sourceBody392_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_0 sourceBody392_22

def sourceBody392_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_0 sourceBody392_23

def sourceBody392_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_13 sourceBody392_24

def sourceBody392_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 192#64]))

def sourceBody392_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody392_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_27 sourceBody392_0

def sourceBody392_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_26 sourceBody392_28

def sourceBody392_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody392_25 sourceBody392_29

def source392 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (392, 3, sourceBody392_30)
end InitECandidate.Proofs.WordStages
