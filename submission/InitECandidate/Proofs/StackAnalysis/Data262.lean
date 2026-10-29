import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody262_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (50, 4), (48, 2)]

def optimizedBody262_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody262_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody262_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody262_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_2 optimizedBody262_3

def optimizedBody262_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody262_1, 262, 2)) (some 69) ([]) (some (2, optimizedBody262_4, 262, 3))

def optimizedBody262_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody262_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody262_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (48, 48)]

def optimizedBody262_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (50, 50), (0, 48)]

def optimizedBody262_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (0, 48)]

def optimizedBody262_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_10 optimizedBody262_3

def optimizedBody262_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody262_9, 262, 4)) (some 68) ([2]) (some (2, optimizedBody262_11, 262, 5))

def optimizedBody262_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 0)]

def optimizedBody262_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 20#64)

def optimizedBody262_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 50), (52, 2)]

def optimizedBody262_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (8, 52)]

def optimizedBody262_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (8, 52)]

def optimizedBody262_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_17 optimizedBody262_3

def optimizedBody262_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody262_16, 262, 6)) (some 242) ([2, 4, 6]) (some (2, optimizedBody262_18, 262, 7))

def optimizedBody262_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody262_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 20#64)))

def optimizedBody262_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody262_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody262_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 48#64)

def optimizedBody262_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 50), (52, 8)]

def optimizedBody262_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (4, 52)]

def optimizedBody262_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (4, 52)]

def optimizedBody262_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_27 optimizedBody262_3

def optimizedBody262_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody262_26, 262, 8)) (some 242) ([2, 4, 6]) (some (2, optimizedBody262_28, 262, 9))

def optimizedBody262_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody262_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 68#64)))

def optimizedBody262_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody262_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody262_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (8, 50)]

def optimizedBody262_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (8, 50)]

def optimizedBody262_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_35 optimizedBody262_3

def optimizedBody262_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody262_34, 262, 10)) (some 242) ([2, 4, 6]) (some (2, optimizedBody262_36, 262, 11))

def optimizedBody262_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 0)]

def optimizedBody262_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3#64)

def optimizedBody262_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody262_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46)]

def optimizedBody262_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody262_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody262_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_43 optimizedBody262_3

def optimizedBody262_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody262_42, 262, 12)) (some 235) ([2, 4, 6, 8]) (some (2, optimizedBody262_44, 262, 13))

def optimizedBody262_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody262_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody262_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody262_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_48 optimizedBody262_3

def optimizedBody262_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody262_47, 262, 14)) (some 70) ([2]) (some (2, optimizedBody262_49, 262, 15))

def optimizedBody262_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody262_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody262_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody262_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_52 optimizedBody262_53

def optimizedBody262_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_51 optimizedBody262_54

def optimizedBody262_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_6 optimizedBody262_55

def optimizedBody262_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_50 optimizedBody262_56

def optimizedBody262_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_46 optimizedBody262_57

def optimizedBody262_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_6 optimizedBody262_58

def optimizedBody262_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_45 optimizedBody262_59

def optimizedBody262_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_41 optimizedBody262_60

def optimizedBody262_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_40 optimizedBody262_61

def optimizedBody262_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_39 optimizedBody262_62

def optimizedBody262_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_38 optimizedBody262_63

def optimizedBody262_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_6 optimizedBody262_64

def optimizedBody262_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_37 optimizedBody262_65

def optimizedBody262_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_33 optimizedBody262_66

def optimizedBody262_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_24 optimizedBody262_67

def optimizedBody262_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_32 optimizedBody262_68

def optimizedBody262_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_22 optimizedBody262_69

def optimizedBody262_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_31 optimizedBody262_70

def optimizedBody262_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_30 optimizedBody262_71

def optimizedBody262_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_6 optimizedBody262_72

def optimizedBody262_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_29 optimizedBody262_73

def optimizedBody262_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_25 optimizedBody262_74

def optimizedBody262_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_24 optimizedBody262_75

def optimizedBody262_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_23 optimizedBody262_76

def optimizedBody262_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_22 optimizedBody262_77

def optimizedBody262_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_21 optimizedBody262_78

def optimizedBody262_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_20 optimizedBody262_79

def optimizedBody262_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_6 optimizedBody262_80

def optimizedBody262_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_19 optimizedBody262_81

def optimizedBody262_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_15 optimizedBody262_82

def optimizedBody262_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_14 optimizedBody262_83

def optimizedBody262_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_13 optimizedBody262_84

def optimizedBody262_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_6 optimizedBody262_85

def optimizedBody262_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_12 optimizedBody262_86

def optimizedBody262_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_8 optimizedBody262_87

def optimizedBody262_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_7 optimizedBody262_88

def optimizedBody262_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_6 optimizedBody262_89

def optimizedBody262_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_5 optimizedBody262_90

def optimizedBody262_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody262_0 optimizedBody262_91

def optimized262 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(262, 3, optimizedBody262_92)
end InitECandidate.Proofs.StackAnalysis
