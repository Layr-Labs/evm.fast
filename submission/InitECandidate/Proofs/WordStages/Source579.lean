import InitECandidate.Proofs.WordStages.Source563
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody579_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody579_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody579_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody579_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody579_0, 579, 2)) (some 470) ([6]) (some (6, sourceBody579_2, 579, 3))

def sourceBody579_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody579_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_3 sourceBody579_4

def sourceBody579_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_5 sourceBody579_0

def sourceBody579_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_1 sourceBody579_6

def sourceBody579_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_0 sourceBody579_7

def sourceBody579_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_0 sourceBody579_8

def sourceBody579_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody579_0, 579, 4)) (some 572) ([]) (some (6, sourceBody579_2, 579, 5))

def sourceBody579_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_10 sourceBody579_4

def sourceBody579_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_11 sourceBody579_0

def sourceBody579_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody579_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody579_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody579_0, 579, 6)) (some 477) ([2]) (some (2, sourceBody579_14, 579, 7))

def sourceBody579_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_15 sourceBody579_4

def sourceBody579_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_16 sourceBody579_0

def sourceBody579_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_13 sourceBody579_17

def sourceBody579_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_0 sourceBody579_18

def sourceBody579_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_0 sourceBody579_19

def sourceBody579_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody579_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody579_0, 579, 8)) (some 490) ([2]) (some (2, sourceBody579_14, 579, 9))

def sourceBody579_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_22 sourceBody579_4

def sourceBody579_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_23 sourceBody579_0

def sourceBody579_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_21 sourceBody579_24

def sourceBody579_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_0 sourceBody579_25

def sourceBody579_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_0 sourceBody579_26

def sourceBody579_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_20 sourceBody579_27

def sourceBody579_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody579_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody579_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_30 sourceBody579_0

def sourceBody579_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_29 sourceBody579_31

def sourceBody579_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_28 sourceBody579_32

def sourceBody579_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_12 sourceBody579_33

def sourceBody579_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_0 sourceBody579_34

def sourceBody579_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_0 sourceBody579_35

def sourceBody579_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody579_9 sourceBody579_36

def source579 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (579, 1, sourceBody579_37)
end InitECandidate.Proofs.WordStages
