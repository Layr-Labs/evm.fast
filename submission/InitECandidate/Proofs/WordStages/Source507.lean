import InitECandidate.Proofs.WordStages.Source491
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody507_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody507_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody507_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28, 6, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody507_0, 507, 2)) (some 475) ([]) (some (16, sourceBody507_1, 507, 3))

def sourceBody507_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody507_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_2 sourceBody507_3

def sourceBody507_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_4 sourceBody507_0

def sourceBody507_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody507_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 34, 4, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody507_0, 507, 4)) (some 475) ([]) (some (14, sourceBody507_6, 507, 5))

def sourceBody507_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_7 sourceBody507_3

def sourceBody507_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_8 sourceBody507_0

def sourceBody507_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody507_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody507_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody507_0, 507, 6)) (some 470) ([32]) (some (32, sourceBody507_11, 507, 7))

def sourceBody507_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_12 sourceBody507_3

def sourceBody507_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_13 sourceBody507_0

def sourceBody507_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_10 sourceBody507_14

def sourceBody507_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_15

def sourceBody507_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_16

def sourceBody507_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody507_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody507_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody507_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody507_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody507_0, 507, 8)) (some 462) ([32, 8, 26, 18]) (some (32, sourceBody507_11, 507, 9))

def sourceBody507_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_22 sourceBody507_3

def sourceBody507_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_23 sourceBody507_0

def sourceBody507_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_21 sourceBody507_24

def sourceBody507_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_20 sourceBody507_25

def sourceBody507_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_19 sourceBody507_26

def sourceBody507_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_18 sourceBody507_27

def sourceBody507_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 14)

def sourceBody507_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody507_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 34)

def sourceBody507_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody507_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody507_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody507_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 8, 26, 18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody507_0, 507, 10)) (some 144) ([36, 2, 20, 12, 30]) (some (36, sourceBody507_34, 507, 11))

def sourceBody507_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_35 sourceBody507_3

def sourceBody507_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_36 sourceBody507_0

def sourceBody507_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_33 sourceBody507_37

def sourceBody507_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_32 sourceBody507_38

def sourceBody507_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_31 sourceBody507_39

def sourceBody507_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_30 sourceBody507_40

def sourceBody507_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_29 sourceBody507_41

def sourceBody507_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 32)

def sourceBody507_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody507_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody507_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 18)

def sourceBody507_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody507_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody507_0, 507, 12)) (some 476) ([2, 20, 12, 30]) (some (2, sourceBody507_47, 507, 13))

def sourceBody507_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_48 sourceBody507_3

def sourceBody507_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_49 sourceBody507_0

def sourceBody507_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_46 sourceBody507_50

def sourceBody507_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_45 sourceBody507_51

def sourceBody507_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_44 sourceBody507_52

def sourceBody507_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_43 sourceBody507_53

def sourceBody507_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_54

def sourceBody507_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_55

def sourceBody507_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody507_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody507_0, 507, 14)) (some 490) ([2]) (some (2, sourceBody507_47, 507, 15))

def sourceBody507_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_58 sourceBody507_3

def sourceBody507_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_59 sourceBody507_0

def sourceBody507_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_57 sourceBody507_60

def sourceBody507_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_61

def sourceBody507_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_62

def sourceBody507_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_56 sourceBody507_63

def sourceBody507_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody507_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36]

def sourceBody507_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_66 sourceBody507_0

def sourceBody507_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_65 sourceBody507_67

def sourceBody507_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_64 sourceBody507_68

def sourceBody507_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_42 sourceBody507_69

def sourceBody507_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_70

def sourceBody507_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_71

def sourceBody507_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_72

def sourceBody507_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_73

def sourceBody507_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_74

def sourceBody507_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_75

def sourceBody507_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_76

def sourceBody507_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_77

def sourceBody507_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_28 sourceBody507_78

def sourceBody507_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_79

def sourceBody507_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_80

def sourceBody507_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_17 sourceBody507_81

def sourceBody507_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_9 sourceBody507_82

def sourceBody507_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_83

def sourceBody507_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_84

def sourceBody507_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_85

def sourceBody507_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_86

def sourceBody507_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_87

def sourceBody507_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_88

def sourceBody507_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_89

def sourceBody507_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_90

def sourceBody507_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_5 sourceBody507_91

def sourceBody507_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_92

def sourceBody507_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_93

def sourceBody507_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_94

def sourceBody507_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_95

def sourceBody507_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_96

def sourceBody507_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_97

def sourceBody507_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_98

def sourceBody507_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody507_0 sourceBody507_99

def source507 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (507, 1, sourceBody507_100)
end InitECandidate.Proofs.WordStages
