import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody76_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody76_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody76_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody76_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 8)

def sourceBody76_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 4

def sourceBody76_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody76_4 sourceBody76_0

def sourceBody76_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody76_3 sourceBody76_5

def sourceBody76_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody76_6 sourceBody76_0

def sourceBody76_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody76_2 sourceBody76_7

def sourceBody76_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody76_0 sourceBody76_8

def sourceBody76_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody76_1 sourceBody76_9

def sourceBody76_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody76_0 sourceBody76_10

def sourceBody76_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody76_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody76_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody76_13 sourceBody76_0

def sourceBody76_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody76_12 sourceBody76_14

def sourceBody76_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody76_11 sourceBody76_15

def source76 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (76, 2, sourceBody76_16)
end InitECandidate.Proofs.WordStages
