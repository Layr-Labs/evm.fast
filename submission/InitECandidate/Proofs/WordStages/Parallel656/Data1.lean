import InitE.SourceDeclarations
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel656
def word656_1_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(132, 4)]

def word656_1_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 6)]

def word656_1_2 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_0 word656_1_1

def word656_1_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(116, 8)]

def word656_1_4 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_2 word656_1_3

def word656_1_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(86, 10)]

def word656_1_6 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_4 word656_1_5

def word656_1_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word656_1_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 132

def word656_1_9 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 2)) (some 102) ([132, 54, 116, 86]) (some (132, word656_1_8, 656, 3))

def word656_1_10 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_6 word656_1_9

def word656_1_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word656_1_12 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_10 word656_1_11

def word656_1_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 70)]

def word656_1_14 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_12 word656_1_13

def word656_1_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 116 1#64)

def word656_1_16 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_14 word656_1_15

def word656_1_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 54 1#64)

def word656_1_18 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_17 word656_1_11

def word656_1_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 86 1#64)

def word656_1_20 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_18 word656_1_19

def word656_1_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 132 0#64)

def word656_1_22 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_20 word656_1_21

def word656_1_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [132]

def word656_1_24 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_22 word656_1_23

def word656_1_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 54 (Flapjack.WordRegImm.reg 116) word656_1_24 word656_1_7

def word656_1_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 54 0#64)

def word656_1_27 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_26 word656_1_11

def word656_1_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 86 0#64)

def word656_1_29 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_27 word656_1_28

def word656_1_30 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_25 word656_1_29

def word656_1_31 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_16 word656_1_30

def word656_1_32 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_31 word656_1_11

def word656_1_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 4)]

def word656_1_34 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_32 word656_1_33

def word656_1_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(116, 6)]

def word656_1_36 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_34 word656_1_35

def word656_1_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(86, 8)]

def word656_1_38 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_36 word656_1_37

def word656_1_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(148, 10)]

def word656_1_40 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_38 word656_1_39

def word656_1_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 17562291160714782033#64)

def word656_1_42 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_40 word656_1_41

def word656_1_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 108 13611842547513532036#64)

def word656_1_44 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_42 word656_1_43

def word656_1_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 18446744073709551615#64)

def word656_1_46 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_44 word656_1_45

def word656_1_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 140 18446744069414584320#64)

def word656_1_48 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_46 word656_1_47

def word656_1_49 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_48 word656_1_47

def word656_1_50 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_49 word656_1_45

def word656_1_51 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_50 word656_1_43

def word656_1_52 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_51 word656_1_41

def word656_1_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def word656_1_54 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 4)) (some 106) ([54, 116, 86, 148, 46, 108, 78, 140]) (some (54, word656_1_53, 656, 5))

def word656_1_55 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_52 word656_1_54

def word656_1_56 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_55 word656_1_11

def word656_1_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(116, 132)]

def word656_1_58 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_56 word656_1_57

def word656_1_59 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_58 word656_1_28

def word656_1_60 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_15 word656_1_11

def word656_1_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 148 1#64)

def word656_1_62 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_60 word656_1_61

def word656_1_63 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_62 word656_1_26

def word656_1_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [54]

def word656_1_65 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_63 word656_1_64

def word656_1_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 116 (Flapjack.WordRegImm.reg 86) word656_1_65 word656_1_7

def word656_1_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 116 0#64)

def word656_1_68 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_67 word656_1_11

def word656_1_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 148 0#64)

def word656_1_70 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_68 word656_1_69

def word656_1_71 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_66 word656_1_70

def word656_1_72 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_59 word656_1_71

def word656_1_73 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_72 word656_1_11

def word656_1_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(116, 12)]

def word656_1_75 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_73 word656_1_74

def word656_1_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(86, 14)]

def word656_1_77 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_75 word656_1_76

def word656_1_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(148, 16)]

def word656_1_79 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_77 word656_1_78

def word656_1_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 18)]

def word656_1_81 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_79 word656_1_80

def word656_1_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 116

def word656_1_83 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 6)) (some 102) ([116, 86, 148, 46]) (some (116, word656_1_82, 656, 7))

def word656_1_84 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_81 word656_1_83

def word656_1_85 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_84 word656_1_11

def word656_1_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(86, 54)]

def word656_1_87 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_85 word656_1_86

def word656_1_88 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_87 word656_1_61

def word656_1_89 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_19 word656_1_11

def word656_1_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 1#64)

def word656_1_91 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_89 word656_1_90

def word656_1_92 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_91 word656_1_67

def word656_1_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [116]

def word656_1_94 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_92 word656_1_93

def word656_1_95 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 86 (Flapjack.WordRegImm.reg 148) word656_1_94 word656_1_7

def word656_1_96 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_28 word656_1_11

def word656_1_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 0#64)

def word656_1_98 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_96 word656_1_97

def word656_1_99 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_95 word656_1_98

def word656_1_100 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_88 word656_1_99

def word656_1_101 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_100 word656_1_11

def word656_1_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(86, 12)]

def word656_1_103 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_101 word656_1_102

def word656_1_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(148, 14)]

def word656_1_105 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_103 word656_1_104

def word656_1_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 16)]

def word656_1_107 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_105 word656_1_106

def word656_1_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(108, 18)]

def word656_1_109 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_107 word656_1_108

def word656_1_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 17562291160714782033#64)

def word656_1_111 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_109 word656_1_110

def word656_1_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 140 13611842547513532036#64)

def word656_1_113 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_111 word656_1_112

def word656_1_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 62 18446744073709551615#64)

def word656_1_115 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_113 word656_1_114

def word656_1_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 124 18446744069414584320#64)

def word656_1_117 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_115 word656_1_116

def word656_1_118 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_117 word656_1_116

def word656_1_119 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_118 word656_1_114

def word656_1_120 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_119 word656_1_112

def word656_1_121 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_120 word656_1_110

def word656_1_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 86

def word656_1_123 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 8)) (some 106) ([86, 148, 46, 108, 78, 140, 62, 124]) (some (86, word656_1_122, 656, 9))

def word656_1_124 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_121 word656_1_123

def word656_1_125 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_124 word656_1_11

def word656_1_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(148, 116)]

def word656_1_127 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_125 word656_1_126

def word656_1_128 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_127 word656_1_97

def word656_1_129 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_61 word656_1_11

def word656_1_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 108 1#64)

def word656_1_131 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_129 word656_1_130

def word656_1_132 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_131 word656_1_28

def word656_1_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [86]

def word656_1_134 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_132 word656_1_133

def word656_1_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 148 (Flapjack.WordRegImm.reg 46) word656_1_134 word656_1_7

def word656_1_136 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_69 word656_1_11

def word656_1_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 108 0#64)

def word656_1_138 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_136 word656_1_137

def word656_1_139 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_135 word656_1_138

def word656_1_140 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_128 word656_1_139

def word656_1_141 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_140 word656_1_11

def word656_1_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(148, 20)]

def word656_1_143 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_141 word656_1_142

def word656_1_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 22)]

def word656_1_145 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_143 word656_1_144

def word656_1_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(108, 24)]

def word656_1_147 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_145 word656_1_146

def word656_1_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 26)]

def word656_1_149 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_147 word656_1_148

def word656_1_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 140 18446744073709551615#64)

def word656_1_151 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_149 word656_1_150

def word656_1_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 62 4294967295#64)

def word656_1_153 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_151 word656_1_152

def word656_1_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 124 0#64)

def word656_1_155 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_153 word656_1_154

def word656_1_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 94 18446744069414584321#64)

def word656_1_157 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_155 word656_1_156

def word656_1_158 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_157 word656_1_156

def word656_1_159 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_158 word656_1_154

def word656_1_160 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_159 word656_1_152

def word656_1_161 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_160 word656_1_150

def word656_1_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 148

def word656_1_163 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 10)) (some 106) ([148, 46, 108, 78, 140, 62, 124, 94]) (some (148, word656_1_162, 656, 11))

def word656_1_164 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_161 word656_1_163

def word656_1_165 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_164 word656_1_11

def word656_1_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 86)]

def word656_1_167 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_165 word656_1_166

def word656_1_168 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_167 word656_1_137

def word656_1_169 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_90 word656_1_11

def word656_1_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 1#64)

def word656_1_171 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_169 word656_1_170

def word656_1_172 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_171 word656_1_69

def word656_1_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [148]

def word656_1_174 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_172 word656_1_173

def word656_1_175 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 46 (Flapjack.WordRegImm.reg 108) word656_1_174 word656_1_7

def word656_1_176 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_97 word656_1_11

def word656_1_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 0#64)

def word656_1_178 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_176 word656_1_177

def word656_1_179 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_175 word656_1_178

def word656_1_180 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_168 word656_1_179

def word656_1_181 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_180 word656_1_11

def word656_1_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 28)]

def word656_1_183 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_181 word656_1_182

def word656_1_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(108, 30)]

def word656_1_185 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_183 word656_1_184

def word656_1_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 32)]

def word656_1_187 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_185 word656_1_186

def word656_1_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(140, 34)]

def word656_1_189 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_187 word656_1_188

def word656_1_190 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_189 word656_1_114

def word656_1_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 124 4294967295#64)

def word656_1_192 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_190 word656_1_191

def word656_1_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 94 0#64)

def word656_1_194 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_192 word656_1_193

def word656_1_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 156 18446744069414584321#64)

def word656_1_196 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_194 word656_1_195

def word656_1_197 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_196 word656_1_195

def word656_1_198 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_197 word656_1_193

def word656_1_199 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_198 word656_1_191

def word656_1_200 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_199 word656_1_114

def word656_1_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word656_1_202 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 12)) (some 106) ([46, 108, 78, 140, 62, 124, 94, 156]) (some (46, word656_1_201, 656, 13))

def word656_1_203 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_200 word656_1_202

def word656_1_204 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_203 word656_1_11

def word656_1_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(108, 148)]

def word656_1_206 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_204 word656_1_205

def word656_1_207 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_206 word656_1_177

def word656_1_208 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_130 word656_1_11

def word656_1_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 140 1#64)

def word656_1_210 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_208 word656_1_209

def word656_1_211 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_210 word656_1_97

def word656_1_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46]

def word656_1_213 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_211 word656_1_212

def word656_1_214 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 108 (Flapjack.WordRegImm.reg 78) word656_1_213 word656_1_7

def word656_1_215 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_137 word656_1_11

def word656_1_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 140 0#64)

def word656_1_217 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_215 word656_1_216

def word656_1_218 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_214 word656_1_217

def word656_1_219 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_207 word656_1_218

def word656_1_220 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_219 word656_1_11

def word656_1_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(159, 34)]

def word656_1_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 32)]

def word656_1_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 159 159 (Flapjack.WordRegImm.reg 160)))

def word656_1_224 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_222 word656_1_223

def word656_1_225 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_221 word656_1_224

def word656_1_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 30)]

def word656_1_227 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_226 word656_1_223

def word656_1_228 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_225 word656_1_227

def word656_1_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 28)]

def word656_1_230 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_229 word656_1_223

def word656_1_231 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_228 word656_1_230

def word656_1_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 26)]

def word656_1_233 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_232 word656_1_223

def word656_1_234 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_231 word656_1_233

def word656_1_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 24)]

def word656_1_236 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_235 word656_1_223

def word656_1_237 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_234 word656_1_236

def word656_1_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 22)]

def word656_1_239 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_238 word656_1_223

def word656_1_240 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_237 word656_1_239

def word656_1_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(160, 20)]

def word656_1_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 108 159 (Flapjack.WordRegImm.reg 160)))

def word656_1_243 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_241 word656_1_242

def word656_1_244 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_240 word656_1_243

def word656_1_245 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_220 word656_1_244

def word656_1_246 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_245 word656_1_177

def word656_1_247 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_246 word656_1_218

def word656_1_248 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_247 word656_1_11

def word656_1_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(108, 20)]

def word656_1_250 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_248 word656_1_249

def word656_1_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 22)]

def word656_1_252 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_250 word656_1_251

def word656_1_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(140, 24)]

def word656_1_254 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_252 word656_1_253

def word656_1_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(62, 26)]

def word656_1_256 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_254 word656_1_255

def word656_1_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(124, 28)]

def word656_1_258 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_256 word656_1_257

def word656_1_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(94, 30)]

def word656_1_260 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_258 word656_1_259

def word656_1_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(156, 32)]

def word656_1_262 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_260 word656_1_261

def word656_1_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 34)]

def word656_1_264 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_262 word656_1_263

def word656_1_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 108

def word656_1_266 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 14)) (some 655) ([108, 78, 140, 62, 124, 94, 156, 38]) (some (108, word656_1_265, 656, 15))

def word656_1_267 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_264 word656_1_266

def word656_1_268 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_267 word656_1_11

def word656_1_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 46)]

def word656_1_270 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_268 word656_1_269

def word656_1_271 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_270 word656_1_216

def word656_1_272 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_170 word656_1_11

def word656_1_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 62 1#64)

def word656_1_274 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_272 word656_1_273

def word656_1_275 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_274 word656_1_137

def word656_1_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [108]

def word656_1_277 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_275 word656_1_276

def word656_1_278 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 78 (Flapjack.WordRegImm.reg 140) word656_1_277 word656_1_7

def word656_1_279 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_177 word656_1_11

def word656_1_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 62 0#64)

def word656_1_281 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_279 word656_1_280

def word656_1_282 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_278 word656_1_281

def word656_1_283 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_271 word656_1_282

def word656_1_284 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_283 word656_1_11

def word656_1_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(124, 2)]

def word656_1_286 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_284 word656_1_285

def word656_1_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 94 32#64)

def word656_1_288 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_286 word656_1_287

def word656_1_289 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_288 word656_1_287

def word656_1_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 124

def word656_1_291 : WordLangProgHOL (BitVec 64) :=
.call (some (([108, 78, 140, 62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word656_1_7, 656, 16)) (some 146) ([124, 94]) (some (124, word656_1_290, 656, 17))

def word656_1_292 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_289 word656_1_291

def word656_1_293 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_292 word656_1_11

def word656_1_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(94, 108)]

def word656_1_295 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_293 word656_1_294

def word656_1_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(156, 78)]

def word656_1_297 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_295 word656_1_296

def word656_1_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 140)]

def word656_1_299 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_297 word656_1_298

def word656_1_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(100, 62)]

def word656_1_301 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_299 word656_1_300

def word656_1_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 68 17562291160714782033#64)

def word656_1_303 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_301 word656_1_302

def word656_1_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 130 13611842547513532036#64)

def word656_1_305 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_303 word656_1_304

def word656_1_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 18446744073709551615#64)

def word656_1_307 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_305 word656_1_306

def word656_1_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 114 18446744069414584320#64)

def word656_1_309 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_307 word656_1_308

def word656_1_310 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_309 word656_1_308

def word656_1_311 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_310 word656_1_306

def word656_1_312 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_311 word656_1_304

def word656_1_313 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_312 word656_1_302

def word656_1_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 94

def word656_1_315 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 18)) (some 106) ([94, 156, 38, 100, 68, 130, 52, 114]) (some (94, word656_1_314, 656, 19))

def word656_1_316 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_313 word656_1_315

def word656_1_317 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_316 word656_1_11

def word656_1_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(156, 124)]

def word656_1_319 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_317 word656_1_318

def word656_1_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 0#64)

def word656_1_321 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_319 word656_1_320

def word656_1_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 156 1#64)

def word656_1_323 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_322 word656_1_11

def word656_1_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 100 1#64)

def word656_1_325 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_323 word656_1_324

def word656_1_326 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_325 word656_1_294

def word656_1_327 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_326 word656_1_296

def word656_1_328 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_327 word656_1_298

def word656_1_329 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_328 word656_1_300

def word656_1_330 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_329 word656_1_302

def word656_1_331 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_330 word656_1_304

def word656_1_332 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_331 word656_1_306

def word656_1_333 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_332 word656_1_308

def word656_1_334 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_333 word656_1_308

def word656_1_335 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_334 word656_1_306

def word656_1_336 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_335 word656_1_304

def word656_1_337 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_336 word656_1_302

def word656_1_338 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_337 word656_1_308

def word656_1_339 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_338 word656_1_306

def word656_1_340 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_339 word656_1_304

def word656_1_341 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_340 word656_1_302

def word656_1_342 : WordLangProgHOL (BitVec 64) :=
.call (some (([108, 78, 140, 62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word656_1_7, 656, 20)) (some 117) ([94, 156, 38, 100, 68, 130, 52, 114]) (some (94, word656_1_314, 656, 21))

def word656_1_343 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_341 word656_1_342

def word656_1_344 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_343 word656_1_11

def word656_1_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 156 0#64)

def word656_1_346 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_345 word656_1_11

def word656_1_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 100 0#64)

def word656_1_348 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_346 word656_1_347

def word656_1_349 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 156 (Flapjack.WordRegImm.reg 38) word656_1_344 word656_1_348

def word656_1_350 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_321 word656_1_349

def word656_1_351 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_350 word656_1_11

def word656_1_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 12)]

def word656_1_353 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_351 word656_1_352

def word656_1_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(130, 14)]

def word656_1_355 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_353 word656_1_354

def word656_1_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 16)]

def word656_1_357 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_355 word656_1_356

def word656_1_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 18)]

def word656_1_359 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_357 word656_1_358

def word656_1_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 84 17562291160714782033#64)

def word656_1_361 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_359 word656_1_360

def word656_1_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 146 13611842547513532036#64)

def word656_1_363 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_361 word656_1_362

def word656_1_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 44 18446744073709551615#64)

def word656_1_365 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_363 word656_1_364

def word656_1_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 106 18446744069414584320#64)

def word656_1_367 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_365 word656_1_366

def word656_1_368 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_367 word656_1_366

def word656_1_369 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_368 word656_1_364

def word656_1_370 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_369 word656_1_362

def word656_1_371 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_370 word656_1_360

def word656_1_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def word656_1_373 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 22)) (some 214) ([68, 130, 52, 114, 84, 146, 44, 106]) (some (68, word656_1_372, 656, 23))

def word656_1_374 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_371 word656_1_373

def word656_1_375 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_374 word656_1_11

def word656_1_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(84, 108)]

def word656_1_377 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_375 word656_1_376

def word656_1_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(146, 78)]

def word656_1_379 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_377 word656_1_378

def word656_1_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 140)]

def word656_1_381 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_379 word656_1_380

def word656_1_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(106, 62)]

def word656_1_383 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_381 word656_1_382

def word656_1_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(76, 94)]

def word656_1_385 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_383 word656_1_384

def word656_1_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(138, 156)]

def word656_1_387 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_385 word656_1_386

def word656_1_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(60, 38)]

def word656_1_389 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_387 word656_1_388

def word656_1_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(122, 100)]

def word656_1_391 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_389 word656_1_390

def word656_1_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 92 17562291160714782033#64)

def word656_1_393 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_391 word656_1_392

def word656_1_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 154 13611842547513532036#64)

def word656_1_395 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_393 word656_1_394

def word656_1_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 18446744073709551615#64)

def word656_1_397 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_395 word656_1_396

def word656_1_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 102 18446744069414584320#64)

def word656_1_399 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_397 word656_1_398

def word656_1_400 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_399 word656_1_398

def word656_1_401 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_400 word656_1_396

def word656_1_402 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_401 word656_1_394

def word656_1_403 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_402 word656_1_392

def word656_1_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 84

def word656_1_405 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 24)) (some 136) ([84, 146, 44, 106, 76, 138, 60, 122, 92, 154, 40, 102]) (some (84, word656_1_404, 656, 25))

def word656_1_406 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_403 word656_1_405

def word656_1_407 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_406 word656_1_11

def word656_1_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(76, 4)]

def word656_1_409 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_407 word656_1_408

def word656_1_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(138, 6)]

def word656_1_411 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_409 word656_1_410

def word656_1_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(60, 8)]

def word656_1_413 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_411 word656_1_412

def word656_1_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(122, 10)]

def word656_1_415 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_413 word656_1_414

def word656_1_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(92, 94)]

def word656_1_417 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_415 word656_1_416

def word656_1_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(154, 156)]

def word656_1_419 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_417 word656_1_418

def word656_1_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 38)]

def word656_1_421 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_419 word656_1_420

def word656_1_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(102, 100)]

def word656_1_423 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_421 word656_1_422

def word656_1_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 72 17562291160714782033#64)

def word656_1_425 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_423 word656_1_424

def word656_1_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 134 13611842547513532036#64)

def word656_1_427 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_425 word656_1_426

def word656_1_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 18446744073709551615#64)

def word656_1_429 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_427 word656_1_428

def word656_1_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 118 18446744069414584320#64)

def word656_1_431 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_429 word656_1_430

def word656_1_432 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_431 word656_1_430

def word656_1_433 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_432 word656_1_428

def word656_1_434 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_433 word656_1_426

def word656_1_435 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_434 word656_1_424

def word656_1_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 76

def word656_1_437 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 26)) (some 136) ([76, 138, 60, 122, 92, 154, 40, 102, 72, 134, 56, 118]) (some (76, word656_1_436, 656, 27))

def word656_1_438 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_435 word656_1_437

def word656_1_439 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_438 word656_1_11

def word656_1_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 138

def word656_1_441 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 28)) (some 69) ([]) (some (138, word656_1_440, 656, 29))

def word656_1_442 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_439 word656_1_441

def word656_1_443 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_442 word656_1_11

def word656_1_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 60 96#64)

def word656_1_445 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_443 word656_1_444

def word656_1_446 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_445 word656_1_444

def word656_1_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def word656_1_448 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 30)) (some 68) ([60]) (some (60, word656_1_447, 656, 31))

def word656_1_449 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_446 word656_1_448

def word656_1_450 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_449 word656_1_11

def word656_1_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(122, 138)]

def word656_1_452 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_450 word656_1_451

def word656_1_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(92, 68)]

def word656_1_454 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_452 word656_1_453

def word656_1_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(154, 130)]

def word656_1_456 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_454 word656_1_455

def word656_1_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 52)]

def word656_1_458 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_456 word656_1_457

def word656_1_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(102, 114)]

def word656_1_460 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_458 word656_1_459

def word656_1_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 72 17627433388654248598#64)

def word656_1_462 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_460 word656_1_461

def word656_1_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 134 8575836109218198432#64)

def word656_1_464 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_462 word656_1_463

def word656_1_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 17923454489921339634#64)

def word656_1_466 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_464 word656_1_465

def word656_1_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 118 7716867327612699207#64)

def word656_1_468 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_466 word656_1_467

def word656_1_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 88 14678990851816772085#64)

def word656_1_470 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_468 word656_1_469

def word656_1_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 150 3156516839386865358#64)

def word656_1_472 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_470 word656_1_471

def word656_1_473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 48 10297457778147434006#64)

def word656_1_474 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_472 word656_1_473

def word656_1_475 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 110 5756518291402817435#64)

def word656_1_476 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_474 word656_1_475

def word656_1_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 84)]

def word656_1_478 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_476 word656_1_477

def word656_1_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(142, 146)]

def word656_1_480 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_478 word656_1_479

def word656_1_481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 44)]

def word656_1_482 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_480 word656_1_481

def word656_1_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(126, 106)]

def word656_1_484 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_482 word656_1_483

def word656_1_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(96, 20)]

def word656_1_486 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_484 word656_1_485

def word656_1_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(158, 22)]

def word656_1_488 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_486 word656_1_487

def word656_1_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 24)]

def word656_1_490 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_488 word656_1_489

def word656_1_491 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(98, 26)]

def word656_1_492 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_490 word656_1_491

def word656_1_493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 28)]

def word656_1_494 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_492 word656_1_493

def word656_1_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(128, 30)]

def word656_1_496 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_494 word656_1_495

def word656_1_497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 32)]

def word656_1_498 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_496 word656_1_497

def word656_1_499 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(112, 34)]

def word656_1_500 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_498 word656_1_499

def word656_1_501 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_500 word656_1_475

def word656_1_502 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_501 word656_1_473

def word656_1_503 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_502 word656_1_471

def word656_1_504 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_503 word656_1_469

def word656_1_505 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_504 word656_1_467

def word656_1_506 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_505 word656_1_465

def word656_1_507 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_506 word656_1_463

def word656_1_508 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_507 word656_1_461

def word656_1_509 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 122

def word656_1_510 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 32)) (some 653) ([122, 92, 154, 40, 102, 72, 134, 56, 118, 88, 150, 48, 110, 80, 142, 64, 126, 96, 158, 36, 98, 66, 128, 50, 112]) (some (122, word656_1_509, 656, 33))

def word656_1_511 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_508 word656_1_510

def word656_1_512 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_511 word656_1_11

def word656_1_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(159, 138)]

def word656_1_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 60 (Flapjack.WordLangAddr.addr 159 64#64))

def word656_1_515 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_513 word656_1_514

def word656_1_516 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_512 word656_1_515

def word656_1_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 122 (Flapjack.WordLangAddr.addr 159 72#64))

def word656_1_518 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_513 word656_1_517

def word656_1_519 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_516 word656_1_518

def word656_1_520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 92 (Flapjack.WordLangAddr.addr 159 80#64))

def word656_1_521 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_513 word656_1_520

def word656_1_522 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_519 word656_1_521

def word656_1_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 154 (Flapjack.WordLangAddr.addr 159 88#64))

def word656_1_524 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_513 word656_1_523

def word656_1_525 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_522 word656_1_524

def word656_1_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(102, 60)]

def word656_1_527 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_525 word656_1_526

def word656_1_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(72, 122)]

def word656_1_529 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_527 word656_1_528

def word656_1_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(134, 92)]

def word656_1_531 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_529 word656_1_530

def word656_1_532 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 154)]

def word656_1_533 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_531 word656_1_532

def word656_1_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 102

def word656_1_535 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 34)) (some 102) ([102, 72, 134, 56]) (some (102, word656_1_534, 656, 35))

def word656_1_536 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_533 word656_1_535

def word656_1_537 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_536 word656_1_11

def word656_1_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(72, 40)]

def word656_1_539 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_537 word656_1_538

def word656_1_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 134 1#64)

def word656_1_541 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_539 word656_1_540

def word656_1_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 72 1#64)

def word656_1_543 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_542 word656_1_11

def word656_1_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 1#64)

def word656_1_545 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_543 word656_1_544

def word656_1_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(72, 76)]

def word656_1_547 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_545 word656_1_546

def word656_1_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 72

def word656_1_549 : WordLangProgHOL (BitVec 64) :=
.call (some (([102]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word656_1_7, 656, 36)) (some 70) ([72]) (some (72, word656_1_548, 656, 37))

def word656_1_550 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_547 word656_1_549

def word656_1_551 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_550 word656_1_11

def word656_1_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 102 0#64)

def word656_1_553 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_551 word656_1_552

def word656_1_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [102]

def word656_1_555 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_553 word656_1_554

def word656_1_556 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 72 (Flapjack.WordRegImm.reg 134) word656_1_555 word656_1_7

def word656_1_557 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 72 0#64)

def word656_1_558 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_557 word656_1_11

def word656_1_559 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 0#64)

def word656_1_560 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_558 word656_1_559

def word656_1_561 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_556 word656_1_560

def word656_1_562 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_541 word656_1_561

def word656_1_563 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_562 word656_1_11

def word656_1_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(118, 60)]

def word656_1_565 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_563 word656_1_564

def word656_1_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(88, 122)]

def word656_1_567 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_565 word656_1_566

def word656_1_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(150, 92)]

def word656_1_569 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_567 word656_1_568

def word656_1_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 154)]

def word656_1_571 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_569 word656_1_570

def word656_1_572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 118

def word656_1_573 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 38)) (some 647) ([118, 88, 150, 48]) (some (118, word656_1_572, 656, 39))

def word656_1_574 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_571 word656_1_573

def word656_1_575 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_574 word656_1_11

def word656_1_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 118 (Flapjack.WordLangAddr.addr 159 0#64))

def word656_1_577 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_513 word656_1_576

def word656_1_578 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_575 word656_1_577

def word656_1_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 88 (Flapjack.WordLangAddr.addr 159 8#64))

def word656_1_580 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_513 word656_1_579

def word656_1_581 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_578 word656_1_580

def word656_1_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 150 (Flapjack.WordLangAddr.addr 159 16#64))

def word656_1_583 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_513 word656_1_582

def word656_1_584 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_581 word656_1_583

def word656_1_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 48 (Flapjack.WordLangAddr.addr 159 24#64))

def word656_1_586 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_513 word656_1_585

def word656_1_587 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_584 word656_1_586

def word656_1_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 76)]

def word656_1_589 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_587 word656_1_588

def word656_1_590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 80

def word656_1_591 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 40)) (some 70) ([80]) (some (80, word656_1_590, 656, 41))

def word656_1_592 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_589 word656_1_591

def word656_1_593 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_592 word656_1_11

def word656_1_594 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(126, 4)]

def word656_1_595 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_593 word656_1_594

def word656_1_596 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(96, 6)]

def word656_1_597 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_595 word656_1_596

def word656_1_598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(158, 8)]

def word656_1_599 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_597 word656_1_598

def word656_1_600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 10)]

def word656_1_601 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_599 word656_1_600

def word656_1_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(98, 102)]

def word656_1_603 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_601 word656_1_602

def word656_1_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 72)]

def word656_1_605 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_603 word656_1_604

def word656_1_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(128, 134)]

def word656_1_607 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_605 word656_1_606

def word656_1_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 56)]

def word656_1_609 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_607 word656_1_608

def word656_1_610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 126

def word656_1_611 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 42)) (some 646) ([126, 96, 158, 36, 98, 66, 128, 50]) (some (126, word656_1_610, 656, 43))

def word656_1_612 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_609 word656_1_611

def word656_1_613 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_612 word656_1_11

def word656_1_614 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(96, 110)]

def word656_1_615 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_613 word656_1_614

def word656_1_616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(158, 80)]

def word656_1_617 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_615 word656_1_616

def word656_1_618 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 142)]

def word656_1_619 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_617 word656_1_618

def word656_1_620 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(98, 64)]

def word656_1_621 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_619 word656_1_620

def word656_1_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 118)]

def word656_1_623 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_621 word656_1_622

def word656_1_624 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(128, 88)]

def word656_1_625 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_623 word656_1_624

def word656_1_626 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 150)]

def word656_1_627 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_625 word656_1_626

def word656_1_628 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(112, 48)]

def word656_1_629 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_627 word656_1_628

def word656_1_630 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 96

def word656_1_631 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 44)) (some 105) ([96, 158, 36, 98, 66, 128, 50, 112]) (some (96, word656_1_630, 656, 45))

def word656_1_632 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_629 word656_1_631

def word656_1_633 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_632 word656_1_11

def word656_1_634 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(158, 126)]

def word656_1_635 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_633 word656_1_634

def word656_1_636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 1#64)

def word656_1_637 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_635 word656_1_636

def word656_1_638 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 158 1#64)

def word656_1_639 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_638 word656_1_11

def word656_1_640 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 98 1#64)

def word656_1_641 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_639 word656_1_640

def word656_1_642 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 96 1#64)

def word656_1_643 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_641 word656_1_642

def word656_1_644 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [96]

def word656_1_645 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_643 word656_1_644

def word656_1_646 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 158 (Flapjack.WordRegImm.reg 36) word656_1_645 word656_1_7

def word656_1_647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 158 0#64)

def word656_1_648 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_647 word656_1_11

def word656_1_649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 98 0#64)

def word656_1_650 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_648 word656_1_649

def word656_1_651 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_646 word656_1_650

def word656_1_652 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_637 word656_1_651

def word656_1_653 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_652 word656_1_11

def word656_1_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(128, 4)]

def word656_1_655 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_653 word656_1_654

def word656_1_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 6)]

def word656_1_657 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_655 word656_1_656

def word656_1_658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(112, 8)]

def word656_1_659 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_657 word656_1_658

def word656_1_660 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 10)]

def word656_1_661 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_659 word656_1_660

def word656_1_662 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 144 17562291160714782033#64)

def word656_1_663 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_661 word656_1_662

def word656_1_664 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 13611842547513532036#64)

def word656_1_665 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_663 word656_1_664

def word656_1_666 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 104 18446744073709551615#64)

def word656_1_667 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_665 word656_1_666

def word656_1_668 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 74 18446744069414584320#64)

def word656_1_669 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_667 word656_1_668

def word656_1_670 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_669 word656_1_668

def word656_1_671 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_670 word656_1_666

def word656_1_672 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_671 word656_1_664

def word656_1_673 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_672 word656_1_662

def word656_1_674 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 128

def word656_1_675 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 46)) (some 115) ([128, 50, 112, 82, 144, 42, 104, 74]) (some (128, word656_1_674, 656, 47))

def word656_1_676 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_673 word656_1_675

def word656_1_677 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_676 word656_1_11

def word656_1_678 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 66)]

def word656_1_679 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_677 word656_1_678

def word656_1_680 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 112 1#64)

def word656_1_681 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_679 word656_1_680

def word656_1_682 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 1#64)

def word656_1_683 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_682 word656_1_11

def word656_1_684 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 82 1#64)

def word656_1_685 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_683 word656_1_684

def word656_1_686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 128 0#64)

def word656_1_687 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_685 word656_1_686

def word656_1_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [128]

def word656_1_689 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_687 word656_1_688

def word656_1_690 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 50 (Flapjack.WordRegImm.reg 112) word656_1_689 word656_1_7

def word656_1_691 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 0#64)

def word656_1_692 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_691 word656_1_11

def word656_1_693 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 82 0#64)

def word656_1_694 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_692 word656_1_693

def word656_1_695 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_690 word656_1_694

def word656_1_696 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_681 word656_1_695

def word656_1_697 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_696 word656_1_11

def word656_1_698 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(128, 96)]

def word656_1_699 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_697 word656_1_698

def word656_1_700 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 158)]

def word656_1_701 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_699 word656_1_700

def word656_1_702 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(112, 36)]

def word656_1_703 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_701 word656_1_702

def word656_1_704 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 98)]

def word656_1_705 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_703 word656_1_704

def word656_1_706 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 128)]

def word656_1_707 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_705 word656_1_706

def word656_1_708 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(104, 50)]

def word656_1_709 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_707 word656_1_708

def word656_1_710 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 112)]

def word656_1_711 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_709 word656_1_710

def word656_1_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(136, 82)]

def word656_1_713 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_711 word656_1_712

def word656_1_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 58 18446744073709551615#64)

def word656_1_715 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_713 word656_1_714

def word656_1_716 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 120 4294967295#64)

def word656_1_717 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_715 word656_1_716

def word656_1_718 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 90 0#64)

def word656_1_719 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_717 word656_1_718

def word656_1_720 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 152 18446744069414584321#64)

def word656_1_721 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_719 word656_1_720

def word656_1_722 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_721 word656_1_720

def word656_1_723 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_722 word656_1_718

def word656_1_724 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_723 word656_1_716

def word656_1_725 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_724 word656_1_714

def word656_1_726 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def word656_1_727 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 48)) (some 106) ([42, 104, 74, 136, 58, 120, 90, 152]) (some (42, word656_1_726, 656, 49))

def word656_1_728 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_725 word656_1_727

def word656_1_729 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_728 word656_1_11

def word656_1_730 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(104, 144)]

def word656_1_731 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_729 word656_1_730

def word656_1_732 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 74 0#64)

def word656_1_733 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_731 word656_1_732

def word656_1_734 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 104 1#64)

def word656_1_735 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_734 word656_1_11

def word656_1_736 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 136 1#64)

def word656_1_737 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_735 word656_1_736

def word656_1_738 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 0#64)

def word656_1_739 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_737 word656_1_738

def word656_1_740 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [42]

def word656_1_741 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_739 word656_1_740

def word656_1_742 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 104 (Flapjack.WordRegImm.reg 74) word656_1_741 word656_1_7

def word656_1_743 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 104 0#64)

def word656_1_744 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_743 word656_1_11

def word656_1_745 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 136 0#64)

def word656_1_746 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_744 word656_1_745

def word656_1_747 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_742 word656_1_746

def word656_1_748 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_733 word656_1_747

def word656_1_749 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_748 word656_1_11

def word656_1_750 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_749 word656_1_706

def word656_1_751 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_750 word656_1_708

def word656_1_752 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_751 word656_1_710

def word656_1_753 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_752 word656_1_712

def word656_1_754 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 102)]

def word656_1_755 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_753 word656_1_754

def word656_1_756 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(120, 72)]

def word656_1_757 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_755 word656_1_756

def word656_1_758 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(90, 134)]

def word656_1_759 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_757 word656_1_758

def word656_1_760 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(152, 56)]

def word656_1_761 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_759 word656_1_760

def word656_1_762 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_1_7, 656, 50)) (some 646) ([42, 104, 74, 136, 58, 120, 90, 152]) (some (42, word656_1_726, 656, 51))

def word656_1_763 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_761 word656_1_762

def word656_1_764 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_763 word656_1_11

def word656_1_765 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 110)]

def word656_1_766 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_764 word656_1_765

def word656_1_767 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(104, 80)]

def word656_1_768 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_766 word656_1_767

def word656_1_769 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 142)]

def word656_1_770 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_768 word656_1_769

def word656_1_771 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(136, 64)]

def word656_1_772 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_770 word656_1_771

def word656_1_773 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 118)]

def word656_1_774 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_772 word656_1_773

def word656_1_775 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(120, 88)]

def word656_1_776 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_774 word656_1_775

def word656_1_777 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(90, 150)]

def word656_1_778 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_776 word656_1_777

def word656_1_779 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(152, 48)]

def word656_1_780 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_778 word656_1_779

def word656_1_781 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 105) ([0, 42, 104, 74, 136, 58, 120, 90, 152]) (none)

def word656_1_782 : WordLangProgHOL (BitVec 64) :=
.seq word656_1_780 word656_1_781

def pass656_1 : WordLangProgHOL (BitVec 64) :=
word656_1_782
end InitECandidate.Proofs.WordStages.Parallel656
