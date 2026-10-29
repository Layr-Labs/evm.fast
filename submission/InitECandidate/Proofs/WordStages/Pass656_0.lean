import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source656
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word656_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 4)

def word656_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 6)

def word656_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_0 word656_0_1

def word656_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 8)

def word656_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_2 word656_0_3

def word656_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 10)

def word656_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_4 word656_0_5

def word656_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word656_0_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 132

def word656_0_9 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 2)) (some 102) ([132, 54, 116, 86]) (some (132, word656_0_8, 656, 3))

def word656_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_6 word656_0_9

def word656_0_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word656_0_12 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_10 word656_0_11

def word656_0_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 70)

def word656_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_12 word656_0_13

def word656_0_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_16 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_14 word656_0_15

def word656_0_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_17 word656_0_11

def word656_0_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_18 word656_0_19

def word656_0_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_20 word656_0_21

def word656_0_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [132]

def word656_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_22 word656_0_23

def word656_0_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 54 (Flapjack.WordRegImm.reg 116) word656_0_24 word656_0_7

def word656_0_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_26 word656_0_11

def word656_0_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_29 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_27 word656_0_28

def word656_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_25 word656_0_29

def word656_0_31 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_16 word656_0_30

def word656_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_31 word656_0_11

def word656_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 4)

def word656_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_32 word656_0_33

def word656_0_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 6)

def word656_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_34 word656_0_35

def word656_0_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 8)

def word656_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_36 word656_0_37

def word656_0_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 10)

def word656_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_38 word656_0_39

def word656_0_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def word656_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_40 word656_0_41

def word656_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def word656_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_42 word656_0_43

def word656_0_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word656_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_44 word656_0_45

def word656_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def word656_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_46 word656_0_47

def word656_0_49 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_48 word656_0_47

def word656_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_49 word656_0_45

def word656_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_50 word656_0_43

def word656_0_52 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_51 word656_0_41

def word656_0_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def word656_0_54 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 4)) (some 106) ([54, 116, 86, 148, 46, 108, 78, 140]) (some (54, word656_0_53, 656, 5))

def word656_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_52 word656_0_54

def word656_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_55 word656_0_11

def word656_0_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 132)

def word656_0_58 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_56 word656_0_57

def word656_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_58 word656_0_28

def word656_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_15 word656_0_11

def word656_0_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_60 word656_0_61

def word656_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_62 word656_0_26

def word656_0_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [54]

def word656_0_65 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_63 word656_0_64

def word656_0_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 116 (Flapjack.WordRegImm.reg 86) word656_0_65 word656_0_7

def word656_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_67 word656_0_11

def word656_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_68 word656_0_69

def word656_0_71 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_66 word656_0_70

def word656_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_59 word656_0_71

def word656_0_73 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_72 word656_0_11

def word656_0_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 12)

def word656_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_73 word656_0_74

def word656_0_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 14)

def word656_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_75 word656_0_76

def word656_0_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 16)

def word656_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_77 word656_0_78

def word656_0_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 18)

def word656_0_81 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_79 word656_0_80

def word656_0_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 116

def word656_0_83 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 6)) (some 102) ([116, 86, 148, 46]) (some (116, word656_0_82, 656, 7))

def word656_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_81 word656_0_83

def word656_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_84 word656_0_11

def word656_0_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 54)

def word656_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_85 word656_0_86

def word656_0_88 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_87 word656_0_61

def word656_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_19 word656_0_11

def word656_0_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_91 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_89 word656_0_90

def word656_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_91 word656_0_67

def word656_0_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [116]

def word656_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_92 word656_0_93

def word656_0_95 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 86 (Flapjack.WordRegImm.reg 148) word656_0_94 word656_0_7

def word656_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_28 word656_0_11

def word656_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_96 word656_0_97

def word656_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_95 word656_0_98

def word656_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_88 word656_0_99

def word656_0_101 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_100 word656_0_11

def word656_0_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 12)

def word656_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_101 word656_0_102

def word656_0_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 14)

def word656_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_103 word656_0_104

def word656_0_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 16)

def word656_0_107 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_105 word656_0_106

def word656_0_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 18)

def word656_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_107 word656_0_108

def word656_0_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def word656_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_109 word656_0_110

def word656_0_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def word656_0_113 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_111 word656_0_112

def word656_0_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word656_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_113 word656_0_114

def word656_0_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def word656_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_115 word656_0_116

def word656_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_117 word656_0_116

def word656_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_118 word656_0_114

def word656_0_120 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_119 word656_0_112

def word656_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_120 word656_0_110

def word656_0_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 86

def word656_0_123 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 8)) (some 106) ([86, 148, 46, 108, 78, 140, 62, 124]) (some (86, word656_0_122, 656, 9))

def word656_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_121 word656_0_123

def word656_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_124 word656_0_11

def word656_0_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 116)

def word656_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_125 word656_0_126

def word656_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_127 word656_0_97

def word656_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_61 word656_0_11

def word656_0_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_129 word656_0_130

def word656_0_132 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_131 word656_0_28

def word656_0_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [86]

def word656_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_132 word656_0_133

def word656_0_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 148 (Flapjack.WordRegImm.reg 46) word656_0_134 word656_0_7

def word656_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_69 word656_0_11

def word656_0_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_136 word656_0_137

def word656_0_139 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_135 word656_0_138

def word656_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_128 word656_0_139

def word656_0_141 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_140 word656_0_11

def word656_0_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 20)

def word656_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_141 word656_0_142

def word656_0_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 22)

def word656_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_143 word656_0_144

def word656_0_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 24)

def word656_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_145 word656_0_146

def word656_0_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 26)

def word656_0_149 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_147 word656_0_148

def word656_0_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word656_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_149 word656_0_150

def word656_0_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 4294967295#64)

def word656_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_151 word656_0_152

def word656_0_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_153 word656_0_154

def word656_0_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 18446744069414584321#64)

def word656_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_155 word656_0_156

def word656_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_157 word656_0_156

def word656_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_158 word656_0_154

def word656_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_159 word656_0_152

def word656_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_160 word656_0_150

def word656_0_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 148

def word656_0_163 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 10)) (some 106) ([148, 46, 108, 78, 140, 62, 124, 94]) (some (148, word656_0_162, 656, 11))

def word656_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_161 word656_0_163

def word656_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_164 word656_0_11

def word656_0_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 86)

def word656_0_167 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_165 word656_0_166

def word656_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_167 word656_0_137

def word656_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_90 word656_0_11

def word656_0_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_169 word656_0_170

def word656_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_171 word656_0_69

def word656_0_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [148]

def word656_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_172 word656_0_173

def word656_0_175 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 46 (Flapjack.WordRegImm.reg 108) word656_0_174 word656_0_7

def word656_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_97 word656_0_11

def word656_0_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_176 word656_0_177

def word656_0_179 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_175 word656_0_178

def word656_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_168 word656_0_179

def word656_0_181 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_180 word656_0_11

def word656_0_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 28)

def word656_0_183 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_181 word656_0_182

def word656_0_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 30)

def word656_0_185 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_183 word656_0_184

def word656_0_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 32)

def word656_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_185 word656_0_186

def word656_0_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 34)

def word656_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_187 word656_0_188

def word656_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_189 word656_0_114

def word656_0_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.const 4294967295#64)

def word656_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_190 word656_0_191

def word656_0_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_192 word656_0_193

def word656_0_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.const 18446744069414584321#64)

def word656_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_194 word656_0_195

def word656_0_197 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_196 word656_0_195

def word656_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_197 word656_0_193

def word656_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_198 word656_0_191

def word656_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_199 word656_0_114

def word656_0_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word656_0_202 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 12)) (some 106) ([46, 108, 78, 140, 62, 124, 94, 156]) (some (46, word656_0_201, 656, 13))

def word656_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_200 word656_0_202

def word656_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_203 word656_0_11

def word656_0_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 148)

def word656_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_204 word656_0_205

def word656_0_207 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_206 word656_0_177

def word656_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_130 word656_0_11

def word656_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_208 word656_0_209

def word656_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_210 word656_0_97

def word656_0_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46]

def word656_0_213 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_211 word656_0_212

def word656_0_214 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 108 (Flapjack.WordRegImm.reg 78) word656_0_213 word656_0_7

def word656_0_215 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_137 word656_0_11

def word656_0_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_217 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_215 word656_0_216

def word656_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_214 word656_0_217

def word656_0_219 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_207 word656_0_218

def word656_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_219 word656_0_11

def word656_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 30,
      Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.var 34])

def word656_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_220 word656_0_221

def word656_0_223 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_222 word656_0_177

def word656_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_223 word656_0_218

def word656_0_225 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_224 word656_0_11

def word656_0_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 20)

def word656_0_227 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_225 word656_0_226

def word656_0_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 22)

def word656_0_229 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_227 word656_0_228

def word656_0_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 24)

def word656_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_229 word656_0_230

def word656_0_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 26)

def word656_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_231 word656_0_232

def word656_0_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 28)

def word656_0_235 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_233 word656_0_234

def word656_0_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 30)

def word656_0_237 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_235 word656_0_236

def word656_0_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 32)

def word656_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_237 word656_0_238

def word656_0_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 34)

def word656_0_241 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_239 word656_0_240

def word656_0_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 108

def word656_0_243 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 14)) (some 655) ([108, 78, 140, 62, 124, 94, 156, 38]) (some (108, word656_0_242, 656, 15))

def word656_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_241 word656_0_243

def word656_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_244 word656_0_11

def word656_0_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 46)

def word656_0_247 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_245 word656_0_246

def word656_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_247 word656_0_216

def word656_0_249 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_170 word656_0_11

def word656_0_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_249 word656_0_250

def word656_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_251 word656_0_137

def word656_0_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [108]

def word656_0_254 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_252 word656_0_253

def word656_0_255 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 78 (Flapjack.WordRegImm.reg 140) word656_0_254 word656_0_7

def word656_0_256 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_177 word656_0_11

def word656_0_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_258 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_256 word656_0_257

def word656_0_259 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_255 word656_0_258

def word656_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_248 word656_0_259

def word656_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_260 word656_0_11

def word656_0_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 2)

def word656_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_261 word656_0_262

def word656_0_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 32#64)

def word656_0_265 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_263 word656_0_264

def word656_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_265 word656_0_264

def word656_0_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 124

def word656_0_268 : WordLangProgHOL (BitVec 64) :=
.call (some (([108, 78, 140, 62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word656_0_7, 656, 16)) (some 146) ([124, 94]) (some (124, word656_0_267, 656, 17))

def word656_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_266 word656_0_268

def word656_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_269 word656_0_11

def word656_0_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 108)

def word656_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_270 word656_0_271

def word656_0_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 78)

def word656_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_272 word656_0_273

def word656_0_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 140)

def word656_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_274 word656_0_275

def word656_0_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 62)

def word656_0_278 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_276 word656_0_277

def word656_0_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def word656_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_278 word656_0_279

def word656_0_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def word656_0_282 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_280 word656_0_281

def word656_0_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word656_0_284 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_282 word656_0_283

def word656_0_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def word656_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_284 word656_0_285

def word656_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_286 word656_0_285

def word656_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_287 word656_0_283

def word656_0_289 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_288 word656_0_281

def word656_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_289 word656_0_279

def word656_0_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 94

def word656_0_292 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 18)) (some 106) ([94, 156, 38, 100, 68, 130, 52, 114]) (some (94, word656_0_291, 656, 19))

def word656_0_293 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_290 word656_0_292

def word656_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_293 word656_0_11

def word656_0_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 124)

def word656_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_294 word656_0_295

def word656_0_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_296 word656_0_297

def word656_0_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_299 word656_0_11

def word656_0_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_300 word656_0_301

def word656_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_302 word656_0_271

def word656_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_303 word656_0_273

def word656_0_305 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_304 word656_0_275

def word656_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_305 word656_0_277

def word656_0_307 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_306 word656_0_279

def word656_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_307 word656_0_281

def word656_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_308 word656_0_283

def word656_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_309 word656_0_285

def word656_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_310 word656_0_285

def word656_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_311 word656_0_283

def word656_0_313 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_312 word656_0_281

def word656_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_313 word656_0_279

def word656_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_314 word656_0_285

def word656_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_315 word656_0_283

def word656_0_317 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_316 word656_0_281

def word656_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_317 word656_0_279

def word656_0_319 : WordLangProgHOL (BitVec 64) :=
.call (some (([108, 78, 140, 62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word656_0_7, 656, 20)) (some 117) ([94, 156, 38, 100, 68, 130, 52, 114]) (some (94, word656_0_291, 656, 21))

def word656_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_318 word656_0_319

def word656_0_321 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_320 word656_0_11

def word656_0_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_322 word656_0_11

def word656_0_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_323 word656_0_324

def word656_0_326 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 156 (Flapjack.WordRegImm.reg 38) word656_0_321 word656_0_325

def word656_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_298 word656_0_326

def word656_0_328 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_327 word656_0_11

def word656_0_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 12)

def word656_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_328 word656_0_329

def word656_0_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 14)

def word656_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_330 word656_0_331

def word656_0_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 16)

def word656_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_332 word656_0_333

def word656_0_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 18)

def word656_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_334 word656_0_335

def word656_0_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def word656_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_336 word656_0_337

def word656_0_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def word656_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_338 word656_0_339

def word656_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word656_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_340 word656_0_341

def word656_0_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def word656_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_342 word656_0_343

def word656_0_345 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_344 word656_0_343

def word656_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_345 word656_0_341

def word656_0_347 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_346 word656_0_339

def word656_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_347 word656_0_337

def word656_0_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def word656_0_350 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 22)) (some 214) ([68, 130, 52, 114, 84, 146, 44, 106]) (some (68, word656_0_349, 656, 23))

def word656_0_351 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_348 word656_0_350

def word656_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_351 word656_0_11

def word656_0_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 108)

def word656_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_352 word656_0_353

def word656_0_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 78)

def word656_0_356 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_354 word656_0_355

def word656_0_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 140)

def word656_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_356 word656_0_357

def word656_0_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 62)

def word656_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_358 word656_0_359

def word656_0_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 94)

def word656_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_360 word656_0_361

def word656_0_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 156)

def word656_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_362 word656_0_363

def word656_0_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 38)

def word656_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_364 word656_0_365

def word656_0_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 100)

def word656_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_366 word656_0_367

def word656_0_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def word656_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_368 word656_0_369

def word656_0_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def word656_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_370 word656_0_371

def word656_0_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word656_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_372 word656_0_373

def word656_0_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def word656_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_374 word656_0_375

def word656_0_377 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_376 word656_0_375

def word656_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_377 word656_0_373

def word656_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_378 word656_0_371

def word656_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_379 word656_0_369

def word656_0_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 84

def word656_0_382 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 24)) (some 136) ([84, 146, 44, 106, 76, 138, 60, 122, 92, 154, 40, 102]) (some (84, word656_0_381, 656, 25))

def word656_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_380 word656_0_382

def word656_0_384 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_383 word656_0_11

def word656_0_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 4)

def word656_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_384 word656_0_385

def word656_0_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 6)

def word656_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_386 word656_0_387

def word656_0_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 8)

def word656_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_388 word656_0_389

def word656_0_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 10)

def word656_0_392 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_390 word656_0_391

def word656_0_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 94)

def word656_0_394 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_392 word656_0_393

def word656_0_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154 (Flapjack.WordLangExpHOL.var 156)

def word656_0_396 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_394 word656_0_395

def word656_0_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 38)

def word656_0_398 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_396 word656_0_397

def word656_0_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 100)

def word656_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_398 word656_0_399

def word656_0_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def word656_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_400 word656_0_401

def word656_0_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def word656_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_402 word656_0_403

def word656_0_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word656_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_404 word656_0_405

def word656_0_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def word656_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_406 word656_0_407

def word656_0_409 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_408 word656_0_407

def word656_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_409 word656_0_405

def word656_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_410 word656_0_403

def word656_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_411 word656_0_401

def word656_0_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 76

def word656_0_414 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 26)) (some 136) ([76, 138, 60, 122, 92, 154, 40, 102, 72, 134, 56, 118]) (some (76, word656_0_413, 656, 27))

def word656_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_412 word656_0_414

def word656_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_415 word656_0_11

def word656_0_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 138

def word656_0_418 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 28)) (some 69) ([]) (some (138, word656_0_417, 656, 29))

def word656_0_419 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_416 word656_0_418

def word656_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_419 word656_0_11

def word656_0_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 96#64)

def word656_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_420 word656_0_421

def word656_0_423 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_422 word656_0_421

def word656_0_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def word656_0_425 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 30)) (some 68) ([60]) (some (60, word656_0_424, 656, 31))

def word656_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_423 word656_0_425

def word656_0_427 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_426 word656_0_11

def word656_0_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 138)

def word656_0_429 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_427 word656_0_428

def word656_0_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 68)

def word656_0_431 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_429 word656_0_430

def word656_0_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154 (Flapjack.WordLangExpHOL.var 130)

def word656_0_433 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_431 word656_0_432

def word656_0_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 52)

def word656_0_435 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_433 word656_0_434

def word656_0_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 114)

def word656_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_435 word656_0_436

def word656_0_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 17627433388654248598#64)

def word656_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_437 word656_0_438

def word656_0_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.const 8575836109218198432#64)

def word656_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_439 word656_0_440

def word656_0_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 17923454489921339634#64)

def word656_0_443 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_441 word656_0_442

def word656_0_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.const 7716867327612699207#64)

def word656_0_445 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_443 word656_0_444

def word656_0_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.const 14678990851816772085#64)

def word656_0_447 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_445 word656_0_446

def word656_0_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.const 3156516839386865358#64)

def word656_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_447 word656_0_448

def word656_0_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 10297457778147434006#64)

def word656_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_449 word656_0_450

def word656_0_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.const 5756518291402817435#64)

def word656_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_451 word656_0_452

def word656_0_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 84)

def word656_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_453 word656_0_454

def word656_0_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.var 146)

def word656_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_455 word656_0_456

def word656_0_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 44)

def word656_0_459 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_457 word656_0_458

def word656_0_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126 (Flapjack.WordLangExpHOL.var 106)

def word656_0_461 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_459 word656_0_460

def word656_0_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 20)

def word656_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_461 word656_0_462

def word656_0_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 22)

def word656_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_463 word656_0_464

def word656_0_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 24)

def word656_0_467 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_465 word656_0_466

def word656_0_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 26)

def word656_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_467 word656_0_468

def word656_0_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 28)

def word656_0_471 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_469 word656_0_470

def word656_0_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 30)

def word656_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_471 word656_0_472

def word656_0_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 32)

def word656_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_473 word656_0_474

def word656_0_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 34)

def word656_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_475 word656_0_476

def word656_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_477 word656_0_452

def word656_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_478 word656_0_450

def word656_0_480 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_479 word656_0_448

def word656_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_480 word656_0_446

def word656_0_482 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_481 word656_0_444

def word656_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_482 word656_0_442

def word656_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_483 word656_0_440

def word656_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_484 word656_0_438

def word656_0_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 122

def word656_0_487 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 32)) (some 653) ([122, 92, 154, 40, 102, 72, 134, 56, 118, 88, 150, 48, 110, 80, 142, 64, 126, 96, 158, 36, 98, 66, 128, 50, 112]) (some (122, word656_0_486, 656, 33))

def word656_0_488 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_485 word656_0_487

def word656_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_488 word656_0_11

def word656_0_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 64#64]))

def word656_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_489 word656_0_490

def word656_0_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word656_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_491 word656_0_492

def word656_0_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word656_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_493 word656_0_494

def word656_0_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word656_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_495 word656_0_496

def word656_0_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 60)

def word656_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_497 word656_0_498

def word656_0_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 122)

def word656_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_499 word656_0_500

def word656_0_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 92)

def word656_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_501 word656_0_502

def word656_0_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 154)

def word656_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_503 word656_0_504

def word656_0_506 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 102

def word656_0_507 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 34)) (some 102) ([102, 72, 134, 56]) (some (102, word656_0_506, 656, 35))

def word656_0_508 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_505 word656_0_507

def word656_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_508 word656_0_11

def word656_0_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 40)

def word656_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_509 word656_0_510

def word656_0_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_511 word656_0_512

def word656_0_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_515 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_514 word656_0_11

def word656_0_516 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_517 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_515 word656_0_516

def word656_0_518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 76)

def word656_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_517 word656_0_518

def word656_0_520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 72

def word656_0_521 : WordLangProgHOL (BitVec 64) :=
.call (some (([102]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word656_0_7, 656, 36)) (some 70) ([72]) (some (72, word656_0_520, 656, 37))

def word656_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_519 word656_0_521

def word656_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_522 word656_0_11

def word656_0_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_523 word656_0_524

def word656_0_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [102]

def word656_0_527 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_525 word656_0_526

def word656_0_528 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 72 (Flapjack.WordRegImm.reg 134) word656_0_527 word656_0_7

def word656_0_529 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_529 word656_0_11

def word656_0_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_530 word656_0_531

def word656_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_528 word656_0_532

def word656_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_513 word656_0_533

def word656_0_535 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_534 word656_0_11

def word656_0_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 60)

def word656_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_535 word656_0_536

def word656_0_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 122)

def word656_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_537 word656_0_538

def word656_0_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.var 92)

def word656_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_539 word656_0_540

def word656_0_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 154)

def word656_0_543 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_541 word656_0_542

def word656_0_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 118

def word656_0_545 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 38)) (some 647) ([118, 88, 150, 48]) (some (118, word656_0_544, 656, 39))

def word656_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_543 word656_0_545

def word656_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_546 word656_0_11

def word656_0_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 138))

def word656_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_547 word656_0_548

def word656_0_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 8#64]))

def word656_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_549 word656_0_550

def word656_0_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 16#64]))

def word656_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_551 word656_0_552

def word656_0_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 24#64]))

def word656_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_553 word656_0_554

def word656_0_556 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 76)

def word656_0_557 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_555 word656_0_556

def word656_0_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 80

def word656_0_559 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 40)) (some 70) ([80]) (some (80, word656_0_558, 656, 41))

def word656_0_560 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_557 word656_0_559

def word656_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_560 word656_0_11

def word656_0_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126 (Flapjack.WordLangExpHOL.var 4)

def word656_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_561 word656_0_562

def word656_0_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 6)

def word656_0_565 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_563 word656_0_564

def word656_0_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 8)

def word656_0_567 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_565 word656_0_566

def word656_0_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 10)

def word656_0_569 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_567 word656_0_568

def word656_0_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 102)

def word656_0_571 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_569 word656_0_570

def word656_0_572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 72)

def word656_0_573 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_571 word656_0_572

def word656_0_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 134)

def word656_0_575 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_573 word656_0_574

def word656_0_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 56)

def word656_0_577 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_575 word656_0_576

def word656_0_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 126

def word656_0_579 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 42)) (some 646) ([126, 96, 158, 36, 98, 66, 128, 50]) (some (126, word656_0_578, 656, 43))

def word656_0_580 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_577 word656_0_579

def word656_0_581 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_580 word656_0_11

def word656_0_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 110)

def word656_0_583 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_581 word656_0_582

def word656_0_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 80)

def word656_0_585 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_583 word656_0_584

def word656_0_586 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 142)

def word656_0_587 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_585 word656_0_586

def word656_0_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 64)

def word656_0_589 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_587 word656_0_588

def word656_0_590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 118)

def word656_0_591 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_589 word656_0_590

def word656_0_592 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 88)

def word656_0_593 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_591 word656_0_592

def word656_0_594 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 150)

def word656_0_595 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_593 word656_0_594

def word656_0_596 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 48)

def word656_0_597 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_595 word656_0_596

def word656_0_598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 96

def word656_0_599 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 44)) (some 105) ([96, 158, 36, 98, 66, 128, 50, 112]) (some (96, word656_0_598, 656, 45))

def word656_0_600 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_597 word656_0_599

def word656_0_601 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_600 word656_0_11

def word656_0_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 126)

def word656_0_603 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_601 word656_0_602

def word656_0_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_605 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_603 word656_0_604

def word656_0_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_607 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_606 word656_0_11

def word656_0_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_609 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_607 word656_0_608

def word656_0_610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_611 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_609 word656_0_610

def word656_0_612 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [96]

def word656_0_613 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_611 word656_0_612

def word656_0_614 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 158 (Flapjack.WordRegImm.reg 36) word656_0_613 word656_0_7

def word656_0_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_616 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_615 word656_0_11

def word656_0_617 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_618 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_616 word656_0_617

def word656_0_619 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_614 word656_0_618

def word656_0_620 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_605 word656_0_619

def word656_0_621 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_620 word656_0_11

def word656_0_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 4)

def word656_0_623 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_621 word656_0_622

def word656_0_624 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 6)

def word656_0_625 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_623 word656_0_624

def word656_0_626 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 8)

def word656_0_627 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_625 word656_0_626

def word656_0_628 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 10)

def word656_0_629 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_627 word656_0_628

def word656_0_630 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def word656_0_631 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_629 word656_0_630

def word656_0_632 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def word656_0_633 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_631 word656_0_632

def word656_0_634 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word656_0_635 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_633 word656_0_634

def word656_0_636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def word656_0_637 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_635 word656_0_636

def word656_0_638 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_637 word656_0_636

def word656_0_639 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_638 word656_0_634

def word656_0_640 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_639 word656_0_632

def word656_0_641 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_640 word656_0_630

def word656_0_642 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 128

def word656_0_643 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 46)) (some 115) ([128, 50, 112, 82, 144, 42, 104, 74]) (some (128, word656_0_642, 656, 47))

def word656_0_644 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_641 word656_0_643

def word656_0_645 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_644 word656_0_11

def word656_0_646 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 66)

def word656_0_647 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_645 word656_0_646

def word656_0_648 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_649 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_647 word656_0_648

def word656_0_650 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_651 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_650 word656_0_11

def word656_0_652 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_653 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_651 word656_0_652

def word656_0_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_655 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_653 word656_0_654

def word656_0_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [128]

def word656_0_657 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_655 word656_0_656

def word656_0_658 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 50 (Flapjack.WordRegImm.reg 112) word656_0_657 word656_0_7

def word656_0_659 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_660 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_659 word656_0_11

def word656_0_661 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_662 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_660 word656_0_661

def word656_0_663 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_658 word656_0_662

def word656_0_664 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_649 word656_0_663

def word656_0_665 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_664 word656_0_11

def word656_0_666 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 96)

def word656_0_667 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_665 word656_0_666

def word656_0_668 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 158)

def word656_0_669 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_667 word656_0_668

def word656_0_670 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 36)

def word656_0_671 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_669 word656_0_670

def word656_0_672 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 98)

def word656_0_673 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_671 word656_0_672

def word656_0_674 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 128)

def word656_0_675 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_673 word656_0_674

def word656_0_676 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 50)

def word656_0_677 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_675 word656_0_676

def word656_0_678 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 112)

def word656_0_679 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_677 word656_0_678

def word656_0_680 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 82)

def word656_0_681 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_679 word656_0_680

def word656_0_682 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word656_0_683 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_681 word656_0_682

def word656_0_684 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.const 4294967295#64)

def word656_0_685 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_683 word656_0_684

def word656_0_686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_687 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_685 word656_0_686

def word656_0_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.const 18446744069414584321#64)

def word656_0_689 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_687 word656_0_688

def word656_0_690 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_689 word656_0_688

def word656_0_691 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_690 word656_0_686

def word656_0_692 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_691 word656_0_684

def word656_0_693 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_692 word656_0_682

def word656_0_694 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def word656_0_695 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 48)) (some 106) ([42, 104, 74, 136, 58, 120, 90, 152]) (some (42, word656_0_694, 656, 49))

def word656_0_696 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_693 word656_0_695

def word656_0_697 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_696 word656_0_11

def word656_0_698 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 144)

def word656_0_699 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_697 word656_0_698

def word656_0_700 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_701 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_699 word656_0_700

def word656_0_702 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_703 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_702 word656_0_11

def word656_0_704 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.const 1#64)

def word656_0_705 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_703 word656_0_704

def word656_0_706 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_707 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_705 word656_0_706

def word656_0_708 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [42]

def word656_0_709 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_707 word656_0_708

def word656_0_710 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 104 (Flapjack.WordRegImm.reg 74) word656_0_709 word656_0_7

def word656_0_711 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_712 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_711 word656_0_11

def word656_0_713 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.const 0#64)

def word656_0_714 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_712 word656_0_713

def word656_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_710 word656_0_714

def word656_0_716 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_701 word656_0_715

def word656_0_717 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_716 word656_0_11

def word656_0_718 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_717 word656_0_674

def word656_0_719 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_718 word656_0_676

def word656_0_720 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_719 word656_0_678

def word656_0_721 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_720 word656_0_680

def word656_0_722 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 102)

def word656_0_723 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_721 word656_0_722

def word656_0_724 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 72)

def word656_0_725 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_723 word656_0_724

def word656_0_726 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 134)

def word656_0_727 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_725 word656_0_726

def word656_0_728 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 56)

def word656_0_729 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_727 word656_0_728

def word656_0_730 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word656_0_7, 656, 50)) (some 646) ([42, 104, 74, 136, 58, 120, 90, 152]) (some (42, word656_0_694, 656, 51))

def word656_0_731 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_729 word656_0_730

def word656_0_732 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_731 word656_0_11

def word656_0_733 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 110)

def word656_0_734 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_732 word656_0_733

def word656_0_735 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 80)

def word656_0_736 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_734 word656_0_735

def word656_0_737 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 142)

def word656_0_738 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_736 word656_0_737

def word656_0_739 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 64)

def word656_0_740 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_738 word656_0_739

def word656_0_741 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 118)

def word656_0_742 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_740 word656_0_741

def word656_0_743 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 88)

def word656_0_744 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_742 word656_0_743

def word656_0_745 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 150)

def word656_0_746 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_744 word656_0_745

def word656_0_747 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 48)

def word656_0_748 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_746 word656_0_747

def word656_0_749 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 105) ([0, 42, 104, 74, 136, 58, 120, 90, 152]) (none)

def word656_0_750 : WordLangProgHOL (BitVec 64) :=
.seq word656_0_748 word656_0_749

def pass656_0 : WordLangProgHOL (BitVec 64) :=
word656_0_750
theorem pass656_0_eq : WordSimp.compileExp (source656.2.2) = pass656_0 := by
  kernel_rfl
#print axioms pass656_0_eq
end InitECandidate.Proofs.WordStages
