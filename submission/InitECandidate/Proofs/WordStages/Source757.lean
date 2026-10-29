import InitECandidate.Proofs.WordStages.Source741
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody757_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody757_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody757_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody757_0, 757, 2)) (some 69) ([]) (some (12, sourceBody757_1, 757, 3))

def sourceBody757_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody757_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_2 sourceBody757_3

def sourceBody757_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_4 sourceBody757_0

def sourceBody757_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 576#64)

def sourceBody757_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody757_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody757_0, 757, 4)) (some 68) ([4]) (some (4, sourceBody757_7, 757, 5))

def sourceBody757_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_8 sourceBody757_3

def sourceBody757_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_9 sourceBody757_0

def sourceBody757_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_6 sourceBody757_10

def sourceBody757_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody757_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody757_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody757_0, 757, 6)) (some 756) ([10]) (some (10, sourceBody757_13, 757, 7))

def sourceBody757_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_14 sourceBody757_3

def sourceBody757_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_15 sourceBody757_0

def sourceBody757_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_12 sourceBody757_16

def sourceBody757_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_0 sourceBody757_17

def sourceBody757_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_0 sourceBody757_18

def sourceBody757_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody757_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody757_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 576#64)

def sourceBody757_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody757_0, 757, 8)) (some 79) ([10, 8, 14]) (some (10, sourceBody757_13, 757, 9))

def sourceBody757_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_23 sourceBody757_3

def sourceBody757_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_24 sourceBody757_0

def sourceBody757_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_22 sourceBody757_25

def sourceBody757_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_21 sourceBody757_26

def sourceBody757_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_20 sourceBody757_27

def sourceBody757_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody757_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody757_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody757_0, 757, 10)) (some 70) ([8]) (some (8, sourceBody757_30, 757, 11))

def sourceBody757_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_31 sourceBody757_3

def sourceBody757_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_32 sourceBody757_0

def sourceBody757_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_29 sourceBody757_33

def sourceBody757_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_0 sourceBody757_34

def sourceBody757_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_0 sourceBody757_35

def sourceBody757_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody757_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody757_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_38 sourceBody757_0

def sourceBody757_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_37 sourceBody757_39

def sourceBody757_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_36 sourceBody757_40

def sourceBody757_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_28 sourceBody757_41

def sourceBody757_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_0 sourceBody757_42

def sourceBody757_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_0 sourceBody757_43

def sourceBody757_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_19 sourceBody757_44

def sourceBody757_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_11 sourceBody757_45

def sourceBody757_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_0 sourceBody757_46

def sourceBody757_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_0 sourceBody757_47

def sourceBody757_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_5 sourceBody757_48

def sourceBody757_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_0 sourceBody757_49

def sourceBody757_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody757_0 sourceBody757_50

def source757 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (757, 2, sourceBody757_51)
end InitECandidate.Proofs.WordStages
