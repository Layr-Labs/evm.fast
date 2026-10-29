import InitECandidate.Proofs.WordStages.Source477
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody493_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody493_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
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
        Flapjack.WordLangExpHOL.const 168#64]))

def sourceBody493_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody493_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody493_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody493_0, 493, 2)) (some 187) ([8, 4]) (some (8, sourceBody493_3, 493, 3))

def sourceBody493_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody493_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody493_4 sourceBody493_5

def sourceBody493_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody493_6 sourceBody493_0

def sourceBody493_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody493_2 sourceBody493_7

def sourceBody493_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody493_1 sourceBody493_8

def sourceBody493_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody493_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody493_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody493_11 sourceBody493_0

def sourceBody493_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody493_10 sourceBody493_12

def sourceBody493_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody493_9 sourceBody493_13

def sourceBody493_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody493_0 sourceBody493_14

def sourceBody493_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody493_0 sourceBody493_15

def source493 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (493, 2, sourceBody493_16)
end InitECandidate.Proofs.WordStages
