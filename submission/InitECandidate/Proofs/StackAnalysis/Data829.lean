import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody829_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody829_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 18#64)

def optimizedBody829_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 2)]

def optimizedBody829_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 44), (4, 46)]

def optimizedBody829_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (4, 46)]

def optimizedBody829_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody829_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_4 optimizedBody829_5

def optimizedBody829_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody829_3, 829, 2)) (some 80) ([2, 4]) (some (2, optimizedBody829_6, 829, 3))

def optimizedBody829_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody829_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody829_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody829_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody829_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody829_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_11 optimizedBody829_12

def optimizedBody829_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_10 optimizedBody829_13

def optimizedBody829_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_14

def optimizedBody829_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody829_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody829_15 optimizedBody829_16

def optimizedBody829_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody829_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 18#64)))

def optimizedBody829_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody829_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody829_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 19#64)))

def optimizedBody829_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody829_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody829_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody829_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody829_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18#64)

def optimizedBody829_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_27 optimizedBody829_13

def optimizedBody829_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_28

def optimizedBody829_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody829_29 optimizedBody829_16

def optimizedBody829_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_15

def optimizedBody829_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_30 optimizedBody829_31

def optimizedBody829_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_26 optimizedBody829_32

def optimizedBody829_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_11 optimizedBody829_33

def optimizedBody829_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_34

def optimizedBody829_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 2)]

def optimizedBody829_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody829_35 optimizedBody829_36

def optimizedBody829_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody829_15 optimizedBody829_16

def optimizedBody829_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody829_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody829_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody829_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody829_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_41 optimizedBody829_42

def optimizedBody829_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_43

def optimizedBody829_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_10 optimizedBody829_42

def optimizedBody829_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_45

def optimizedBody829_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 0) optimizedBody829_44 optimizedBody829_46

def optimizedBody829_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 17#64)

def optimizedBody829_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody829_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_40 optimizedBody829_49

def optimizedBody829_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_50

def optimizedBody829_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody829_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_52 optimizedBody829_49

def optimizedBody829_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_53

def optimizedBody829_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 6) optimizedBody829_51 optimizedBody829_54

def optimizedBody829_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody829_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody829_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def optimizedBody829_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_58 optimizedBody829_12

def optimizedBody829_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.imm 0#64) optimizedBody829_59 optimizedBody829_16

def optimizedBody829_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_60 optimizedBody829_15

def optimizedBody829_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_57 optimizedBody829_61

def optimizedBody829_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_56 optimizedBody829_62

def optimizedBody829_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_63

def optimizedBody829_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_55 optimizedBody829_64

def optimizedBody829_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_39 optimizedBody829_65

def optimizedBody829_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_48 optimizedBody829_66

def optimizedBody829_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_67

def optimizedBody829_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_47 optimizedBody829_68

def optimizedBody829_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_40 optimizedBody829_69

def optimizedBody829_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_39 optimizedBody829_70

def optimizedBody829_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_71

def optimizedBody829_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_72

def optimizedBody829_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_38 optimizedBody829_73

def optimizedBody829_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_10 optimizedBody829_74

def optimizedBody829_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_9 optimizedBody829_75

def optimizedBody829_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_76

def optimizedBody829_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_77

def optimizedBody829_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_37 optimizedBody829_78

def optimizedBody829_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_25 optimizedBody829_79

def optimizedBody829_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_24 optimizedBody829_80

def optimizedBody829_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_23 optimizedBody829_81

def optimizedBody829_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_22 optimizedBody829_82

def optimizedBody829_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_21 optimizedBody829_83

def optimizedBody829_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_20 optimizedBody829_84

def optimizedBody829_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_19 optimizedBody829_85

def optimizedBody829_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_18 optimizedBody829_86

def optimizedBody829_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_87

def optimizedBody829_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_88

def optimizedBody829_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_17 optimizedBody829_89

def optimizedBody829_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_10 optimizedBody829_90

def optimizedBody829_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_9 optimizedBody829_91

def optimizedBody829_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_92

def optimizedBody829_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_7 optimizedBody829_93

def optimizedBody829_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_2 optimizedBody829_94

def optimizedBody829_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_1 optimizedBody829_95

def optimizedBody829_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_0 optimizedBody829_96

def optimized829 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(829, 2, optimizedBody829_97)
end InitECandidate.Proofs.StackAnalysis
