import InitECandidate.Proofs.WordStages.Source442
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody458_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody458_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody458_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody458_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 8]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody458_0, 458, 2)) (some 198) ([16]) (some (16, sourceBody458_2, 458, 3))

def sourceBody458_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody458_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_3 sourceBody458_4

def sourceBody458_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_5 sourceBody458_0

def sourceBody458_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_1 sourceBody458_6

def sourceBody458_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody458_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody458_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody458_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody458_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody458_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody458_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody458_0, 458, 4)) (some 457) ([12, 20, 6, 14, 10]) (some (12, sourceBody458_13, 458, 5))

def sourceBody458_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_14 sourceBody458_4

def sourceBody458_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_15 sourceBody458_0

def sourceBody458_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_12 sourceBody458_16

def sourceBody458_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_11 sourceBody458_17

def sourceBody458_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_10 sourceBody458_18

def sourceBody458_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_9 sourceBody458_19

def sourceBody458_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_8 sourceBody458_20

def sourceBody458_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_0 sourceBody458_21

def sourceBody458_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_0 sourceBody458_22

def sourceBody458_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody458_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody458_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16, 12]

def sourceBody458_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_26 sourceBody458_0

def sourceBody458_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_25 sourceBody458_27

def sourceBody458_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_24 sourceBody458_28

def sourceBody458_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_23 sourceBody458_29

def sourceBody458_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_7 sourceBody458_30

def sourceBody458_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_0 sourceBody458_31

def sourceBody458_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_0 sourceBody458_32

def sourceBody458_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_0 sourceBody458_33

def sourceBody458_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody458_0 sourceBody458_34

def source458 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (458, 3, sourceBody458_35)
end InitECandidate.Proofs.WordStages
