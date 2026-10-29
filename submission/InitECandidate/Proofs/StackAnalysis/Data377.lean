import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody377_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody377_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody377_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody377_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody377_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody377_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody377_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody377_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6), (4, 4)]

def optimizedBody377_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4]

def optimizedBody377_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_7 optimizedBody377_8

def optimizedBody377_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_6 optimizedBody377_9

def optimizedBody377_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_5 optimizedBody377_10

def optimizedBody377_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_4 optimizedBody377_11

def optimizedBody377_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_12

def optimizedBody377_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 2)]

def optimizedBody377_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 6) optimizedBody377_13 optimizedBody377_14

def optimizedBody377_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody377_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 288#64))

def optimizedBody377_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 296#64))

def optimizedBody377_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 304#64))

def optimizedBody377_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 312#64))

def optimizedBody377_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 6), (48, 2), (50, 8), (52, 4)]

def optimizedBody377_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (18, 44), (6, 46), (12, 48), (8, 50), (10, 52)]

def optimizedBody377_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (18, 44), (6, 46), (12, 48), (8, 50), (10, 52)]

def optimizedBody377_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody377_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_23 optimizedBody377_24

def optimizedBody377_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody377_22, 377, 2)) (some 101) ([2, 4, 6, 8]) (some (2, optimizedBody377_25, 377, 3))

def optimizedBody377_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody377_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody377_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody377_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 27#64)

def optimizedBody377_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody377_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody377_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_31 optimizedBody377_32

def optimizedBody377_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_28 optimizedBody377_32

def optimizedBody377_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 0) optimizedBody377_33 optimizedBody377_34

def optimizedBody377_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 28#64)

def optimizedBody377_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody377_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody377_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_37 optimizedBody377_38

def optimizedBody377_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody377_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_40 optimizedBody377_38

def optimizedBody377_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 0) optimizedBody377_39 optimizedBody377_41

def optimizedBody377_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody377_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody377_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody377_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody377_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2, 4]

def optimizedBody377_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_46 optimizedBody377_47

def optimizedBody377_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_43 optimizedBody377_48

def optimizedBody377_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_28 optimizedBody377_49

def optimizedBody377_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_50

def optimizedBody377_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody377_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody377_51 optimizedBody377_52

def optimizedBody377_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 35#64)

def optimizedBody377_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 44#64)

def optimizedBody377_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody377_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody377_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_32 optimizedBody377_24

def optimizedBody377_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_57 optimizedBody377_58

def optimizedBody377_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_56 optimizedBody377_59

def optimizedBody377_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_27 optimizedBody377_60

def optimizedBody377_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_55 optimizedBody377_61

def optimizedBody377_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_62

def optimizedBody377_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 0) optimizedBody377_63 optimizedBody377_52

def optimizedBody377_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12)]

def optimizedBody377_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_65

def optimizedBody377_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_66

def optimizedBody377_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_64 optimizedBody377_67

def optimizedBody377_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_54 optimizedBody377_68

def optimizedBody377_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_29 optimizedBody377_69

def optimizedBody377_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_70

def optimizedBody377_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_71

def optimizedBody377_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_53 optimizedBody377_72

def optimizedBody377_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_45 optimizedBody377_73

def optimizedBody377_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_44 optimizedBody377_74

def optimizedBody377_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_43 optimizedBody377_75

def optimizedBody377_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_76

def optimizedBody377_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_42 optimizedBody377_77

def optimizedBody377_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_36 optimizedBody377_78

def optimizedBody377_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_29 optimizedBody377_79

def optimizedBody377_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_80

def optimizedBody377_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_35 optimizedBody377_81

def optimizedBody377_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_30 optimizedBody377_82

def optimizedBody377_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_29 optimizedBody377_83

def optimizedBody377_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_84

def optimizedBody377_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody377_85 optimizedBody377_66

def optimizedBody377_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 10), (2, 12)]

def optimizedBody377_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody377_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody377_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody377_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 35#64)

def optimizedBody377_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 18)]

def optimizedBody377_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (0, 2), (4, 4), (44, 44)]

def optimizedBody377_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody377_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_94 optimizedBody377_24

def optimizedBody377_96 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody377_93, 377, 4)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody377_95, 377, 5))

def optimizedBody377_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody377_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody377_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44)]

def optimizedBody377_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody377_93, 377, 6)) (some 142) ([2, 4, 6, 8, 10]) (some (2, optimizedBody377_95, 377, 7))

def optimizedBody377_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0)]

def optimizedBody377_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody377_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody377_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_103 optimizedBody377_24

def optimizedBody377_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody377_102, 377, 8)) (some 101) ([2, 4, 6, 8]) (some (2, optimizedBody377_104, 377, 9))

def optimizedBody377_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 45#64)

def optimizedBody377_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_106 optimizedBody377_61

def optimizedBody377_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_107

def optimizedBody377_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody377_108 optimizedBody377_52

def optimizedBody377_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2, 4]

def optimizedBody377_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_46 optimizedBody377_110

def optimizedBody377_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_31 optimizedBody377_111

def optimizedBody377_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_112

def optimizedBody377_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_113

def optimizedBody377_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_109 optimizedBody377_114

def optimizedBody377_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_28 optimizedBody377_115

def optimizedBody377_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_27 optimizedBody377_116

def optimizedBody377_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_117

def optimizedBody377_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_105 optimizedBody377_118

def optimizedBody377_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_101 optimizedBody377_119

def optimizedBody377_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_120

def optimizedBody377_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_100 optimizedBody377_121

def optimizedBody377_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_99 optimizedBody377_122

def optimizedBody377_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_98 optimizedBody377_123

def optimizedBody377_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_97 optimizedBody377_124

def optimizedBody377_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_125

def optimizedBody377_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_96 optimizedBody377_126

def optimizedBody377_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_92 optimizedBody377_127

def optimizedBody377_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_91 optimizedBody377_128

def optimizedBody377_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_90 optimizedBody377_129

def optimizedBody377_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_89 optimizedBody377_130

def optimizedBody377_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_88 optimizedBody377_131

def optimizedBody377_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_87 optimizedBody377_132

def optimizedBody377_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_133

def optimizedBody377_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_86 optimizedBody377_134

def optimizedBody377_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_28 optimizedBody377_135

def optimizedBody377_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_27 optimizedBody377_136

def optimizedBody377_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_137

def optimizedBody377_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_26 optimizedBody377_138

def optimizedBody377_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_21 optimizedBody377_139

def optimizedBody377_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_20 optimizedBody377_140

def optimizedBody377_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_16 optimizedBody377_141

def optimizedBody377_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_19 optimizedBody377_142

def optimizedBody377_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_16 optimizedBody377_143

def optimizedBody377_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_18 optimizedBody377_144

def optimizedBody377_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_16 optimizedBody377_145

def optimizedBody377_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_17 optimizedBody377_146

def optimizedBody377_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_16 optimizedBody377_147

def optimizedBody377_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_148

def optimizedBody377_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_3 optimizedBody377_149

def optimizedBody377_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_15 optimizedBody377_150

def optimizedBody377_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_2 optimizedBody377_151

def optimizedBody377_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_1 optimizedBody377_152

def optimizedBody377_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody377_0 optimizedBody377_153

def optimized377 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(377, 2, optimizedBody377_154)
end InitECandidate.Proofs.StackAnalysis
