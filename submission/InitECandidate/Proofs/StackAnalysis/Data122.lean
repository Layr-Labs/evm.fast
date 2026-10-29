import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody122_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody122_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody122_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody122_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4294901760#64)

def optimizedBody122_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 6 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody122_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody122_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody122_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 16#64)

def optimizedBody122_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody122_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4)]

def optimizedBody122_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_8 optimizedBody122_9

def optimizedBody122_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_2 optimizedBody122_10

def optimizedBody122_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_7 optimizedBody122_11

def optimizedBody122_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_6 optimizedBody122_12

def optimizedBody122_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_6 optimizedBody122_9

def optimizedBody122_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 8) optimizedBody122_13 optimizedBody122_14

def optimizedBody122_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4278190080#64)

def optimizedBody122_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody122_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody122_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody122_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody122_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_20 optimizedBody122_9

def optimizedBody122_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_19 optimizedBody122_21

def optimizedBody122_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_18 optimizedBody122_22

def optimizedBody122_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_17 optimizedBody122_23

def optimizedBody122_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_6 optimizedBody122_24

def optimizedBody122_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 8) optimizedBody122_25 optimizedBody122_14

def optimizedBody122_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4026531840#64)

def optimizedBody122_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody122_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody122_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_29 optimizedBody122_9

def optimizedBody122_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_19 optimizedBody122_30

def optimizedBody122_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_28 optimizedBody122_31

def optimizedBody122_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_17 optimizedBody122_32

def optimizedBody122_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_6 optimizedBody122_33

def optimizedBody122_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 8) optimizedBody122_34 optimizedBody122_14

def optimizedBody122_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3221225472#64)

def optimizedBody122_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody122_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody122_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_38 optimizedBody122_9

def optimizedBody122_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_19 optimizedBody122_39

def optimizedBody122_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_37 optimizedBody122_40

def optimizedBody122_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_17 optimizedBody122_41

def optimizedBody122_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_6 optimizedBody122_42

def optimizedBody122_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 8) optimizedBody122_43 optimizedBody122_14

def optimizedBody122_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2147483648#64)

def optimizedBody122_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody122_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody122_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody122_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody122_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_48 optimizedBody122_49

def optimizedBody122_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_17 optimizedBody122_50

def optimizedBody122_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_6 optimizedBody122_51

def optimizedBody122_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_6 optimizedBody122_49

def optimizedBody122_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody122_52 optimizedBody122_53

def optimizedBody122_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody122_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody122_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_55 optimizedBody122_56

def optimizedBody122_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_6 optimizedBody122_57

def optimizedBody122_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_54 optimizedBody122_58

def optimizedBody122_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_47 optimizedBody122_59

def optimizedBody122_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_46 optimizedBody122_60

def optimizedBody122_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_45 optimizedBody122_61

def optimizedBody122_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_2 optimizedBody122_62

def optimizedBody122_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_6 optimizedBody122_63

def optimizedBody122_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_44 optimizedBody122_64

def optimizedBody122_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_5 optimizedBody122_65

def optimizedBody122_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_4 optimizedBody122_66

def optimizedBody122_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_36 optimizedBody122_67

def optimizedBody122_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_2 optimizedBody122_68

def optimizedBody122_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_6 optimizedBody122_69

def optimizedBody122_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_35 optimizedBody122_70

def optimizedBody122_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_5 optimizedBody122_71

def optimizedBody122_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_4 optimizedBody122_72

def optimizedBody122_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_27 optimizedBody122_73

def optimizedBody122_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_2 optimizedBody122_74

def optimizedBody122_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_6 optimizedBody122_75

def optimizedBody122_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_26 optimizedBody122_76

def optimizedBody122_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_5 optimizedBody122_77

def optimizedBody122_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_4 optimizedBody122_78

def optimizedBody122_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_16 optimizedBody122_79

def optimizedBody122_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_2 optimizedBody122_80

def optimizedBody122_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_6 optimizedBody122_81

def optimizedBody122_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_15 optimizedBody122_82

def optimizedBody122_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_5 optimizedBody122_83

def optimizedBody122_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_4 optimizedBody122_84

def optimizedBody122_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_3 optimizedBody122_85

def optimizedBody122_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_2 optimizedBody122_86

def optimizedBody122_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_1 optimizedBody122_87

def optimizedBody122_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody122_0 optimizedBody122_88

def optimized122 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(122, 2, optimizedBody122_89)
end InitECandidate.Proofs.StackAnalysis
