import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody75_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody75_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def sourceBody75_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody75_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody75_1 sourceBody75_2

def sourceBody75_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody75_0 sourceBody75_3

def source75 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (75, 1, sourceBody75_4)
end InitECandidate.Proofs.WordStages
