import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass655_0
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word655_1_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(132, 4)]

def word655_1_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 6)]

def word655_1_2 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_0 word655_1_1

def word655_1_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(116, 8)]

def word655_1_4 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_2 word655_1_3

def word655_1_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(86, 10)]

def word655_1_6 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_4 word655_1_5

def word655_1_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word655_1_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 132

def word655_1_9 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 2)) (some 102) ([132, 54, 116, 86]) (some (132, word655_1_8, 655, 3))

def word655_1_10 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_6 word655_1_9

def word655_1_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word655_1_12 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_10 word655_1_11

def word655_1_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 70)]

def word655_1_14 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_12 word655_1_13

def word655_1_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 116 1#64)

def word655_1_16 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_14 word655_1_15

def word655_1_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 54 1#64)

def word655_1_18 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_17 word655_1_11

def word655_1_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 86 1#64)

def word655_1_20 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_18 word655_1_19

def word655_1_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 132 0#64)

def word655_1_22 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_20 word655_1_21

def word655_1_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [132]

def word655_1_24 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_22 word655_1_23

def word655_1_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 54 (Flapjack.WordRegImm.reg 116) word655_1_24 word655_1_7

def word655_1_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 54 0#64)

def word655_1_27 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_26 word655_1_11

def word655_1_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 86 0#64)

def word655_1_29 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_27 word655_1_28

def word655_1_30 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_25 word655_1_29

def word655_1_31 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_16 word655_1_30

def word655_1_32 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_31 word655_1_11

def word655_1_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 4)]

def word655_1_34 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_32 word655_1_33

def word655_1_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(116, 6)]

def word655_1_36 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_34 word655_1_35

def word655_1_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(86, 8)]

def word655_1_38 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_36 word655_1_37

def word655_1_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(148, 10)]

def word655_1_40 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_38 word655_1_39

def word655_1_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 17562291160714782033#64)

def word655_1_42 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_40 word655_1_41

def word655_1_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 108 13611842547513532036#64)

def word655_1_44 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_42 word655_1_43

def word655_1_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 18446744073709551615#64)

def word655_1_46 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_44 word655_1_45

def word655_1_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 140 18446744069414584320#64)

def word655_1_48 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_46 word655_1_47

def word655_1_49 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_48 word655_1_47

def word655_1_50 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_49 word655_1_45

def word655_1_51 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_50 word655_1_43

def word655_1_52 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_51 word655_1_41

def word655_1_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def word655_1_54 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 4)) (some 106) ([54, 116, 86, 148, 46, 108, 78, 140]) (some (54, word655_1_53, 655, 5))

def word655_1_55 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_52 word655_1_54

def word655_1_56 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_55 word655_1_11

def word655_1_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(116, 132)]

def word655_1_58 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_56 word655_1_57

def word655_1_59 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_58 word655_1_28

def word655_1_60 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_15 word655_1_11

def word655_1_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 148 1#64)

def word655_1_62 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_60 word655_1_61

def word655_1_63 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_62 word655_1_26

def word655_1_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [54]

def word655_1_65 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_63 word655_1_64

def word655_1_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 116 (Flapjack.WordRegImm.reg 86) word655_1_65 word655_1_7

def word655_1_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 116 0#64)

def word655_1_68 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_67 word655_1_11

def word655_1_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 148 0#64)

def word655_1_70 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_68 word655_1_69

def word655_1_71 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_66 word655_1_70

def word655_1_72 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_59 word655_1_71

def word655_1_73 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_72 word655_1_11

def word655_1_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(116, 12)]

def word655_1_75 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_73 word655_1_74

def word655_1_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(86, 14)]

def word655_1_77 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_75 word655_1_76

def word655_1_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(148, 16)]

def word655_1_79 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_77 word655_1_78

def word655_1_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 18)]

def word655_1_81 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_79 word655_1_80

def word655_1_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 116

def word655_1_83 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 6)) (some 102) ([116, 86, 148, 46]) (some (116, word655_1_82, 655, 7))

def word655_1_84 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_81 word655_1_83

def word655_1_85 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_84 word655_1_11

def word655_1_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(86, 54)]

def word655_1_87 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_85 word655_1_86

def word655_1_88 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_87 word655_1_61

def word655_1_89 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_19 word655_1_11

def word655_1_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 1#64)

def word655_1_91 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_89 word655_1_90

def word655_1_92 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_91 word655_1_67

def word655_1_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [116]

def word655_1_94 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_92 word655_1_93

def word655_1_95 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 86 (Flapjack.WordRegImm.reg 148) word655_1_94 word655_1_7

def word655_1_96 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_28 word655_1_11

def word655_1_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 0#64)

def word655_1_98 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_96 word655_1_97

def word655_1_99 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_95 word655_1_98

def word655_1_100 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_88 word655_1_99

def word655_1_101 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_100 word655_1_11

def word655_1_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(86, 12)]

def word655_1_103 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_101 word655_1_102

def word655_1_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(148, 14)]

def word655_1_105 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_103 word655_1_104

def word655_1_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 16)]

def word655_1_107 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_105 word655_1_106

def word655_1_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(108, 18)]

def word655_1_109 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_107 word655_1_108

def word655_1_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 17562291160714782033#64)

def word655_1_111 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_109 word655_1_110

def word655_1_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 140 13611842547513532036#64)

def word655_1_113 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_111 word655_1_112

def word655_1_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 62 18446744073709551615#64)

def word655_1_115 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_113 word655_1_114

def word655_1_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 124 18446744069414584320#64)

def word655_1_117 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_115 word655_1_116

def word655_1_118 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_117 word655_1_116

def word655_1_119 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_118 word655_1_114

def word655_1_120 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_119 word655_1_112

def word655_1_121 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_120 word655_1_110

def word655_1_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 86

def word655_1_123 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 8)) (some 106) ([86, 148, 46, 108, 78, 140, 62, 124]) (some (86, word655_1_122, 655, 9))

def word655_1_124 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_121 word655_1_123

def word655_1_125 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_124 word655_1_11

def word655_1_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(148, 116)]

def word655_1_127 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_125 word655_1_126

def word655_1_128 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_127 word655_1_97

def word655_1_129 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_61 word655_1_11

def word655_1_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 108 1#64)

def word655_1_131 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_129 word655_1_130

def word655_1_132 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_131 word655_1_28

def word655_1_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [86]

def word655_1_134 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_132 word655_1_133

def word655_1_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 148 (Flapjack.WordRegImm.reg 46) word655_1_134 word655_1_7

def word655_1_136 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_69 word655_1_11

def word655_1_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 108 0#64)

def word655_1_138 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_136 word655_1_137

def word655_1_139 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_135 word655_1_138

def word655_1_140 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_128 word655_1_139

def word655_1_141 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_140 word655_1_11

def word655_1_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(148, 20)]

def word655_1_143 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_141 word655_1_142

def word655_1_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 22)]

def word655_1_145 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_143 word655_1_144

def word655_1_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(108, 24)]

def word655_1_147 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_145 word655_1_146

def word655_1_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 26)]

def word655_1_149 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_147 word655_1_148

def word655_1_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 140 18446744073709551615#64)

def word655_1_151 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_149 word655_1_150

def word655_1_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 62 4294967295#64)

def word655_1_153 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_151 word655_1_152

def word655_1_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 124 0#64)

def word655_1_155 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_153 word655_1_154

def word655_1_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 94 18446744069414584321#64)

def word655_1_157 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_155 word655_1_156

def word655_1_158 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_157 word655_1_156

def word655_1_159 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_158 word655_1_154

def word655_1_160 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_159 word655_1_152

def word655_1_161 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_160 word655_1_150

def word655_1_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 148

def word655_1_163 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 10)) (some 106) ([148, 46, 108, 78, 140, 62, 124, 94]) (some (148, word655_1_162, 655, 11))

def word655_1_164 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_161 word655_1_163

def word655_1_165 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_164 word655_1_11

def word655_1_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 86)]

def word655_1_167 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_165 word655_1_166

def word655_1_168 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_167 word655_1_137

def word655_1_169 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_90 word655_1_11

def word655_1_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 1#64)

def word655_1_171 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_169 word655_1_170

def word655_1_172 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_171 word655_1_69

def word655_1_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [148]

def word655_1_174 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_172 word655_1_173

def word655_1_175 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 46 (Flapjack.WordRegImm.reg 108) word655_1_174 word655_1_7

def word655_1_176 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_97 word655_1_11

def word655_1_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 0#64)

def word655_1_178 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_176 word655_1_177

def word655_1_179 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_175 word655_1_178

def word655_1_180 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_168 word655_1_179

def word655_1_181 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_180 word655_1_11

def word655_1_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 28)]

def word655_1_183 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_181 word655_1_182

def word655_1_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(108, 30)]

def word655_1_185 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_183 word655_1_184

def word655_1_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 32)]

def word655_1_187 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_185 word655_1_186

def word655_1_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(140, 34)]

def word655_1_189 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_187 word655_1_188

def word655_1_190 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_189 word655_1_114

def word655_1_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 124 4294967295#64)

def word655_1_192 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_190 word655_1_191

def word655_1_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 94 0#64)

def word655_1_194 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_192 word655_1_193

def word655_1_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 156 18446744069414584321#64)

def word655_1_196 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_194 word655_1_195

def word655_1_197 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_196 word655_1_195

def word655_1_198 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_197 word655_1_193

def word655_1_199 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_198 word655_1_191

def word655_1_200 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_199 word655_1_114

def word655_1_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word655_1_202 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 12)) (some 106) ([46, 108, 78, 140, 62, 124, 94, 156]) (some (46, word655_1_201, 655, 13))

def word655_1_203 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_200 word655_1_202

def word655_1_204 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_203 word655_1_11

def word655_1_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(108, 148)]

def word655_1_206 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_204 word655_1_205

def word655_1_207 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_206 word655_1_177

def word655_1_208 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_130 word655_1_11

def word655_1_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 140 1#64)

def word655_1_210 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_208 word655_1_209

def word655_1_211 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_210 word655_1_97

def word655_1_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46]

def word655_1_213 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_211 word655_1_212

def word655_1_214 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 108 (Flapjack.WordRegImm.reg 78) word655_1_213 word655_1_7

def word655_1_215 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_137 word655_1_11

def word655_1_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 140 0#64)

def word655_1_217 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_215 word655_1_216

def word655_1_218 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_214 word655_1_217

def word655_1_219 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_207 word655_1_218

def word655_1_220 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_219 word655_1_11

def word655_1_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(159, 34)]

def word655_1_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 32)]

def word655_1_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 159 159 (Flapjack.WordRegImm.reg 160)))

def word655_1_224 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_222 word655_1_223

def word655_1_225 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_221 word655_1_224

def word655_1_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 30)]

def word655_1_227 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_226 word655_1_223

def word655_1_228 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_225 word655_1_227

def word655_1_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 28)]

def word655_1_230 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_229 word655_1_223

def word655_1_231 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_228 word655_1_230

def word655_1_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 26)]

def word655_1_233 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_232 word655_1_223

def word655_1_234 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_231 word655_1_233

def word655_1_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 24)]

def word655_1_236 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_235 word655_1_223

def word655_1_237 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_234 word655_1_236

def word655_1_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 22)]

def word655_1_239 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_238 word655_1_223

def word655_1_240 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_237 word655_1_239

def word655_1_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 20)]

def word655_1_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 108 159 (Flapjack.WordRegImm.reg 160)))

def word655_1_243 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_241 word655_1_242

def word655_1_244 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_240 word655_1_243

def word655_1_245 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_220 word655_1_244

def word655_1_246 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_245 word655_1_177

def word655_1_247 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_246 word655_1_218

def word655_1_248 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_247 word655_1_11

def word655_1_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(108, 20)]

def word655_1_250 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_248 word655_1_249

def word655_1_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 22)]

def word655_1_252 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_250 word655_1_251

def word655_1_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(140, 24)]

def word655_1_254 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_252 word655_1_253

def word655_1_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(62, 26)]

def word655_1_256 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_254 word655_1_255

def word655_1_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(124, 28)]

def word655_1_258 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_256 word655_1_257

def word655_1_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(94, 30)]

def word655_1_260 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_258 word655_1_259

def word655_1_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(156, 32)]

def word655_1_262 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_260 word655_1_261

def word655_1_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 34)]

def word655_1_264 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_262 word655_1_263

def word655_1_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 108

def word655_1_266 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 14)) (some 654) ([108, 78, 140, 62, 124, 94, 156, 38]) (some (108, word655_1_265, 655, 15))

def word655_1_267 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_264 word655_1_266

def word655_1_268 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_267 word655_1_11

def word655_1_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 46)]

def word655_1_270 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_268 word655_1_269

def word655_1_271 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_270 word655_1_216

def word655_1_272 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_170 word655_1_11

def word655_1_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 62 1#64)

def word655_1_274 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_272 word655_1_273

def word655_1_275 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_274 word655_1_137

def word655_1_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [108]

def word655_1_277 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_275 word655_1_276

def word655_1_278 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 78 (Flapjack.WordRegImm.reg 140) word655_1_277 word655_1_7

def word655_1_279 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_177 word655_1_11

def word655_1_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 62 0#64)

def word655_1_281 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_279 word655_1_280

def word655_1_282 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_278 word655_1_281

def word655_1_283 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_271 word655_1_282

def word655_1_284 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_283 word655_1_11

def word655_1_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(124, 2)]

def word655_1_286 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_284 word655_1_285

def word655_1_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 94 32#64)

def word655_1_288 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_286 word655_1_287

def word655_1_289 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_288 word655_1_287

def word655_1_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 124

def word655_1_291 : WordLangProgHOL (BitVec 64) :=
.call (some (([108, 78, 140, 62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word655_1_7, 655, 16)) (some 146) ([124, 94]) (some (124, word655_1_290, 655, 17))

def word655_1_292 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_289 word655_1_291

def word655_1_293 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_292 word655_1_11

def word655_1_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(94, 108)]

def word655_1_295 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_293 word655_1_294

def word655_1_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(156, 78)]

def word655_1_297 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_295 word655_1_296

def word655_1_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 140)]

def word655_1_299 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_297 word655_1_298

def word655_1_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(100, 62)]

def word655_1_301 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_299 word655_1_300

def word655_1_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 68 17562291160714782033#64)

def word655_1_303 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_301 word655_1_302

def word655_1_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 130 13611842547513532036#64)

def word655_1_305 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_303 word655_1_304

def word655_1_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 18446744073709551615#64)

def word655_1_307 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_305 word655_1_306

def word655_1_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 114 18446744069414584320#64)

def word655_1_309 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_307 word655_1_308

def word655_1_310 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_309 word655_1_308

def word655_1_311 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_310 word655_1_306

def word655_1_312 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_311 word655_1_304

def word655_1_313 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_312 word655_1_302

def word655_1_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 94

def word655_1_315 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 18)) (some 106) ([94, 156, 38, 100, 68, 130, 52, 114]) (some (94, word655_1_314, 655, 19))

def word655_1_316 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_313 word655_1_315

def word655_1_317 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_316 word655_1_11

def word655_1_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(156, 124)]

def word655_1_319 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_317 word655_1_318

def word655_1_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 0#64)

def word655_1_321 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_319 word655_1_320

def word655_1_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 156 1#64)

def word655_1_323 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_322 word655_1_11

def word655_1_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 100 1#64)

def word655_1_325 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_323 word655_1_324

def word655_1_326 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_325 word655_1_294

def word655_1_327 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_326 word655_1_296

def word655_1_328 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_327 word655_1_298

def word655_1_329 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_328 word655_1_300

def word655_1_330 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_329 word655_1_302

def word655_1_331 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_330 word655_1_304

def word655_1_332 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_331 word655_1_306

def word655_1_333 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_332 word655_1_308

def word655_1_334 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_333 word655_1_308

def word655_1_335 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_334 word655_1_306

def word655_1_336 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_335 word655_1_304

def word655_1_337 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_336 word655_1_302

def word655_1_338 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_337 word655_1_308

def word655_1_339 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_338 word655_1_306

def word655_1_340 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_339 word655_1_304

def word655_1_341 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_340 word655_1_302

def word655_1_342 : WordLangProgHOL (BitVec 64) :=
.call (some (([108, 78, 140, 62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word655_1_7, 655, 20)) (some 117) ([94, 156, 38, 100, 68, 130, 52, 114]) (some (94, word655_1_314, 655, 21))

def word655_1_343 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_341 word655_1_342

def word655_1_344 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_343 word655_1_11

def word655_1_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 156 0#64)

def word655_1_346 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_345 word655_1_11

def word655_1_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 100 0#64)

def word655_1_348 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_346 word655_1_347

def word655_1_349 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 156 (Flapjack.WordRegImm.reg 38) word655_1_344 word655_1_348

def word655_1_350 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_321 word655_1_349

def word655_1_351 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_350 word655_1_11

def word655_1_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 12)]

def word655_1_353 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_351 word655_1_352

def word655_1_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(130, 14)]

def word655_1_355 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_353 word655_1_354

def word655_1_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 16)]

def word655_1_357 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_355 word655_1_356

def word655_1_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 18)]

def word655_1_359 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_357 word655_1_358

def word655_1_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 84 17562291160714782033#64)

def word655_1_361 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_359 word655_1_360

def word655_1_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 146 13611842547513532036#64)

def word655_1_363 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_361 word655_1_362

def word655_1_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 44 18446744073709551615#64)

def word655_1_365 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_363 word655_1_364

def word655_1_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 106 18446744069414584320#64)

def word655_1_367 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_365 word655_1_366

def word655_1_368 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_367 word655_1_366

def word655_1_369 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_368 word655_1_364

def word655_1_370 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_369 word655_1_362

def word655_1_371 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_370 word655_1_360

def word655_1_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def word655_1_373 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 22)) (some 210) ([68, 130, 52, 114, 84, 146, 44, 106]) (some (68, word655_1_372, 655, 23))

def word655_1_374 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_371 word655_1_373

def word655_1_375 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_374 word655_1_11

def word655_1_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(84, 108)]

def word655_1_377 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_375 word655_1_376

def word655_1_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(146, 78)]

def word655_1_379 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_377 word655_1_378

def word655_1_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 140)]

def word655_1_381 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_379 word655_1_380

def word655_1_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(106, 62)]

def word655_1_383 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_381 word655_1_382

def word655_1_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(76, 94)]

def word655_1_385 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_383 word655_1_384

def word655_1_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(138, 156)]

def word655_1_387 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_385 word655_1_386

def word655_1_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(60, 38)]

def word655_1_389 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_387 word655_1_388

def word655_1_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(122, 100)]

def word655_1_391 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_389 word655_1_390

def word655_1_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 92 17562291160714782033#64)

def word655_1_393 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_391 word655_1_392

def word655_1_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 154 13611842547513532036#64)

def word655_1_395 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_393 word655_1_394

def word655_1_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 18446744073709551615#64)

def word655_1_397 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_395 word655_1_396

def word655_1_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 102 18446744069414584320#64)

def word655_1_399 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_397 word655_1_398

def word655_1_400 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_399 word655_1_398

def word655_1_401 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_400 word655_1_396

def word655_1_402 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_401 word655_1_394

def word655_1_403 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_402 word655_1_392

def word655_1_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 84

def word655_1_405 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 24)) (some 136) ([84, 146, 44, 106, 76, 138, 60, 122, 92, 154, 40, 102]) (some (84, word655_1_404, 655, 25))

def word655_1_406 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_403 word655_1_405

def word655_1_407 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_406 word655_1_11

def word655_1_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(76, 4)]

def word655_1_409 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_407 word655_1_408

def word655_1_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(138, 6)]

def word655_1_411 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_409 word655_1_410

def word655_1_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(60, 8)]

def word655_1_413 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_411 word655_1_412

def word655_1_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(122, 10)]

def word655_1_415 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_413 word655_1_414

def word655_1_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(92, 94)]

def word655_1_417 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_415 word655_1_416

def word655_1_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(154, 156)]

def word655_1_419 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_417 word655_1_418

def word655_1_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 38)]

def word655_1_421 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_419 word655_1_420

def word655_1_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(102, 100)]

def word655_1_423 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_421 word655_1_422

def word655_1_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 72 17562291160714782033#64)

def word655_1_425 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_423 word655_1_424

def word655_1_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 134 13611842547513532036#64)

def word655_1_427 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_425 word655_1_426

def word655_1_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 18446744073709551615#64)

def word655_1_429 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_427 word655_1_428

def word655_1_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 118 18446744069414584320#64)

def word655_1_431 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_429 word655_1_430

def word655_1_432 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_431 word655_1_430

def word655_1_433 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_432 word655_1_428

def word655_1_434 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_433 word655_1_426

def word655_1_435 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_434 word655_1_424

def word655_1_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 76

def word655_1_437 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 26)) (some 136) ([76, 138, 60, 122, 92, 154, 40, 102, 72, 134, 56, 118]) (some (76, word655_1_436, 655, 27))

def word655_1_438 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_435 word655_1_437

def word655_1_439 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_438 word655_1_11

def word655_1_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 138

def word655_1_441 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 28)) (some 69) ([]) (some (138, word655_1_440, 655, 29))

def word655_1_442 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_439 word655_1_441

def word655_1_443 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_442 word655_1_11

def word655_1_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 60 96#64)

def word655_1_445 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_443 word655_1_444

def word655_1_446 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_445 word655_1_444

def word655_1_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def word655_1_448 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 30)) (some 68) ([60]) (some (60, word655_1_447, 655, 31))

def word655_1_449 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_446 word655_1_448

def word655_1_450 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_449 word655_1_11

def word655_1_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(122, 138)]

def word655_1_452 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_450 word655_1_451

def word655_1_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(92, 68)]

def word655_1_454 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_452 word655_1_453

def word655_1_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(154, 130)]

def word655_1_456 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_454 word655_1_455

def word655_1_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 52)]

def word655_1_458 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_456 word655_1_457

def word655_1_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(102, 114)]

def word655_1_460 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_458 word655_1_459

def word655_1_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 72 17627433388654248598#64)

def word655_1_462 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_460 word655_1_461

def word655_1_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 134 8575836109218198432#64)

def word655_1_464 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_462 word655_1_463

def word655_1_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 17923454489921339634#64)

def word655_1_466 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_464 word655_1_465

def word655_1_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 118 7716867327612699207#64)

def word655_1_468 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_466 word655_1_467

def word655_1_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 88 14678990851816772085#64)

def word655_1_470 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_468 word655_1_469

def word655_1_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 150 3156516839386865358#64)

def word655_1_472 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_470 word655_1_471

def word655_1_473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 48 10297457778147434006#64)

def word655_1_474 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_472 word655_1_473

def word655_1_475 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 110 5756518291402817435#64)

def word655_1_476 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_474 word655_1_475

def word655_1_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 84)]

def word655_1_478 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_476 word655_1_477

def word655_1_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(142, 146)]

def word655_1_480 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_478 word655_1_479

def word655_1_481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 44)]

def word655_1_482 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_480 word655_1_481

def word655_1_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(126, 106)]

def word655_1_484 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_482 word655_1_483

def word655_1_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(96, 20)]

def word655_1_486 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_484 word655_1_485

def word655_1_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(158, 22)]

def word655_1_488 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_486 word655_1_487

def word655_1_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 24)]

def word655_1_490 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_488 word655_1_489

def word655_1_491 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(98, 26)]

def word655_1_492 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_490 word655_1_491

def word655_1_493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 28)]

def word655_1_494 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_492 word655_1_493

def word655_1_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(128, 30)]

def word655_1_496 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_494 word655_1_495

def word655_1_497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 32)]

def word655_1_498 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_496 word655_1_497

def word655_1_499 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(112, 34)]

def word655_1_500 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_498 word655_1_499

def word655_1_501 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_500 word655_1_475

def word655_1_502 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_501 word655_1_473

def word655_1_503 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_502 word655_1_471

def word655_1_504 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_503 word655_1_469

def word655_1_505 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_504 word655_1_467

def word655_1_506 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_505 word655_1_465

def word655_1_507 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_506 word655_1_463

def word655_1_508 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_507 word655_1_461

def word655_1_509 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 122

def word655_1_510 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 32)) (some 652) ([122, 92, 154, 40, 102, 72, 134, 56, 118, 88, 150, 48, 110, 80, 142, 64, 126, 96, 158, 36, 98, 66, 128, 50, 112]) (some (122, word655_1_509, 655, 33))

def word655_1_511 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_508 word655_1_510

def word655_1_512 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_511 word655_1_11

def word655_1_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(159, 138)]

def word655_1_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 60 (Flapjack.WordLangAddr.addr 159 64#64))

def word655_1_515 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_513 word655_1_514

def word655_1_516 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_512 word655_1_515

def word655_1_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 122 (Flapjack.WordLangAddr.addr 159 72#64))

def word655_1_518 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_513 word655_1_517

def word655_1_519 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_516 word655_1_518

def word655_1_520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 92 (Flapjack.WordLangAddr.addr 159 80#64))

def word655_1_521 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_513 word655_1_520

def word655_1_522 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_519 word655_1_521

def word655_1_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 154 (Flapjack.WordLangAddr.addr 159 88#64))

def word655_1_524 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_513 word655_1_523

def word655_1_525 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_522 word655_1_524

def word655_1_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(102, 60)]

def word655_1_527 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_525 word655_1_526

def word655_1_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(72, 122)]

def word655_1_529 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_527 word655_1_528

def word655_1_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(134, 92)]

def word655_1_531 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_529 word655_1_530

def word655_1_532 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 154)]

def word655_1_533 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_531 word655_1_532

def word655_1_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 102

def word655_1_535 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 34)) (some 102) ([102, 72, 134, 56]) (some (102, word655_1_534, 655, 35))

def word655_1_536 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_533 word655_1_535

def word655_1_537 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_536 word655_1_11

def word655_1_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(72, 40)]

def word655_1_539 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_537 word655_1_538

def word655_1_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 134 1#64)

def word655_1_541 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_539 word655_1_540

def word655_1_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 72 1#64)

def word655_1_543 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_542 word655_1_11

def word655_1_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 1#64)

def word655_1_545 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_543 word655_1_544

def word655_1_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(72, 76)]

def word655_1_547 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_545 word655_1_546

def word655_1_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 72

def word655_1_549 : WordLangProgHOL (BitVec 64) :=
.call (some (([102]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word655_1_7, 655, 36)) (some 70) ([72]) (some (72, word655_1_548, 655, 37))

def word655_1_550 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_547 word655_1_549

def word655_1_551 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_550 word655_1_11

def word655_1_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 102 0#64)

def word655_1_553 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_551 word655_1_552

def word655_1_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [102]

def word655_1_555 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_553 word655_1_554

def word655_1_556 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 72 (Flapjack.WordRegImm.reg 134) word655_1_555 word655_1_7

def word655_1_557 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 72 0#64)

def word655_1_558 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_557 word655_1_11

def word655_1_559 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 0#64)

def word655_1_560 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_558 word655_1_559

def word655_1_561 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_556 word655_1_560

def word655_1_562 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_541 word655_1_561

def word655_1_563 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_562 word655_1_11

def word655_1_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(118, 60)]

def word655_1_565 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_563 word655_1_564

def word655_1_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(88, 122)]

def word655_1_567 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_565 word655_1_566

def word655_1_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(150, 92)]

def word655_1_569 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_567 word655_1_568

def word655_1_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 154)]

def word655_1_571 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_569 word655_1_570

def word655_1_572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 118

def word655_1_573 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 38)) (some 646) ([118, 88, 150, 48]) (some (118, word655_1_572, 655, 39))

def word655_1_574 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_571 word655_1_573

def word655_1_575 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_574 word655_1_11

def word655_1_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 118 (Flapjack.WordLangAddr.addr 159 0#64))

def word655_1_577 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_513 word655_1_576

def word655_1_578 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_575 word655_1_577

def word655_1_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 88 (Flapjack.WordLangAddr.addr 159 8#64))

def word655_1_580 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_513 word655_1_579

def word655_1_581 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_578 word655_1_580

def word655_1_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 150 (Flapjack.WordLangAddr.addr 159 16#64))

def word655_1_583 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_513 word655_1_582

def word655_1_584 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_581 word655_1_583

def word655_1_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 48 (Flapjack.WordLangAddr.addr 159 24#64))

def word655_1_586 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_513 word655_1_585

def word655_1_587 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_584 word655_1_586

def word655_1_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 76)]

def word655_1_589 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_587 word655_1_588

def word655_1_590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 80

def word655_1_591 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 40)) (some 70) ([80]) (some (80, word655_1_590, 655, 41))

def word655_1_592 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_589 word655_1_591

def word655_1_593 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_592 word655_1_11

def word655_1_594 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(126, 4)]

def word655_1_595 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_593 word655_1_594

def word655_1_596 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(96, 6)]

def word655_1_597 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_595 word655_1_596

def word655_1_598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(158, 8)]

def word655_1_599 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_597 word655_1_598

def word655_1_600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 10)]

def word655_1_601 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_599 word655_1_600

def word655_1_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(98, 102)]

def word655_1_603 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_601 word655_1_602

def word655_1_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 72)]

def word655_1_605 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_603 word655_1_604

def word655_1_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(128, 134)]

def word655_1_607 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_605 word655_1_606

def word655_1_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 56)]

def word655_1_609 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_607 word655_1_608

def word655_1_610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 126

def word655_1_611 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 42)) (some 645) ([126, 96, 158, 36, 98, 66, 128, 50]) (some (126, word655_1_610, 655, 43))

def word655_1_612 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_609 word655_1_611

def word655_1_613 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_612 word655_1_11

def word655_1_614 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(96, 110)]

def word655_1_615 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_613 word655_1_614

def word655_1_616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(158, 80)]

def word655_1_617 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_615 word655_1_616

def word655_1_618 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 142)]

def word655_1_619 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_617 word655_1_618

def word655_1_620 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(98, 64)]

def word655_1_621 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_619 word655_1_620

def word655_1_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 118)]

def word655_1_623 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_621 word655_1_622

def word655_1_624 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(128, 88)]

def word655_1_625 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_623 word655_1_624

def word655_1_626 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 150)]

def word655_1_627 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_625 word655_1_626

def word655_1_628 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(112, 48)]

def word655_1_629 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_627 word655_1_628

def word655_1_630 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 96

def word655_1_631 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 44)) (some 105) ([96, 158, 36, 98, 66, 128, 50, 112]) (some (96, word655_1_630, 655, 45))

def word655_1_632 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_629 word655_1_631

def word655_1_633 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_632 word655_1_11

def word655_1_634 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(158, 126)]

def word655_1_635 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_633 word655_1_634

def word655_1_636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 1#64)

def word655_1_637 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_635 word655_1_636

def word655_1_638 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 158 1#64)

def word655_1_639 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_638 word655_1_11

def word655_1_640 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 98 1#64)

def word655_1_641 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_639 word655_1_640

def word655_1_642 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 96 1#64)

def word655_1_643 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_641 word655_1_642

def word655_1_644 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [96]

def word655_1_645 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_643 word655_1_644

def word655_1_646 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 158 (Flapjack.WordRegImm.reg 36) word655_1_645 word655_1_7

def word655_1_647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 158 0#64)

def word655_1_648 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_647 word655_1_11

def word655_1_649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 98 0#64)

def word655_1_650 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_648 word655_1_649

def word655_1_651 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_646 word655_1_650

def word655_1_652 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_637 word655_1_651

def word655_1_653 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_652 word655_1_11

def word655_1_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(128, 4)]

def word655_1_655 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_653 word655_1_654

def word655_1_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 6)]

def word655_1_657 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_655 word655_1_656

def word655_1_658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(112, 8)]

def word655_1_659 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_657 word655_1_658

def word655_1_660 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 10)]

def word655_1_661 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_659 word655_1_660

def word655_1_662 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 144 17562291160714782033#64)

def word655_1_663 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_661 word655_1_662

def word655_1_664 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 13611842547513532036#64)

def word655_1_665 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_663 word655_1_664

def word655_1_666 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 104 18446744073709551615#64)

def word655_1_667 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_665 word655_1_666

def word655_1_668 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 74 18446744069414584320#64)

def word655_1_669 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_667 word655_1_668

def word655_1_670 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_669 word655_1_668

def word655_1_671 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_670 word655_1_666

def word655_1_672 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_671 word655_1_664

def word655_1_673 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_672 word655_1_662

def word655_1_674 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 128

def word655_1_675 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 46)) (some 115) ([128, 50, 112, 82, 144, 42, 104, 74]) (some (128, word655_1_674, 655, 47))

def word655_1_676 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_673 word655_1_675

def word655_1_677 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_676 word655_1_11

def word655_1_678 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 66)]

def word655_1_679 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_677 word655_1_678

def word655_1_680 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 112 1#64)

def word655_1_681 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_679 word655_1_680

def word655_1_682 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 1#64)

def word655_1_683 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_682 word655_1_11

def word655_1_684 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 82 1#64)

def word655_1_685 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_683 word655_1_684

def word655_1_686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 128 0#64)

def word655_1_687 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_685 word655_1_686

def word655_1_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [128]

def word655_1_689 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_687 word655_1_688

def word655_1_690 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 50 (Flapjack.WordRegImm.reg 112) word655_1_689 word655_1_7

def word655_1_691 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 0#64)

def word655_1_692 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_691 word655_1_11

def word655_1_693 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 82 0#64)

def word655_1_694 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_692 word655_1_693

def word655_1_695 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_690 word655_1_694

def word655_1_696 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_681 word655_1_695

def word655_1_697 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_696 word655_1_11

def word655_1_698 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(128, 96)]

def word655_1_699 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_697 word655_1_698

def word655_1_700 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 158)]

def word655_1_701 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_699 word655_1_700

def word655_1_702 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(112, 36)]

def word655_1_703 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_701 word655_1_702

def word655_1_704 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 98)]

def word655_1_705 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_703 word655_1_704

def word655_1_706 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 128)]

def word655_1_707 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_705 word655_1_706

def word655_1_708 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(104, 50)]

def word655_1_709 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_707 word655_1_708

def word655_1_710 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 112)]

def word655_1_711 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_709 word655_1_710

def word655_1_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(136, 82)]

def word655_1_713 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_711 word655_1_712

def word655_1_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 58 18446744073709551615#64)

def word655_1_715 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_713 word655_1_714

def word655_1_716 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 120 4294967295#64)

def word655_1_717 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_715 word655_1_716

def word655_1_718 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 90 0#64)

def word655_1_719 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_717 word655_1_718

def word655_1_720 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 152 18446744069414584321#64)

def word655_1_721 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_719 word655_1_720

def word655_1_722 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_721 word655_1_720

def word655_1_723 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_722 word655_1_718

def word655_1_724 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_723 word655_1_716

def word655_1_725 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_724 word655_1_714

def word655_1_726 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def word655_1_727 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 48)) (some 106) ([42, 104, 74, 136, 58, 120, 90, 152]) (some (42, word655_1_726, 655, 49))

def word655_1_728 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_725 word655_1_727

def word655_1_729 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_728 word655_1_11

def word655_1_730 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(104, 144)]

def word655_1_731 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_729 word655_1_730

def word655_1_732 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 74 0#64)

def word655_1_733 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_731 word655_1_732

def word655_1_734 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 104 1#64)

def word655_1_735 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_734 word655_1_11

def word655_1_736 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 136 1#64)

def word655_1_737 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_735 word655_1_736

def word655_1_738 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 0#64)

def word655_1_739 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_737 word655_1_738

def word655_1_740 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [42]

def word655_1_741 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_739 word655_1_740

def word655_1_742 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 104 (Flapjack.WordRegImm.reg 74) word655_1_741 word655_1_7

def word655_1_743 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 104 0#64)

def word655_1_744 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_743 word655_1_11

def word655_1_745 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 136 0#64)

def word655_1_746 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_744 word655_1_745

def word655_1_747 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_742 word655_1_746

def word655_1_748 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_733 word655_1_747

def word655_1_749 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_748 word655_1_11

def word655_1_750 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_749 word655_1_706

def word655_1_751 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_750 word655_1_708

def word655_1_752 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_751 word655_1_710

def word655_1_753 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_752 word655_1_712

def word655_1_754 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 102)]

def word655_1_755 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_753 word655_1_754

def word655_1_756 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(120, 72)]

def word655_1_757 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_755 word655_1_756

def word655_1_758 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(90, 134)]

def word655_1_759 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_757 word655_1_758

def word655_1_760 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(152, 56)]

def word655_1_761 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_759 word655_1_760

def word655_1_762 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_1_7, 655, 50)) (some 645) ([42, 104, 74, 136, 58, 120, 90, 152]) (some (42, word655_1_726, 655, 51))

def word655_1_763 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_761 word655_1_762

def word655_1_764 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_763 word655_1_11

def word655_1_765 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 110)]

def word655_1_766 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_764 word655_1_765

def word655_1_767 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(104, 80)]

def word655_1_768 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_766 word655_1_767

def word655_1_769 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 142)]

def word655_1_770 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_768 word655_1_769

def word655_1_771 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(136, 64)]

def word655_1_772 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_770 word655_1_771

def word655_1_773 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 118)]

def word655_1_774 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_772 word655_1_773

def word655_1_775 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(120, 88)]

def word655_1_776 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_774 word655_1_775

def word655_1_777 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(90, 150)]

def word655_1_778 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_776 word655_1_777

def word655_1_779 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(152, 48)]

def word655_1_780 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_778 word655_1_779

def word655_1_781 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 105) ([0, 42, 104, 74, 136, 58, 120, 90, 152]) (none)

def word655_1_782 : WordLangProgHOL (BitVec 64) :=
.seq word655_1_780 word655_1_781

def pass655_1 : WordLangProgHOL (BitVec 64) :=
word655_1_782
theorem pass655_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass655_0) + 1) (pass655_0) = pass655_1 := by
  kernel_rfl
#print axioms pass655_1_eq
end InitECandidate.Proofs.WordStages
