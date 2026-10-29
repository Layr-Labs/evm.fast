import InitECandidate.Proofs.WordStages.Source488
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody504_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody504_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody504_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 44, 8, 36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody504_0, 504, 2)) (some 475) ([]) (some (24, sourceBody504_1, 504, 3))

def sourceBody504_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody504_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_2 sourceBody504_3

def sourceBody504_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_4 sourceBody504_0

def sourceBody504_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody504_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([24, 52, 4, 32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody504_0, 504, 4)) (some 475) ([]) (some (20, sourceBody504_6, 504, 5))

def sourceBody504_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_7 sourceBody504_3

def sourceBody504_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_8 sourceBody504_0

def sourceBody504_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody504_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 48, 12, 40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody504_0, 504, 6)) (some 475) ([]) (some (28, sourceBody504_10, 504, 7))

def sourceBody504_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_11 sourceBody504_3

def sourceBody504_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_12 sourceBody504_0

def sourceBody504_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody504_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def sourceBody504_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody504_0, 504, 8)) (some 470) ([56]) (some (56, sourceBody504_15, 504, 9))

def sourceBody504_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_16 sourceBody504_3

def sourceBody504_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_17 sourceBody504_0

def sourceBody504_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_14 sourceBody504_18

def sourceBody504_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_19

def sourceBody504_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_20

def sourceBody504_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody504_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 44)

def sourceBody504_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody504_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 36)

def sourceBody504_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 24)

def sourceBody504_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 52)

def sourceBody504_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody504_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 32)

def sourceBody504_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 20)

def sourceBody504_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 48)

def sourceBody504_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody504_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 40)

def sourceBody504_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody504_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([28, 56, 2, 30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody504_0, 504, 10)) (some 135) ([18, 46, 10, 38, 26, 54, 6, 34, 22, 50, 14, 42]) (some (18, sourceBody504_34, 504, 11))

def sourceBody504_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_35 sourceBody504_3

def sourceBody504_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_36 sourceBody504_0

def sourceBody504_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_33 sourceBody504_37

def sourceBody504_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_32 sourceBody504_38

def sourceBody504_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_31 sourceBody504_39

def sourceBody504_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_30 sourceBody504_40

def sourceBody504_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_29 sourceBody504_41

def sourceBody504_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_28 sourceBody504_42

def sourceBody504_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_27 sourceBody504_43

def sourceBody504_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_26 sourceBody504_44

def sourceBody504_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_25 sourceBody504_45

def sourceBody504_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_24 sourceBody504_46

def sourceBody504_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_23 sourceBody504_47

def sourceBody504_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_22 sourceBody504_48

def sourceBody504_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 28)

def sourceBody504_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 56)

def sourceBody504_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 2)

def sourceBody504_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody504_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody504_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody504_0, 504, 12)) (some 476) ([46, 10, 38, 26]) (some (46, sourceBody504_54, 504, 13))

def sourceBody504_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_55 sourceBody504_3

def sourceBody504_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_56 sourceBody504_0

def sourceBody504_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_53 sourceBody504_57

def sourceBody504_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_52 sourceBody504_58

def sourceBody504_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_51 sourceBody504_59

def sourceBody504_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_50 sourceBody504_60

def sourceBody504_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_61

def sourceBody504_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_62

def sourceBody504_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody504_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody504_0, 504, 14)) (some 490) ([46]) (some (46, sourceBody504_54, 504, 15))

def sourceBody504_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_65 sourceBody504_3

def sourceBody504_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_66 sourceBody504_0

def sourceBody504_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_64 sourceBody504_67

def sourceBody504_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_68

def sourceBody504_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_69

def sourceBody504_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_63 sourceBody504_70

def sourceBody504_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody504_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody504_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_73 sourceBody504_0

def sourceBody504_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_72 sourceBody504_74

def sourceBody504_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_71 sourceBody504_75

def sourceBody504_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_49 sourceBody504_76

def sourceBody504_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_77

def sourceBody504_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_78

def sourceBody504_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_79

def sourceBody504_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_80

def sourceBody504_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_81

def sourceBody504_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_82

def sourceBody504_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_83

def sourceBody504_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_84

def sourceBody504_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_21 sourceBody504_85

def sourceBody504_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_13 sourceBody504_86

def sourceBody504_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_87

def sourceBody504_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_88

def sourceBody504_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_89

def sourceBody504_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_90

def sourceBody504_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_91

def sourceBody504_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_92

def sourceBody504_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_93

def sourceBody504_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_94

def sourceBody504_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_9 sourceBody504_95

def sourceBody504_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_96

def sourceBody504_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_97

def sourceBody504_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_98

def sourceBody504_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_99

def sourceBody504_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_100

def sourceBody504_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_101

def sourceBody504_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_102

def sourceBody504_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_103

def sourceBody504_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_5 sourceBody504_104

def sourceBody504_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_105

def sourceBody504_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_106

def sourceBody504_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_107

def sourceBody504_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_108

def sourceBody504_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_109

def sourceBody504_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_110

def sourceBody504_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_111

def sourceBody504_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody504_0 sourceBody504_112

def source504 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (504, 1, sourceBody504_113)
end InitECandidate.Proofs.WordStages
