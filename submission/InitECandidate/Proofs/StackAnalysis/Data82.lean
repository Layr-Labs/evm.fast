import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody82_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody82_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody82_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody82_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody82_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody82_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody82_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody82_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody82_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody82_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 2 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody82_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody82_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody82_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody82_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 2 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody82_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody82_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody82_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody82_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody82_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody82_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody82_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 14)))

def optimizedBody82_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody82_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 12 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody82_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody82_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody82_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 16)))

def optimizedBody82_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody82_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody82_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody82_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody82_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody82_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody82_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody82_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody82_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody82_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody82_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody82_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody82_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody82_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_2 optimizedBody82_38

def optimizedBody82_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_37 optimizedBody82_39

def optimizedBody82_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_36 optimizedBody82_40

def optimizedBody82_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_35 optimizedBody82_41

def optimizedBody82_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_34 optimizedBody82_42

def optimizedBody82_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_33 optimizedBody82_43

def optimizedBody82_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_32 optimizedBody82_44

def optimizedBody82_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_31 optimizedBody82_45

def optimizedBody82_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_30 optimizedBody82_46

def optimizedBody82_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_29 optimizedBody82_47

def optimizedBody82_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_28 optimizedBody82_48

def optimizedBody82_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_27 optimizedBody82_49

def optimizedBody82_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_26 optimizedBody82_50

def optimizedBody82_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_25 optimizedBody82_51

def optimizedBody82_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_24 optimizedBody82_52

def optimizedBody82_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_23 optimizedBody82_53

def optimizedBody82_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_22 optimizedBody82_54

def optimizedBody82_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_21 optimizedBody82_55

def optimizedBody82_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_20 optimizedBody82_56

def optimizedBody82_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_19 optimizedBody82_57

def optimizedBody82_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_18 optimizedBody82_58

def optimizedBody82_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_17 optimizedBody82_59

def optimizedBody82_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_2 optimizedBody82_60

def optimizedBody82_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_16 optimizedBody82_61

def optimizedBody82_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_15 optimizedBody82_62

def optimizedBody82_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_2 optimizedBody82_63

def optimizedBody82_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_14 optimizedBody82_64

def optimizedBody82_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_13 optimizedBody82_65

def optimizedBody82_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_2 optimizedBody82_66

def optimizedBody82_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_12 optimizedBody82_67

def optimizedBody82_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_11 optimizedBody82_68

def optimizedBody82_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_2 optimizedBody82_69

def optimizedBody82_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_10 optimizedBody82_70

def optimizedBody82_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_9 optimizedBody82_71

def optimizedBody82_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_2 optimizedBody82_72

def optimizedBody82_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_8 optimizedBody82_73

def optimizedBody82_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_7 optimizedBody82_74

def optimizedBody82_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_2 optimizedBody82_75

def optimizedBody82_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_6 optimizedBody82_76

def optimizedBody82_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_5 optimizedBody82_77

def optimizedBody82_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_2 optimizedBody82_78

def optimizedBody82_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_4 optimizedBody82_79

def optimizedBody82_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_3 optimizedBody82_80

def optimizedBody82_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_2 optimizedBody82_81

def optimizedBody82_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_1 optimizedBody82_82

def optimizedBody82_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody82_0 optimizedBody82_83

def optimized82 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(82, 2, optimizedBody82_84)
end InitECandidate.Proofs.StackAnalysis
