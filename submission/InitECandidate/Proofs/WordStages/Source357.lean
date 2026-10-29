import InitECandidate.Proofs.WordStages.Source341
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody357_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody357_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody357_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody357_0, 357, 2)) (some 69) ([]) (some (26, sourceBody357_1, 357, 3))

def sourceBody357_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody357_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_2 sourceBody357_3

def sourceBody357_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_4 sourceBody357_0

def sourceBody357_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody357_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody357_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody357_0, 357, 4)) (some 68) ([12]) (some (12, sourceBody357_7, 357, 5))

def sourceBody357_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_8 sourceBody357_3

def sourceBody357_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_9 sourceBody357_0

def sourceBody357_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_6 sourceBody357_10

def sourceBody357_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody357_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody357_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody357_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody357_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody357_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody357_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody357_0, 357, 6)) (some 148) ([20, 16, 24, 14, 22]) (some (20, sourceBody357_17, 357, 7))

def sourceBody357_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_18 sourceBody357_3

def sourceBody357_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_19 sourceBody357_0

def sourceBody357_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_16 sourceBody357_20

def sourceBody357_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_15 sourceBody357_21

def sourceBody357_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_14 sourceBody357_22

def sourceBody357_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_13 sourceBody357_23

def sourceBody357_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_12 sourceBody357_24

def sourceBody357_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody357_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody357_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody357_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody357_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody357_0, 357, 8)) (some 176) ([16, 24, 14]) (some (16, sourceBody357_29, 357, 9))

def sourceBody357_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_30 sourceBody357_3

def sourceBody357_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_31 sourceBody357_0

def sourceBody357_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_28 sourceBody357_32

def sourceBody357_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_27 sourceBody357_33

def sourceBody357_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_26 sourceBody357_34

def sourceBody357_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody357_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody357_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody357_0, 357, 10)) (some 70) ([24]) (some (24, sourceBody357_37, 357, 11))

def sourceBody357_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_38 sourceBody357_3

def sourceBody357_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_39 sourceBody357_0

def sourceBody357_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_36 sourceBody357_40

def sourceBody357_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_0 sourceBody357_41

def sourceBody357_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_0 sourceBody357_42

def sourceBody357_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody357_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody357_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_45 sourceBody357_0

def sourceBody357_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_44 sourceBody357_46

def sourceBody357_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_43 sourceBody357_47

def sourceBody357_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_35 sourceBody357_48

def sourceBody357_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_0 sourceBody357_49

def sourceBody357_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_0 sourceBody357_50

def sourceBody357_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_25 sourceBody357_51

def sourceBody357_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_0 sourceBody357_52

def sourceBody357_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_0 sourceBody357_53

def sourceBody357_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_11 sourceBody357_54

def sourceBody357_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_0 sourceBody357_55

def sourceBody357_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_0 sourceBody357_56

def sourceBody357_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_5 sourceBody357_57

def sourceBody357_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_0 sourceBody357_58

def sourceBody357_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody357_0 sourceBody357_59

def source357 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (357, 6, sourceBody357_60)
end InitECandidate.Proofs.WordStages
