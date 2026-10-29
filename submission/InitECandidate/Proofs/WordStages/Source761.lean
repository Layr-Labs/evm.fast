import InitECandidate.Proofs.WordStages.Source745
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody761_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody761_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody761_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody761_0, 761, 2)) (some 69) ([]) (some (8, sourceBody761_1, 761, 3))

def sourceBody761_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody761_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_2 sourceBody761_3

def sourceBody761_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_4 sourceBody761_0

def sourceBody761_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 864#64)

def sourceBody761_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody761_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody761_0, 761, 4)) (some 68) ([16]) (some (16, sourceBody761_7, 761, 5))

def sourceBody761_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_8 sourceBody761_3

def sourceBody761_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_9 sourceBody761_0

def sourceBody761_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_6 sourceBody761_10

def sourceBody761_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody761_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody761_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 576#64])

def sourceBody761_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody761_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody761_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody761_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody761_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody761_0, 761, 6)) (some 752) ([14, 10, 20]) (some (14, sourceBody761_18, 761, 7))

def sourceBody761_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_19 sourceBody761_3

def sourceBody761_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_20 sourceBody761_0

def sourceBody761_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_17 sourceBody761_21

def sourceBody761_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_16 sourceBody761_22

def sourceBody761_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_15 sourceBody761_23

def sourceBody761_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_24

def sourceBody761_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_25

def sourceBody761_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody761_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody761_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody761_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody761_0, 761, 8)) (some 752) ([14, 10, 20]) (some (14, sourceBody761_18, 761, 9))

def sourceBody761_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_30 sourceBody761_3

def sourceBody761_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_31 sourceBody761_0

def sourceBody761_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_29 sourceBody761_32

def sourceBody761_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_28 sourceBody761_33

def sourceBody761_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_27 sourceBody761_34

def sourceBody761_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_35

def sourceBody761_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_36

def sourceBody761_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_26 sourceBody761_37

def sourceBody761_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody761_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody761_0, 761, 10)) (some 753) ([14, 10]) (some (14, sourceBody761_18, 761, 11))

def sourceBody761_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_40 sourceBody761_3

def sourceBody761_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_41 sourceBody761_0

def sourceBody761_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_39 sourceBody761_42

def sourceBody761_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_27 sourceBody761_43

def sourceBody761_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_44

def sourceBody761_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_45

def sourceBody761_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_38 sourceBody761_46

def sourceBody761_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 22)

def sourceBody761_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody761_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody761_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody761_0, 761, 12)) (some 750) ([14, 10, 20]) (some (14, sourceBody761_18, 761, 13))

def sourceBody761_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_51 sourceBody761_3

def sourceBody761_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_52 sourceBody761_0

def sourceBody761_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_50 sourceBody761_53

def sourceBody761_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_49 sourceBody761_54

def sourceBody761_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_48 sourceBody761_55

def sourceBody761_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_56

def sourceBody761_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_57

def sourceBody761_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_47 sourceBody761_58

def sourceBody761_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 22)

def sourceBody761_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody761_0, 761, 14)) (some 754) ([14, 10]) (some (14, sourceBody761_18, 761, 15))

def sourceBody761_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_61 sourceBody761_3

def sourceBody761_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_62 sourceBody761_0

def sourceBody761_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_60 sourceBody761_63

def sourceBody761_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_48 sourceBody761_64

def sourceBody761_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_65

def sourceBody761_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_66

def sourceBody761_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_59 sourceBody761_67

def sourceBody761_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody761_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody761_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody761_0, 761, 16)) (some 752) ([14, 10, 20]) (some (14, sourceBody761_18, 761, 17))

def sourceBody761_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_71 sourceBody761_3

def sourceBody761_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_72 sourceBody761_0

def sourceBody761_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_70 sourceBody761_73

def sourceBody761_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_16 sourceBody761_74

def sourceBody761_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_69 sourceBody761_75

def sourceBody761_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_76

def sourceBody761_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_77

def sourceBody761_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_68 sourceBody761_78

def sourceBody761_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody761_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody761_0, 761, 18)) (some 752) ([14, 10, 20]) (some (14, sourceBody761_18, 761, 19))

def sourceBody761_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_81 sourceBody761_3

def sourceBody761_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_82 sourceBody761_0

def sourceBody761_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_70 sourceBody761_83

def sourceBody761_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_28 sourceBody761_84

def sourceBody761_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_80 sourceBody761_85

def sourceBody761_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_86

def sourceBody761_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_87

def sourceBody761_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_79 sourceBody761_88

def sourceBody761_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody761_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody761_0, 761, 20)) (some 751) ([14, 10]) (some (14, sourceBody761_18, 761, 21))

def sourceBody761_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_91 sourceBody761_3

def sourceBody761_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_92 sourceBody761_0

def sourceBody761_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_90 sourceBody761_93

def sourceBody761_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_80 sourceBody761_94

def sourceBody761_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_95

def sourceBody761_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_96

def sourceBody761_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_89 sourceBody761_97

def sourceBody761_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody761_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody761_0, 761, 22)) (some 70) ([14]) (some (14, sourceBody761_18, 761, 23))

def sourceBody761_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_100 sourceBody761_3

def sourceBody761_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_101 sourceBody761_0

def sourceBody761_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_99 sourceBody761_102

def sourceBody761_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_103

def sourceBody761_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_104

def sourceBody761_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_98 sourceBody761_105

def sourceBody761_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody761_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody761_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_108 sourceBody761_0

def sourceBody761_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_107 sourceBody761_109

def sourceBody761_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_106 sourceBody761_110

def sourceBody761_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_14 sourceBody761_111

def sourceBody761_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_112

def sourceBody761_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_13 sourceBody761_113

def sourceBody761_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_114

def sourceBody761_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_12 sourceBody761_115

def sourceBody761_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_116

def sourceBody761_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_11 sourceBody761_117

def sourceBody761_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_118

def sourceBody761_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_119

def sourceBody761_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_5 sourceBody761_120

def sourceBody761_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_121

def sourceBody761_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody761_0 sourceBody761_122

def source761 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (761, 3, sourceBody761_123)
end InitECandidate.Proofs.WordStages
