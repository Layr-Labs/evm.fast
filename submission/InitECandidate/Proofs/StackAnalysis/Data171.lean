import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody171_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody171_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody171_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody171_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody171_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody171_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody171_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_4 optimizedBody171_5

def optimizedBody171_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_3 optimizedBody171_6

def optimizedBody171_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_1 optimizedBody171_5

def optimizedBody171_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_3 optimizedBody171_8

def optimizedBody171_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 4) optimizedBody171_7 optimizedBody171_9

def optimizedBody171_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody171_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody171_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody171_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody171_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody171_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_14 optimizedBody171_15

def optimizedBody171_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_3 optimizedBody171_16

def optimizedBody171_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody171_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_18 optimizedBody171_15

def optimizedBody171_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_3 optimizedBody171_19

def optimizedBody171_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 10) optimizedBody171_17 optimizedBody171_20

def optimizedBody171_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody171_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody171_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 21#64)

def optimizedBody171_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 6)]

def optimizedBody171_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48)]

def optimizedBody171_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody171_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody171_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_27 optimizedBody171_28

def optimizedBody171_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody171_26, 171, 2)) (some 159) ([2]) (some (2, optimizedBody171_29, 171, 3))

def optimizedBody171_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (6, 6)]

def optimizedBody171_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_3 optimizedBody171_31

def optimizedBody171_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_30 optimizedBody171_32

def optimizedBody171_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_25 optimizedBody171_33

def optimizedBody171_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_24 optimizedBody171_34

def optimizedBody171_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(44, 0), (4, 4), (6, 6)]

def optimizedBody171_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody171_35 optimizedBody171_36

def optimizedBody171_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody171_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody171_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 0) optimizedBody171_17 optimizedBody171_20

def optimizedBody171_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody171_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody171_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody171_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_42 optimizedBody171_43

def optimizedBody171_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_3 optimizedBody171_44

def optimizedBody171_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_39 optimizedBody171_43

def optimizedBody171_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_3 optimizedBody171_46

def optimizedBody171_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody171_45 optimizedBody171_47

def optimizedBody171_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody171_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody171_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 22#64)

def optimizedBody171_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody171_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody171_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody171_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_54 optimizedBody171_28

def optimizedBody171_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody171_53, 171, 4)) (some 159) ([2]) (some (2, optimizedBody171_55, 171, 5))

def optimizedBody171_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_3 optimizedBody171_43

def optimizedBody171_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_56 optimizedBody171_57

def optimizedBody171_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_52 optimizedBody171_58

def optimizedBody171_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_51 optimizedBody171_59

def optimizedBody171_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 44)]

def optimizedBody171_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.imm 0#64) optimizedBody171_60 optimizedBody171_61

def optimizedBody171_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody171_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_11 optimizedBody171_63

def optimizedBody171_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_18 optimizedBody171_64

def optimizedBody171_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_3 optimizedBody171_65

def optimizedBody171_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_62 optimizedBody171_66

def optimizedBody171_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_50 optimizedBody171_67

def optimizedBody171_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_49 optimizedBody171_68

def optimizedBody171_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_3 optimizedBody171_69

def optimizedBody171_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_48 optimizedBody171_70

def optimizedBody171_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_41 optimizedBody171_71

def optimizedBody171_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_3 optimizedBody171_72

def optimizedBody171_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_40 optimizedBody171_73

def optimizedBody171_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_39 optimizedBody171_74

def optimizedBody171_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_38 optimizedBody171_75

def optimizedBody171_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_3 optimizedBody171_76

def optimizedBody171_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_37 optimizedBody171_77

def optimizedBody171_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_23 optimizedBody171_78

def optimizedBody171_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_22 optimizedBody171_79

def optimizedBody171_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_3 optimizedBody171_80

def optimizedBody171_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_21 optimizedBody171_81

def optimizedBody171_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_13 optimizedBody171_82

def optimizedBody171_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_11 optimizedBody171_83

def optimizedBody171_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_12 optimizedBody171_84

def optimizedBody171_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_11 optimizedBody171_85

def optimizedBody171_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_3 optimizedBody171_86

def optimizedBody171_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_10 optimizedBody171_87

def optimizedBody171_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_2 optimizedBody171_88

def optimizedBody171_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_1 optimizedBody171_89

def optimizedBody171_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody171_0 optimizedBody171_90

def optimized171 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(171, 4, optimizedBody171_91)
end InitECandidate.Proofs.StackAnalysis
