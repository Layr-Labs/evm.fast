import InitECandidate.Proofs.WordStages.Source227
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody243_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody243_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody243_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody243_0, 243, 2)) (some 69) ([]) (some (16, sourceBody243_1, 243, 3))

def sourceBody243_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody243_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_2 sourceBody243_3

def sourceBody243_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_4 sourceBody243_0

def sourceBody243_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody243_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody243_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody243_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody243_0, 243, 4)) (some 241) ([10, 18]) (some (10, sourceBody243_8, 243, 5))

def sourceBody243_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_9 sourceBody243_3

def sourceBody243_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_10 sourceBody243_0

def sourceBody243_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_7 sourceBody243_11

def sourceBody243_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_6 sourceBody243_12

def sourceBody243_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody243_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody243_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody243_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody243_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody243_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody243_0, 243, 6)) (some 235) ([18, 14, 22, 12]) (some (18, sourceBody243_18, 243, 7))

def sourceBody243_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_19 sourceBody243_3

def sourceBody243_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_20 sourceBody243_0

def sourceBody243_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_17 sourceBody243_21

def sourceBody243_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_16 sourceBody243_22

def sourceBody243_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_15 sourceBody243_23

def sourceBody243_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_14 sourceBody243_24

def sourceBody243_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_0 sourceBody243_25

def sourceBody243_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_0 sourceBody243_26

def sourceBody243_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody243_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody243_0, 243, 8)) (some 70) ([18]) (some (18, sourceBody243_18, 243, 9))

def sourceBody243_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_29 sourceBody243_3

def sourceBody243_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_30 sourceBody243_0

def sourceBody243_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_28 sourceBody243_31

def sourceBody243_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_0 sourceBody243_32

def sourceBody243_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_0 sourceBody243_33

def sourceBody243_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_27 sourceBody243_34

def sourceBody243_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody243_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody243_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody243_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody243_0, 243, 10)) (some 236) ([18, 14, 22]) (some (18, sourceBody243_18, 243, 11))

def sourceBody243_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_39 sourceBody243_3

def sourceBody243_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_40 sourceBody243_0

def sourceBody243_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_38 sourceBody243_41

def sourceBody243_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_37 sourceBody243_42

def sourceBody243_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_36 sourceBody243_43

def sourceBody243_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_0 sourceBody243_44

def sourceBody243_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_0 sourceBody243_45

def sourceBody243_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_35 sourceBody243_46

def sourceBody243_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody243_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody243_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_49 sourceBody243_0

def sourceBody243_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_48 sourceBody243_50

def sourceBody243_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_47 sourceBody243_51

def sourceBody243_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_13 sourceBody243_52

def sourceBody243_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_0 sourceBody243_53

def sourceBody243_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_0 sourceBody243_54

def sourceBody243_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_0 sourceBody243_55

def sourceBody243_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_0 sourceBody243_56

def sourceBody243_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_5 sourceBody243_57

def sourceBody243_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_0 sourceBody243_58

def sourceBody243_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody243_0 sourceBody243_59

def source243 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (243, 5, sourceBody243_60)
end InitECandidate.Proofs.WordStages
