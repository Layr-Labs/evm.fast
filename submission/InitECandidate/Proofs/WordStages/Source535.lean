import InitECandidate.Proofs.WordStages.Source519
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody535_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody535_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody535_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([4, 10, 2, 8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody535_0, 535, 2)) (some 475) ([]) (some (6, sourceBody535_1, 535, 3))

def sourceBody535_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody535_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_2 sourceBody535_3

def sourceBody535_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_4 sourceBody535_0

def sourceBody535_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody535_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody535_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody535_0, 535, 4)) (some 470) ([12]) (some (12, sourceBody535_7, 535, 5))

def sourceBody535_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_8 sourceBody535_3

def sourceBody535_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_9 sourceBody535_0

def sourceBody535_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_6 sourceBody535_10

def sourceBody535_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_0 sourceBody535_11

def sourceBody535_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_0 sourceBody535_12

def sourceBody535_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody535_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody535_0, 535, 6)) (some 490) ([12]) (some (12, sourceBody535_7, 535, 7))

def sourceBody535_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_15 sourceBody535_3

def sourceBody535_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_16 sourceBody535_0

def sourceBody535_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_14 sourceBody535_17

def sourceBody535_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_0 sourceBody535_18

def sourceBody535_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_0 sourceBody535_19

def sourceBody535_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_13 sourceBody535_20

def sourceBody535_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody535_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody535_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_23 sourceBody535_0

def sourceBody535_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_22 sourceBody535_24

def sourceBody535_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_21 sourceBody535_25

def sourceBody535_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_5 sourceBody535_26

def sourceBody535_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_0 sourceBody535_27

def sourceBody535_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_0 sourceBody535_28

def sourceBody535_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_0 sourceBody535_29

def sourceBody535_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_0 sourceBody535_30

def sourceBody535_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_0 sourceBody535_31

def sourceBody535_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_0 sourceBody535_32

def sourceBody535_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_0 sourceBody535_33

def sourceBody535_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody535_0 sourceBody535_34

def source535 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (535, 1, sourceBody535_35)
end InitECandidate.Proofs.WordStages
