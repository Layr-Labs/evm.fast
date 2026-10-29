import InitECandidate.Proofs.WordStages.Source567
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody583_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody583_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody583_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody583_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody583_0, 583, 2)) (some 470) ([6]) (some (6, sourceBody583_2, 583, 3))

def sourceBody583_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody583_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_3 sourceBody583_4

def sourceBody583_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_5 sourceBody583_0

def sourceBody583_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_1 sourceBody583_6

def sourceBody583_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_0 sourceBody583_7

def sourceBody583_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_0 sourceBody583_8

def sourceBody583_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody583_0, 583, 4)) (some 572) ([]) (some (6, sourceBody583_2, 583, 5))

def sourceBody583_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_10 sourceBody583_4

def sourceBody583_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_11 sourceBody583_0

def sourceBody583_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody583_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody583_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody583_0, 583, 6)) (some 477) ([2]) (some (2, sourceBody583_14, 583, 7))

def sourceBody583_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_15 sourceBody583_4

def sourceBody583_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_16 sourceBody583_0

def sourceBody583_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_13 sourceBody583_17

def sourceBody583_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_0 sourceBody583_18

def sourceBody583_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_0 sourceBody583_19

def sourceBody583_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody583_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody583_0, 583, 8)) (some 490) ([2]) (some (2, sourceBody583_14, 583, 9))

def sourceBody583_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_22 sourceBody583_4

def sourceBody583_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_23 sourceBody583_0

def sourceBody583_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_21 sourceBody583_24

def sourceBody583_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_0 sourceBody583_25

def sourceBody583_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_0 sourceBody583_26

def sourceBody583_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_20 sourceBody583_27

def sourceBody583_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody583_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody583_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_30 sourceBody583_0

def sourceBody583_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_29 sourceBody583_31

def sourceBody583_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_28 sourceBody583_32

def sourceBody583_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_12 sourceBody583_33

def sourceBody583_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_0 sourceBody583_34

def sourceBody583_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_0 sourceBody583_35

def sourceBody583_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody583_9 sourceBody583_36

def source583 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (583, 1, sourceBody583_37)
end InitECandidate.Proofs.WordStages
