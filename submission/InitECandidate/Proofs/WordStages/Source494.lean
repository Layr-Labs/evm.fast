import InitECandidate.Proofs.WordStages.Source478
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody494_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody494_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
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

def sourceBody494_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody494_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody494_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody494_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody494_0, 494, 2)) (some 192) ([10, 4, 8]) (some (10, sourceBody494_4, 494, 3))

def sourceBody494_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody494_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody494_5 sourceBody494_6

def sourceBody494_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody494_7 sourceBody494_0

def sourceBody494_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody494_3 sourceBody494_8

def sourceBody494_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody494_2 sourceBody494_9

def sourceBody494_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody494_1 sourceBody494_10

def sourceBody494_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody494_0 sourceBody494_11

def sourceBody494_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody494_0 sourceBody494_12

def sourceBody494_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody494_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody494_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody494_15 sourceBody494_0

def sourceBody494_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody494_14 sourceBody494_16

def sourceBody494_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody494_13 sourceBody494_17

def source494 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (494, 2, sourceBody494_18)
end InitECandidate.Proofs.WordStages
