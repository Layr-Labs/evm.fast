import InitECandidate.Proofs.WordStages.Source545
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody561_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody561_1 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody561_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody561_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody561_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody561_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody561_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody561_0, 561, 2)) (some 560) ([2, 8, 6]) (some (2, sourceBody561_5, 561, 3))

def sourceBody561_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody561_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody561_6 sourceBody561_7

def sourceBody561_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody561_8 sourceBody561_0

def sourceBody561_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody561_4 sourceBody561_9

def sourceBody561_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody561_3 sourceBody561_10

def sourceBody561_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody561_2 sourceBody561_11

def sourceBody561_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody561_0 sourceBody561_12

def sourceBody561_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody561_0 sourceBody561_13

def sourceBody561_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody561_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody561_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody561_16 sourceBody561_0

def sourceBody561_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody561_15 sourceBody561_17

def sourceBody561_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody561_14 sourceBody561_18

def sourceBody561_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody561_1 sourceBody561_19

def sourceBody561_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody561_0 sourceBody561_20

def source561 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (561, 1, sourceBody561_21)
end InitECandidate.Proofs.WordStages
