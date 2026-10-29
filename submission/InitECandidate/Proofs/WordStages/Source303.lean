import InitECandidate.Proofs.WordStages.Source287
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody303_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody303_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody303_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody303_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody303_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody303_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody303_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody303_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_6 sourceBody303_0

def sourceBody303_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_7 sourceBody303_0

def sourceBody303_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody303_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody303_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody303_0, 303, 3)) (some 76) ([10]) (some (10, sourceBody303_10, 303, 4))

def sourceBody303_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_11 sourceBody303_5

def sourceBody303_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_12 sourceBody303_0

def sourceBody303_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_9 sourceBody303_13

def sourceBody303_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_0 sourceBody303_14

def sourceBody303_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_0 sourceBody303_15

def sourceBody303_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody303_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 18)

def sourceBody303_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_18 sourceBody303_0

def sourceBody303_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_19 sourceBody303_0

def sourceBody303_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_17 sourceBody303_20

def sourceBody303_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_0 sourceBody303_21

def sourceBody303_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody303_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_23 sourceBody303_4

def sourceBody303_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_22 sourceBody303_24

def sourceBody303_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_16 sourceBody303_25

def sourceBody303_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_8 sourceBody303_26

def sourceBody303_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_5 sourceBody303_27

def sourceBody303_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 5#64) sourceBody303_4 sourceBody303_28

def sourceBody303_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_29 sourceBody303_5

def sourceBody303_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody303_0, 303, 2)) (some 302) ([18, 10, 14]) (some (18, sourceBody303_30, 303, 5))

def sourceBody303_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_31 sourceBody303_5

def sourceBody303_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_32 sourceBody303_0

def sourceBody303_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_3 sourceBody303_33

def sourceBody303_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_2 sourceBody303_34

def sourceBody303_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_1 sourceBody303_35

def sourceBody303_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody303_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody303_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_38 sourceBody303_0

def sourceBody303_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_37 sourceBody303_39

def sourceBody303_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_36 sourceBody303_40

def sourceBody303_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_0 sourceBody303_41

def sourceBody303_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_0 sourceBody303_42

def sourceBody303_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_0 sourceBody303_43

def sourceBody303_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody303_0 sourceBody303_44

def source303 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (303, 5, sourceBody303_45)
end InitECandidate.Proofs.WordStages
