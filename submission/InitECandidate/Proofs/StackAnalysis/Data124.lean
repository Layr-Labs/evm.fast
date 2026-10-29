import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody124_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (0, 0), (6, 6), (8, 8), (10, 10)]

def optimizedBody124_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 4294967295#64)

def optimizedBody124_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 12 4 (Flapjack.WordRegImm.reg 12)))

def optimizedBody124_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody124_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody124_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody124_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody124_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody124_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody124_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (4, 4)]

def optimizedBody124_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody124_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody124_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody124_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4294967295#64)

def optimizedBody124_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody124_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody124_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 6 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody124_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody124_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody124_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody124_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody124_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody124_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody124_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 8 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody124_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody124_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody124_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 10 (Flapjack.WordRegImm.reg 4)))

def optimizedBody124_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody124_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 10 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody124_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody124_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody124_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody124_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody124_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_5 optimizedBody124_32

def optimizedBody124_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_31 optimizedBody124_33

def optimizedBody124_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_30 optimizedBody124_34

def optimizedBody124_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_29 optimizedBody124_35

def optimizedBody124_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_28 optimizedBody124_36

def optimizedBody124_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_25 optimizedBody124_37

def optimizedBody124_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_27 optimizedBody124_38

def optimizedBody124_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_5 optimizedBody124_39

def optimizedBody124_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_21 optimizedBody124_40

def optimizedBody124_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_20 optimizedBody124_41

def optimizedBody124_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_26 optimizedBody124_42

def optimizedBody124_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_13 optimizedBody124_43

def optimizedBody124_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_25 optimizedBody124_44

def optimizedBody124_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_24 optimizedBody124_45

def optimizedBody124_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_5 optimizedBody124_46

def optimizedBody124_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_21 optimizedBody124_47

def optimizedBody124_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_20 optimizedBody124_48

def optimizedBody124_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_23 optimizedBody124_49

def optimizedBody124_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_18 optimizedBody124_50

def optimizedBody124_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_22 optimizedBody124_51

def optimizedBody124_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_5 optimizedBody124_52

def optimizedBody124_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_21 optimizedBody124_53

def optimizedBody124_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_20 optimizedBody124_54

def optimizedBody124_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_19 optimizedBody124_55

def optimizedBody124_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_13 optimizedBody124_56

def optimizedBody124_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_18 optimizedBody124_57

def optimizedBody124_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_17 optimizedBody124_58

def optimizedBody124_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_5 optimizedBody124_59

def optimizedBody124_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_10 optimizedBody124_60

def optimizedBody124_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_9 optimizedBody124_61

def optimizedBody124_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_16 optimizedBody124_62

def optimizedBody124_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_12 optimizedBody124_63

def optimizedBody124_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_15 optimizedBody124_64

def optimizedBody124_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_5 optimizedBody124_65

def optimizedBody124_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_10 optimizedBody124_66

def optimizedBody124_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_9 optimizedBody124_67

def optimizedBody124_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_14 optimizedBody124_68

def optimizedBody124_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_13 optimizedBody124_69

def optimizedBody124_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_12 optimizedBody124_70

def optimizedBody124_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_11 optimizedBody124_71

def optimizedBody124_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_5 optimizedBody124_72

def optimizedBody124_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_10 optimizedBody124_73

def optimizedBody124_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_9 optimizedBody124_74

def optimizedBody124_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_8 optimizedBody124_75

def optimizedBody124_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_7 optimizedBody124_76

def optimizedBody124_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_6 optimizedBody124_77

def optimizedBody124_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_5 optimizedBody124_78

def optimizedBody124_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_4 optimizedBody124_79

def optimizedBody124_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_3 optimizedBody124_80

def optimizedBody124_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_2 optimizedBody124_81

def optimizedBody124_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_1 optimizedBody124_82

def optimizedBody124_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody124_0 optimizedBody124_83

def optimized124 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(124, 6, optimizedBody124_84)
end InitECandidate.Proofs.StackAnalysis
