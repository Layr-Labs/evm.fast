import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody78_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody78_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody78_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody78_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 2 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody78_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody78_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody78_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (6, 6), (2, 2)]

def optimizedBody78_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody78_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 6 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody78_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody78_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody78_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody78_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody78_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody78_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody78_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody78_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody78_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody78_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody78_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody78_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody78_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 10), (2, 2)]

def optimizedBody78_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody78_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_21 optimizedBody78_22

def optimizedBody78_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_13 optimizedBody78_23

def optimizedBody78_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_12 optimizedBody78_24

def optimizedBody78_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_11 optimizedBody78_25

def optimizedBody78_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_20 optimizedBody78_26

def optimizedBody78_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_14 optimizedBody78_27

def optimizedBody78_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_18 optimizedBody78_28

def optimizedBody78_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_17 optimizedBody78_29

def optimizedBody78_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_16 optimizedBody78_30

def optimizedBody78_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_19 optimizedBody78_31

def optimizedBody78_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_14 optimizedBody78_32

def optimizedBody78_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_18 optimizedBody78_33

def optimizedBody78_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_17 optimizedBody78_34

def optimizedBody78_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_16 optimizedBody78_35

def optimizedBody78_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_15 optimizedBody78_36

def optimizedBody78_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_14 optimizedBody78_37

def optimizedBody78_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_13 optimizedBody78_38

def optimizedBody78_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_12 optimizedBody78_39

def optimizedBody78_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_11 optimizedBody78_40

def optimizedBody78_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_10 optimizedBody78_41

def optimizedBody78_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_9 optimizedBody78_42

def optimizedBody78_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_43

def optimizedBody78_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6)]

def optimizedBody78_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody78_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_45 optimizedBody78_46

def optimizedBody78_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_47

def optimizedBody78_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.WordRegImm.reg 10) optimizedBody78_44 optimizedBody78_48

def optimizedBody78_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (2, 2)]

def optimizedBody78_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_50

def optimizedBody78_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_49 optimizedBody78_51

def optimizedBody78_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_8 optimizedBody78_52

def optimizedBody78_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_7 optimizedBody78_53

def optimizedBody78_55 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  Flapjack.Spt.ln) optimizedBody78_54 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  Flapjack.Spt.ln)

def optimizedBody78_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody78_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 8), (2, 2)]

def optimizedBody78_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_57 optimizedBody78_22

def optimizedBody78_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_56 optimizedBody78_58

def optimizedBody78_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_12 optimizedBody78_59

def optimizedBody78_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_4 optimizedBody78_60

def optimizedBody78_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_10 optimizedBody78_61

def optimizedBody78_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_9 optimizedBody78_62

def optimizedBody78_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_63

def optimizedBody78_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.WordRegImm.reg 8) optimizedBody78_64 optimizedBody78_48

def optimizedBody78_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_65 optimizedBody78_51

def optimizedBody78_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_15 optimizedBody78_66

def optimizedBody78_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_7 optimizedBody78_67

def optimizedBody78_69 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  Flapjack.Spt.ln) optimizedBody78_68 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  Flapjack.Spt.ln)

def optimizedBody78_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (6, 6), (2, 2)]

def optimizedBody78_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_70

def optimizedBody78_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_69 optimizedBody78_71

def optimizedBody78_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_6 optimizedBody78_72

def optimizedBody78_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_73

def optimizedBody78_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_74

def optimizedBody78_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_55 optimizedBody78_75

def optimizedBody78_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_6 optimizedBody78_76

def optimizedBody78_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_77

def optimizedBody78_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_78

def optimizedBody78_80 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 10) optimizedBody78_79 optimizedBody78_71

def optimizedBody78_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 10 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody78_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody78_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 10 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody78_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 6 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody78_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 6 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody78_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 6 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody78_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 6 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody78_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 6 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody78_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 6 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody78_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody78_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_90 optimizedBody78_58

def optimizedBody78_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_1 optimizedBody78_91

def optimizedBody78_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_89 optimizedBody78_92

def optimizedBody78_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_14 optimizedBody78_93

def optimizedBody78_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_83 optimizedBody78_94

def optimizedBody78_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_4 optimizedBody78_95

def optimizedBody78_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_88 optimizedBody78_96

def optimizedBody78_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_14 optimizedBody78_97

def optimizedBody78_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_83 optimizedBody78_98

def optimizedBody78_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_4 optimizedBody78_99

def optimizedBody78_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_87 optimizedBody78_100

def optimizedBody78_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_14 optimizedBody78_101

def optimizedBody78_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_83 optimizedBody78_102

def optimizedBody78_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_4 optimizedBody78_103

def optimizedBody78_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_86 optimizedBody78_104

def optimizedBody78_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_14 optimizedBody78_105

def optimizedBody78_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_83 optimizedBody78_106

def optimizedBody78_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_4 optimizedBody78_107

def optimizedBody78_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_85 optimizedBody78_108

def optimizedBody78_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_14 optimizedBody78_109

def optimizedBody78_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_83 optimizedBody78_110

def optimizedBody78_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_4 optimizedBody78_111

def optimizedBody78_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_84 optimizedBody78_112

def optimizedBody78_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_14 optimizedBody78_113

def optimizedBody78_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_83 optimizedBody78_114

def optimizedBody78_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_4 optimizedBody78_115

def optimizedBody78_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_82 optimizedBody78_116

def optimizedBody78_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_14 optimizedBody78_117

def optimizedBody78_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_81 optimizedBody78_118

def optimizedBody78_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_4 optimizedBody78_119

def optimizedBody78_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_10 optimizedBody78_120

def optimizedBody78_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_9 optimizedBody78_121

def optimizedBody78_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_122

def optimizedBody78_124 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.WordRegImm.reg 8) optimizedBody78_123 optimizedBody78_48

def optimizedBody78_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_124 optimizedBody78_51

def optimizedBody78_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_15 optimizedBody78_125

def optimizedBody78_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_7 optimizedBody78_126

def optimizedBody78_128 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  Flapjack.Spt.ln) optimizedBody78_127 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  Flapjack.Spt.ln)

def optimizedBody78_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody78_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody78_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody78_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody78_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_50 optimizedBody78_22

def optimizedBody78_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_132 optimizedBody78_133

def optimizedBody78_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_12 optimizedBody78_134

def optimizedBody78_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_131 optimizedBody78_135

def optimizedBody78_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_11 optimizedBody78_136

def optimizedBody78_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_130 optimizedBody78_137

def optimizedBody78_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_9 optimizedBody78_138

def optimizedBody78_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_139

def optimizedBody78_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_46

def optimizedBody78_142 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody78_140 optimizedBody78_141

def optimizedBody78_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_142 optimizedBody78_51

def optimizedBody78_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_129 optimizedBody78_143

def optimizedBody78_145 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  Flapjack.Spt.ln) optimizedBody78_144 (Flapjack.Spt.ls PUnit.unit)

def optimizedBody78_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody78_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody78_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_2 optimizedBody78_147

def optimizedBody78_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_146 optimizedBody78_148

def optimizedBody78_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_149

def optimizedBody78_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_145 optimizedBody78_150

def optimizedBody78_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_6 optimizedBody78_151

def optimizedBody78_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_152

def optimizedBody78_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_153

def optimizedBody78_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_128 optimizedBody78_154

def optimizedBody78_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_6 optimizedBody78_155

def optimizedBody78_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_156

def optimizedBody78_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_5 optimizedBody78_157

def optimizedBody78_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_80 optimizedBody78_158

def optimizedBody78_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_4 optimizedBody78_159

def optimizedBody78_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_3 optimizedBody78_160

def optimizedBody78_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_2 optimizedBody78_161

def optimizedBody78_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_1 optimizedBody78_162

def optimizedBody78_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody78_0 optimizedBody78_163

def optimized78 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(78, 3, optimizedBody78_164)
end InitECandidate.Proofs.StackAnalysis
