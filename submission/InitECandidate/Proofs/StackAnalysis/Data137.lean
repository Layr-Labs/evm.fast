import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody137_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody137_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody137_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody137_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody137_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody137_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody137_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody137_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4)]

def optimizedBody137_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_6 optimizedBody137_7

def optimizedBody137_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_5 optimizedBody137_8

def optimizedBody137_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 4)]

def optimizedBody137_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_5 optimizedBody137_10

def optimizedBody137_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 8) optimizedBody137_9 optimizedBody137_11

def optimizedBody137_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody137_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 6 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody137_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody137_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody137_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4)]

def optimizedBody137_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_16 optimizedBody137_17

def optimizedBody137_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_15 optimizedBody137_18

def optimizedBody137_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_5 optimizedBody137_19

def optimizedBody137_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4)]

def optimizedBody137_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_5 optimizedBody137_21

def optimizedBody137_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 8) optimizedBody137_20 optimizedBody137_22

def optimizedBody137_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody137_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody137_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_25 optimizedBody137_7

def optimizedBody137_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_15 optimizedBody137_26

def optimizedBody137_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_5 optimizedBody137_27

def optimizedBody137_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 8) optimizedBody137_28 optimizedBody137_11

def optimizedBody137_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 6 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody137_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody137_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_31 optimizedBody137_17

def optimizedBody137_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_15 optimizedBody137_32

def optimizedBody137_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_5 optimizedBody137_33

def optimizedBody137_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 8) optimizedBody137_34 optimizedBody137_22

def optimizedBody137_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody137_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody137_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_37 optimizedBody137_7

def optimizedBody137_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_15 optimizedBody137_38

def optimizedBody137_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_5 optimizedBody137_39

def optimizedBody137_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 8) optimizedBody137_40 optimizedBody137_11

def optimizedBody137_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody137_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody137_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_43 optimizedBody137_17

def optimizedBody137_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_15 optimizedBody137_44

def optimizedBody137_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_5 optimizedBody137_45

def optimizedBody137_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 8) optimizedBody137_46 optimizedBody137_22

def optimizedBody137_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody137_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody137_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody137_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_2 optimizedBody137_50

def optimizedBody137_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_49 optimizedBody137_51

def optimizedBody137_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_48 optimizedBody137_52

def optimizedBody137_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_5 optimizedBody137_53

def optimizedBody137_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_47 optimizedBody137_54

def optimizedBody137_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_4 optimizedBody137_55

def optimizedBody137_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_42 optimizedBody137_56

def optimizedBody137_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_13 optimizedBody137_57

def optimizedBody137_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_5 optimizedBody137_58

def optimizedBody137_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_41 optimizedBody137_59

def optimizedBody137_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_4 optimizedBody137_60

def optimizedBody137_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_36 optimizedBody137_61

def optimizedBody137_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_2 optimizedBody137_62

def optimizedBody137_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_5 optimizedBody137_63

def optimizedBody137_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_35 optimizedBody137_64

def optimizedBody137_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_4 optimizedBody137_65

def optimizedBody137_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_30 optimizedBody137_66

def optimizedBody137_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_13 optimizedBody137_67

def optimizedBody137_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_5 optimizedBody137_68

def optimizedBody137_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_29 optimizedBody137_69

def optimizedBody137_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_4 optimizedBody137_70

def optimizedBody137_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_24 optimizedBody137_71

def optimizedBody137_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_2 optimizedBody137_72

def optimizedBody137_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_5 optimizedBody137_73

def optimizedBody137_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_23 optimizedBody137_74

def optimizedBody137_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_4 optimizedBody137_75

def optimizedBody137_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_14 optimizedBody137_76

def optimizedBody137_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_13 optimizedBody137_77

def optimizedBody137_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_5 optimizedBody137_78

def optimizedBody137_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_12 optimizedBody137_79

def optimizedBody137_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_4 optimizedBody137_80

def optimizedBody137_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_3 optimizedBody137_81

def optimizedBody137_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_2 optimizedBody137_82

def optimizedBody137_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_1 optimizedBody137_83

def optimizedBody137_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody137_0 optimizedBody137_84

def optimized137 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(137, 2, optimizedBody137_85)
end InitECandidate.Proofs.StackAnalysis
