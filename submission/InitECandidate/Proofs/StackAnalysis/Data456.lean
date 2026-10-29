import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody456_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 0), (2, 2), (4, 4)]

def optimizedBody456_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody456_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody456_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody456_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody456_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody456_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody456_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody456_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody456_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_5 optimizedBody456_8

def optimizedBody456_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_7 optimizedBody456_9

def optimizedBody456_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_10

def optimizedBody456_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody456_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody456_11 optimizedBody456_12

def optimizedBody456_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody456_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_14 optimizedBody456_9

def optimizedBody456_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_15

def optimizedBody456_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_16

def optimizedBody456_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_13 optimizedBody456_17

def optimizedBody456_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_6 optimizedBody456_18

def optimizedBody456_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_5 optimizedBody456_19

def optimizedBody456_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_4 optimizedBody456_20

def optimizedBody456_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_3 optimizedBody456_21

def optimizedBody456_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_22

def optimizedBody456_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 4), (10, 2)]

def optimizedBody456_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 12) optimizedBody456_23 optimizedBody456_24

def optimizedBody456_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 20#64)

def optimizedBody456_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody456_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody456_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 32#64)

def optimizedBody456_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12)]

def optimizedBody456_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_29 optimizedBody456_30

def optimizedBody456_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_31

def optimizedBody456_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_30

def optimizedBody456_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody456_32 optimizedBody456_33

def optimizedBody456_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody456_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8), (14, 14), (10, 10), (12, 12), (6, 6)]

def optimizedBody456_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (14, 14)]

def optimizedBody456_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (14, 14)]

def optimizedBody456_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.reg 10)))

def optimizedBody456_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody456_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (14, 14), (4, 4)]

def optimizedBody456_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.reg 8)))

def optimizedBody456_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody456_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody456_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody456_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody456_11 optimizedBody456_12

def optimizedBody456_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_46 optimizedBody456_17

def optimizedBody456_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_45 optimizedBody456_47

def optimizedBody456_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_48

def optimizedBody456_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody456_49 optimizedBody456_12

def optimizedBody456_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody456_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody456_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (14, 14), (10, 10), (12, 12)]

def optimizedBody456_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody456_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_53 optimizedBody456_54

def optimizedBody456_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_52 optimizedBody456_55

def optimizedBody456_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_51 optimizedBody456_56

def optimizedBody456_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_57

def optimizedBody456_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_58

def optimizedBody456_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_50 optimizedBody456_59

def optimizedBody456_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_44 optimizedBody456_60

def optimizedBody456_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_43 optimizedBody456_61

def optimizedBody456_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_42 optimizedBody456_62

def optimizedBody456_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_41 optimizedBody456_63

def optimizedBody456_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_40 optimizedBody456_64

def optimizedBody456_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_39 optimizedBody456_65

def optimizedBody456_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_38 optimizedBody456_66

def optimizedBody456_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_67

def optimizedBody456_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody456_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_69

def optimizedBody456_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 12) optimizedBody456_68 optimizedBody456_70

def optimizedBody456_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_53

def optimizedBody456_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_71 optimizedBody456_72

def optimizedBody456_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_37 optimizedBody456_73

def optimizedBody456_75 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody456_74 (Flapjack.Spt.ls PUnit.unit)

def optimizedBody456_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_75 optimizedBody456_16

def optimizedBody456_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_36 optimizedBody456_76

def optimizedBody456_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_77

def optimizedBody456_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_35 optimizedBody456_78

def optimizedBody456_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_79

def optimizedBody456_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_34 optimizedBody456_80

def optimizedBody456_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_28 optimizedBody456_81

def optimizedBody456_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_27 optimizedBody456_82

def optimizedBody456_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_26 optimizedBody456_83

def optimizedBody456_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_84

def optimizedBody456_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_85

def optimizedBody456_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_25 optimizedBody456_86

def optimizedBody456_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_1 optimizedBody456_87

def optimizedBody456_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_0 optimizedBody456_88

def optimized456 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(456, 4, optimizedBody456_89)
end InitECandidate.Proofs.StackAnalysis
