import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody73_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody73_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody73_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody73_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 8)

def sourceBody73_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 4

def sourceBody73_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody73_4 sourceBody73_0

def sourceBody73_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody73_3 sourceBody73_5

def sourceBody73_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody73_6 sourceBody73_0

def sourceBody73_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody73_2 sourceBody73_7

def sourceBody73_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody73_0 sourceBody73_8

def sourceBody73_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody73_1 sourceBody73_9

def sourceBody73_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody73_0 sourceBody73_10

def sourceBody73_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody73_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody73_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody73_13 sourceBody73_0

def sourceBody73_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody73_12 sourceBody73_14

def sourceBody73_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody73_11 sourceBody73_15

def source73 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (73, 2, sourceBody73_16)
end InitECandidate.Proofs.WordStages
