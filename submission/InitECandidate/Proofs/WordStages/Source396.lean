import InitECandidate.Proofs.WordStages.Source380
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody396_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody396_1 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 72#64]))

def sourceBody396_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody396_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody396_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody396_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody396_0, 396, 2)) (some 192) ([10, 4, 8]) (some (10, sourceBody396_4, 396, 3))

def sourceBody396_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody396_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody396_5 sourceBody396_6

def sourceBody396_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody396_7 sourceBody396_0

def sourceBody396_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody396_3 sourceBody396_8

def sourceBody396_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody396_2 sourceBody396_9

def sourceBody396_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody396_1 sourceBody396_10

def sourceBody396_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody396_0 sourceBody396_11

def sourceBody396_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody396_0 sourceBody396_12

def sourceBody396_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody396_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody396_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody396_15 sourceBody396_0

def sourceBody396_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody396_14 sourceBody396_16

def sourceBody396_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody396_13 sourceBody396_17

def source396 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (396, 2, sourceBody396_18)
end InitECandidate.Proofs.WordStages
