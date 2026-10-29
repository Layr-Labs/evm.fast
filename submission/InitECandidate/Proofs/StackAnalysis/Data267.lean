import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody267_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (50, 4), (48, 2)]

def optimizedBody267_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody267_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody267_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody267_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_2 optimizedBody267_3

def optimizedBody267_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody267_1, 267, 2)) (some 69) ([]) (some (2, optimizedBody267_4, 267, 3))

def optimizedBody267_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody267_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody267_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (48, 48)]

def optimizedBody267_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (50, 50), (0, 48)]

def optimizedBody267_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (0, 48)]

def optimizedBody267_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_10 optimizedBody267_3

def optimizedBody267_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody267_9, 267, 4)) (some 68) ([2]) (some (2, optimizedBody267_11, 267, 5))

def optimizedBody267_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody267_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody267_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 4), (50, 50), (52, 0)]

def optimizedBody267_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (4, 52)]

def optimizedBody267_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (4, 52)]

def optimizedBody267_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_17 optimizedBody267_3

def optimizedBody267_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody267_16, 267, 6)) (some 259) ([2, 4]) (some (2, optimizedBody267_18, 267, 7))

def optimizedBody267_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody267_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody267_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody267_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6), (52, 4)]

def optimizedBody267_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody267_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (6, 6), (8, 8), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52)]

def optimizedBody267_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (8, 52)]

def optimizedBody267_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (8, 52)]

def optimizedBody267_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_27 optimizedBody267_3

def optimizedBody267_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody267_26, 267, 8)) (some 238) ([2, 4, 6, 8]) (some (2, optimizedBody267_28, 267, 9))

def optimizedBody267_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody267_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody267_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody267_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody267_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 50), (52, 8)]

def optimizedBody267_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody267_16, 267, 10)) (some 77) ([2, 4, 6]) (some (2, optimizedBody267_18, 267, 11))

def optimizedBody267_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 32#64))

def optimizedBody267_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody267_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody267_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (8, 50)]

def optimizedBody267_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (8, 50)]

def optimizedBody267_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_40 optimizedBody267_3

def optimizedBody267_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody267_39, 267, 12)) (some 266) ([2, 4]) (some (2, optimizedBody267_41, 267, 13))

def optimizedBody267_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 0)]

def optimizedBody267_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4#64)

def optimizedBody267_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4#64)

def optimizedBody267_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46)]

def optimizedBody267_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody267_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody267_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_48 optimizedBody267_3

def optimizedBody267_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody267_47, 267, 14)) (some 235) ([2, 4, 6, 8]) (some (2, optimizedBody267_49, 267, 15))

def optimizedBody267_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody267_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody267_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody267_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_53 optimizedBody267_3

def optimizedBody267_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody267_52, 267, 16)) (some 70) ([2]) (some (2, optimizedBody267_54, 267, 17))

def optimizedBody267_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody267_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody267_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody267_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_57 optimizedBody267_58

def optimizedBody267_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_56 optimizedBody267_59

def optimizedBody267_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_6 optimizedBody267_60

def optimizedBody267_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_55 optimizedBody267_61

def optimizedBody267_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_51 optimizedBody267_62

def optimizedBody267_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_6 optimizedBody267_63

def optimizedBody267_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_50 optimizedBody267_64

def optimizedBody267_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_46 optimizedBody267_65

def optimizedBody267_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_45 optimizedBody267_66

def optimizedBody267_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_44 optimizedBody267_67

def optimizedBody267_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_43 optimizedBody267_68

def optimizedBody267_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_6 optimizedBody267_69

def optimizedBody267_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_42 optimizedBody267_70

def optimizedBody267_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_38 optimizedBody267_71

def optimizedBody267_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_37 optimizedBody267_72

def optimizedBody267_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_13 optimizedBody267_73

def optimizedBody267_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_36 optimizedBody267_74

def optimizedBody267_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_20 optimizedBody267_75

def optimizedBody267_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_6 optimizedBody267_76

def optimizedBody267_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_35 optimizedBody267_77

def optimizedBody267_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_34 optimizedBody267_78

def optimizedBody267_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_33 optimizedBody267_79

def optimizedBody267_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_32 optimizedBody267_80

def optimizedBody267_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_31 optimizedBody267_81

def optimizedBody267_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_30 optimizedBody267_82

def optimizedBody267_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_13 optimizedBody267_83

def optimizedBody267_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_6 optimizedBody267_84

def optimizedBody267_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_29 optimizedBody267_85

def optimizedBody267_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_25 optimizedBody267_86

def optimizedBody267_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_24 optimizedBody267_87

def optimizedBody267_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_23 optimizedBody267_88

def optimizedBody267_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_22 optimizedBody267_89

def optimizedBody267_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_20 optimizedBody267_90

def optimizedBody267_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_21 optimizedBody267_91

def optimizedBody267_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_20 optimizedBody267_92

def optimizedBody267_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_6 optimizedBody267_93

def optimizedBody267_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_19 optimizedBody267_94

def optimizedBody267_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_15 optimizedBody267_95

def optimizedBody267_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_14 optimizedBody267_96

def optimizedBody267_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_13 optimizedBody267_97

def optimizedBody267_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_6 optimizedBody267_98

def optimizedBody267_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_12 optimizedBody267_99

def optimizedBody267_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_8 optimizedBody267_100

def optimizedBody267_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_7 optimizedBody267_101

def optimizedBody267_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_6 optimizedBody267_102

def optimizedBody267_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_5 optimizedBody267_103

def optimizedBody267_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody267_0 optimizedBody267_104

def optimized267 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(267, 3, optimizedBody267_105)
end InitECandidate.Proofs.StackAnalysis
