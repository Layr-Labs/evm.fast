import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody141_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0), (14, 2), (16, 4), (18, 6), (12, 8)]

def optimizedBody141_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody141_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody141_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody141_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody141_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody141_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody141_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody141_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody141_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_7 optimizedBody141_8

def optimizedBody141_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_6 optimizedBody141_9

def optimizedBody141_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_5 optimizedBody141_10

def optimizedBody141_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_4 optimizedBody141_11

def optimizedBody141_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_3 optimizedBody141_12

def optimizedBody141_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_2 optimizedBody141_13

def optimizedBody141_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody141_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 2) optimizedBody141_14 optimizedBody141_15

def optimizedBody141_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody141_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 10 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody141_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 10 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody141_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12), (18, 18), (16, 16), (14, 14)]

def optimizedBody141_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody141_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 14), (18, 16), (12, 18)]

def optimizedBody141_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody141_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18), (14, 14), (12, 12), (16, 16)]

def optimizedBody141_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_23 optimizedBody141_24

def optimizedBody141_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_22 optimizedBody141_25

def optimizedBody141_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_2 optimizedBody141_26

def optimizedBody141_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_2 optimizedBody141_24

def optimizedBody141_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody141_27 optimizedBody141_28

def optimizedBody141_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody141_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2#64)

def optimizedBody141_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 14), (12, 16)]

def optimizedBody141_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody141_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_33 optimizedBody141_25

def optimizedBody141_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_32 optimizedBody141_34

def optimizedBody141_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_2 optimizedBody141_35

def optimizedBody141_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody141_36 optimizedBody141_28

def optimizedBody141_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3#64)

def optimizedBody141_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 14)]

def optimizedBody141_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody141_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_40 optimizedBody141_34

def optimizedBody141_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_39 optimizedBody141_41

def optimizedBody141_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_2 optimizedBody141_42

def optimizedBody141_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody141_43 optimizedBody141_28

def optimizedBody141_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody141_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody141_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody141_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody141_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2)]

def optimizedBody141_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 18 (Flapjack.WordRegImm.reg 8)))

def optimizedBody141_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (4, 4), (12, 12)]

def optimizedBody141_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 12 (Flapjack.WordRegImm.reg 8)))

def optimizedBody141_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 12 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody141_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (12, 12)]

def optimizedBody141_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (2, 2), (4, 4)]

def optimizedBody141_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody141_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (4, 4), (18, 18)]

def optimizedBody141_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 18 (Flapjack.WordRegImm.reg 8)))

def optimizedBody141_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 18 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody141_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (18, 18)]

def optimizedBody141_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (4, 4)]

def optimizedBody141_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 14 (Flapjack.WordRegImm.reg 8)))

def optimizedBody141_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (4, 4), (16, 16)]

def optimizedBody141_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody141_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 16 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody141_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (14, 14), (16, 16)]

def optimizedBody141_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.reg 8)))

def optimizedBody141_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_67 optimizedBody141_24

def optimizedBody141_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_66 optimizedBody141_68

def optimizedBody141_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_65 optimizedBody141_69

def optimizedBody141_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_64 optimizedBody141_70

def optimizedBody141_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_63 optimizedBody141_71

def optimizedBody141_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_62 optimizedBody141_72

def optimizedBody141_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_61 optimizedBody141_73

def optimizedBody141_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_60 optimizedBody141_74

def optimizedBody141_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_59 optimizedBody141_75

def optimizedBody141_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_58 optimizedBody141_76

def optimizedBody141_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_57 optimizedBody141_77

def optimizedBody141_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_56 optimizedBody141_78

def optimizedBody141_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_55 optimizedBody141_79

def optimizedBody141_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_54 optimizedBody141_80

def optimizedBody141_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_53 optimizedBody141_81

def optimizedBody141_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_52 optimizedBody141_82

def optimizedBody141_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_51 optimizedBody141_83

def optimizedBody141_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_50 optimizedBody141_84

def optimizedBody141_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_49 optimizedBody141_85

def optimizedBody141_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_48 optimizedBody141_86

def optimizedBody141_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_45 optimizedBody141_87

def optimizedBody141_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_47 optimizedBody141_88

def optimizedBody141_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_46 optimizedBody141_89

def optimizedBody141_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_2 optimizedBody141_90

def optimizedBody141_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody141_91 optimizedBody141_28

def optimizedBody141_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 14), (4, 16), (6, 18), (8, 12)]

def optimizedBody141_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_93 optimizedBody141_8

def optimizedBody141_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_2 optimizedBody141_94

def optimizedBody141_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_92 optimizedBody141_95

def optimizedBody141_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_3 optimizedBody141_96

def optimizedBody141_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_45 optimizedBody141_97

def optimizedBody141_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_2 optimizedBody141_98

def optimizedBody141_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_44 optimizedBody141_99

def optimizedBody141_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_38 optimizedBody141_100

def optimizedBody141_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_30 optimizedBody141_101

def optimizedBody141_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_2 optimizedBody141_102

def optimizedBody141_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_37 optimizedBody141_103

def optimizedBody141_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_31 optimizedBody141_104

def optimizedBody141_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_30 optimizedBody141_105

def optimizedBody141_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_2 optimizedBody141_106

def optimizedBody141_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_29 optimizedBody141_107

def optimizedBody141_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_21 optimizedBody141_108

def optimizedBody141_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_20 optimizedBody141_109

def optimizedBody141_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_19 optimizedBody141_110

def optimizedBody141_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_17 optimizedBody141_111

def optimizedBody141_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_18 optimizedBody141_112

def optimizedBody141_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_17 optimizedBody141_113

def optimizedBody141_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_2 optimizedBody141_114

def optimizedBody141_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_2 optimizedBody141_115

def optimizedBody141_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_16 optimizedBody141_116

def optimizedBody141_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_1 optimizedBody141_117

def optimizedBody141_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody141_0 optimizedBody141_118

def optimized141 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(141, 6, optimizedBody141_119)
end InitECandidate.Proofs.StackAnalysis
