import InitECandidate.Proofs.WordStages.Optimize247
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source263
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody263_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (50, 4), (48, 2)]

def optimizedBody263_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody263_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody263_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody263_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_2 optimizedBody263_3

def optimizedBody263_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody263_1, 263, 2)) (some 69) ([]) (some (2, optimizedBody263_4, 263, 3))

def optimizedBody263_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody263_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody263_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (48, 48)]

def optimizedBody263_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (50, 50), (0, 48)]

def optimizedBody263_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (0, 48)]

def optimizedBody263_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_10 optimizedBody263_3

def optimizedBody263_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody263_9, 263, 4)) (some 68) ([2]) (some (2, optimizedBody263_11, 263, 5))

def optimizedBody263_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 0)]

def optimizedBody263_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 48#64)

def optimizedBody263_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 50), (52, 2)]

def optimizedBody263_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (8, 52)]

def optimizedBody263_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (8, 52)]

def optimizedBody263_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_17 optimizedBody263_3

def optimizedBody263_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody263_16, 263, 6)) (some 242) ([2, 4, 6]) (some (2, optimizedBody263_18, 263, 7))

def optimizedBody263_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody263_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody263_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody263_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody263_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody263_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 50), (52, 8)]

def optimizedBody263_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (6, 52)]

def optimizedBody263_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (6, 52)]

def optimizedBody263_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_27 optimizedBody263_3

def optimizedBody263_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody263_26, 263, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody263_28, 263, 9))

def optimizedBody263_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody263_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody263_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody263_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50), (52, 6)]

def optimizedBody263_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (4, 52)]

def optimizedBody263_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (4, 52)]

def optimizedBody263_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_35 optimizedBody263_3

def optimizedBody263_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody263_34, 263, 10)) (some 244) ([2, 4]) (some (2, optimizedBody263_36, 263, 11))

def optimizedBody263_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody263_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody263_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody263_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 96#64)

def optimizedBody263_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody263_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (8, 50)]

def optimizedBody263_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (8, 50)]

def optimizedBody263_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_44 optimizedBody263_3

def optimizedBody263_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody263_43, 263, 12)) (some 242) ([2, 4, 6]) (some (2, optimizedBody263_45, 263, 13))

def optimizedBody263_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 0)]

def optimizedBody263_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4#64)

def optimizedBody263_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4#64)

def optimizedBody263_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46)]

def optimizedBody263_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody263_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody263_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_52 optimizedBody263_3

def optimizedBody263_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody263_51, 263, 14)) (some 235) ([2, 4, 6, 8]) (some (2, optimizedBody263_53, 263, 15))

def optimizedBody263_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody263_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody263_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody263_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_57 optimizedBody263_3

def optimizedBody263_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody263_56, 263, 16)) (some 70) ([2]) (some (2, optimizedBody263_58, 263, 17))

def optimizedBody263_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody263_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody263_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody263_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_61 optimizedBody263_62

def optimizedBody263_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_60 optimizedBody263_63

def optimizedBody263_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_6 optimizedBody263_64

def optimizedBody263_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_59 optimizedBody263_65

def optimizedBody263_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_55 optimizedBody263_66

def optimizedBody263_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_6 optimizedBody263_67

def optimizedBody263_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_54 optimizedBody263_68

def optimizedBody263_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_50 optimizedBody263_69

def optimizedBody263_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_49 optimizedBody263_70

def optimizedBody263_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_48 optimizedBody263_71

def optimizedBody263_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_47 optimizedBody263_72

def optimizedBody263_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_6 optimizedBody263_73

def optimizedBody263_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_46 optimizedBody263_74

def optimizedBody263_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_42 optimizedBody263_75

def optimizedBody263_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_41 optimizedBody263_76

def optimizedBody263_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_40 optimizedBody263_77

def optimizedBody263_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_20 optimizedBody263_78

def optimizedBody263_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_39 optimizedBody263_79

def optimizedBody263_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_38 optimizedBody263_80

def optimizedBody263_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_6 optimizedBody263_81

def optimizedBody263_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_37 optimizedBody263_82

def optimizedBody263_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_33 optimizedBody263_83

def optimizedBody263_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_32 optimizedBody263_84

def optimizedBody263_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_20 optimizedBody263_85

def optimizedBody263_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_31 optimizedBody263_86

def optimizedBody263_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_30 optimizedBody263_87

def optimizedBody263_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_6 optimizedBody263_88

def optimizedBody263_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_29 optimizedBody263_89

def optimizedBody263_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_25 optimizedBody263_90

def optimizedBody263_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_24 optimizedBody263_91

def optimizedBody263_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_23 optimizedBody263_92

def optimizedBody263_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_22 optimizedBody263_93

def optimizedBody263_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_21 optimizedBody263_94

def optimizedBody263_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_20 optimizedBody263_95

def optimizedBody263_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_6 optimizedBody263_96

def optimizedBody263_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_19 optimizedBody263_97

def optimizedBody263_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_15 optimizedBody263_98

def optimizedBody263_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_14 optimizedBody263_99

def optimizedBody263_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_13 optimizedBody263_100

def optimizedBody263_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_6 optimizedBody263_101

def optimizedBody263_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_12 optimizedBody263_102

def optimizedBody263_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_8 optimizedBody263_103

def optimizedBody263_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_7 optimizedBody263_104

def optimizedBody263_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_6 optimizedBody263_105

def optimizedBody263_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_5 optimizedBody263_106

def optimizedBody263_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody263_0 optimizedBody263_107

def oracle263 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)))
              25
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 22))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 0))
              24 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln) 22
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))) 22
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 22)) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 25))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 23
                (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22 Flapjack.Spt.ln)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 24
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24)) 22
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 25
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 25 (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))))
def optimized263 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(263, 3, optimizedBody263_108)
theorem optimize263_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source263, oracle263) = optimized263 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize263_eq
end InitECandidate.Proofs.WordStages
