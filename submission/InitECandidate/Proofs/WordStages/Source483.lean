import InitECandidate.Proofs.WordStages.Source467
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody483_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody483_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody483_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 6)

def sourceBody483_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody483_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 10)

def sourceBody483_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody483_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 14)

def sourceBody483_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody483_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def sourceBody483_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody483_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 36]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody483_0, 483, 2)) (some 480) ([22, 32, 28, 38, 20, 30, 24, 34]) (some (22, sourceBody483_9, 483, 3))

def sourceBody483_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody483_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_10 sourceBody483_11

def sourceBody483_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_12 sourceBody483_0

def sourceBody483_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_8 sourceBody483_13

def sourceBody483_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_7 sourceBody483_14

def sourceBody483_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_6 sourceBody483_15

def sourceBody483_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_5 sourceBody483_16

def sourceBody483_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_4 sourceBody483_17

def sourceBody483_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_3 sourceBody483_18

def sourceBody483_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_2 sourceBody483_19

def sourceBody483_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_1 sourceBody483_20

def sourceBody483_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 2)

def sourceBody483_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 26)

def sourceBody483_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody483_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody483_0, 483, 4)) (some 463) ([32, 28]) (some (32, sourceBody483_24, 483, 5))

def sourceBody483_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_25 sourceBody483_11

def sourceBody483_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_26 sourceBody483_0

def sourceBody483_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_23 sourceBody483_27

def sourceBody483_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_22 sourceBody483_28

def sourceBody483_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody483_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody483_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody483_0, 483, 6)) (some 470) ([28]) (some (28, sourceBody483_31, 483, 7))

def sourceBody483_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_32 sourceBody483_11

def sourceBody483_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_33 sourceBody483_0

def sourceBody483_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_30 sourceBody483_34

def sourceBody483_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_0 sourceBody483_35

def sourceBody483_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_0 sourceBody483_36

def sourceBody483_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 36)

def sourceBody483_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody483_0, 483, 8)) (some 482) ([28]) (some (28, sourceBody483_31, 483, 9))

def sourceBody483_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_39 sourceBody483_11

def sourceBody483_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_40 sourceBody483_0

def sourceBody483_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_38 sourceBody483_41

def sourceBody483_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_0 sourceBody483_42

def sourceBody483_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_0 sourceBody483_43

def sourceBody483_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_37 sourceBody483_44

def sourceBody483_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody483_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [32]

def sourceBody483_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_47 sourceBody483_0

def sourceBody483_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_46 sourceBody483_48

def sourceBody483_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_45 sourceBody483_49

def sourceBody483_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_29 sourceBody483_50

def sourceBody483_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_0 sourceBody483_51

def sourceBody483_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_0 sourceBody483_52

def sourceBody483_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_21 sourceBody483_53

def sourceBody483_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_0 sourceBody483_54

def sourceBody483_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_0 sourceBody483_55

def sourceBody483_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_0 sourceBody483_56

def sourceBody483_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody483_0 sourceBody483_57

def source483 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (483, 10, sourceBody483_58)
end InitECandidate.Proofs.WordStages
