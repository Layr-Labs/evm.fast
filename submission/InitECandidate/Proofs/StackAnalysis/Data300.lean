import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody300_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody300_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody300_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody300_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody300_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 6), (44, 0), (56, 8), (46, 4), (48, 2), (54, 10), (50, 6), (52, 12)]

def optimizedBody300_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 44), (6, 6), (0, 46), (46, 48), (4, 2), (10, 50), (48, 4)]

def optimizedBody300_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 56), (48, 46), (50, 48), (54, 54), (52, 50), (56, 52)]

def optimizedBody300_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody300_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody300_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_7 optimizedBody300_8

def optimizedBody300_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody300_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody300_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (58, 50), (50, 54), (52, 52), (60, 56)]

def optimizedBody300_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 44), (6, 46), (0, 48), (58, 58), (4, 50), (10, 52), (60, 60)]

def optimizedBody300_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (18, 44), (6, 46), (0, 48), (58, 58), (4, 50), (10, 52), (60, 60)]

def optimizedBody300_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_14 optimizedBody300_8

def optimizedBody300_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody300_13, 300, 3)) (some 286) ([2]) (some (2, optimizedBody300_15, 300, 4))

def optimizedBody300_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18), (6, 6), (0, 0), (58, 58), (4, 4), (10, 10), (60, 60)]

def optimizedBody300_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_17

def optimizedBody300_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_16 optimizedBody300_18

def optimizedBody300_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_12 optimizedBody300_19

def optimizedBody300_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_11 optimizedBody300_20

def optimizedBody300_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_21

def optimizedBody300_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 1#64) optimizedBody300_9 optimizedBody300_22

def optimizedBody300_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18), (6, 6), (0, 0), (46, 58), (4, 4), (10, 10), (48, 60)]

def optimizedBody300_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_24

def optimizedBody300_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_23 optimizedBody300_25

def optimizedBody300_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_6 optimizedBody300_26

def optimizedBody300_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody300_5, 300, 2)) (some 161) ([2, 4]) (some (2, optimizedBody300_27, 300, 5))

def optimizedBody300_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody300_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody300_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 6)]

def optimizedBody300_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody300_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody300_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody300_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2, 4, 6, 8]

def optimizedBody300_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_34 optimizedBody300_35

def optimizedBody300_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_3 optimizedBody300_36

def optimizedBody300_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_33 optimizedBody300_37

def optimizedBody300_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_32 optimizedBody300_38

def optimizedBody300_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_30 optimizedBody300_39

def optimizedBody300_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_40

def optimizedBody300_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody300_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody300_41 optimizedBody300_42

def optimizedBody300_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody300_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody300_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody300_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 18), (46, 46), (48, 48)]

def optimizedBody300_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48)]

def optimizedBody300_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody300_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_49 optimizedBody300_8

def optimizedBody300_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody300_48, 300, 6)) (some 286) ([2]) (some (2, optimizedBody300_50, 300, 7))

def optimizedBody300_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (4, 4)]

def optimizedBody300_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_52

def optimizedBody300_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_51 optimizedBody300_53

def optimizedBody300_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_47 optimizedBody300_54

def optimizedBody300_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_46 optimizedBody300_55

def optimizedBody300_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_56

def optimizedBody300_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 18), (0, 46), (4, 48)]

def optimizedBody300_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_58

def optimizedBody300_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody300_57 optimizedBody300_59

def optimizedBody300_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 4)]

def optimizedBody300_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (14, 6), (12, 4), (44, 44), (16, 46)]

def optimizedBody300_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 46)]

def optimizedBody300_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_63 optimizedBody300_8

def optimizedBody300_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody300_62, 300, 8)) (some 294) ([2, 4]) (some (2, optimizedBody300_64, 300, 9))

def optimizedBody300_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 16), (44, 44)]

def optimizedBody300_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (22, 44)]

def optimizedBody300_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (22, 44)]

def optimizedBody300_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_68 optimizedBody300_8

def optimizedBody300_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody300_67, 300, 10)) (some 295) ([2]) (some (2, optimizedBody300_69, 300, 11))

def optimizedBody300_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 22 [2, 4, 6, 8]

def optimizedBody300_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_34 optimizedBody300_71

def optimizedBody300_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_3 optimizedBody300_72

def optimizedBody300_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_33 optimizedBody300_73

def optimizedBody300_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_29 optimizedBody300_74

def optimizedBody300_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_30 optimizedBody300_75

def optimizedBody300_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_76

def optimizedBody300_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_70 optimizedBody300_77

def optimizedBody300_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_66 optimizedBody300_78

def optimizedBody300_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_79

def optimizedBody300_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(14, 14), (16, 16), (12, 12), (20, 44)]

def optimizedBody300_82 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody300_80 optimizedBody300_81

def optimizedBody300_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody300_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 12), (6, 14), (8, 16)]

def optimizedBody300_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 20 [2, 4, 6, 8]

def optimizedBody300_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_84 optimizedBody300_85

def optimizedBody300_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_83 optimizedBody300_86

def optimizedBody300_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_87

def optimizedBody300_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_88

def optimizedBody300_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_82 optimizedBody300_89

def optimizedBody300_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_30 optimizedBody300_90

def optimizedBody300_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_29 optimizedBody300_91

def optimizedBody300_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_92

def optimizedBody300_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_65 optimizedBody300_93

def optimizedBody300_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_61 optimizedBody300_94

def optimizedBody300_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_95

def optimizedBody300_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_60 optimizedBody300_96

def optimizedBody300_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_45 optimizedBody300_97

def optimizedBody300_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_44 optimizedBody300_98

def optimizedBody300_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_99

def optimizedBody300_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_100

def optimizedBody300_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_43 optimizedBody300_101

def optimizedBody300_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_30 optimizedBody300_102

def optimizedBody300_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_31 optimizedBody300_103

def optimizedBody300_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_104

def optimizedBody300_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 0), (10, 10), (18, 18)]

def optimizedBody300_107 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody300_105 optimizedBody300_106

def optimizedBody300_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody300_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 0), (6, 10), (8, 8)]

def optimizedBody300_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_109 optimizedBody300_35

def optimizedBody300_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_3 optimizedBody300_110

def optimizedBody300_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_108 optimizedBody300_111

def optimizedBody300_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_83 optimizedBody300_112

def optimizedBody300_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_113

def optimizedBody300_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_114

def optimizedBody300_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_107 optimizedBody300_115

def optimizedBody300_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_30 optimizedBody300_116

def optimizedBody300_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_29 optimizedBody300_117

def optimizedBody300_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_10 optimizedBody300_118

def optimizedBody300_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_28 optimizedBody300_119

def optimizedBody300_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_4 optimizedBody300_120

def optimizedBody300_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_3 optimizedBody300_121

def optimizedBody300_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_2 optimizedBody300_122

def optimizedBody300_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_1 optimizedBody300_123

def optimizedBody300_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody300_0 optimizedBody300_124

def optimized300 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(300, 4, optimizedBody300_125)
end InitECandidate.Proofs.StackAnalysis
