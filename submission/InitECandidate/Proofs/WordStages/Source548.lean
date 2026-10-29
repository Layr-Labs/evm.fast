import InitECandidate.Proofs.WordStages.Source532
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody548_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody548_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody548_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody548_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody548_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody548_0, 548, 2)) (some 392) ([6, 10]) (some (6, sourceBody548_3, 548, 3))

def sourceBody548_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody548_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_4 sourceBody548_5

def sourceBody548_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_6 sourceBody548_0

def sourceBody548_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_2 sourceBody548_7

def sourceBody548_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_1 sourceBody548_8

def sourceBody548_10 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody548_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody548_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody548_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody548_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody548_0, 548, 4)) (some 192) ([10, 8, 14]) (some (10, sourceBody548_13, 548, 5))

def sourceBody548_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_14 sourceBody548_5

def sourceBody548_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_15 sourceBody548_0

def sourceBody548_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_12 sourceBody548_16

def sourceBody548_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_11 sourceBody548_17

def sourceBody548_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_10 sourceBody548_18

def sourceBody548_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_0 sourceBody548_19

def sourceBody548_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_0 sourceBody548_20

def sourceBody548_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody548_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody548_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_23 sourceBody548_0

def sourceBody548_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_22 sourceBody548_24

def sourceBody548_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_21 sourceBody548_25

def sourceBody548_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_9 sourceBody548_26

def sourceBody548_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_0 sourceBody548_27

def sourceBody548_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody548_0 sourceBody548_28

def source548 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (548, 3, sourceBody548_29)
end InitECandidate.Proofs.WordStages
