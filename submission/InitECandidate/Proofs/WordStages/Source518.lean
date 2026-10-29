import InitECandidate.Proofs.WordStages.Source502
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody518_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody518_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody518_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 24, 6, 20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody518_0, 518, 2)) (some 475) ([]) (some (14, sourceBody518_1, 518, 3))

def sourceBody518_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody518_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_2 sourceBody518_3

def sourceBody518_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_4 sourceBody518_0

def sourceBody518_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody518_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 28, 4, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody518_0, 518, 4)) (some 475) ([]) (some (12, sourceBody518_6, 518, 5))

def sourceBody518_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_7 sourceBody518_3

def sourceBody518_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_8 sourceBody518_0

def sourceBody518_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody518_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody518_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody518_0, 518, 6)) (some 470) ([26]) (some (26, sourceBody518_11, 518, 7))

def sourceBody518_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_12 sourceBody518_3

def sourceBody518_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_13 sourceBody518_0

def sourceBody518_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_10 sourceBody518_14

def sourceBody518_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_15

def sourceBody518_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_16

def sourceBody518_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody518_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 24)

def sourceBody518_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody518_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody518_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody518_0, 518, 8)) (some 462) ([26, 8, 22, 16]) (some (26, sourceBody518_11, 518, 9))

def sourceBody518_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_22 sourceBody518_3

def sourceBody518_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_23 sourceBody518_0

def sourceBody518_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_21 sourceBody518_24

def sourceBody518_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_20 sourceBody518_25

def sourceBody518_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_19 sourceBody518_26

def sourceBody518_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_18 sourceBody518_27

def sourceBody518_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody518_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody518_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 28)

def sourceBody518_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 4)

def sourceBody518_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 18)

def sourceBody518_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody518_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody518_0, 518, 10)) (some 145) ([8, 22, 16, 30, 2]) (some (8, sourceBody518_34, 518, 11))

def sourceBody518_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_35 sourceBody518_3

def sourceBody518_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_36 sourceBody518_0

def sourceBody518_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_33 sourceBody518_37

def sourceBody518_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_32 sourceBody518_38

def sourceBody518_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_31 sourceBody518_39

def sourceBody518_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_30 sourceBody518_40

def sourceBody518_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_29 sourceBody518_41

def sourceBody518_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody518_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody518_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody518_0, 518, 12)) (some 477) ([22]) (some (22, sourceBody518_44, 518, 13))

def sourceBody518_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_45 sourceBody518_3

def sourceBody518_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_46 sourceBody518_0

def sourceBody518_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_43 sourceBody518_47

def sourceBody518_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_48

def sourceBody518_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_49

def sourceBody518_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody518_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody518_0, 518, 14)) (some 490) ([22]) (some (22, sourceBody518_44, 518, 15))

def sourceBody518_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_52 sourceBody518_3

def sourceBody518_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_53 sourceBody518_0

def sourceBody518_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_51 sourceBody518_54

def sourceBody518_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_55

def sourceBody518_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_56

def sourceBody518_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_50 sourceBody518_57

def sourceBody518_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody518_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody518_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_60 sourceBody518_0

def sourceBody518_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_59 sourceBody518_61

def sourceBody518_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_58 sourceBody518_62

def sourceBody518_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_42 sourceBody518_63

def sourceBody518_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_64

def sourceBody518_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_65

def sourceBody518_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_28 sourceBody518_66

def sourceBody518_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_67

def sourceBody518_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_68

def sourceBody518_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_17 sourceBody518_69

def sourceBody518_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_9 sourceBody518_70

def sourceBody518_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_71

def sourceBody518_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_72

def sourceBody518_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_73

def sourceBody518_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_74

def sourceBody518_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_75

def sourceBody518_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_76

def sourceBody518_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_77

def sourceBody518_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_78

def sourceBody518_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_5 sourceBody518_79

def sourceBody518_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_80

def sourceBody518_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_81

def sourceBody518_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_82

def sourceBody518_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_83

def sourceBody518_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_84

def sourceBody518_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_85

def sourceBody518_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_86

def sourceBody518_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody518_0 sourceBody518_87

def source518 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (518, 1, sourceBody518_88)
end InitECandidate.Proofs.WordStages
