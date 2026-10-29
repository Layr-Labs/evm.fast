import InitECandidate.Proofs.WordStages.Source259
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody275_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody275_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody275_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody275_0, 275, 2)) (some 69) ([]) (some (26, sourceBody275_1, 275, 3))

def sourceBody275_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody275_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_2 sourceBody275_3

def sourceBody275_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_4 sourceBody275_0

def sourceBody275_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody275_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody275_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody275_0, 275, 4)) (some 68) ([12]) (some (12, sourceBody275_7, 275, 5))

def sourceBody275_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_8 sourceBody275_3

def sourceBody275_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_9 sourceBody275_0

def sourceBody275_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_6 sourceBody275_10

def sourceBody275_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody275_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody275_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody275_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody275_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody275_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody275_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody275_0, 275, 6)) (some 148) ([20, 16, 24, 14, 22]) (some (20, sourceBody275_17, 275, 7))

def sourceBody275_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_18 sourceBody275_3

def sourceBody275_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_19 sourceBody275_0

def sourceBody275_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_16 sourceBody275_20

def sourceBody275_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_15 sourceBody275_21

def sourceBody275_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_14 sourceBody275_22

def sourceBody275_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_13 sourceBody275_23

def sourceBody275_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_12 sourceBody275_24

def sourceBody275_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody275_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody275_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody275_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody275_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody275_0, 275, 8)) (some 176) ([16, 24, 14]) (some (16, sourceBody275_29, 275, 9))

def sourceBody275_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_30 sourceBody275_3

def sourceBody275_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_31 sourceBody275_0

def sourceBody275_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_28 sourceBody275_32

def sourceBody275_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_27 sourceBody275_33

def sourceBody275_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_26 sourceBody275_34

def sourceBody275_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody275_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody275_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody275_0, 275, 10)) (some 70) ([24]) (some (24, sourceBody275_37, 275, 11))

def sourceBody275_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_38 sourceBody275_3

def sourceBody275_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_39 sourceBody275_0

def sourceBody275_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_36 sourceBody275_40

def sourceBody275_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_0 sourceBody275_41

def sourceBody275_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_0 sourceBody275_42

def sourceBody275_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody275_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody275_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_45 sourceBody275_0

def sourceBody275_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_44 sourceBody275_46

def sourceBody275_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_43 sourceBody275_47

def sourceBody275_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_35 sourceBody275_48

def sourceBody275_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_0 sourceBody275_49

def sourceBody275_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_0 sourceBody275_50

def sourceBody275_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_25 sourceBody275_51

def sourceBody275_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_0 sourceBody275_52

def sourceBody275_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_0 sourceBody275_53

def sourceBody275_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_11 sourceBody275_54

def sourceBody275_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_0 sourceBody275_55

def sourceBody275_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_0 sourceBody275_56

def sourceBody275_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_5 sourceBody275_57

def sourceBody275_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_0 sourceBody275_58

def sourceBody275_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody275_0 sourceBody275_59

def source275 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (275, 6, sourceBody275_60)
end InitECandidate.Proofs.WordStages
