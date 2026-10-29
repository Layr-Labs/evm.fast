import InitECandidate.Proofs.WordStages.Source403
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody419_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody419_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
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
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody419_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody419_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody419_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody419_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody419_0, 419, 2)) (some 388) ([6, 10, 8]) (some (6, sourceBody419_4, 419, 3))

def sourceBody419_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody419_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody419_5 sourceBody419_6

def sourceBody419_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody419_7 sourceBody419_0

def sourceBody419_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody419_3 sourceBody419_8

def sourceBody419_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody419_2 sourceBody419_9

def sourceBody419_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody419_1 sourceBody419_10

def sourceBody419_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody419_0 sourceBody419_11

def sourceBody419_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody419_0 sourceBody419_12

def sourceBody419_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody419_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody419_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody419_15 sourceBody419_0

def sourceBody419_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody419_14 sourceBody419_16

def sourceBody419_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody419_13 sourceBody419_17

def source419 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (419, 3, sourceBody419_18)
end InitECandidate.Proofs.WordStages
