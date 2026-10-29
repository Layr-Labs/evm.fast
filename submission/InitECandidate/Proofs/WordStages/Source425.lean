import InitECandidate.Proofs.WordStages.Source409
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody425_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody425_1 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody425_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody425_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody425_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody425_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody425_0, 425, 2)) (some 192) ([10, 4, 8]) (some (10, sourceBody425_4, 425, 3))

def sourceBody425_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody425_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody425_5 sourceBody425_6

def sourceBody425_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody425_7 sourceBody425_0

def sourceBody425_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody425_3 sourceBody425_8

def sourceBody425_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody425_2 sourceBody425_9

def sourceBody425_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody425_1 sourceBody425_10

def sourceBody425_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody425_0 sourceBody425_11

def sourceBody425_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody425_0 sourceBody425_12

def sourceBody425_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody425_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody425_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody425_15 sourceBody425_0

def sourceBody425_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody425_14 sourceBody425_16

def sourceBody425_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody425_13 sourceBody425_17

def source425 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (425, 2, sourceBody425_18)
end InitECandidate.Proofs.WordStages
