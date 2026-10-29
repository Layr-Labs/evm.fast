import InitECandidate.Proofs.WordStages.Source497
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody513_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody513_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody513_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 16, 4, 14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody513_0, 513, 2)) (some 475) ([]) (some (10, sourceBody513_1, 513, 3))

def sourceBody513_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody513_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_2 sourceBody513_3

def sourceBody513_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_4 sourceBody513_0

def sourceBody513_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody513_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody513_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody513_0, 513, 4)) (some 470) ([18]) (some (18, sourceBody513_7, 513, 5))

def sourceBody513_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_8 sourceBody513_3

def sourceBody513_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_9 sourceBody513_0

def sourceBody513_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_6 sourceBody513_10

def sourceBody513_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_11

def sourceBody513_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_12

def sourceBody513_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody513_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody513_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody513_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody513_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody513_0, 513, 6)) (some 102) ([18, 2, 12, 8]) (some (18, sourceBody513_7, 513, 7))

def sourceBody513_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_18 sourceBody513_3

def sourceBody513_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_19 sourceBody513_0

def sourceBody513_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_17 sourceBody513_20

def sourceBody513_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_16 sourceBody513_21

def sourceBody513_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_15 sourceBody513_22

def sourceBody513_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_14 sourceBody513_23

def sourceBody513_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 10)

def sourceBody513_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody513_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody513_0, 513, 8)) (some 478) ([2]) (some (2, sourceBody513_26, 513, 9))

def sourceBody513_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_27 sourceBody513_3

def sourceBody513_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_28 sourceBody513_0

def sourceBody513_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_25 sourceBody513_29

def sourceBody513_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_30

def sourceBody513_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_31

def sourceBody513_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody513_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody513_0, 513, 10)) (some 490) ([2]) (some (2, sourceBody513_26, 513, 11))

def sourceBody513_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_34 sourceBody513_3

def sourceBody513_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_35 sourceBody513_0

def sourceBody513_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_33 sourceBody513_36

def sourceBody513_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_37

def sourceBody513_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_38

def sourceBody513_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_32 sourceBody513_39

def sourceBody513_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody513_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody513_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_42 sourceBody513_0

def sourceBody513_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_41 sourceBody513_43

def sourceBody513_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_40 sourceBody513_44

def sourceBody513_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_24 sourceBody513_45

def sourceBody513_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_46

def sourceBody513_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_47

def sourceBody513_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_13 sourceBody513_48

def sourceBody513_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_5 sourceBody513_49

def sourceBody513_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_50

def sourceBody513_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_51

def sourceBody513_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_52

def sourceBody513_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_53

def sourceBody513_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_54

def sourceBody513_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_55

def sourceBody513_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_56

def sourceBody513_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody513_0 sourceBody513_57

def source513 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (513, 1, sourceBody513_58)
end InitECandidate.Proofs.WordStages
