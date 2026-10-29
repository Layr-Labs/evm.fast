import InitECandidate.Proofs.WordStages.Source639
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody655_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody655_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 4)

def sourceBody655_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 6)

def sourceBody655_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 8)

def sourceBody655_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 10)

def sourceBody655_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 132

def sourceBody655_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([70]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 2)) (some 102) ([132, 54, 116, 86]) (some (132, sourceBody655_5, 655, 3))

def sourceBody655_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody655_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_6 sourceBody655_7

def sourceBody655_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_8 sourceBody655_0

def sourceBody655_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_4 sourceBody655_9

def sourceBody655_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_3 sourceBody655_10

def sourceBody655_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_2 sourceBody655_11

def sourceBody655_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_1 sourceBody655_12

def sourceBody655_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 70)

def sourceBody655_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 54 (Flapjack.WordRegImm.reg 116) sourceBody655_16 sourceBody655_17

def sourceBody655_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_18 sourceBody655_7

def sourceBody655_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 54)

def sourceBody655_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [132]

def sourceBody655_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_22 sourceBody655_0

def sourceBody655_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_21 sourceBody655_23

def sourceBody655_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 86 (Flapjack.WordRegImm.imm 0#64) sourceBody655_24 sourceBody655_0

def sourceBody655_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_25 sourceBody655_7

def sourceBody655_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_26 sourceBody655_0

def sourceBody655_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_20 sourceBody655_27

def sourceBody655_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_19 sourceBody655_28

def sourceBody655_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_15 sourceBody655_29

def sourceBody655_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_14 sourceBody655_30

def sourceBody655_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 4)

def sourceBody655_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 6)

def sourceBody655_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 8)

def sourceBody655_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 10)

def sourceBody655_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def sourceBody655_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def sourceBody655_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody655_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def sourceBody655_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def sourceBody655_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([132]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 4)) (some 106) ([54, 116, 86, 148, 46, 108, 78, 140]) (some (54, sourceBody655_40, 655, 5))

def sourceBody655_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_41 sourceBody655_7

def sourceBody655_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_42 sourceBody655_0

def sourceBody655_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_39 sourceBody655_43

def sourceBody655_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_38 sourceBody655_44

def sourceBody655_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_37 sourceBody655_45

def sourceBody655_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_36 sourceBody655_46

def sourceBody655_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_35 sourceBody655_47

def sourceBody655_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_34 sourceBody655_48

def sourceBody655_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_33 sourceBody655_49

def sourceBody655_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_32 sourceBody655_50

def sourceBody655_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 132)

def sourceBody655_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 116 (Flapjack.WordRegImm.reg 86) sourceBody655_15 sourceBody655_54

def sourceBody655_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_55 sourceBody655_7

def sourceBody655_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 116)

def sourceBody655_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [54]

def sourceBody655_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_58 sourceBody655_0

def sourceBody655_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_17 sourceBody655_59

def sourceBody655_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 148 (Flapjack.WordRegImm.imm 0#64) sourceBody655_60 sourceBody655_0

def sourceBody655_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_61 sourceBody655_7

def sourceBody655_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_62 sourceBody655_0

def sourceBody655_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_57 sourceBody655_63

def sourceBody655_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_56 sourceBody655_64

def sourceBody655_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_53 sourceBody655_65

def sourceBody655_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_52 sourceBody655_66

def sourceBody655_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 12)

def sourceBody655_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 14)

def sourceBody655_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 16)

def sourceBody655_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 18)

def sourceBody655_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 116

def sourceBody655_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 6)) (some 102) ([116, 86, 148, 46]) (some (116, sourceBody655_72, 655, 7))

def sourceBody655_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_73 sourceBody655_7

def sourceBody655_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_74 sourceBody655_0

def sourceBody655_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_71 sourceBody655_75

def sourceBody655_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_70 sourceBody655_76

def sourceBody655_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_69 sourceBody655_77

def sourceBody655_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_68 sourceBody655_78

def sourceBody655_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_82 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 86 (Flapjack.WordRegImm.reg 148) sourceBody655_81 sourceBody655_53

def sourceBody655_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_82 sourceBody655_7

def sourceBody655_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 86)

def sourceBody655_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [116]

def sourceBody655_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_85 sourceBody655_0

def sourceBody655_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_54 sourceBody655_86

def sourceBody655_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 46 (Flapjack.WordRegImm.imm 0#64) sourceBody655_87 sourceBody655_0

def sourceBody655_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_88 sourceBody655_7

def sourceBody655_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_89 sourceBody655_0

def sourceBody655_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_84 sourceBody655_90

def sourceBody655_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_83 sourceBody655_91

def sourceBody655_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_80 sourceBody655_92

def sourceBody655_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_20 sourceBody655_93

def sourceBody655_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 12)

def sourceBody655_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 14)

def sourceBody655_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 16)

def sourceBody655_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 18)

def sourceBody655_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def sourceBody655_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def sourceBody655_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody655_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def sourceBody655_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 86

def sourceBody655_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([116]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 8)) (some 106) ([86, 148, 46, 108, 78, 140, 62, 124]) (some (86, sourceBody655_103, 655, 9))

def sourceBody655_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_104 sourceBody655_7

def sourceBody655_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_105 sourceBody655_0

def sourceBody655_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_102 sourceBody655_106

def sourceBody655_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_101 sourceBody655_107

def sourceBody655_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_100 sourceBody655_108

def sourceBody655_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_99 sourceBody655_109

def sourceBody655_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_98 sourceBody655_110

def sourceBody655_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_97 sourceBody655_111

def sourceBody655_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_96 sourceBody655_112

def sourceBody655_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_95 sourceBody655_113

def sourceBody655_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 148 (Flapjack.WordRegImm.reg 46) sourceBody655_80 sourceBody655_116

def sourceBody655_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_117 sourceBody655_7

def sourceBody655_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 148)

def sourceBody655_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [86]

def sourceBody655_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_120 sourceBody655_0

def sourceBody655_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_53 sourceBody655_121

def sourceBody655_123 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 108 (Flapjack.WordRegImm.imm 0#64) sourceBody655_122 sourceBody655_0

def sourceBody655_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_123 sourceBody655_7

def sourceBody655_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_124 sourceBody655_0

def sourceBody655_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_119 sourceBody655_125

def sourceBody655_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_118 sourceBody655_126

def sourceBody655_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_115 sourceBody655_127

def sourceBody655_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_57 sourceBody655_128

def sourceBody655_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 20)

def sourceBody655_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 22)

def sourceBody655_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 24)

def sourceBody655_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 26)

def sourceBody655_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody655_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 4294967295#64)

def sourceBody655_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 18446744069414584321#64)

def sourceBody655_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 148

def sourceBody655_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([86]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 10)) (some 106) ([148, 46, 108, 78, 140, 62, 124, 94]) (some (148, sourceBody655_138, 655, 11))

def sourceBody655_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_139 sourceBody655_7

def sourceBody655_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_140 sourceBody655_0

def sourceBody655_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_137 sourceBody655_141

def sourceBody655_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_136 sourceBody655_142

def sourceBody655_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_135 sourceBody655_143

def sourceBody655_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_134 sourceBody655_144

def sourceBody655_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_133 sourceBody655_145

def sourceBody655_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_132 sourceBody655_146

def sourceBody655_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_131 sourceBody655_147

def sourceBody655_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_130 sourceBody655_148

def sourceBody655_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 46 (Flapjack.WordRegImm.reg 108) sourceBody655_151 sourceBody655_115

def sourceBody655_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_152 sourceBody655_7

def sourceBody655_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 46)

def sourceBody655_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [148]

def sourceBody655_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_155 sourceBody655_0

def sourceBody655_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_116 sourceBody655_156

def sourceBody655_158 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 78 (Flapjack.WordRegImm.imm 0#64) sourceBody655_157 sourceBody655_0

def sourceBody655_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_158 sourceBody655_7

def sourceBody655_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_159 sourceBody655_0

def sourceBody655_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_154 sourceBody655_160

def sourceBody655_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_153 sourceBody655_161

def sourceBody655_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_150 sourceBody655_162

def sourceBody655_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_84 sourceBody655_163

def sourceBody655_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 28)

def sourceBody655_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 30)

def sourceBody655_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 32)

def sourceBody655_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 34)

def sourceBody655_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.const 4294967295#64)

def sourceBody655_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.const 18446744069414584321#64)

def sourceBody655_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody655_173 : WordLangProgHOL (BitVec 64) :=
.call (some (([148]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 12)) (some 106) ([46, 108, 78, 140, 62, 124, 94, 156]) (some (46, sourceBody655_172, 655, 13))

def sourceBody655_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_173 sourceBody655_7

def sourceBody655_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_174 sourceBody655_0

def sourceBody655_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_171 sourceBody655_175

def sourceBody655_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_170 sourceBody655_176

def sourceBody655_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_169 sourceBody655_177

def sourceBody655_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_101 sourceBody655_178

def sourceBody655_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_168 sourceBody655_179

def sourceBody655_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_167 sourceBody655_180

def sourceBody655_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_166 sourceBody655_181

def sourceBody655_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_165 sourceBody655_182

def sourceBody655_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_186 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 108 (Flapjack.WordRegImm.reg 78) sourceBody655_185 sourceBody655_150

def sourceBody655_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_186 sourceBody655_7

def sourceBody655_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 108)

def sourceBody655_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46]

def sourceBody655_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_189 sourceBody655_0

def sourceBody655_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_115 sourceBody655_190

def sourceBody655_192 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 140 (Flapjack.WordRegImm.imm 0#64) sourceBody655_191 sourceBody655_0

def sourceBody655_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_192 sourceBody655_7

def sourceBody655_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_193 sourceBody655_0

def sourceBody655_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_188 sourceBody655_194

def sourceBody655_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_187 sourceBody655_195

def sourceBody655_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_184 sourceBody655_196

def sourceBody655_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_119 sourceBody655_197

def sourceBody655_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 30,
      Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.var 34])

def sourceBody655_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_199 sourceBody655_197

def sourceBody655_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_198 sourceBody655_200

def sourceBody655_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 20)

def sourceBody655_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 22)

def sourceBody655_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 24)

def sourceBody655_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 26)

def sourceBody655_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 28)

def sourceBody655_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 30)

def sourceBody655_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 32)

def sourceBody655_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 34)

def sourceBody655_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 108

def sourceBody655_211 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 14)) (some 654) ([108, 78, 140, 62, 124, 94, 156, 38]) (some (108, sourceBody655_210, 655, 15))

def sourceBody655_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_211 sourceBody655_7

def sourceBody655_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_212 sourceBody655_0

def sourceBody655_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_209 sourceBody655_213

def sourceBody655_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_208 sourceBody655_214

def sourceBody655_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_207 sourceBody655_215

def sourceBody655_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_206 sourceBody655_216

def sourceBody655_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_205 sourceBody655_217

def sourceBody655_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_204 sourceBody655_218

def sourceBody655_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_203 sourceBody655_219

def sourceBody655_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_202 sourceBody655_220

def sourceBody655_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_224 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 78 (Flapjack.WordRegImm.reg 140) sourceBody655_223 sourceBody655_184

def sourceBody655_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_224 sourceBody655_7

def sourceBody655_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 78)

def sourceBody655_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [108]

def sourceBody655_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_227 sourceBody655_0

def sourceBody655_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_150 sourceBody655_228

def sourceBody655_230 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 62 (Flapjack.WordRegImm.imm 0#64) sourceBody655_229 sourceBody655_0

def sourceBody655_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_230 sourceBody655_7

def sourceBody655_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_231 sourceBody655_0

def sourceBody655_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_226 sourceBody655_232

def sourceBody655_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_225 sourceBody655_233

def sourceBody655_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_222 sourceBody655_234

def sourceBody655_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_154 sourceBody655_235

def sourceBody655_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 2)

def sourceBody655_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody655_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 124

def sourceBody655_240 : WordLangProgHOL (BitVec 64) :=
.call (some (([108, 78, 140, 62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 16)) (some 146) ([124, 94]) (some (124, sourceBody655_239, 655, 17))

def sourceBody655_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_240 sourceBody655_7

def sourceBody655_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_241 sourceBody655_0

def sourceBody655_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_238 sourceBody655_242

def sourceBody655_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_237 sourceBody655_243

def sourceBody655_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 108)

def sourceBody655_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 78)

def sourceBody655_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 140)

def sourceBody655_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 62)

def sourceBody655_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def sourceBody655_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def sourceBody655_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody655_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def sourceBody655_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 94

def sourceBody655_254 : WordLangProgHOL (BitVec 64) :=
.call (some (([124]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 18)) (some 106) ([94, 156, 38, 100, 68, 130, 52, 114]) (some (94, sourceBody655_253, 655, 19))

def sourceBody655_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_254 sourceBody655_7

def sourceBody655_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_255 sourceBody655_0

def sourceBody655_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_252 sourceBody655_256

def sourceBody655_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_251 sourceBody655_257

def sourceBody655_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_250 sourceBody655_258

def sourceBody655_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_249 sourceBody655_259

def sourceBody655_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_248 sourceBody655_260

def sourceBody655_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_247 sourceBody655_261

def sourceBody655_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_246 sourceBody655_262

def sourceBody655_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_245 sourceBody655_263

def sourceBody655_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 124)

def sourceBody655_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_269 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 156 (Flapjack.WordRegImm.reg 38) sourceBody655_267 sourceBody655_268

def sourceBody655_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_269 sourceBody655_7

def sourceBody655_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 156)

def sourceBody655_272 : WordLangProgHOL (BitVec 64) :=
.call (some (([108, 78, 140, 62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 20)) (some 117) ([94, 156, 38, 100, 68, 130, 52, 114]) (some (94, sourceBody655_253, 655, 21))

def sourceBody655_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_272 sourceBody655_7

def sourceBody655_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_273 sourceBody655_0

def sourceBody655_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_252 sourceBody655_274

def sourceBody655_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_251 sourceBody655_275

def sourceBody655_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_250 sourceBody655_276

def sourceBody655_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_249 sourceBody655_277

def sourceBody655_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_248 sourceBody655_278

def sourceBody655_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_247 sourceBody655_279

def sourceBody655_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_246 sourceBody655_280

def sourceBody655_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_245 sourceBody655_281

def sourceBody655_283 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 100 (Flapjack.WordRegImm.imm 0#64) sourceBody655_282 sourceBody655_0

def sourceBody655_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_283 sourceBody655_7

def sourceBody655_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_284 sourceBody655_0

def sourceBody655_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_271 sourceBody655_285

def sourceBody655_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_270 sourceBody655_286

def sourceBody655_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_266 sourceBody655_287

def sourceBody655_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_265 sourceBody655_288

def sourceBody655_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 12)

def sourceBody655_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 14)

def sourceBody655_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 16)

def sourceBody655_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 18)

def sourceBody655_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def sourceBody655_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def sourceBody655_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody655_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def sourceBody655_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def sourceBody655_299 : WordLangProgHOL (BitVec 64) :=
.call (some (([94, 156, 38, 100]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 22)) (some 210) ([68, 130, 52, 114, 84, 146, 44, 106]) (some (68, sourceBody655_298, 655, 23))

def sourceBody655_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_299 sourceBody655_7

def sourceBody655_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_300 sourceBody655_0

def sourceBody655_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_297 sourceBody655_301

def sourceBody655_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_296 sourceBody655_302

def sourceBody655_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_295 sourceBody655_303

def sourceBody655_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_294 sourceBody655_304

def sourceBody655_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_293 sourceBody655_305

def sourceBody655_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_292 sourceBody655_306

def sourceBody655_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_291 sourceBody655_307

def sourceBody655_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_290 sourceBody655_308

def sourceBody655_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 108)

def sourceBody655_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 78)

def sourceBody655_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 140)

def sourceBody655_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 62)

def sourceBody655_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 94)

def sourceBody655_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 156)

def sourceBody655_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 38)

def sourceBody655_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 100)

def sourceBody655_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def sourceBody655_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def sourceBody655_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody655_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def sourceBody655_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 84

def sourceBody655_323 : WordLangProgHOL (BitVec 64) :=
.call (some (([68, 130, 52, 114]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
            Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 24)) (some 136) ([84, 146, 44, 106, 76, 138, 60, 122, 92, 154, 40, 102]) (some (84, sourceBody655_322, 655, 25))

def sourceBody655_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_323 sourceBody655_7

def sourceBody655_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_324 sourceBody655_0

def sourceBody655_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_321 sourceBody655_325

def sourceBody655_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_320 sourceBody655_326

def sourceBody655_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_319 sourceBody655_327

def sourceBody655_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_318 sourceBody655_328

def sourceBody655_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_317 sourceBody655_329

def sourceBody655_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_316 sourceBody655_330

def sourceBody655_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_315 sourceBody655_331

def sourceBody655_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_314 sourceBody655_332

def sourceBody655_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_313 sourceBody655_333

def sourceBody655_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_312 sourceBody655_334

def sourceBody655_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_311 sourceBody655_335

def sourceBody655_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_310 sourceBody655_336

def sourceBody655_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 4)

def sourceBody655_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 6)

def sourceBody655_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 8)

def sourceBody655_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 10)

def sourceBody655_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 94)

def sourceBody655_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154 (Flapjack.WordLangExpHOL.var 156)

def sourceBody655_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 38)

def sourceBody655_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 100)

def sourceBody655_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def sourceBody655_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def sourceBody655_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody655_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def sourceBody655_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 76

def sourceBody655_351 : WordLangProgHOL (BitVec 64) :=
.call (some (([84, 146, 44, 106]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 26)) (some 136) ([76, 138, 60, 122, 92, 154, 40, 102, 72, 134, 56, 118]) (some (76, sourceBody655_350, 655, 27))

def sourceBody655_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_351 sourceBody655_7

def sourceBody655_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_352 sourceBody655_0

def sourceBody655_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_349 sourceBody655_353

def sourceBody655_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_348 sourceBody655_354

def sourceBody655_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_347 sourceBody655_355

def sourceBody655_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_346 sourceBody655_356

def sourceBody655_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_345 sourceBody655_357

def sourceBody655_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_344 sourceBody655_358

def sourceBody655_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_343 sourceBody655_359

def sourceBody655_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_342 sourceBody655_360

def sourceBody655_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_341 sourceBody655_361

def sourceBody655_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_340 sourceBody655_362

def sourceBody655_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_339 sourceBody655_363

def sourceBody655_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_338 sourceBody655_364

def sourceBody655_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 138

def sourceBody655_367 : WordLangProgHOL (BitVec 64) :=
.call (some (([76]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 28)) (some 69) ([]) (some (138, sourceBody655_366, 655, 29))

def sourceBody655_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_367 sourceBody655_7

def sourceBody655_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_368 sourceBody655_0

def sourceBody655_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody655_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def sourceBody655_372 : WordLangProgHOL (BitVec 64) :=
.call (some (([138]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 30)) (some 68) ([60]) (some (60, sourceBody655_371, 655, 31))

def sourceBody655_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_372 sourceBody655_7

def sourceBody655_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_373 sourceBody655_0

def sourceBody655_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_370 sourceBody655_374

def sourceBody655_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 138)

def sourceBody655_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 68)

def sourceBody655_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154 (Flapjack.WordLangExpHOL.var 130)

def sourceBody655_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 52)

def sourceBody655_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 114)

def sourceBody655_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 17627433388654248598#64)

def sourceBody655_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.const 8575836109218198432#64)

def sourceBody655_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 17923454489921339634#64)

def sourceBody655_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.const 7716867327612699207#64)

def sourceBody655_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.const 14678990851816772085#64)

def sourceBody655_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.const 3156516839386865358#64)

def sourceBody655_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 10297457778147434006#64)

def sourceBody655_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.const 5756518291402817435#64)

def sourceBody655_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 84)

def sourceBody655_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.var 146)

def sourceBody655_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 44)

def sourceBody655_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126 (Flapjack.WordLangExpHOL.var 106)

def sourceBody655_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 20)

def sourceBody655_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 22)

def sourceBody655_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 24)

def sourceBody655_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 26)

def sourceBody655_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 28)

def sourceBody655_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 30)

def sourceBody655_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 32)

def sourceBody655_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 34)

def sourceBody655_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 122

def sourceBody655_402 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 32)) (some 652) ([122, 92, 154, 40, 102, 72, 134, 56, 118, 88, 150, 48, 110, 80, 142, 64, 126, 96, 158, 36, 98, 66, 128, 50, 112]) (some (122, sourceBody655_401, 655, 33))

def sourceBody655_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_402 sourceBody655_7

def sourceBody655_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_403 sourceBody655_0

def sourceBody655_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_400 sourceBody655_404

def sourceBody655_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_399 sourceBody655_405

def sourceBody655_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_398 sourceBody655_406

def sourceBody655_408 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_397 sourceBody655_407

def sourceBody655_409 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_396 sourceBody655_408

def sourceBody655_410 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_395 sourceBody655_409

def sourceBody655_411 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_394 sourceBody655_410

def sourceBody655_412 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_393 sourceBody655_411

def sourceBody655_413 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_392 sourceBody655_412

def sourceBody655_414 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_391 sourceBody655_413

def sourceBody655_415 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_390 sourceBody655_414

def sourceBody655_416 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_389 sourceBody655_415

def sourceBody655_417 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_388 sourceBody655_416

def sourceBody655_418 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_387 sourceBody655_417

def sourceBody655_419 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_386 sourceBody655_418

def sourceBody655_420 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_385 sourceBody655_419

def sourceBody655_421 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_384 sourceBody655_420

def sourceBody655_422 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_383 sourceBody655_421

def sourceBody655_423 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_382 sourceBody655_422

def sourceBody655_424 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_381 sourceBody655_423

def sourceBody655_425 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_380 sourceBody655_424

def sourceBody655_426 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_379 sourceBody655_425

def sourceBody655_427 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_378 sourceBody655_426

def sourceBody655_428 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_377 sourceBody655_427

def sourceBody655_429 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_376 sourceBody655_428

def sourceBody655_430 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_429

def sourceBody655_431 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_430

def sourceBody655_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody655_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody655_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody655_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody655_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 60)

def sourceBody655_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 122)

def sourceBody655_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 92)

def sourceBody655_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 154)

def sourceBody655_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 102

def sourceBody655_441 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 34)) (some 102) ([102, 72, 134, 56]) (some (102, sourceBody655_440, 655, 35))

def sourceBody655_442 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_441 sourceBody655_7

def sourceBody655_443 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_442 sourceBody655_0

def sourceBody655_444 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_439 sourceBody655_443

def sourceBody655_445 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_438 sourceBody655_444

def sourceBody655_446 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_437 sourceBody655_445

def sourceBody655_447 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_436 sourceBody655_446

def sourceBody655_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 40)

def sourceBody655_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_452 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 72 (Flapjack.WordRegImm.reg 134) sourceBody655_450 sourceBody655_451

def sourceBody655_453 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_452 sourceBody655_7

def sourceBody655_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 72)

def sourceBody655_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 76)

def sourceBody655_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 72

def sourceBody655_457 : WordLangProgHOL (BitVec 64) :=
.call (some (([102]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody655_0, 655, 36)) (some 70) ([72]) (some (72, sourceBody655_456, 655, 37))

def sourceBody655_458 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_457 sourceBody655_7

def sourceBody655_459 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_458 sourceBody655_0

def sourceBody655_460 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_455 sourceBody655_459

def sourceBody655_461 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_460

def sourceBody655_462 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_461

def sourceBody655_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [102]

def sourceBody655_465 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_464 sourceBody655_0

def sourceBody655_466 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_463 sourceBody655_465

def sourceBody655_467 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_462 sourceBody655_466

def sourceBody655_468 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 56 (Flapjack.WordRegImm.imm 0#64) sourceBody655_467 sourceBody655_0

def sourceBody655_469 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_468 sourceBody655_7

def sourceBody655_470 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_469 sourceBody655_0

def sourceBody655_471 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_454 sourceBody655_470

def sourceBody655_472 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_453 sourceBody655_471

def sourceBody655_473 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_449 sourceBody655_472

def sourceBody655_474 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_448 sourceBody655_473

def sourceBody655_475 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 60)

def sourceBody655_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 122)

def sourceBody655_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.var 92)

def sourceBody655_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 154)

def sourceBody655_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 118

def sourceBody655_480 : WordLangProgHOL (BitVec 64) :=
.call (some (([102, 72, 134, 56]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 38)) (some 646) ([118, 88, 150, 48]) (some (118, sourceBody655_479, 655, 39))

def sourceBody655_481 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_480 sourceBody655_7

def sourceBody655_482 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_481 sourceBody655_0

def sourceBody655_483 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_478 sourceBody655_482

def sourceBody655_484 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_477 sourceBody655_483

def sourceBody655_485 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_476 sourceBody655_484

def sourceBody655_486 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_475 sourceBody655_485

def sourceBody655_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 138))

def sourceBody655_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody655_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody655_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody655_491 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 76)

def sourceBody655_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 80

def sourceBody655_493 : WordLangProgHOL (BitVec 64) :=
.call (some (([110]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 40)) (some 70) ([80]) (some (80, sourceBody655_492, 655, 41))

def sourceBody655_494 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_493 sourceBody655_7

def sourceBody655_495 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_494 sourceBody655_0

def sourceBody655_496 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_491 sourceBody655_495

def sourceBody655_497 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_496

def sourceBody655_498 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_497

def sourceBody655_499 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126 (Flapjack.WordLangExpHOL.var 4)

def sourceBody655_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 6)

def sourceBody655_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 8)

def sourceBody655_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 10)

def sourceBody655_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 102)

def sourceBody655_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 72)

def sourceBody655_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 134)

def sourceBody655_506 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 56)

def sourceBody655_507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 126

def sourceBody655_508 : WordLangProgHOL (BitVec 64) :=
.call (some (([110, 80, 142, 64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 42)) (some 645) ([126, 96, 158, 36, 98, 66, 128, 50]) (some (126, sourceBody655_507, 655, 43))

def sourceBody655_509 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_508 sourceBody655_7

def sourceBody655_510 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_509 sourceBody655_0

def sourceBody655_511 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_506 sourceBody655_510

def sourceBody655_512 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_505 sourceBody655_511

def sourceBody655_513 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_504 sourceBody655_512

def sourceBody655_514 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_503 sourceBody655_513

def sourceBody655_515 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_502 sourceBody655_514

def sourceBody655_516 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_501 sourceBody655_515

def sourceBody655_517 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_500 sourceBody655_516

def sourceBody655_518 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_499 sourceBody655_517

def sourceBody655_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 110)

def sourceBody655_520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 80)

def sourceBody655_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 142)

def sourceBody655_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 64)

def sourceBody655_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 118)

def sourceBody655_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 88)

def sourceBody655_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 150)

def sourceBody655_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 48)

def sourceBody655_527 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 96

def sourceBody655_528 : WordLangProgHOL (BitVec 64) :=
.call (some (([126]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 44)) (some 105) ([96, 158, 36, 98, 66, 128, 50, 112]) (some (96, sourceBody655_527, 655, 45))

def sourceBody655_529 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_528 sourceBody655_7

def sourceBody655_530 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_529 sourceBody655_0

def sourceBody655_531 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_526 sourceBody655_530

def sourceBody655_532 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_525 sourceBody655_531

def sourceBody655_533 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_524 sourceBody655_532

def sourceBody655_534 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_523 sourceBody655_533

def sourceBody655_535 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_522 sourceBody655_534

def sourceBody655_536 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_521 sourceBody655_535

def sourceBody655_537 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_520 sourceBody655_536

def sourceBody655_538 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_519 sourceBody655_537

def sourceBody655_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 126)

def sourceBody655_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_541 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_543 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 158 (Flapjack.WordRegImm.reg 36) sourceBody655_541 sourceBody655_542

def sourceBody655_544 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_543 sourceBody655_7

def sourceBody655_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 158)

def sourceBody655_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_547 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [96]

def sourceBody655_548 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_547 sourceBody655_0

def sourceBody655_549 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_546 sourceBody655_548

def sourceBody655_550 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 98 (Flapjack.WordRegImm.imm 0#64) sourceBody655_549 sourceBody655_0

def sourceBody655_551 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_550 sourceBody655_7

def sourceBody655_552 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_551 sourceBody655_0

def sourceBody655_553 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_545 sourceBody655_552

def sourceBody655_554 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_544 sourceBody655_553

def sourceBody655_555 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_540 sourceBody655_554

def sourceBody655_556 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_539 sourceBody655_555

def sourceBody655_557 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 4)

def sourceBody655_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 6)

def sourceBody655_559 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 8)

def sourceBody655_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 10)

def sourceBody655_561 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def sourceBody655_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def sourceBody655_563 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody655_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def sourceBody655_565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 128

def sourceBody655_566 : WordLangProgHOL (BitVec 64) :=
.call (some (([96, 158, 36, 98, 66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 46)) (some 115) ([128, 50, 112, 82, 144, 42, 104, 74]) (some (128, sourceBody655_565, 655, 47))

def sourceBody655_567 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_566 sourceBody655_7

def sourceBody655_568 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_567 sourceBody655_0

def sourceBody655_569 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_564 sourceBody655_568

def sourceBody655_570 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_563 sourceBody655_569

def sourceBody655_571 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_562 sourceBody655_570

def sourceBody655_572 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_561 sourceBody655_571

def sourceBody655_573 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_560 sourceBody655_572

def sourceBody655_574 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_559 sourceBody655_573

def sourceBody655_575 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_558 sourceBody655_574

def sourceBody655_576 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_557 sourceBody655_575

def sourceBody655_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 66)

def sourceBody655_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_581 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 50 (Flapjack.WordRegImm.reg 112) sourceBody655_579 sourceBody655_580

def sourceBody655_582 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_581 sourceBody655_7

def sourceBody655_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 50)

def sourceBody655_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [128]

def sourceBody655_586 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_585 sourceBody655_0

def sourceBody655_587 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_584 sourceBody655_586

def sourceBody655_588 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 82 (Flapjack.WordRegImm.imm 0#64) sourceBody655_587 sourceBody655_0

def sourceBody655_589 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_588 sourceBody655_7

def sourceBody655_590 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_589 sourceBody655_0

def sourceBody655_591 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_583 sourceBody655_590

def sourceBody655_592 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_582 sourceBody655_591

def sourceBody655_593 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_578 sourceBody655_592

def sourceBody655_594 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_577 sourceBody655_593

def sourceBody655_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 96)

def sourceBody655_596 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 158)

def sourceBody655_597 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 36)

def sourceBody655_598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 98)

def sourceBody655_599 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 128)

def sourceBody655_600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 50)

def sourceBody655_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 112)

def sourceBody655_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 82)

def sourceBody655_603 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody655_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.const 4294967295#64)

def sourceBody655_605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.const 18446744069414584321#64)

def sourceBody655_607 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody655_608 : WordLangProgHOL (BitVec 64) :=
.call (some (([144]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 48)) (some 106) ([42, 104, 74, 136, 58, 120, 90, 152]) (some (42, sourceBody655_607, 655, 49))

def sourceBody655_609 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_608 sourceBody655_7

def sourceBody655_610 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_609 sourceBody655_0

def sourceBody655_611 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_606 sourceBody655_610

def sourceBody655_612 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_605 sourceBody655_611

def sourceBody655_613 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_604 sourceBody655_612

def sourceBody655_614 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_603 sourceBody655_613

def sourceBody655_615 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_602 sourceBody655_614

def sourceBody655_616 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_601 sourceBody655_615

def sourceBody655_617 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_600 sourceBody655_616

def sourceBody655_618 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_599 sourceBody655_617

def sourceBody655_619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 144)

def sourceBody655_620 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody655_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_623 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 104 (Flapjack.WordRegImm.reg 74) sourceBody655_621 sourceBody655_622

def sourceBody655_624 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_623 sourceBody655_7

def sourceBody655_625 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 104)

def sourceBody655_626 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody655_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [42]

def sourceBody655_628 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_627 sourceBody655_0

def sourceBody655_629 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_626 sourceBody655_628

def sourceBody655_630 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 136 (Flapjack.WordRegImm.imm 0#64) sourceBody655_629 sourceBody655_0

def sourceBody655_631 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_630 sourceBody655_7

def sourceBody655_632 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_631 sourceBody655_0

def sourceBody655_633 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_625 sourceBody655_632

def sourceBody655_634 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_624 sourceBody655_633

def sourceBody655_635 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_620 sourceBody655_634

def sourceBody655_636 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_619 sourceBody655_635

def sourceBody655_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 102)

def sourceBody655_638 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 72)

def sourceBody655_639 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 134)

def sourceBody655_640 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 56)

def sourceBody655_641 : WordLangProgHOL (BitVec 64) :=
.call (some (([110, 80, 142, 64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody655_0, 655, 50)) (some 645) ([42, 104, 74, 136, 58, 120, 90, 152]) (some (42, sourceBody655_607, 655, 51))

def sourceBody655_642 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_641 sourceBody655_7

def sourceBody655_643 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_642 sourceBody655_0

def sourceBody655_644 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_640 sourceBody655_643

def sourceBody655_645 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_639 sourceBody655_644

def sourceBody655_646 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_638 sourceBody655_645

def sourceBody655_647 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_637 sourceBody655_646

def sourceBody655_648 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_602 sourceBody655_647

def sourceBody655_649 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_601 sourceBody655_648

def sourceBody655_650 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_600 sourceBody655_649

def sourceBody655_651 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_599 sourceBody655_650

def sourceBody655_652 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_636 sourceBody655_651

def sourceBody655_653 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 110)

def sourceBody655_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 80)

def sourceBody655_655 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 142)

def sourceBody655_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 64)

def sourceBody655_657 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 118)

def sourceBody655_658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 88)

def sourceBody655_659 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 150)

def sourceBody655_660 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 48)

def sourceBody655_661 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 105) ([0, 42, 104, 74, 136, 58, 120, 90, 152]) (none)

def sourceBody655_662 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_661 sourceBody655_0

def sourceBody655_663 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_660 sourceBody655_662

def sourceBody655_664 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_659 sourceBody655_663

def sourceBody655_665 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_658 sourceBody655_664

def sourceBody655_666 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_657 sourceBody655_665

def sourceBody655_667 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_656 sourceBody655_666

def sourceBody655_668 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_655 sourceBody655_667

def sourceBody655_669 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_654 sourceBody655_668

def sourceBody655_670 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_653 sourceBody655_669

def sourceBody655_671 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_652 sourceBody655_670

def sourceBody655_672 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_618 sourceBody655_671

def sourceBody655_673 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_672

def sourceBody655_674 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_673

def sourceBody655_675 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_598 sourceBody655_674

def sourceBody655_676 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_675

def sourceBody655_677 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_597 sourceBody655_676

def sourceBody655_678 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_677

def sourceBody655_679 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_596 sourceBody655_678

def sourceBody655_680 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_679

def sourceBody655_681 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_595 sourceBody655_680

def sourceBody655_682 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_681

def sourceBody655_683 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_594 sourceBody655_682

def sourceBody655_684 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_576 sourceBody655_683

def sourceBody655_685 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_684

def sourceBody655_686 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_685

def sourceBody655_687 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_686

def sourceBody655_688 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_687

def sourceBody655_689 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_688

def sourceBody655_690 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_689

def sourceBody655_691 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_690

def sourceBody655_692 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_691

def sourceBody655_693 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_692

def sourceBody655_694 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_693

def sourceBody655_695 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_556 sourceBody655_694

def sourceBody655_696 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_538 sourceBody655_695

def sourceBody655_697 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_696

def sourceBody655_698 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_697

def sourceBody655_699 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_518 sourceBody655_698

def sourceBody655_700 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_699

def sourceBody655_701 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_700

def sourceBody655_702 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_701

def sourceBody655_703 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_702

def sourceBody655_704 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_703

def sourceBody655_705 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_704

def sourceBody655_706 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_705

def sourceBody655_707 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_706

def sourceBody655_708 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_498 sourceBody655_707

def sourceBody655_709 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_490 sourceBody655_708

def sourceBody655_710 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_709

def sourceBody655_711 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_489 sourceBody655_710

def sourceBody655_712 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_711

def sourceBody655_713 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_488 sourceBody655_712

def sourceBody655_714 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_713

def sourceBody655_715 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_487 sourceBody655_714

def sourceBody655_716 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_715

def sourceBody655_717 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_486 sourceBody655_716

def sourceBody655_718 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_717

def sourceBody655_719 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_718

def sourceBody655_720 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_719

def sourceBody655_721 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_720

def sourceBody655_722 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_721

def sourceBody655_723 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_722

def sourceBody655_724 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_723

def sourceBody655_725 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_724

def sourceBody655_726 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_474 sourceBody655_725

def sourceBody655_727 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_447 sourceBody655_726

def sourceBody655_728 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_727

def sourceBody655_729 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_728

def sourceBody655_730 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_435 sourceBody655_729

def sourceBody655_731 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_730

def sourceBody655_732 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_434 sourceBody655_731

def sourceBody655_733 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_732

def sourceBody655_734 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_433 sourceBody655_733

def sourceBody655_735 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_734

def sourceBody655_736 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_432 sourceBody655_735

def sourceBody655_737 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_736

def sourceBody655_738 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_431 sourceBody655_737

def sourceBody655_739 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_375 sourceBody655_738

def sourceBody655_740 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_739

def sourceBody655_741 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_740

def sourceBody655_742 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_369 sourceBody655_741

def sourceBody655_743 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_742

def sourceBody655_744 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_743

def sourceBody655_745 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_365 sourceBody655_744

def sourceBody655_746 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_745

def sourceBody655_747 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_746

def sourceBody655_748 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_747

def sourceBody655_749 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_748

def sourceBody655_750 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_749

def sourceBody655_751 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_750

def sourceBody655_752 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_751

def sourceBody655_753 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_752

def sourceBody655_754 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_337 sourceBody655_753

def sourceBody655_755 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_754

def sourceBody655_756 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_755

def sourceBody655_757 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_756

def sourceBody655_758 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_757

def sourceBody655_759 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_758

def sourceBody655_760 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_759

def sourceBody655_761 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_760

def sourceBody655_762 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_761

def sourceBody655_763 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_309 sourceBody655_762

def sourceBody655_764 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_763

def sourceBody655_765 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_764

def sourceBody655_766 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_765

def sourceBody655_767 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_766

def sourceBody655_768 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_767

def sourceBody655_769 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_768

def sourceBody655_770 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_769

def sourceBody655_771 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_770

def sourceBody655_772 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_289 sourceBody655_771

def sourceBody655_773 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_264 sourceBody655_772

def sourceBody655_774 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_773

def sourceBody655_775 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_774

def sourceBody655_776 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_244 sourceBody655_775

def sourceBody655_777 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_776

def sourceBody655_778 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_777

def sourceBody655_779 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_778

def sourceBody655_780 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_779

def sourceBody655_781 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_780

def sourceBody655_782 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_781

def sourceBody655_783 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_782

def sourceBody655_784 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_783

def sourceBody655_785 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_236 sourceBody655_784

def sourceBody655_786 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_221 sourceBody655_785

def sourceBody655_787 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_786

def sourceBody655_788 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_787

def sourceBody655_789 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_201 sourceBody655_788

def sourceBody655_790 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_183 sourceBody655_789

def sourceBody655_791 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_790

def sourceBody655_792 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_791

def sourceBody655_793 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_164 sourceBody655_792

def sourceBody655_794 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_149 sourceBody655_793

def sourceBody655_795 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_794

def sourceBody655_796 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_795

def sourceBody655_797 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_129 sourceBody655_796

def sourceBody655_798 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_114 sourceBody655_797

def sourceBody655_799 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_798

def sourceBody655_800 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_799

def sourceBody655_801 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_94 sourceBody655_800

def sourceBody655_802 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_79 sourceBody655_801

def sourceBody655_803 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_802

def sourceBody655_804 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_803

def sourceBody655_805 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_67 sourceBody655_804

def sourceBody655_806 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_51 sourceBody655_805

def sourceBody655_807 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_806

def sourceBody655_808 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_807

def sourceBody655_809 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_31 sourceBody655_808

def sourceBody655_810 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_13 sourceBody655_809

def sourceBody655_811 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_810

def sourceBody655_812 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody655_0 sourceBody655_811

def source655 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (655, 18, sourceBody655_812)
end InitECandidate.Proofs.WordStages
