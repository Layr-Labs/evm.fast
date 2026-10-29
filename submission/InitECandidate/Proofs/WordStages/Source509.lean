import InitECandidate.Proofs.WordStages.Source493
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody509_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody509_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody509_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28, 6, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody509_0, 509, 2)) (some 475) ([]) (some (16, sourceBody509_1, 509, 3))

def sourceBody509_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody509_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_2 sourceBody509_3

def sourceBody509_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_4 sourceBody509_0

def sourceBody509_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody509_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 32, 4, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody509_0, 509, 4)) (some 475) ([]) (some (14, sourceBody509_6, 509, 5))

def sourceBody509_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_7 sourceBody509_3

def sourceBody509_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_8 sourceBody509_0

def sourceBody509_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody509_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody509_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody509_0, 509, 6)) (some 470) ([30]) (some (30, sourceBody509_11, 509, 7))

def sourceBody509_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_12 sourceBody509_3

def sourceBody509_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_13 sourceBody509_0

def sourceBody509_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_10 sourceBody509_14

def sourceBody509_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_15

def sourceBody509_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_16

def sourceBody509_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 10)

def sourceBody509_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody509_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody509_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody509_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody509_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 32)

def sourceBody509_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody509_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 22)

def sourceBody509_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody509_0, 509, 8)) (some 107) ([30, 8, 26, 18, 34, 2, 20, 12]) (some (30, sourceBody509_11, 509, 9))

def sourceBody509_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_26 sourceBody509_3

def sourceBody509_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_27 sourceBody509_0

def sourceBody509_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_25 sourceBody509_28

def sourceBody509_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_24 sourceBody509_29

def sourceBody509_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_23 sourceBody509_30

def sourceBody509_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_22 sourceBody509_31

def sourceBody509_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_21 sourceBody509_32

def sourceBody509_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_20 sourceBody509_33

def sourceBody509_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_19 sourceBody509_34

def sourceBody509_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_18 sourceBody509_35

def sourceBody509_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody509_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody509_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody509_0, 509, 10)) (some 478) ([8]) (some (8, sourceBody509_38, 509, 11))

def sourceBody509_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_39 sourceBody509_3

def sourceBody509_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_40 sourceBody509_0

def sourceBody509_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_37 sourceBody509_41

def sourceBody509_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_42

def sourceBody509_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_43

def sourceBody509_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody509_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody509_0, 509, 12)) (some 490) ([8]) (some (8, sourceBody509_38, 509, 13))

def sourceBody509_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_46 sourceBody509_3

def sourceBody509_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_47 sourceBody509_0

def sourceBody509_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_45 sourceBody509_48

def sourceBody509_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_49

def sourceBody509_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_50

def sourceBody509_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_44 sourceBody509_51

def sourceBody509_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody509_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody509_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_54 sourceBody509_0

def sourceBody509_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_53 sourceBody509_55

def sourceBody509_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_52 sourceBody509_56

def sourceBody509_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_36 sourceBody509_57

def sourceBody509_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_58

def sourceBody509_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_59

def sourceBody509_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_17 sourceBody509_60

def sourceBody509_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_9 sourceBody509_61

def sourceBody509_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_62

def sourceBody509_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_63

def sourceBody509_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_64

def sourceBody509_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_65

def sourceBody509_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_66

def sourceBody509_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_67

def sourceBody509_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_68

def sourceBody509_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_69

def sourceBody509_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_5 sourceBody509_70

def sourceBody509_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_71

def sourceBody509_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_72

def sourceBody509_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_73

def sourceBody509_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_74

def sourceBody509_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_75

def sourceBody509_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_76

def sourceBody509_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_77

def sourceBody509_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody509_0 sourceBody509_78

def source509 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (509, 1, sourceBody509_79)
end InitECandidate.Proofs.WordStages
