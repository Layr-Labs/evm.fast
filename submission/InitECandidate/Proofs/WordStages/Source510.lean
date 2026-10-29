import InitECandidate.Proofs.WordStages.Source494
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody510_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody510_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody510_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28, 6, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody510_0, 510, 2)) (some 475) ([]) (some (16, sourceBody510_1, 510, 3))

def sourceBody510_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody510_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_2 sourceBody510_3

def sourceBody510_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_4 sourceBody510_0

def sourceBody510_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody510_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 32, 4, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody510_0, 510, 4)) (some 475) ([]) (some (14, sourceBody510_6, 510, 5))

def sourceBody510_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_7 sourceBody510_3

def sourceBody510_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_8 sourceBody510_0

def sourceBody510_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody510_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody510_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody510_0, 510, 6)) (some 470) ([30]) (some (30, sourceBody510_11, 510, 7))

def sourceBody510_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_12 sourceBody510_3

def sourceBody510_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_13 sourceBody510_0

def sourceBody510_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_10 sourceBody510_14

def sourceBody510_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_15

def sourceBody510_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_16

def sourceBody510_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 10)

def sourceBody510_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody510_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody510_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody510_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody510_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 32)

def sourceBody510_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody510_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 22)

def sourceBody510_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody510_0, 510, 8)) (some 108) ([30, 8, 26, 18, 34, 2, 20, 12]) (some (30, sourceBody510_11, 510, 9))

def sourceBody510_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_26 sourceBody510_3

def sourceBody510_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_27 sourceBody510_0

def sourceBody510_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_25 sourceBody510_28

def sourceBody510_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_24 sourceBody510_29

def sourceBody510_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_23 sourceBody510_30

def sourceBody510_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_22 sourceBody510_31

def sourceBody510_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_21 sourceBody510_32

def sourceBody510_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_20 sourceBody510_33

def sourceBody510_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_19 sourceBody510_34

def sourceBody510_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_18 sourceBody510_35

def sourceBody510_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody510_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody510_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody510_0, 510, 10)) (some 478) ([8]) (some (8, sourceBody510_38, 510, 11))

def sourceBody510_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_39 sourceBody510_3

def sourceBody510_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_40 sourceBody510_0

def sourceBody510_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_37 sourceBody510_41

def sourceBody510_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_42

def sourceBody510_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_43

def sourceBody510_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody510_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody510_0, 510, 12)) (some 490) ([8]) (some (8, sourceBody510_38, 510, 13))

def sourceBody510_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_46 sourceBody510_3

def sourceBody510_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_47 sourceBody510_0

def sourceBody510_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_45 sourceBody510_48

def sourceBody510_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_49

def sourceBody510_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_50

def sourceBody510_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_44 sourceBody510_51

def sourceBody510_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody510_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody510_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_54 sourceBody510_0

def sourceBody510_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_53 sourceBody510_55

def sourceBody510_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_52 sourceBody510_56

def sourceBody510_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_36 sourceBody510_57

def sourceBody510_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_58

def sourceBody510_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_59

def sourceBody510_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_17 sourceBody510_60

def sourceBody510_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_9 sourceBody510_61

def sourceBody510_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_62

def sourceBody510_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_63

def sourceBody510_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_64

def sourceBody510_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_65

def sourceBody510_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_66

def sourceBody510_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_67

def sourceBody510_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_68

def sourceBody510_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_69

def sourceBody510_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_5 sourceBody510_70

def sourceBody510_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_71

def sourceBody510_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_72

def sourceBody510_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_73

def sourceBody510_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_74

def sourceBody510_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_75

def sourceBody510_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_76

def sourceBody510_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_77

def sourceBody510_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody510_0 sourceBody510_78

def source510 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (510, 1, sourceBody510_79)
end InitECandidate.Proofs.WordStages
