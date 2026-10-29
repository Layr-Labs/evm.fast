import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source655
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word655_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 4)

def word655_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 6)

def word655_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_0 word655_0_1

def word655_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 8)

def word655_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_2 word655_0_3

def word655_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 10)

def word655_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_4 word655_0_5

def word655_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word655_0_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 132

def word655_0_9 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 2)) (some 102) ([132, 54, 116, 86]) (some (132, word655_0_8, 655, 3))

def word655_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_6 word655_0_9

def word655_0_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word655_0_12 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_10 word655_0_11

def word655_0_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 70)

def word655_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_12 word655_0_13

def word655_0_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_16 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_14 word655_0_15

def word655_0_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_17 word655_0_11

def word655_0_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_18 word655_0_19

def word655_0_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_20 word655_0_21

def word655_0_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [132]

def word655_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_22 word655_0_23

def word655_0_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 54 (Flapjack.WordRegImm.reg 116) word655_0_24 word655_0_7

def word655_0_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_26 word655_0_11

def word655_0_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_29 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_27 word655_0_28

def word655_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_25 word655_0_29

def word655_0_31 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_16 word655_0_30

def word655_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_31 word655_0_11

def word655_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 4)

def word655_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_32 word655_0_33

def word655_0_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 6)

def word655_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_34 word655_0_35

def word655_0_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 8)

def word655_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_36 word655_0_37

def word655_0_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 10)

def word655_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_38 word655_0_39

def word655_0_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def word655_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_40 word655_0_41

def word655_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def word655_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_42 word655_0_43

def word655_0_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word655_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_44 word655_0_45

def word655_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def word655_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_46 word655_0_47

def word655_0_49 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_48 word655_0_47

def word655_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_49 word655_0_45

def word655_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_50 word655_0_43

def word655_0_52 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_51 word655_0_41

def word655_0_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def word655_0_54 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 4)) (some 106) ([54, 116, 86, 148, 46, 108, 78, 140]) (some (54, word655_0_53, 655, 5))

def word655_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_52 word655_0_54

def word655_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_55 word655_0_11

def word655_0_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 132)

def word655_0_58 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_56 word655_0_57

def word655_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_58 word655_0_28

def word655_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_15 word655_0_11

def word655_0_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_60 word655_0_61

def word655_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_62 word655_0_26

def word655_0_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [54]

def word655_0_65 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_63 word655_0_64

def word655_0_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 116 (Flapjack.WordRegImm.reg 86) word655_0_65 word655_0_7

def word655_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_67 word655_0_11

def word655_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_68 word655_0_69

def word655_0_71 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_66 word655_0_70

def word655_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_59 word655_0_71

def word655_0_73 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_72 word655_0_11

def word655_0_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 12)

def word655_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_73 word655_0_74

def word655_0_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 14)

def word655_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_75 word655_0_76

def word655_0_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 16)

def word655_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_77 word655_0_78

def word655_0_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 18)

def word655_0_81 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_79 word655_0_80

def word655_0_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 116

def word655_0_83 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 6)) (some 102) ([116, 86, 148, 46]) (some (116, word655_0_82, 655, 7))

def word655_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_81 word655_0_83

def word655_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_84 word655_0_11

def word655_0_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 54)

def word655_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_85 word655_0_86

def word655_0_88 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_87 word655_0_61

def word655_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_19 word655_0_11

def word655_0_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_91 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_89 word655_0_90

def word655_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_91 word655_0_67

def word655_0_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [116]

def word655_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_92 word655_0_93

def word655_0_95 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 86 (Flapjack.WordRegImm.reg 148) word655_0_94 word655_0_7

def word655_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_28 word655_0_11

def word655_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_96 word655_0_97

def word655_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_95 word655_0_98

def word655_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_88 word655_0_99

def word655_0_101 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_100 word655_0_11

def word655_0_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 12)

def word655_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_101 word655_0_102

def word655_0_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 14)

def word655_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_103 word655_0_104

def word655_0_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 16)

def word655_0_107 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_105 word655_0_106

def word655_0_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 18)

def word655_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_107 word655_0_108

def word655_0_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def word655_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_109 word655_0_110

def word655_0_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def word655_0_113 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_111 word655_0_112

def word655_0_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word655_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_113 word655_0_114

def word655_0_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def word655_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_115 word655_0_116

def word655_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_117 word655_0_116

def word655_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_118 word655_0_114

def word655_0_120 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_119 word655_0_112

def word655_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_120 word655_0_110

def word655_0_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 86

def word655_0_123 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 8)) (some 106) ([86, 148, 46, 108, 78, 140, 62, 124]) (some (86, word655_0_122, 655, 9))

def word655_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_121 word655_0_123

def word655_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_124 word655_0_11

def word655_0_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 116)

def word655_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_125 word655_0_126

def word655_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_127 word655_0_97

def word655_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_61 word655_0_11

def word655_0_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_129 word655_0_130

def word655_0_132 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_131 word655_0_28

def word655_0_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [86]

def word655_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_132 word655_0_133

def word655_0_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 148 (Flapjack.WordRegImm.reg 46) word655_0_134 word655_0_7

def word655_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_69 word655_0_11

def word655_0_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_136 word655_0_137

def word655_0_139 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_135 word655_0_138

def word655_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_128 word655_0_139

def word655_0_141 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_140 word655_0_11

def word655_0_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 20)

def word655_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_141 word655_0_142

def word655_0_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 22)

def word655_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_143 word655_0_144

def word655_0_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 24)

def word655_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_145 word655_0_146

def word655_0_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 26)

def word655_0_149 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_147 word655_0_148

def word655_0_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word655_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_149 word655_0_150

def word655_0_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 4294967295#64)

def word655_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_151 word655_0_152

def word655_0_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_153 word655_0_154

def word655_0_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 18446744069414584321#64)

def word655_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_155 word655_0_156

def word655_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_157 word655_0_156

def word655_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_158 word655_0_154

def word655_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_159 word655_0_152

def word655_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_160 word655_0_150

def word655_0_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 148

def word655_0_163 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 10)) (some 106) ([148, 46, 108, 78, 140, 62, 124, 94]) (some (148, word655_0_162, 655, 11))

def word655_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_161 word655_0_163

def word655_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_164 word655_0_11

def word655_0_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 86)

def word655_0_167 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_165 word655_0_166

def word655_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_167 word655_0_137

def word655_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_90 word655_0_11

def word655_0_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_169 word655_0_170

def word655_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_171 word655_0_69

def word655_0_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [148]

def word655_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_172 word655_0_173

def word655_0_175 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 46 (Flapjack.WordRegImm.reg 108) word655_0_174 word655_0_7

def word655_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_97 word655_0_11

def word655_0_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_176 word655_0_177

def word655_0_179 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_175 word655_0_178

def word655_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_168 word655_0_179

def word655_0_181 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_180 word655_0_11

def word655_0_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 28)

def word655_0_183 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_181 word655_0_182

def word655_0_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 30)

def word655_0_185 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_183 word655_0_184

def word655_0_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 32)

def word655_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_185 word655_0_186

def word655_0_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 34)

def word655_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_187 word655_0_188

def word655_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_189 word655_0_114

def word655_0_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.const 4294967295#64)

def word655_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_190 word655_0_191

def word655_0_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_192 word655_0_193

def word655_0_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.const 18446744069414584321#64)

def word655_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_194 word655_0_195

def word655_0_197 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_196 word655_0_195

def word655_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_197 word655_0_193

def word655_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_198 word655_0_191

def word655_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_199 word655_0_114

def word655_0_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word655_0_202 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 12)) (some 106) ([46, 108, 78, 140, 62, 124, 94, 156]) (some (46, word655_0_201, 655, 13))

def word655_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_200 word655_0_202

def word655_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_203 word655_0_11

def word655_0_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 148)

def word655_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_204 word655_0_205

def word655_0_207 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_206 word655_0_177

def word655_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_130 word655_0_11

def word655_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_208 word655_0_209

def word655_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_210 word655_0_97

def word655_0_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46]

def word655_0_213 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_211 word655_0_212

def word655_0_214 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 108 (Flapjack.WordRegImm.reg 78) word655_0_213 word655_0_7

def word655_0_215 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_137 word655_0_11

def word655_0_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_217 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_215 word655_0_216

def word655_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_214 word655_0_217

def word655_0_219 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_207 word655_0_218

def word655_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_219 word655_0_11

def word655_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 30,
      Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.var 34])

def word655_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_220 word655_0_221

def word655_0_223 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_222 word655_0_177

def word655_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_223 word655_0_218

def word655_0_225 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_224 word655_0_11

def word655_0_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 20)

def word655_0_227 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_225 word655_0_226

def word655_0_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 22)

def word655_0_229 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_227 word655_0_228

def word655_0_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 24)

def word655_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_229 word655_0_230

def word655_0_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 26)

def word655_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_231 word655_0_232

def word655_0_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 28)

def word655_0_235 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_233 word655_0_234

def word655_0_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 30)

def word655_0_237 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_235 word655_0_236

def word655_0_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 32)

def word655_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_237 word655_0_238

def word655_0_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 34)

def word655_0_241 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_239 word655_0_240

def word655_0_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 108

def word655_0_243 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 14)) (some 654) ([108, 78, 140, 62, 124, 94, 156, 38]) (some (108, word655_0_242, 655, 15))

def word655_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_241 word655_0_243

def word655_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_244 word655_0_11

def word655_0_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 46)

def word655_0_247 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_245 word655_0_246

def word655_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_247 word655_0_216

def word655_0_249 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_170 word655_0_11

def word655_0_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_249 word655_0_250

def word655_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_251 word655_0_137

def word655_0_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [108]

def word655_0_254 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_252 word655_0_253

def word655_0_255 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 78 (Flapjack.WordRegImm.reg 140) word655_0_254 word655_0_7

def word655_0_256 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_177 word655_0_11

def word655_0_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_258 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_256 word655_0_257

def word655_0_259 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_255 word655_0_258

def word655_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_248 word655_0_259

def word655_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_260 word655_0_11

def word655_0_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 2)

def word655_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_261 word655_0_262

def word655_0_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 32#64)

def word655_0_265 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_263 word655_0_264

def word655_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_265 word655_0_264

def word655_0_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 124

def word655_0_268 : WordLangProgHOL (BitVec 64) :=
.call (some (([108, 78, 140, 62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word655_0_7, 655, 16)) (some 146) ([124, 94]) (some (124, word655_0_267, 655, 17))

def word655_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_266 word655_0_268

def word655_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_269 word655_0_11

def word655_0_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 108)

def word655_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_270 word655_0_271

def word655_0_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 78)

def word655_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_272 word655_0_273

def word655_0_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 140)

def word655_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_274 word655_0_275

def word655_0_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 62)

def word655_0_278 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_276 word655_0_277

def word655_0_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def word655_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_278 word655_0_279

def word655_0_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def word655_0_282 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_280 word655_0_281

def word655_0_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word655_0_284 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_282 word655_0_283

def word655_0_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def word655_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_284 word655_0_285

def word655_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_286 word655_0_285

def word655_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_287 word655_0_283

def word655_0_289 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_288 word655_0_281

def word655_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_289 word655_0_279

def word655_0_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 94

def word655_0_292 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 18)) (some 106) ([94, 156, 38, 100, 68, 130, 52, 114]) (some (94, word655_0_291, 655, 19))

def word655_0_293 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_290 word655_0_292

def word655_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_293 word655_0_11

def word655_0_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 124)

def word655_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_294 word655_0_295

def word655_0_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_296 word655_0_297

def word655_0_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_299 word655_0_11

def word655_0_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_300 word655_0_301

def word655_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_302 word655_0_271

def word655_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_303 word655_0_273

def word655_0_305 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_304 word655_0_275

def word655_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_305 word655_0_277

def word655_0_307 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_306 word655_0_279

def word655_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_307 word655_0_281

def word655_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_308 word655_0_283

def word655_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_309 word655_0_285

def word655_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_310 word655_0_285

def word655_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_311 word655_0_283

def word655_0_313 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_312 word655_0_281

def word655_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_313 word655_0_279

def word655_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_314 word655_0_285

def word655_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_315 word655_0_283

def word655_0_317 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_316 word655_0_281

def word655_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_317 word655_0_279

def word655_0_319 : WordLangProgHOL (BitVec 64) :=
.call (some (([108, 78, 140, 62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word655_0_7, 655, 20)) (some 117) ([94, 156, 38, 100, 68, 130, 52, 114]) (some (94, word655_0_291, 655, 21))

def word655_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_318 word655_0_319

def word655_0_321 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_320 word655_0_11

def word655_0_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_322 word655_0_11

def word655_0_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_323 word655_0_324

def word655_0_326 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 156 (Flapjack.WordRegImm.reg 38) word655_0_321 word655_0_325

def word655_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_298 word655_0_326

def word655_0_328 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_327 word655_0_11

def word655_0_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 12)

def word655_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_328 word655_0_329

def word655_0_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 14)

def word655_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_330 word655_0_331

def word655_0_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 16)

def word655_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_332 word655_0_333

def word655_0_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 18)

def word655_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_334 word655_0_335

def word655_0_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def word655_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_336 word655_0_337

def word655_0_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def word655_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_338 word655_0_339

def word655_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word655_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_340 word655_0_341

def word655_0_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def word655_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_342 word655_0_343

def word655_0_345 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_344 word655_0_343

def word655_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_345 word655_0_341

def word655_0_347 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_346 word655_0_339

def word655_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_347 word655_0_337

def word655_0_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def word655_0_350 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 22)) (some 210) ([68, 130, 52, 114, 84, 146, 44, 106]) (some (68, word655_0_349, 655, 23))

def word655_0_351 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_348 word655_0_350

def word655_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_351 word655_0_11

def word655_0_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 108)

def word655_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_352 word655_0_353

def word655_0_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 78)

def word655_0_356 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_354 word655_0_355

def word655_0_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 140)

def word655_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_356 word655_0_357

def word655_0_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 62)

def word655_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_358 word655_0_359

def word655_0_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 94)

def word655_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_360 word655_0_361

def word655_0_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 156)

def word655_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_362 word655_0_363

def word655_0_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 38)

def word655_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_364 word655_0_365

def word655_0_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 100)

def word655_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_366 word655_0_367

def word655_0_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def word655_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_368 word655_0_369

def word655_0_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def word655_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_370 word655_0_371

def word655_0_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word655_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_372 word655_0_373

def word655_0_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def word655_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_374 word655_0_375

def word655_0_377 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_376 word655_0_375

def word655_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_377 word655_0_373

def word655_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_378 word655_0_371

def word655_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_379 word655_0_369

def word655_0_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 84

def word655_0_382 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 24)) (some 136) ([84, 146, 44, 106, 76, 138, 60, 122, 92, 154, 40, 102]) (some (84, word655_0_381, 655, 25))

def word655_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_380 word655_0_382

def word655_0_384 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_383 word655_0_11

def word655_0_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 4)

def word655_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_384 word655_0_385

def word655_0_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 6)

def word655_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_386 word655_0_387

def word655_0_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 8)

def word655_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_388 word655_0_389

def word655_0_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 10)

def word655_0_392 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_390 word655_0_391

def word655_0_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 94)

def word655_0_394 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_392 word655_0_393

def word655_0_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154 (Flapjack.WordLangExpHOL.var 156)

def word655_0_396 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_394 word655_0_395

def word655_0_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 38)

def word655_0_398 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_396 word655_0_397

def word655_0_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 100)

def word655_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_398 word655_0_399

def word655_0_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def word655_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_400 word655_0_401

def word655_0_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def word655_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_402 word655_0_403

def word655_0_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word655_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_404 word655_0_405

def word655_0_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def word655_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_406 word655_0_407

def word655_0_409 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_408 word655_0_407

def word655_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_409 word655_0_405

def word655_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_410 word655_0_403

def word655_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_411 word655_0_401

def word655_0_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 76

def word655_0_414 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 26)) (some 136) ([76, 138, 60, 122, 92, 154, 40, 102, 72, 134, 56, 118]) (some (76, word655_0_413, 655, 27))

def word655_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_412 word655_0_414

def word655_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_415 word655_0_11

def word655_0_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 138

def word655_0_418 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 28)) (some 69) ([]) (some (138, word655_0_417, 655, 29))

def word655_0_419 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_416 word655_0_418

def word655_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_419 word655_0_11

def word655_0_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 96#64)

def word655_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_420 word655_0_421

def word655_0_423 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_422 word655_0_421

def word655_0_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def word655_0_425 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 30)) (some 68) ([60]) (some (60, word655_0_424, 655, 31))

def word655_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_423 word655_0_425

def word655_0_427 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_426 word655_0_11

def word655_0_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 138)

def word655_0_429 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_427 word655_0_428

def word655_0_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 68)

def word655_0_431 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_429 word655_0_430

def word655_0_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154 (Flapjack.WordLangExpHOL.var 130)

def word655_0_433 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_431 word655_0_432

def word655_0_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 52)

def word655_0_435 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_433 word655_0_434

def word655_0_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 114)

def word655_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_435 word655_0_436

def word655_0_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 17627433388654248598#64)

def word655_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_437 word655_0_438

def word655_0_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.const 8575836109218198432#64)

def word655_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_439 word655_0_440

def word655_0_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 17923454489921339634#64)

def word655_0_443 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_441 word655_0_442

def word655_0_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.const 7716867327612699207#64)

def word655_0_445 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_443 word655_0_444

def word655_0_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.const 14678990851816772085#64)

def word655_0_447 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_445 word655_0_446

def word655_0_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.const 3156516839386865358#64)

def word655_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_447 word655_0_448

def word655_0_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 10297457778147434006#64)

def word655_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_449 word655_0_450

def word655_0_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.const 5756518291402817435#64)

def word655_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_451 word655_0_452

def word655_0_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 84)

def word655_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_453 word655_0_454

def word655_0_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.var 146)

def word655_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_455 word655_0_456

def word655_0_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 44)

def word655_0_459 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_457 word655_0_458

def word655_0_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126 (Flapjack.WordLangExpHOL.var 106)

def word655_0_461 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_459 word655_0_460

def word655_0_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 20)

def word655_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_461 word655_0_462

def word655_0_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 22)

def word655_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_463 word655_0_464

def word655_0_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 24)

def word655_0_467 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_465 word655_0_466

def word655_0_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 26)

def word655_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_467 word655_0_468

def word655_0_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 28)

def word655_0_471 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_469 word655_0_470

def word655_0_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 30)

def word655_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_471 word655_0_472

def word655_0_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 32)

def word655_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_473 word655_0_474

def word655_0_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 34)

def word655_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_475 word655_0_476

def word655_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_477 word655_0_452

def word655_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_478 word655_0_450

def word655_0_480 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_479 word655_0_448

def word655_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_480 word655_0_446

def word655_0_482 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_481 word655_0_444

def word655_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_482 word655_0_442

def word655_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_483 word655_0_440

def word655_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_484 word655_0_438

def word655_0_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 122

def word655_0_487 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 32)) (some 652) ([122, 92, 154, 40, 102, 72, 134, 56, 118, 88, 150, 48, 110, 80, 142, 64, 126, 96, 158, 36, 98, 66, 128, 50, 112]) (some (122, word655_0_486, 655, 33))

def word655_0_488 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_485 word655_0_487

def word655_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_488 word655_0_11

def word655_0_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 64#64]))

def word655_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_489 word655_0_490

def word655_0_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word655_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_491 word655_0_492

def word655_0_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word655_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_493 word655_0_494

def word655_0_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word655_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_495 word655_0_496

def word655_0_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 60)

def word655_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_497 word655_0_498

def word655_0_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 122)

def word655_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_499 word655_0_500

def word655_0_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 92)

def word655_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_501 word655_0_502

def word655_0_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 154)

def word655_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_503 word655_0_504

def word655_0_506 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 102

def word655_0_507 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 34)) (some 102) ([102, 72, 134, 56]) (some (102, word655_0_506, 655, 35))

def word655_0_508 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_505 word655_0_507

def word655_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_508 word655_0_11

def word655_0_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 40)

def word655_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_509 word655_0_510

def word655_0_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_511 word655_0_512

def word655_0_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_515 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_514 word655_0_11

def word655_0_516 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_517 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_515 word655_0_516

def word655_0_518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 76)

def word655_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_517 word655_0_518

def word655_0_520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 72

def word655_0_521 : WordLangProgHOL (BitVec 64) :=
.call (some (([102]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word655_0_7, 655, 36)) (some 70) ([72]) (some (72, word655_0_520, 655, 37))

def word655_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_519 word655_0_521

def word655_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_522 word655_0_11

def word655_0_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_523 word655_0_524

def word655_0_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [102]

def word655_0_527 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_525 word655_0_526

def word655_0_528 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 72 (Flapjack.WordRegImm.reg 134) word655_0_527 word655_0_7

def word655_0_529 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_529 word655_0_11

def word655_0_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_530 word655_0_531

def word655_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_528 word655_0_532

def word655_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_513 word655_0_533

def word655_0_535 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_534 word655_0_11

def word655_0_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 60)

def word655_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_535 word655_0_536

def word655_0_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 122)

def word655_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_537 word655_0_538

def word655_0_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.var 92)

def word655_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_539 word655_0_540

def word655_0_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 154)

def word655_0_543 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_541 word655_0_542

def word655_0_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 118

def word655_0_545 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 38)) (some 646) ([118, 88, 150, 48]) (some (118, word655_0_544, 655, 39))

def word655_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_543 word655_0_545

def word655_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_546 word655_0_11

def word655_0_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 138))

def word655_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_547 word655_0_548

def word655_0_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 8#64]))

def word655_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_549 word655_0_550

def word655_0_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 16#64]))

def word655_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_551 word655_0_552

def word655_0_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 138, Flapjack.WordLangExpHOL.const 24#64]))

def word655_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_553 word655_0_554

def word655_0_556 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 76)

def word655_0_557 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_555 word655_0_556

def word655_0_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 80

def word655_0_559 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 40)) (some 70) ([80]) (some (80, word655_0_558, 655, 41))

def word655_0_560 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_557 word655_0_559

def word655_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_560 word655_0_11

def word655_0_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126 (Flapjack.WordLangExpHOL.var 4)

def word655_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_561 word655_0_562

def word655_0_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 6)

def word655_0_565 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_563 word655_0_564

def word655_0_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 8)

def word655_0_567 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_565 word655_0_566

def word655_0_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 10)

def word655_0_569 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_567 word655_0_568

def word655_0_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 102)

def word655_0_571 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_569 word655_0_570

def word655_0_572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 72)

def word655_0_573 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_571 word655_0_572

def word655_0_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 134)

def word655_0_575 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_573 word655_0_574

def word655_0_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 56)

def word655_0_577 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_575 word655_0_576

def word655_0_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 126

def word655_0_579 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 42)) (some 645) ([126, 96, 158, 36, 98, 66, 128, 50]) (some (126, word655_0_578, 655, 43))

def word655_0_580 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_577 word655_0_579

def word655_0_581 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_580 word655_0_11

def word655_0_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 110)

def word655_0_583 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_581 word655_0_582

def word655_0_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 80)

def word655_0_585 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_583 word655_0_584

def word655_0_586 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 142)

def word655_0_587 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_585 word655_0_586

def word655_0_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 64)

def word655_0_589 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_587 word655_0_588

def word655_0_590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 118)

def word655_0_591 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_589 word655_0_590

def word655_0_592 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 88)

def word655_0_593 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_591 word655_0_592

def word655_0_594 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 150)

def word655_0_595 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_593 word655_0_594

def word655_0_596 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 48)

def word655_0_597 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_595 word655_0_596

def word655_0_598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 96

def word655_0_599 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 44)) (some 105) ([96, 158, 36, 98, 66, 128, 50, 112]) (some (96, word655_0_598, 655, 45))

def word655_0_600 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_597 word655_0_599

def word655_0_601 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_600 word655_0_11

def word655_0_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 126)

def word655_0_603 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_601 word655_0_602

def word655_0_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_605 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_603 word655_0_604

def word655_0_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_607 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_606 word655_0_11

def word655_0_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_609 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_607 word655_0_608

def word655_0_610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_611 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_609 word655_0_610

def word655_0_612 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [96]

def word655_0_613 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_611 word655_0_612

def word655_0_614 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 158 (Flapjack.WordRegImm.reg 36) word655_0_613 word655_0_7

def word655_0_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_616 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_615 word655_0_11

def word655_0_617 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_618 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_616 word655_0_617

def word655_0_619 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_614 word655_0_618

def word655_0_620 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_605 word655_0_619

def word655_0_621 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_620 word655_0_11

def word655_0_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 4)

def word655_0_623 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_621 word655_0_622

def word655_0_624 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 6)

def word655_0_625 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_623 word655_0_624

def word655_0_626 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 8)

def word655_0_627 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_625 word655_0_626

def word655_0_628 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 10)

def word655_0_629 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_627 word655_0_628

def word655_0_630 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.const 17562291160714782033#64)

def word655_0_631 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_629 word655_0_630

def word655_0_632 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 13611842547513532036#64)

def word655_0_633 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_631 word655_0_632

def word655_0_634 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word655_0_635 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_633 word655_0_634

def word655_0_636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 18446744069414584320#64)

def word655_0_637 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_635 word655_0_636

def word655_0_638 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_637 word655_0_636

def word655_0_639 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_638 word655_0_634

def word655_0_640 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_639 word655_0_632

def word655_0_641 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_640 word655_0_630

def word655_0_642 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 128

def word655_0_643 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 46)) (some 115) ([128, 50, 112, 82, 144, 42, 104, 74]) (some (128, word655_0_642, 655, 47))

def word655_0_644 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_641 word655_0_643

def word655_0_645 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_644 word655_0_11

def word655_0_646 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 66)

def word655_0_647 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_645 word655_0_646

def word655_0_648 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_649 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_647 word655_0_648

def word655_0_650 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_651 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_650 word655_0_11

def word655_0_652 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_653 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_651 word655_0_652

def word655_0_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_655 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_653 word655_0_654

def word655_0_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [128]

def word655_0_657 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_655 word655_0_656

def word655_0_658 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 50 (Flapjack.WordRegImm.reg 112) word655_0_657 word655_0_7

def word655_0_659 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_660 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_659 word655_0_11

def word655_0_661 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_662 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_660 word655_0_661

def word655_0_663 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_658 word655_0_662

def word655_0_664 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_649 word655_0_663

def word655_0_665 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_664 word655_0_11

def word655_0_666 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 96)

def word655_0_667 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_665 word655_0_666

def word655_0_668 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 158)

def word655_0_669 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_667 word655_0_668

def word655_0_670 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 36)

def word655_0_671 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_669 word655_0_670

def word655_0_672 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 98)

def word655_0_673 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_671 word655_0_672

def word655_0_674 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 128)

def word655_0_675 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_673 word655_0_674

def word655_0_676 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 50)

def word655_0_677 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_675 word655_0_676

def word655_0_678 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 112)

def word655_0_679 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_677 word655_0_678

def word655_0_680 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 82)

def word655_0_681 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_679 word655_0_680

def word655_0_682 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def word655_0_683 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_681 word655_0_682

def word655_0_684 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.const 4294967295#64)

def word655_0_685 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_683 word655_0_684

def word655_0_686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_687 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_685 word655_0_686

def word655_0_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.const 18446744069414584321#64)

def word655_0_689 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_687 word655_0_688

def word655_0_690 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_689 word655_0_688

def word655_0_691 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_690 word655_0_686

def word655_0_692 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_691 word655_0_684

def word655_0_693 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_692 word655_0_682

def word655_0_694 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def word655_0_695 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 48)) (some 106) ([42, 104, 74, 136, 58, 120, 90, 152]) (some (42, word655_0_694, 655, 49))

def word655_0_696 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_693 word655_0_695

def word655_0_697 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_696 word655_0_11

def word655_0_698 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 144)

def word655_0_699 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_697 word655_0_698

def word655_0_700 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_701 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_699 word655_0_700

def word655_0_702 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_703 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_702 word655_0_11

def word655_0_704 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.const 1#64)

def word655_0_705 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_703 word655_0_704

def word655_0_706 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_707 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_705 word655_0_706

def word655_0_708 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [42]

def word655_0_709 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_707 word655_0_708

def word655_0_710 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 104 (Flapjack.WordRegImm.reg 74) word655_0_709 word655_0_7

def word655_0_711 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_712 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_711 word655_0_11

def word655_0_713 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.const 0#64)

def word655_0_714 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_712 word655_0_713

def word655_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_710 word655_0_714

def word655_0_716 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_701 word655_0_715

def word655_0_717 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_716 word655_0_11

def word655_0_718 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_717 word655_0_674

def word655_0_719 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_718 word655_0_676

def word655_0_720 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_719 word655_0_678

def word655_0_721 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_720 word655_0_680

def word655_0_722 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 102)

def word655_0_723 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_721 word655_0_722

def word655_0_724 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 72)

def word655_0_725 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_723 word655_0_724

def word655_0_726 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 134)

def word655_0_727 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_725 word655_0_726

def word655_0_728 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 56)

def word655_0_729 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_727 word655_0_728

def word655_0_730 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word655_0_7, 655, 50)) (some 645) ([42, 104, 74, 136, 58, 120, 90, 152]) (some (42, word655_0_694, 655, 51))

def word655_0_731 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_729 word655_0_730

def word655_0_732 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_731 word655_0_11

def word655_0_733 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 110)

def word655_0_734 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_732 word655_0_733

def word655_0_735 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 80)

def word655_0_736 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_734 word655_0_735

def word655_0_737 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 142)

def word655_0_738 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_736 word655_0_737

def word655_0_739 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 64)

def word655_0_740 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_738 word655_0_739

def word655_0_741 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 118)

def word655_0_742 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_740 word655_0_741

def word655_0_743 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 88)

def word655_0_744 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_742 word655_0_743

def word655_0_745 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 150)

def word655_0_746 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_744 word655_0_745

def word655_0_747 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 48)

def word655_0_748 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_746 word655_0_747

def word655_0_749 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 105) ([0, 42, 104, 74, 136, 58, 120, 90, 152]) (none)

def word655_0_750 : WordLangProgHOL (BitVec 64) :=
.seq word655_0_748 word655_0_749

def pass655_0 : WordLangProgHOL (BitVec 64) :=
word655_0_750
theorem pass655_0_eq : WordSimp.compileExp (source655.2.2) = pass655_0 := by
  kernel_rfl
#print axioms pass655_0_eq
end InitECandidate.Proofs.WordStages
