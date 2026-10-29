import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody70_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody70_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody70_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody70_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 8)

def sourceBody70_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 4

def sourceBody70_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody70_4 sourceBody70_0

def sourceBody70_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody70_3 sourceBody70_5

def sourceBody70_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody70_6 sourceBody70_0

def sourceBody70_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody70_2 sourceBody70_7

def sourceBody70_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody70_0 sourceBody70_8

def sourceBody70_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody70_1 sourceBody70_9

def sourceBody70_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody70_0 sourceBody70_10

def sourceBody70_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody70_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody70_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody70_13 sourceBody70_0

def sourceBody70_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody70_12 sourceBody70_14

def sourceBody70_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody70_11 sourceBody70_15

def source70 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (70, 2, sourceBody70_16)
end InitECandidate.Proofs.WordStages
