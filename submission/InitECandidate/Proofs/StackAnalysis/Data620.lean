import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody620_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 16), (50, 12), (52, 10), (48, 14)]

def optimizedBody620_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (50, 50), (52, 52), (4, 48)]

def optimizedBody620_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (50, 50), (52, 52), (4, 48)]

def optimizedBody620_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody620_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_2 optimizedBody620_3

def optimizedBody620_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody620_1, 620, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody620_4, 620, 3))

def optimizedBody620_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody620_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody620_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody620_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody620_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2300#64)

def optimizedBody620_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 0)]

def optimizedBody620_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_10 optimizedBody620_11

def optimizedBody620_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_6 optimizedBody620_12

def optimizedBody620_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 2)]

def optimizedBody620_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_6 optimizedBody620_14

def optimizedBody620_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 8) optimizedBody620_13 optimizedBody620_15

def optimizedBody620_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 6), (48, 48), (50, 50), (52, 52), (54, 4)]

def optimizedBody620_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (10, 46), (46, 48), (0, 50), (12, 52), (6, 54)]

def optimizedBody620_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (46, 48), (0, 50), (12, 52), (6, 54)]

def optimizedBody620_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_19 optimizedBody620_3

def optimizedBody620_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody620_18, 620, 4)) (some 463) ([2, 4]) (some (2, optimizedBody620_20, 620, 5))

def optimizedBody620_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody620_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 12), (4, 10), (44, 44), (46, 46), (48, 12)]

def optimizedBody620_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody620_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody620_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_25 optimizedBody620_3

def optimizedBody620_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody620_24, 620, 6)) (some 463) ([2, 4]) (some (2, optimizedBody620_26, 620, 7))

def optimizedBody620_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 6)]

def optimizedBody620_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (16, 44), (18, 46)]

def optimizedBody620_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (18, 46)]

def optimizedBody620_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_30 optimizedBody620_3

def optimizedBody620_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody620_29, 620, 8)) (some 463) ([2, 4]) (some (2, optimizedBody620_31, 620, 9))

def optimizedBody620_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 18), (4, 4)]

def optimizedBody620_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2, 4]

def optimizedBody620_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_33 optimizedBody620_34

def optimizedBody620_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_6 optimizedBody620_35

def optimizedBody620_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_32 optimizedBody620_36

def optimizedBody620_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_28 optimizedBody620_37

def optimizedBody620_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_6 optimizedBody620_38

def optimizedBody620_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_27 optimizedBody620_39

def optimizedBody620_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_23 optimizedBody620_40

def optimizedBody620_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_6 optimizedBody620_41

def optimizedBody620_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 10), (8, 46), (0, 0), (12, 12), (6, 6), (14, 44)]

def optimizedBody620_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody620_42 optimizedBody620_43

def optimizedBody620_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody620_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody620_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody620_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody620_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 0 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody620_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody620_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (0, 0)]

def optimizedBody620_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 0)]

def optimizedBody620_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_6 optimizedBody620_52

def optimizedBody620_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12)]

def optimizedBody620_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_6 optimizedBody620_54

def optimizedBody620_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 12) optimizedBody620_53 optimizedBody620_55

def optimizedBody620_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody620_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.reg 12)))

def optimizedBody620_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8)]

def optimizedBody620_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.reg 12)))

def optimizedBody620_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody620_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2, 4]

def optimizedBody620_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_61 optimizedBody620_62

def optimizedBody620_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_60 optimizedBody620_63

def optimizedBody620_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_59 optimizedBody620_64

def optimizedBody620_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_58 optimizedBody620_65

def optimizedBody620_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_57 optimizedBody620_66

def optimizedBody620_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_6 optimizedBody620_67

def optimizedBody620_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_56 optimizedBody620_68

def optimizedBody620_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_51 optimizedBody620_69

def optimizedBody620_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_50 optimizedBody620_70

def optimizedBody620_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_49 optimizedBody620_71

def optimizedBody620_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_8 optimizedBody620_72

def optimizedBody620_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_48 optimizedBody620_73

def optimizedBody620_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_47 optimizedBody620_74

def optimizedBody620_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_46 optimizedBody620_75

def optimizedBody620_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_45 optimizedBody620_76

def optimizedBody620_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_6 optimizedBody620_77

def optimizedBody620_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_6 optimizedBody620_78

def optimizedBody620_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_44 optimizedBody620_79

def optimizedBody620_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_22 optimizedBody620_80

def optimizedBody620_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_6 optimizedBody620_81

def optimizedBody620_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_21 optimizedBody620_82

def optimizedBody620_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_17 optimizedBody620_83

def optimizedBody620_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_6 optimizedBody620_84

def optimizedBody620_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_16 optimizedBody620_85

def optimizedBody620_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_9 optimizedBody620_86

def optimizedBody620_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_8 optimizedBody620_87

def optimizedBody620_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_7 optimizedBody620_88

def optimizedBody620_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_6 optimizedBody620_89

def optimizedBody620_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_5 optimizedBody620_90

def optimizedBody620_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody620_0 optimizedBody620_91

def optimized620 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(620, 9, optimizedBody620_92)
end InitECandidate.Proofs.StackAnalysis
