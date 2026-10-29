import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody142_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0), (18, 2), (14, 4), (16, 6), (12, 8)]

def optimizedBody142_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody142_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody142_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody142_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody142_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody142_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody142_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody142_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody142_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_7 optimizedBody142_8

def optimizedBody142_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_6 optimizedBody142_9

def optimizedBody142_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_5 optimizedBody142_10

def optimizedBody142_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_4 optimizedBody142_11

def optimizedBody142_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_3 optimizedBody142_12

def optimizedBody142_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_2 optimizedBody142_13

def optimizedBody142_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody142_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 2) optimizedBody142_14 optimizedBody142_15

def optimizedBody142_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody142_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 10 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody142_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 10 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody142_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12), (16, 16), (14, 14), (18, 18)]

def optimizedBody142_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody142_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 12), (14, 16), (18, 14)]

def optimizedBody142_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody142_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (18, 18), (12, 12), (14, 14)]

def optimizedBody142_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_23 optimizedBody142_24

def optimizedBody142_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_22 optimizedBody142_25

def optimizedBody142_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_2 optimizedBody142_26

def optimizedBody142_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_2 optimizedBody142_24

def optimizedBody142_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody142_27 optimizedBody142_28

def optimizedBody142_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody142_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2#64)

def optimizedBody142_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 12), (18, 16)]

def optimizedBody142_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody142_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_33 optimizedBody142_25

def optimizedBody142_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_32 optimizedBody142_34

def optimizedBody142_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_2 optimizedBody142_35

def optimizedBody142_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody142_36 optimizedBody142_28

def optimizedBody142_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3#64)

def optimizedBody142_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 12)]

def optimizedBody142_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody142_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_40 optimizedBody142_34

def optimizedBody142_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_39 optimizedBody142_41

def optimizedBody142_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_2 optimizedBody142_42

def optimizedBody142_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody142_43 optimizedBody142_28

def optimizedBody142_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody142_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody142_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody142_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody142_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2)]

def optimizedBody142_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 14 (Flapjack.WordRegImm.reg 8)))

def optimizedBody142_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (4, 4), (18, 18)]

def optimizedBody142_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 18 (Flapjack.WordRegImm.reg 8)))

def optimizedBody142_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 18 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody142_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (18, 18)]

def optimizedBody142_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (2, 2), (4, 4)]

def optimizedBody142_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody142_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (4, 4), (14, 14)]

def optimizedBody142_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 14 (Flapjack.WordRegImm.reg 8)))

def optimizedBody142_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 14 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody142_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (14, 14)]

def optimizedBody142_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (4, 4)]

def optimizedBody142_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 12 (Flapjack.WordRegImm.reg 8)))

def optimizedBody142_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (4, 4), (16, 16)]

def optimizedBody142_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody142_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 16 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody142_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (12, 12), (16, 16)]

def optimizedBody142_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 12 12 (Flapjack.WordRegImm.reg 8)))

def optimizedBody142_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_67 optimizedBody142_24

def optimizedBody142_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_66 optimizedBody142_68

def optimizedBody142_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_65 optimizedBody142_69

def optimizedBody142_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_64 optimizedBody142_70

def optimizedBody142_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_63 optimizedBody142_71

def optimizedBody142_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_62 optimizedBody142_72

def optimizedBody142_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_61 optimizedBody142_73

def optimizedBody142_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_60 optimizedBody142_74

def optimizedBody142_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_59 optimizedBody142_75

def optimizedBody142_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_58 optimizedBody142_76

def optimizedBody142_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_57 optimizedBody142_77

def optimizedBody142_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_56 optimizedBody142_78

def optimizedBody142_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_55 optimizedBody142_79

def optimizedBody142_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_54 optimizedBody142_80

def optimizedBody142_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_53 optimizedBody142_81

def optimizedBody142_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_52 optimizedBody142_82

def optimizedBody142_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_51 optimizedBody142_83

def optimizedBody142_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_50 optimizedBody142_84

def optimizedBody142_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_49 optimizedBody142_85

def optimizedBody142_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_48 optimizedBody142_86

def optimizedBody142_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_45 optimizedBody142_87

def optimizedBody142_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_47 optimizedBody142_88

def optimizedBody142_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_46 optimizedBody142_89

def optimizedBody142_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_2 optimizedBody142_90

def optimizedBody142_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody142_91 optimizedBody142_28

def optimizedBody142_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 18), (4, 14), (6, 16), (8, 12)]

def optimizedBody142_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_93 optimizedBody142_8

def optimizedBody142_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_2 optimizedBody142_94

def optimizedBody142_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_92 optimizedBody142_95

def optimizedBody142_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_3 optimizedBody142_96

def optimizedBody142_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_45 optimizedBody142_97

def optimizedBody142_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_2 optimizedBody142_98

def optimizedBody142_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_44 optimizedBody142_99

def optimizedBody142_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_38 optimizedBody142_100

def optimizedBody142_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_30 optimizedBody142_101

def optimizedBody142_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_2 optimizedBody142_102

def optimizedBody142_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_37 optimizedBody142_103

def optimizedBody142_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_31 optimizedBody142_104

def optimizedBody142_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_30 optimizedBody142_105

def optimizedBody142_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_2 optimizedBody142_106

def optimizedBody142_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_29 optimizedBody142_107

def optimizedBody142_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_21 optimizedBody142_108

def optimizedBody142_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_20 optimizedBody142_109

def optimizedBody142_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_19 optimizedBody142_110

def optimizedBody142_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_17 optimizedBody142_111

def optimizedBody142_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_18 optimizedBody142_112

def optimizedBody142_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_17 optimizedBody142_113

def optimizedBody142_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_2 optimizedBody142_114

def optimizedBody142_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_2 optimizedBody142_115

def optimizedBody142_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_16 optimizedBody142_116

def optimizedBody142_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_1 optimizedBody142_117

def optimizedBody142_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody142_0 optimizedBody142_118

def optimized142 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(142, 6, optimizedBody142_119)
end InitECandidate.Proofs.StackAnalysis
