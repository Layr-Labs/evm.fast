import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody94_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (8, 2)]

def optimizedBody94_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody94_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody94_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody94_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 8)]

def optimizedBody94_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46), (8, 48)]

def optimizedBody94_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46), (8, 48)]

def optimizedBody94_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody94_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_6 optimizedBody94_7

def optimizedBody94_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody94_5, 94, 2)) (some 66) ([2]) (some (2, optimizedBody94_8, 94, 3))

def optimizedBody94_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (8, 8)]

def optimizedBody94_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_2 optimizedBody94_10

def optimizedBody94_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_9 optimizedBody94_11

def optimizedBody94_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_4 optimizedBody94_12

def optimizedBody94_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_3 optimizedBody94_13

def optimizedBody94_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_2 optimizedBody94_14

def optimizedBody94_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody94_15 optimizedBody94_11

def optimizedBody94_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 4), (8, 8)]

def optimizedBody94_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 8)]

def optimizedBody94_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4]

def optimizedBody94_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_18 optimizedBody94_19

def optimizedBody94_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_1 optimizedBody94_20

def optimizedBody94_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_2 optimizedBody94_21

def optimizedBody94_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 8)]

def optimizedBody94_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 12) optimizedBody94_22 optimizedBody94_23

def optimizedBody94_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody94_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 64#64)

def optimizedBody94_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2), (4, 4), (12, 12), (6, 6), (10, 10)]

def optimizedBody94_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody94_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody94_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody94_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 10), (10, 10), (6, 6)]

def optimizedBody94_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody94_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody94_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody94_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody94_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody94_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (4, 4)]

def optimizedBody94_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 4 (Flapjack.WordRegImm.reg 12)))

def optimizedBody94_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 1#64)

def optimizedBody94_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 10), (10, 10)]

def optimizedBody94_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 14 (Flapjack.WordRegImm.reg 8)))

def optimizedBody94_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody94_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody94_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (12, 12), (10, 10)]

def optimizedBody94_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_43 optimizedBody94_44

def optimizedBody94_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_42 optimizedBody94_45

def optimizedBody94_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_41 optimizedBody94_46

def optimizedBody94_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_40 optimizedBody94_47

def optimizedBody94_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_39 optimizedBody94_48

def optimizedBody94_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_34 optimizedBody94_49

def optimizedBody94_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_38 optimizedBody94_50

def optimizedBody94_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_37 optimizedBody94_51

def optimizedBody94_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_2 optimizedBody94_52

def optimizedBody94_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_2 optimizedBody94_44

def optimizedBody94_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.WordRegImm.reg 12) optimizedBody94_53 optimizedBody94_54

def optimizedBody94_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (12, 12), (6, 6), (10, 10)]

def optimizedBody94_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody94_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_56 optimizedBody94_57

def optimizedBody94_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_2 optimizedBody94_58

def optimizedBody94_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_55 optimizedBody94_59

def optimizedBody94_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_37 optimizedBody94_60

def optimizedBody94_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_36 optimizedBody94_61

def optimizedBody94_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_35 optimizedBody94_62

def optimizedBody94_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_34 optimizedBody94_63

def optimizedBody94_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_33 optimizedBody94_64

def optimizedBody94_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_32 optimizedBody94_65

def optimizedBody94_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_31 optimizedBody94_66

def optimizedBody94_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_30 optimizedBody94_67

def optimizedBody94_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_29 optimizedBody94_68

def optimizedBody94_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_2 optimizedBody94_69

def optimizedBody94_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody94_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_2 optimizedBody94_71

def optimizedBody94_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 10) optimizedBody94_70 optimizedBody94_72

def optimizedBody94_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_2 optimizedBody94_56

def optimizedBody94_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_73 optimizedBody94_74

def optimizedBody94_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_29 optimizedBody94_75

def optimizedBody94_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_28 optimizedBody94_76

def optimizedBody94_78 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody94_77 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def optimizedBody94_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody94_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_79 optimizedBody94_19

def optimizedBody94_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_2 optimizedBody94_80

def optimizedBody94_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_78 optimizedBody94_81

def optimizedBody94_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_27 optimizedBody94_82

def optimizedBody94_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_2 optimizedBody94_83

def optimizedBody94_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_26 optimizedBody94_84

def optimizedBody94_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_25 optimizedBody94_85

def optimizedBody94_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_1 optimizedBody94_86

def optimizedBody94_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_2 optimizedBody94_87

def optimizedBody94_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_2 optimizedBody94_88

def optimizedBody94_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_24 optimizedBody94_89

def optimizedBody94_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_17 optimizedBody94_90

def optimizedBody94_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_2 optimizedBody94_91

def optimizedBody94_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_16 optimizedBody94_92

def optimizedBody94_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_1 optimizedBody94_93

def optimizedBody94_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody94_0 optimizedBody94_94

def optimized94 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(94, 3, optimizedBody94_95)
end InitECandidate.Proofs.StackAnalysis
