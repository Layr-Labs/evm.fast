import InitECandidate.Proofs.WordStages.Source354
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody370_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody370_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody370_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody370_0, 370, 2)) (some 69) ([]) (some (14, sourceBody370_1, 370, 3))

def sourceBody370_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody370_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_2 sourceBody370_3

def sourceBody370_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_4 sourceBody370_0

def sourceBody370_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody370_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody370_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody370_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody370_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody370_0, 370, 4)) (some 367) ([10, 16, 12]) (some (10, sourceBody370_9, 370, 5))

def sourceBody370_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_10 sourceBody370_3

def sourceBody370_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_11 sourceBody370_0

def sourceBody370_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_8 sourceBody370_12

def sourceBody370_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_7 sourceBody370_13

def sourceBody370_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_6 sourceBody370_14

def sourceBody370_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody370_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 22)

def sourceBody370_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody370_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody370_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody370_0, 370, 6)) (some 158) ([16, 12, 20]) (some (16, sourceBody370_19, 370, 7))

def sourceBody370_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_20 sourceBody370_3

def sourceBody370_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_21 sourceBody370_0

def sourceBody370_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_18 sourceBody370_22

def sourceBody370_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_17 sourceBody370_23

def sourceBody370_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_16 sourceBody370_24

def sourceBody370_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_0 sourceBody370_25

def sourceBody370_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_0 sourceBody370_26

def sourceBody370_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody370_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody370_0, 370, 8)) (some 70) ([16]) (some (16, sourceBody370_19, 370, 9))

def sourceBody370_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_29 sourceBody370_3

def sourceBody370_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_30 sourceBody370_0

def sourceBody370_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_28 sourceBody370_31

def sourceBody370_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_0 sourceBody370_32

def sourceBody370_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_0 sourceBody370_33

def sourceBody370_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_27 sourceBody370_34

def sourceBody370_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody370_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody370_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_37 sourceBody370_0

def sourceBody370_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_36 sourceBody370_38

def sourceBody370_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_35 sourceBody370_39

def sourceBody370_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_15 sourceBody370_40

def sourceBody370_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_0 sourceBody370_41

def sourceBody370_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_0 sourceBody370_42

def sourceBody370_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_0 sourceBody370_43

def sourceBody370_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_0 sourceBody370_44

def sourceBody370_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_5 sourceBody370_45

def sourceBody370_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_0 sourceBody370_46

def sourceBody370_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody370_0 sourceBody370_47

def source370 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (370, 5, sourceBody370_48)
end InitECandidate.Proofs.WordStages
