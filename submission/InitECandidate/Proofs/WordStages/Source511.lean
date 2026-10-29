import InitECandidate.Proofs.WordStages.Source495
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody511_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody511_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody511_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28, 6, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody511_0, 511, 2)) (some 475) ([]) (some (16, sourceBody511_1, 511, 3))

def sourceBody511_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody511_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_2 sourceBody511_3

def sourceBody511_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_4 sourceBody511_0

def sourceBody511_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody511_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 32, 4, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody511_0, 511, 4)) (some 475) ([]) (some (14, sourceBody511_6, 511, 5))

def sourceBody511_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_7 sourceBody511_3

def sourceBody511_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_8 sourceBody511_0

def sourceBody511_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody511_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody511_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody511_0, 511, 6)) (some 470) ([30]) (some (30, sourceBody511_11, 511, 7))

def sourceBody511_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_12 sourceBody511_3

def sourceBody511_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_13 sourceBody511_0

def sourceBody511_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_10 sourceBody511_14

def sourceBody511_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_15

def sourceBody511_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_16

def sourceBody511_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 10)

def sourceBody511_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody511_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody511_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody511_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody511_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 32)

def sourceBody511_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody511_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 22)

def sourceBody511_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody511_0, 511, 8)) (some 109) ([30, 8, 26, 18, 34, 2, 20, 12]) (some (30, sourceBody511_11, 511, 9))

def sourceBody511_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_26 sourceBody511_3

def sourceBody511_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_27 sourceBody511_0

def sourceBody511_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_25 sourceBody511_28

def sourceBody511_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_24 sourceBody511_29

def sourceBody511_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_23 sourceBody511_30

def sourceBody511_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_22 sourceBody511_31

def sourceBody511_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_21 sourceBody511_32

def sourceBody511_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_20 sourceBody511_33

def sourceBody511_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_19 sourceBody511_34

def sourceBody511_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_18 sourceBody511_35

def sourceBody511_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody511_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody511_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody511_0, 511, 10)) (some 478) ([8]) (some (8, sourceBody511_38, 511, 11))

def sourceBody511_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_39 sourceBody511_3

def sourceBody511_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_40 sourceBody511_0

def sourceBody511_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_37 sourceBody511_41

def sourceBody511_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_42

def sourceBody511_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_43

def sourceBody511_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody511_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody511_0, 511, 12)) (some 490) ([8]) (some (8, sourceBody511_38, 511, 13))

def sourceBody511_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_46 sourceBody511_3

def sourceBody511_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_47 sourceBody511_0

def sourceBody511_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_45 sourceBody511_48

def sourceBody511_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_49

def sourceBody511_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_50

def sourceBody511_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_44 sourceBody511_51

def sourceBody511_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody511_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody511_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_54 sourceBody511_0

def sourceBody511_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_53 sourceBody511_55

def sourceBody511_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_52 sourceBody511_56

def sourceBody511_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_36 sourceBody511_57

def sourceBody511_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_58

def sourceBody511_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_59

def sourceBody511_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_17 sourceBody511_60

def sourceBody511_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_9 sourceBody511_61

def sourceBody511_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_62

def sourceBody511_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_63

def sourceBody511_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_64

def sourceBody511_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_65

def sourceBody511_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_66

def sourceBody511_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_67

def sourceBody511_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_68

def sourceBody511_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_69

def sourceBody511_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_5 sourceBody511_70

def sourceBody511_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_71

def sourceBody511_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_72

def sourceBody511_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_73

def sourceBody511_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_74

def sourceBody511_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_75

def sourceBody511_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_76

def sourceBody511_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_77

def sourceBody511_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody511_0 sourceBody511_78

def source511 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (511, 1, sourceBody511_79)
end InitECandidate.Proofs.WordStages
