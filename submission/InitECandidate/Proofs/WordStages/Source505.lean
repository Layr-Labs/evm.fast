import InitECandidate.Proofs.WordStages.Source489
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody505_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody505_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody505_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 44, 8, 36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody505_0, 505, 2)) (some 475) ([]) (some (24, sourceBody505_1, 505, 3))

def sourceBody505_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody505_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_2 sourceBody505_3

def sourceBody505_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_4 sourceBody505_0

def sourceBody505_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody505_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([24, 52, 4, 32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody505_0, 505, 4)) (some 475) ([]) (some (20, sourceBody505_6, 505, 5))

def sourceBody505_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_7 sourceBody505_3

def sourceBody505_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_8 sourceBody505_0

def sourceBody505_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody505_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 48, 12, 40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody505_0, 505, 6)) (some 475) ([]) (some (28, sourceBody505_10, 505, 7))

def sourceBody505_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_11 sourceBody505_3

def sourceBody505_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_12 sourceBody505_0

def sourceBody505_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody505_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def sourceBody505_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody505_0, 505, 8)) (some 470) ([56]) (some (56, sourceBody505_15, 505, 9))

def sourceBody505_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_16 sourceBody505_3

def sourceBody505_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_17 sourceBody505_0

def sourceBody505_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_14 sourceBody505_18

def sourceBody505_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_19

def sourceBody505_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_20

def sourceBody505_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody505_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 44)

def sourceBody505_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody505_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 36)

def sourceBody505_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 24)

def sourceBody505_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 52)

def sourceBody505_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody505_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 32)

def sourceBody505_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 20)

def sourceBody505_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 48)

def sourceBody505_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody505_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 40)

def sourceBody505_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody505_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([28, 56, 2, 30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody505_0, 505, 10)) (some 136) ([18, 46, 10, 38, 26, 54, 6, 34, 22, 50, 14, 42]) (some (18, sourceBody505_34, 505, 11))

def sourceBody505_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_35 sourceBody505_3

def sourceBody505_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_36 sourceBody505_0

def sourceBody505_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_33 sourceBody505_37

def sourceBody505_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_32 sourceBody505_38

def sourceBody505_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_31 sourceBody505_39

def sourceBody505_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_30 sourceBody505_40

def sourceBody505_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_29 sourceBody505_41

def sourceBody505_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_28 sourceBody505_42

def sourceBody505_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_27 sourceBody505_43

def sourceBody505_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_26 sourceBody505_44

def sourceBody505_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_25 sourceBody505_45

def sourceBody505_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_24 sourceBody505_46

def sourceBody505_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_23 sourceBody505_47

def sourceBody505_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_22 sourceBody505_48

def sourceBody505_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 28)

def sourceBody505_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 56)

def sourceBody505_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 2)

def sourceBody505_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody505_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody505_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody505_0, 505, 12)) (some 476) ([46, 10, 38, 26]) (some (46, sourceBody505_54, 505, 13))

def sourceBody505_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_55 sourceBody505_3

def sourceBody505_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_56 sourceBody505_0

def sourceBody505_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_53 sourceBody505_57

def sourceBody505_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_52 sourceBody505_58

def sourceBody505_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_51 sourceBody505_59

def sourceBody505_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_50 sourceBody505_60

def sourceBody505_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_61

def sourceBody505_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_62

def sourceBody505_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody505_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody505_0, 505, 14)) (some 490) ([46]) (some (46, sourceBody505_54, 505, 15))

def sourceBody505_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_65 sourceBody505_3

def sourceBody505_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_66 sourceBody505_0

def sourceBody505_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_64 sourceBody505_67

def sourceBody505_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_68

def sourceBody505_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_69

def sourceBody505_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_63 sourceBody505_70

def sourceBody505_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody505_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody505_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_73 sourceBody505_0

def sourceBody505_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_72 sourceBody505_74

def sourceBody505_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_71 sourceBody505_75

def sourceBody505_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_49 sourceBody505_76

def sourceBody505_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_77

def sourceBody505_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_78

def sourceBody505_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_79

def sourceBody505_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_80

def sourceBody505_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_81

def sourceBody505_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_82

def sourceBody505_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_83

def sourceBody505_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_84

def sourceBody505_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_21 sourceBody505_85

def sourceBody505_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_13 sourceBody505_86

def sourceBody505_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_87

def sourceBody505_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_88

def sourceBody505_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_89

def sourceBody505_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_90

def sourceBody505_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_91

def sourceBody505_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_92

def sourceBody505_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_93

def sourceBody505_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_94

def sourceBody505_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_9 sourceBody505_95

def sourceBody505_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_96

def sourceBody505_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_97

def sourceBody505_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_98

def sourceBody505_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_99

def sourceBody505_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_100

def sourceBody505_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_101

def sourceBody505_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_102

def sourceBody505_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_103

def sourceBody505_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_5 sourceBody505_104

def sourceBody505_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_105

def sourceBody505_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_106

def sourceBody505_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_107

def sourceBody505_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_108

def sourceBody505_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_109

def sourceBody505_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_110

def sourceBody505_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_111

def sourceBody505_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody505_0 sourceBody505_112

def source505 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (505, 1, sourceBody505_113)
end InitECandidate.Proofs.WordStages
