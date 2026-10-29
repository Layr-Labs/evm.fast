import InitECandidate.Proofs.WordStages.Source531
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody547_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody547_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody547_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody547_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody547_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody547_0, 547, 2)) (some 392) ([6, 10]) (some (6, sourceBody547_3, 547, 3))

def sourceBody547_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody547_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_4 sourceBody547_5

def sourceBody547_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_6 sourceBody547_0

def sourceBody547_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_2 sourceBody547_7

def sourceBody547_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_1 sourceBody547_8

def sourceBody547_10 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 176#64]))

def sourceBody547_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody547_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody547_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody547_0, 547, 4)) (some 187) ([10, 8]) (some (10, sourceBody547_12, 547, 5))

def sourceBody547_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_13 sourceBody547_5

def sourceBody547_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_14 sourceBody547_0

def sourceBody547_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_11 sourceBody547_15

def sourceBody547_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_10 sourceBody547_16

def sourceBody547_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody547_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody547_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_19 sourceBody547_0

def sourceBody547_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_18 sourceBody547_20

def sourceBody547_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_17 sourceBody547_21

def sourceBody547_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_0 sourceBody547_22

def sourceBody547_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_0 sourceBody547_23

def sourceBody547_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_9 sourceBody547_24

def sourceBody547_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_0 sourceBody547_25

def sourceBody547_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody547_0 sourceBody547_26

def source547 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (547, 3, sourceBody547_27)
end InitECandidate.Proofs.WordStages
