import InitECandidate.Proofs.WordStages.Optimize272
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source288
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody288_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody288_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody288_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody288_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 2), (10, 10), (6, 6)]

def optimizedBody288_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4)]

def optimizedBody288_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 10 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody288_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody288_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody288_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody288_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 12)]

def optimizedBody288_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody288_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody288_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody288_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody288_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 16 12 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody288_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 16 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody288_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6)]

def optimizedBody288_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody288_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 12 12 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody288_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 12 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody288_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody288_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody288_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody288_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6), (12, 12)]

def optimizedBody288_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 10 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody288_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 16 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody288_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 10 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody288_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 8 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody288_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 10 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody288_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 10 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody288_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody288_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody288_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6), (8, 8)]

def optimizedBody288_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 10 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody288_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody288_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 12 8 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody288_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody288_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody288_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody288_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (10, 14), (6, 6)]

def optimizedBody288_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody288_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_39 optimizedBody288_40

def optimizedBody288_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_38 optimizedBody288_41

def optimizedBody288_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_37 optimizedBody288_42

def optimizedBody288_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_34 optimizedBody288_43

def optimizedBody288_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_36 optimizedBody288_44

def optimizedBody288_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_16 optimizedBody288_45

def optimizedBody288_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_19 optimizedBody288_46

def optimizedBody288_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_35 optimizedBody288_47

def optimizedBody288_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_34 optimizedBody288_48

def optimizedBody288_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_33 optimizedBody288_49

def optimizedBody288_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_32 optimizedBody288_50

def optimizedBody288_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_31 optimizedBody288_51

def optimizedBody288_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_30 optimizedBody288_52

def optimizedBody288_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_20 optimizedBody288_53

def optimizedBody288_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_19 optimizedBody288_54

def optimizedBody288_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_18 optimizedBody288_55

def optimizedBody288_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_13 optimizedBody288_56

def optimizedBody288_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_29 optimizedBody288_57

def optimizedBody288_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_16 optimizedBody288_58

def optimizedBody288_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_25 optimizedBody288_59

def optimizedBody288_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_14 optimizedBody288_60

def optimizedBody288_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_13 optimizedBody288_61

def optimizedBody288_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_28 optimizedBody288_62

def optimizedBody288_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_23 optimizedBody288_63

def optimizedBody288_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_22 optimizedBody288_64

def optimizedBody288_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_27 optimizedBody288_65

def optimizedBody288_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_20 optimizedBody288_66

def optimizedBody288_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_19 optimizedBody288_67

def optimizedBody288_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_18 optimizedBody288_68

def optimizedBody288_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_13 optimizedBody288_69

def optimizedBody288_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_26 optimizedBody288_70

def optimizedBody288_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_16 optimizedBody288_71

def optimizedBody288_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_25 optimizedBody288_72

def optimizedBody288_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_14 optimizedBody288_73

def optimizedBody288_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_13 optimizedBody288_74

def optimizedBody288_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_24 optimizedBody288_75

def optimizedBody288_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_23 optimizedBody288_76

def optimizedBody288_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_22 optimizedBody288_77

def optimizedBody288_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_21 optimizedBody288_78

def optimizedBody288_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_20 optimizedBody288_79

def optimizedBody288_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_19 optimizedBody288_80

def optimizedBody288_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_18 optimizedBody288_81

def optimizedBody288_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_13 optimizedBody288_82

def optimizedBody288_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_17 optimizedBody288_83

def optimizedBody288_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_16 optimizedBody288_84

def optimizedBody288_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_15 optimizedBody288_85

def optimizedBody288_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_14 optimizedBody288_86

def optimizedBody288_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_13 optimizedBody288_87

def optimizedBody288_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_12 optimizedBody288_88

def optimizedBody288_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_11 optimizedBody288_89

def optimizedBody288_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_10 optimizedBody288_90

def optimizedBody288_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_9 optimizedBody288_91

def optimizedBody288_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_8 optimizedBody288_92

def optimizedBody288_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_7 optimizedBody288_93

def optimizedBody288_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_6 optimizedBody288_94

def optimizedBody288_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_2 optimizedBody288_95

def optimizedBody288_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (10, 10)]

def optimizedBody288_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody288_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_97 optimizedBody288_98

def optimizedBody288_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_2 optimizedBody288_99

def optimizedBody288_101 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.WordRegImm.reg 14) optimizedBody288_96 optimizedBody288_100

def optimizedBody288_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (10, 10), (6, 6)]

def optimizedBody288_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_2 optimizedBody288_102

def optimizedBody288_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_101 optimizedBody288_103

def optimizedBody288_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_5 optimizedBody288_104

def optimizedBody288_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_4 optimizedBody288_105

def optimizedBody288_107 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) optimizedBody288_106 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody288_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody288_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody288_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody288_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.reg 6)))

def optimizedBody288_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 14 8 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody288_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 14 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody288_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (6, 6), (10, 10)]

def optimizedBody288_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody288_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody288_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody288_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody288_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_102 optimizedBody288_40

def optimizedBody288_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_118 optimizedBody288_119

def optimizedBody288_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_117 optimizedBody288_120

def optimizedBody288_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_116 optimizedBody288_121

def optimizedBody288_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_37 optimizedBody288_122

def optimizedBody288_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_34 optimizedBody288_123

def optimizedBody288_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_115 optimizedBody288_124

def optimizedBody288_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_114 optimizedBody288_125

def optimizedBody288_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_113 optimizedBody288_126

def optimizedBody288_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_112 optimizedBody288_127

def optimizedBody288_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_34 optimizedBody288_128

def optimizedBody288_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_111 optimizedBody288_129

def optimizedBody288_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_11 optimizedBody288_130

def optimizedBody288_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_110 optimizedBody288_131

def optimizedBody288_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_109 optimizedBody288_132

def optimizedBody288_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_31 optimizedBody288_133

def optimizedBody288_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_7 optimizedBody288_134

def optimizedBody288_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_6 optimizedBody288_135

def optimizedBody288_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_2 optimizedBody288_136

def optimizedBody288_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_2 optimizedBody288_98

def optimizedBody288_139 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 4) optimizedBody288_137 optimizedBody288_138

def optimizedBody288_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_139 optimizedBody288_103

def optimizedBody288_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_108 optimizedBody288_140

def optimizedBody288_142 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) optimizedBody288_141 (Flapjack.Spt.ls PUnit.unit)

def optimizedBody288_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody288_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody288_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody288_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_144 optimizedBody288_145

def optimizedBody288_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_143 optimizedBody288_146

def optimizedBody288_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_2 optimizedBody288_147

def optimizedBody288_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_142 optimizedBody288_148

def optimizedBody288_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_3 optimizedBody288_149

def optimizedBody288_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_2 optimizedBody288_150

def optimizedBody288_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_2 optimizedBody288_151

def optimizedBody288_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_107 optimizedBody288_152

def optimizedBody288_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_3 optimizedBody288_153

def optimizedBody288_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_2 optimizedBody288_154

def optimizedBody288_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_1 optimizedBody288_155

def optimizedBody288_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_0 optimizedBody288_156

def oracle288 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 Flapjack.Spt.ln) 5
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 3))))
              1
              (Flapjack.Spt.bs Flapjack.Spt.ln 5
                (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 1))) 6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))) 5
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 6)) 5
                (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 5))))
              0
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))) 4
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 3))))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                3 (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 8 (Flapjack.Spt.ls 6))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 Flapjack.Spt.ln) 3
                (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 8)))
              2
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 8 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 5))) 6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))) 2
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 6 (Flapjack.Spt.ls 4)) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 7))))
              5
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5))) 7
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 6))))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 6)))
                5 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 6 (Flapjack.Spt.ls 6)))))))
      Flapjack.Spt.ln))
def optimized288 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(288, 4, optimizedBody288_157)
theorem optimize288_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source288, oracle288) = optimized288 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize288_eq
end InitECandidate.Proofs.WordStages
