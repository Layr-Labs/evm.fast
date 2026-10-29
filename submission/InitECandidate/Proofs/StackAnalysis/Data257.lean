import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody257_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (50, 4), (48, 2)]

def optimizedBody257_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody257_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody257_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody257_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_2 optimizedBody257_3

def optimizedBody257_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody257_1, 257, 2)) (some 69) ([]) (some (2, optimizedBody257_4, 257, 3))

def optimizedBody257_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody257_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody257_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (48, 48)]

def optimizedBody257_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (50, 50), (0, 48)]

def optimizedBody257_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (0, 48)]

def optimizedBody257_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_10 optimizedBody257_3

def optimizedBody257_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody257_9, 257, 4)) (some 68) ([2]) (some (2, optimizedBody257_11, 257, 5))

def optimizedBody257_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 4), (50, 50), (52, 0)]

def optimizedBody257_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (6, 52)]

def optimizedBody257_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (6, 52)]

def optimizedBody257_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_15 optimizedBody257_3

def optimizedBody257_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody257_14, 257, 6)) (some 244) ([2, 4]) (some (2, optimizedBody257_16, 257, 7))

def optimizedBody257_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody257_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody257_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody257_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody257_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50), (52, 6)]

def optimizedBody257_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (8, 52)]

def optimizedBody257_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (8, 52)]

def optimizedBody257_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_24 optimizedBody257_3

def optimizedBody257_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody257_23, 257, 8)) (some 244) ([2, 4]) (some (2, optimizedBody257_25, 257, 9))

def optimizedBody257_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody257_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody257_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody257_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 20#64)

def optimizedBody257_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 50), (52, 8)]

def optimizedBody257_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (4, 52)]

def optimizedBody257_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (4, 52)]

def optimizedBody257_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_33 optimizedBody257_3

def optimizedBody257_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody257_32, 257, 10)) (some 242) ([2, 4, 6]) (some (2, optimizedBody257_34, 257, 11))

def optimizedBody257_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody257_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 36#64)))

def optimizedBody257_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody257_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody257_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (8, 50)]

def optimizedBody257_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (8, 50)]

def optimizedBody257_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_41 optimizedBody257_3

def optimizedBody257_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody257_40, 257, 12)) (some 244) ([2, 4]) (some (2, optimizedBody257_42, 257, 13))

def optimizedBody257_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 0)]

def optimizedBody257_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4#64)

def optimizedBody257_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4#64)

def optimizedBody257_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46)]

def optimizedBody257_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody257_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody257_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_49 optimizedBody257_3

def optimizedBody257_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody257_48, 257, 14)) (some 235) ([2, 4, 6, 8]) (some (2, optimizedBody257_50, 257, 15))

def optimizedBody257_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody257_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody257_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody257_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_54 optimizedBody257_3

def optimizedBody257_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody257_53, 257, 16)) (some 70) ([2]) (some (2, optimizedBody257_55, 257, 17))

def optimizedBody257_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody257_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody257_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody257_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_58 optimizedBody257_59

def optimizedBody257_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_57 optimizedBody257_60

def optimizedBody257_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_6 optimizedBody257_61

def optimizedBody257_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_56 optimizedBody257_62

def optimizedBody257_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_52 optimizedBody257_63

def optimizedBody257_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_6 optimizedBody257_64

def optimizedBody257_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_51 optimizedBody257_65

def optimizedBody257_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_47 optimizedBody257_66

def optimizedBody257_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_46 optimizedBody257_67

def optimizedBody257_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_45 optimizedBody257_68

def optimizedBody257_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_44 optimizedBody257_69

def optimizedBody257_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_6 optimizedBody257_70

def optimizedBody257_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_43 optimizedBody257_71

def optimizedBody257_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_39 optimizedBody257_72

def optimizedBody257_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_38 optimizedBody257_73

def optimizedBody257_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_20 optimizedBody257_74

def optimizedBody257_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_37 optimizedBody257_75

def optimizedBody257_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_36 optimizedBody257_76

def optimizedBody257_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_6 optimizedBody257_77

def optimizedBody257_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_35 optimizedBody257_78

def optimizedBody257_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_31 optimizedBody257_79

def optimizedBody257_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_30 optimizedBody257_80

def optimizedBody257_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_29 optimizedBody257_81

def optimizedBody257_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_20 optimizedBody257_82

def optimizedBody257_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_28 optimizedBody257_83

def optimizedBody257_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_27 optimizedBody257_84

def optimizedBody257_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_6 optimizedBody257_85

def optimizedBody257_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_26 optimizedBody257_86

def optimizedBody257_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_22 optimizedBody257_87

def optimizedBody257_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_21 optimizedBody257_88

def optimizedBody257_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_20 optimizedBody257_89

def optimizedBody257_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_19 optimizedBody257_90

def optimizedBody257_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_18 optimizedBody257_91

def optimizedBody257_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_6 optimizedBody257_92

def optimizedBody257_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_17 optimizedBody257_93

def optimizedBody257_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_13 optimizedBody257_94

def optimizedBody257_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_6 optimizedBody257_95

def optimizedBody257_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_12 optimizedBody257_96

def optimizedBody257_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_8 optimizedBody257_97

def optimizedBody257_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_7 optimizedBody257_98

def optimizedBody257_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_6 optimizedBody257_99

def optimizedBody257_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_5 optimizedBody257_100

def optimizedBody257_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody257_0 optimizedBody257_101

def optimized257 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(257, 3, optimizedBody257_102)
end InitECandidate.Proofs.StackAnalysis
