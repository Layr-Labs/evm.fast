import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody67_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody67_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody67_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap)

def sourceBody67_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 6)

def sourceBody67_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 2

def sourceBody67_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_4 sourceBody67_0

def sourceBody67_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_3 sourceBody67_5

def sourceBody67_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_6 sourceBody67_0

def sourceBody67_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_2 sourceBody67_7

def sourceBody67_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_0 sourceBody67_8

def sourceBody67_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_1 sourceBody67_9

def sourceBody67_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_0 sourceBody67_10

def sourceBody67_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody67_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2965299200#64)

def sourceBody67_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_13 sourceBody67_7

def sourceBody67_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_0 sourceBody67_14

def sourceBody67_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_12 sourceBody67_15

def sourceBody67_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_0 sourceBody67_16

def sourceBody67_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_11 sourceBody67_17

def sourceBody67_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody67_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2952790016#64)

def sourceBody67_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_20 sourceBody67_7

def sourceBody67_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_0 sourceBody67_21

def sourceBody67_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_19 sourceBody67_22

def sourceBody67_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_0 sourceBody67_23

def sourceBody67_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_18 sourceBody67_24

def sourceBody67_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody67_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody67_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_27 sourceBody67_0

def sourceBody67_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_26 sourceBody67_28

def sourceBody67_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody67_25 sourceBody67_29

def source67 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (67, 1, sourceBody67_30)
end InitECandidate.Proofs.WordStages
