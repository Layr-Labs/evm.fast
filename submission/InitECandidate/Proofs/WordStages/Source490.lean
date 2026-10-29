import InitECandidate.Proofs.WordStages.Source474
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody490_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody490_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody490_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 256#64]),
            Flapjack.WordLangExpHOL.const 0#64]),
      Flapjack.WordLangExpHOL.var 2])

def sourceBody490_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 8)

def sourceBody490_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 4

def sourceBody490_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody490_4 sourceBody490_0

def sourceBody490_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody490_3 sourceBody490_5

def sourceBody490_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody490_6 sourceBody490_0

def sourceBody490_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody490_2 sourceBody490_7

def sourceBody490_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody490_0 sourceBody490_8

def sourceBody490_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody490_1 sourceBody490_9

def sourceBody490_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody490_0 sourceBody490_10

def sourceBody490_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody490_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody490_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody490_13 sourceBody490_0

def sourceBody490_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody490_12 sourceBody490_14

def sourceBody490_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody490_11 sourceBody490_15

def source490 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (490, 2, sourceBody490_16)
end InitECandidate.Proofs.WordStages
