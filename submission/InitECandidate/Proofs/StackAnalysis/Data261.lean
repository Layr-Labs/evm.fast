import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody261_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (50, 4), (48, 2)]

def optimizedBody261_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody261_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody261_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody261_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_2 optimizedBody261_3

def optimizedBody261_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody261_1, 261, 2)) (some 69) ([]) (some (2, optimizedBody261_4, 261, 3))

def optimizedBody261_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody261_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody261_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (48, 48)]

def optimizedBody261_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (50, 50), (0, 48)]

def optimizedBody261_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (0, 48)]

def optimizedBody261_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_10 optimizedBody261_3

def optimizedBody261_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody261_9, 261, 4)) (some 68) ([2]) (some (2, optimizedBody261_11, 261, 5))

def optimizedBody261_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 0)]

def optimizedBody261_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 20#64)

def optimizedBody261_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 50), (52, 2)]

def optimizedBody261_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (8, 52)]

def optimizedBody261_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (8, 52)]

def optimizedBody261_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_17 optimizedBody261_3

def optimizedBody261_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody261_16, 261, 6)) (some 242) ([2, 4, 6]) (some (2, optimizedBody261_18, 261, 7))

def optimizedBody261_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody261_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 20#64)))

def optimizedBody261_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody261_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody261_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 48#64)

def optimizedBody261_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 50), (52, 8)]

def optimizedBody261_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (4, 52)]

def optimizedBody261_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (4, 52)]

def optimizedBody261_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_27 optimizedBody261_3

def optimizedBody261_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody261_26, 261, 8)) (some 242) ([2, 4, 6]) (some (2, optimizedBody261_28, 261, 9))

def optimizedBody261_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody261_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 68#64)))

def optimizedBody261_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody261_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody261_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (8, 50)]

def optimizedBody261_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (8, 50)]

def optimizedBody261_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_35 optimizedBody261_3

def optimizedBody261_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody261_34, 261, 10)) (some 244) ([2, 4]) (some (2, optimizedBody261_36, 261, 11))

def optimizedBody261_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 0)]

def optimizedBody261_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3#64)

def optimizedBody261_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody261_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46)]

def optimizedBody261_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody261_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody261_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_43 optimizedBody261_3

def optimizedBody261_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody261_42, 261, 12)) (some 235) ([2, 4, 6, 8]) (some (2, optimizedBody261_44, 261, 13))

def optimizedBody261_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody261_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody261_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody261_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_48 optimizedBody261_3

def optimizedBody261_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody261_47, 261, 14)) (some 70) ([2]) (some (2, optimizedBody261_49, 261, 15))

def optimizedBody261_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody261_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody261_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody261_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_52 optimizedBody261_53

def optimizedBody261_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_51 optimizedBody261_54

def optimizedBody261_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_6 optimizedBody261_55

def optimizedBody261_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_50 optimizedBody261_56

def optimizedBody261_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_46 optimizedBody261_57

def optimizedBody261_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_6 optimizedBody261_58

def optimizedBody261_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_45 optimizedBody261_59

def optimizedBody261_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_41 optimizedBody261_60

def optimizedBody261_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_40 optimizedBody261_61

def optimizedBody261_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_39 optimizedBody261_62

def optimizedBody261_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_38 optimizedBody261_63

def optimizedBody261_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_6 optimizedBody261_64

def optimizedBody261_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_37 optimizedBody261_65

def optimizedBody261_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_33 optimizedBody261_66

def optimizedBody261_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_32 optimizedBody261_67

def optimizedBody261_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_22 optimizedBody261_68

def optimizedBody261_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_31 optimizedBody261_69

def optimizedBody261_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_30 optimizedBody261_70

def optimizedBody261_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_6 optimizedBody261_71

def optimizedBody261_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_29 optimizedBody261_72

def optimizedBody261_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_25 optimizedBody261_73

def optimizedBody261_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_24 optimizedBody261_74

def optimizedBody261_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_23 optimizedBody261_75

def optimizedBody261_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_22 optimizedBody261_76

def optimizedBody261_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_21 optimizedBody261_77

def optimizedBody261_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_20 optimizedBody261_78

def optimizedBody261_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_6 optimizedBody261_79

def optimizedBody261_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_19 optimizedBody261_80

def optimizedBody261_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_15 optimizedBody261_81

def optimizedBody261_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_14 optimizedBody261_82

def optimizedBody261_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_13 optimizedBody261_83

def optimizedBody261_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_6 optimizedBody261_84

def optimizedBody261_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_12 optimizedBody261_85

def optimizedBody261_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_8 optimizedBody261_86

def optimizedBody261_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_7 optimizedBody261_87

def optimizedBody261_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_6 optimizedBody261_88

def optimizedBody261_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_5 optimizedBody261_89

def optimizedBody261_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody261_0 optimizedBody261_90

def optimized261 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(261, 3, optimizedBody261_91)
end InitECandidate.Proofs.StackAnalysis
