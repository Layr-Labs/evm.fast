import InitECandidate.Proofs.WordStages.Source492
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody508_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody508_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody508_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28, 6, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody508_0, 508, 2)) (some 475) ([]) (some (16, sourceBody508_1, 508, 3))

def sourceBody508_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody508_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_2 sourceBody508_3

def sourceBody508_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_4 sourceBody508_0

def sourceBody508_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody508_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 32, 4, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody508_0, 508, 4)) (some 475) ([]) (some (14, sourceBody508_6, 508, 5))

def sourceBody508_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_7 sourceBody508_3

def sourceBody508_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_8 sourceBody508_0

def sourceBody508_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody508_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody508_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody508_0, 508, 6)) (some 470) ([30]) (some (30, sourceBody508_11, 508, 7))

def sourceBody508_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_12 sourceBody508_3

def sourceBody508_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_13 sourceBody508_0

def sourceBody508_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_10 sourceBody508_14

def sourceBody508_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_15

def sourceBody508_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_16

def sourceBody508_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 10)

def sourceBody508_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody508_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody508_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody508_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody508_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 32)

def sourceBody508_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody508_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 22)

def sourceBody508_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody508_0, 508, 8)) (some 106) ([30, 8, 26, 18, 34, 2, 20, 12]) (some (30, sourceBody508_11, 508, 9))

def sourceBody508_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_26 sourceBody508_3

def sourceBody508_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_27 sourceBody508_0

def sourceBody508_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_25 sourceBody508_28

def sourceBody508_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_24 sourceBody508_29

def sourceBody508_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_23 sourceBody508_30

def sourceBody508_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_22 sourceBody508_31

def sourceBody508_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_21 sourceBody508_32

def sourceBody508_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_20 sourceBody508_33

def sourceBody508_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_19 sourceBody508_34

def sourceBody508_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_18 sourceBody508_35

def sourceBody508_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody508_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody508_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody508_0, 508, 10)) (some 478) ([8]) (some (8, sourceBody508_38, 508, 11))

def sourceBody508_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_39 sourceBody508_3

def sourceBody508_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_40 sourceBody508_0

def sourceBody508_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_37 sourceBody508_41

def sourceBody508_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_42

def sourceBody508_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_43

def sourceBody508_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody508_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody508_0, 508, 12)) (some 490) ([8]) (some (8, sourceBody508_38, 508, 13))

def sourceBody508_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_46 sourceBody508_3

def sourceBody508_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_47 sourceBody508_0

def sourceBody508_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_45 sourceBody508_48

def sourceBody508_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_49

def sourceBody508_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_50

def sourceBody508_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_44 sourceBody508_51

def sourceBody508_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody508_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody508_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_54 sourceBody508_0

def sourceBody508_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_53 sourceBody508_55

def sourceBody508_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_52 sourceBody508_56

def sourceBody508_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_36 sourceBody508_57

def sourceBody508_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_58

def sourceBody508_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_59

def sourceBody508_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_17 sourceBody508_60

def sourceBody508_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_9 sourceBody508_61

def sourceBody508_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_62

def sourceBody508_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_63

def sourceBody508_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_64

def sourceBody508_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_65

def sourceBody508_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_66

def sourceBody508_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_67

def sourceBody508_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_68

def sourceBody508_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_69

def sourceBody508_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_5 sourceBody508_70

def sourceBody508_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_71

def sourceBody508_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_72

def sourceBody508_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_73

def sourceBody508_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_74

def sourceBody508_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_75

def sourceBody508_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_76

def sourceBody508_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_77

def sourceBody508_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody508_0 sourceBody508_78

def source508 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (508, 1, sourceBody508_79)
end InitECandidate.Proofs.WordStages
