import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody85_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody85_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 2 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody85_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody85_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody85_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody85_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody85_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody85_7 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 84) ([0, 2]) (none)

def optimizedBody85_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_6 optimizedBody85_7

def optimizedBody85_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_5 optimizedBody85_8

def optimizedBody85_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_4 optimizedBody85_9

def optimizedBody85_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_3 optimizedBody85_10

def optimizedBody85_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(2, 2)]

def optimizedBody85_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) optimizedBody85_11 optimizedBody85_12

def optimizedBody85_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody85_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody85_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody85_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody85_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody85_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody85_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody85_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 2 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody85_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody85_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody85_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody85_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 2 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody85_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody85_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody85_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody85_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody85_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16 16 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody85_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody85_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody85_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 14 16 (Flapjack.WordRegImm.reg 14)))

def optimizedBody85_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody85_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 12 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody85_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 12 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody85_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 12 (Flapjack.WordRegImm.reg 2)))

def optimizedBody85_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (10, 10)]

def optimizedBody85_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody85_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody85_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody85_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody85_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody85_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody85_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 8 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody85_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody85_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody85_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody85_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody85_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_4 optimizedBody85_49

def optimizedBody85_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_48 optimizedBody85_50

def optimizedBody85_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_47 optimizedBody85_51

def optimizedBody85_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_46 optimizedBody85_52

def optimizedBody85_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_45 optimizedBody85_53

def optimizedBody85_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_44 optimizedBody85_54

def optimizedBody85_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_43 optimizedBody85_55

def optimizedBody85_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_42 optimizedBody85_56

def optimizedBody85_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_41 optimizedBody85_57

def optimizedBody85_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_40 optimizedBody85_58

def optimizedBody85_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_39 optimizedBody85_59

def optimizedBody85_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_38 optimizedBody85_60

def optimizedBody85_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_37 optimizedBody85_61

def optimizedBody85_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_4 optimizedBody85_62

def optimizedBody85_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_36 optimizedBody85_63

def optimizedBody85_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_35 optimizedBody85_64

def optimizedBody85_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_34 optimizedBody85_65

def optimizedBody85_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_33 optimizedBody85_66

def optimizedBody85_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_32 optimizedBody85_67

def optimizedBody85_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_31 optimizedBody85_68

def optimizedBody85_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_30 optimizedBody85_69

def optimizedBody85_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_29 optimizedBody85_70

def optimizedBody85_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_28 optimizedBody85_71

def optimizedBody85_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_27 optimizedBody85_72

def optimizedBody85_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_4 optimizedBody85_73

def optimizedBody85_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_26 optimizedBody85_74

def optimizedBody85_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_25 optimizedBody85_75

def optimizedBody85_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_4 optimizedBody85_76

def optimizedBody85_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_24 optimizedBody85_77

def optimizedBody85_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_23 optimizedBody85_78

def optimizedBody85_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_4 optimizedBody85_79

def optimizedBody85_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_22 optimizedBody85_80

def optimizedBody85_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_21 optimizedBody85_81

def optimizedBody85_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_4 optimizedBody85_82

def optimizedBody85_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_20 optimizedBody85_83

def optimizedBody85_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_19 optimizedBody85_84

def optimizedBody85_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_4 optimizedBody85_85

def optimizedBody85_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_18 optimizedBody85_86

def optimizedBody85_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_17 optimizedBody85_87

def optimizedBody85_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_4 optimizedBody85_88

def optimizedBody85_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_16 optimizedBody85_89

def optimizedBody85_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_15 optimizedBody85_90

def optimizedBody85_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_4 optimizedBody85_91

def optimizedBody85_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_14 optimizedBody85_92

def optimizedBody85_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_4 optimizedBody85_93

def optimizedBody85_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_3 optimizedBody85_94

def optimizedBody85_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_3 optimizedBody85_95

def optimizedBody85_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_13 optimizedBody85_96

def optimizedBody85_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_2 optimizedBody85_97

def optimizedBody85_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_1 optimizedBody85_98

def optimizedBody85_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody85_0 optimizedBody85_99

def optimized85 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(85, 2, optimizedBody85_100)
end InitECandidate.Proofs.StackAnalysis
