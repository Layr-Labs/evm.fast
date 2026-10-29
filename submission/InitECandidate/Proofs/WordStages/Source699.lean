import InitECandidate.Proofs.WordStages.Source683
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody699_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody699_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody699_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody699_0, 699, 2)) (some 69) ([]) (some (10, sourceBody699_1, 699, 3))

def sourceBody699_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody699_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_2 sourceBody699_3

def sourceBody699_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_4 sourceBody699_0

def sourceBody699_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody699_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody699_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody699_0, 699, 4)) (some 68) ([24]) (some (24, sourceBody699_7, 699, 5))

def sourceBody699_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_8 sourceBody699_3

def sourceBody699_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_9 sourceBody699_0

def sourceBody699_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_6 sourceBody699_10

def sourceBody699_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody699_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody699_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody699_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody699_0, 699, 6)) (some 695) ([16, 32]) (some (16, sourceBody699_14, 699, 7))

def sourceBody699_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_15 sourceBody699_3

def sourceBody699_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_16 sourceBody699_0

def sourceBody699_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_13 sourceBody699_17

def sourceBody699_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_12 sourceBody699_18

def sourceBody699_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody699_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody699_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody699_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody699_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.reg 8) sourceBody699_22 sourceBody699_23

def sourceBody699_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_24 sourceBody699_3

def sourceBody699_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 32)

def sourceBody699_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 28)

def sourceBody699_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody699_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody699_0, 699, 8)) (some 70) ([32]) (some (32, sourceBody699_28, 699, 9))

def sourceBody699_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_29 sourceBody699_3

def sourceBody699_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_30 sourceBody699_0

def sourceBody699_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_27 sourceBody699_31

def sourceBody699_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_32

def sourceBody699_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_33

def sourceBody699_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody699_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody699_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_36 sourceBody699_0

def sourceBody699_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_35 sourceBody699_37

def sourceBody699_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_34 sourceBody699_38

def sourceBody699_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody699_39 sourceBody699_0

def sourceBody699_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_40 sourceBody699_3

def sourceBody699_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_41 sourceBody699_0

def sourceBody699_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_26 sourceBody699_42

def sourceBody699_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_25 sourceBody699_43

def sourceBody699_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_21 sourceBody699_44

def sourceBody699_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_20 sourceBody699_45

def sourceBody699_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody699_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody699_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody699_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 32, 8, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody699_0, 699, 10)) (some 146) ([14, 30]) (some (14, sourceBody699_49, 699, 11))

def sourceBody699_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_50 sourceBody699_3

def sourceBody699_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_51 sourceBody699_0

def sourceBody699_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_48 sourceBody699_52

def sourceBody699_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_47 sourceBody699_53

def sourceBody699_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody699_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody699_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody699_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody699_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 32)

def sourceBody699_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody699_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody699_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody699_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody699_0, 699, 12)) (some 684) ([30, 12, 26, 18, 34, 6, 20]) (some (30, sourceBody699_62, 699, 13))

def sourceBody699_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_63 sourceBody699_3

def sourceBody699_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_64 sourceBody699_0

def sourceBody699_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_61 sourceBody699_65

def sourceBody699_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_60 sourceBody699_66

def sourceBody699_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_59 sourceBody699_67

def sourceBody699_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_58 sourceBody699_68

def sourceBody699_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_57 sourceBody699_69

def sourceBody699_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_56 sourceBody699_70

def sourceBody699_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_55 sourceBody699_71

def sourceBody699_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_72

def sourceBody699_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_73

def sourceBody699_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 10)

def sourceBody699_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody699_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody699_0, 699, 14)) (some 697) ([30, 12]) (some (30, sourceBody699_62, 699, 15))

def sourceBody699_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_77 sourceBody699_3

def sourceBody699_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_78 sourceBody699_0

def sourceBody699_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_76 sourceBody699_79

def sourceBody699_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_75 sourceBody699_80

def sourceBody699_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_81

def sourceBody699_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_82

def sourceBody699_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_74 sourceBody699_83

def sourceBody699_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 28)

def sourceBody699_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody699_0, 699, 16)) (some 70) ([30]) (some (30, sourceBody699_62, 699, 17))

def sourceBody699_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_86 sourceBody699_3

def sourceBody699_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_87 sourceBody699_0

def sourceBody699_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_85 sourceBody699_88

def sourceBody699_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_89

def sourceBody699_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_90

def sourceBody699_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_84 sourceBody699_91

def sourceBody699_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody699_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody699_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_94 sourceBody699_0

def sourceBody699_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_93 sourceBody699_95

def sourceBody699_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_92 sourceBody699_96

def sourceBody699_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_54 sourceBody699_97

def sourceBody699_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_98

def sourceBody699_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_99

def sourceBody699_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_100

def sourceBody699_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_101

def sourceBody699_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_102

def sourceBody699_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_103

def sourceBody699_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_104

def sourceBody699_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_105

def sourceBody699_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_46 sourceBody699_106

def sourceBody699_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_19 sourceBody699_107

def sourceBody699_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_108

def sourceBody699_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_109

def sourceBody699_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_11 sourceBody699_110

def sourceBody699_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_111

def sourceBody699_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_112

def sourceBody699_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_5 sourceBody699_113

def sourceBody699_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_114

def sourceBody699_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody699_0 sourceBody699_115

def source699 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (699, 3, sourceBody699_116)
end InitECandidate.Proofs.WordStages
