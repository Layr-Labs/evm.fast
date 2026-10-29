import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody812_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (50, 4), (48, 2)]

def optimizedBody812_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody812_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody812_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody812_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_2 optimizedBody812_3

def optimizedBody812_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody812_1, 812, 2)) (some 69) ([]) (some (2, optimizedBody812_4, 812, 3))

def optimizedBody812_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody812_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 288#64)

def optimizedBody812_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48), (54, 0)]

def optimizedBody812_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (48, 48), (54, 54)]

def optimizedBody812_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48), (54, 54)]

def optimizedBody812_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_10 optimizedBody812_3

def optimizedBody812_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody812_9, 812, 4)) (some 68) ([2]) (some (2, optimizedBody812_11, 812, 5))

def optimizedBody812_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (48, 48), (54, 54)]

def optimizedBody812_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (50, 50), (0, 48), (54, 54)]

def optimizedBody812_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (50, 50), (0, 48), (54, 54)]

def optimizedBody812_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_15 optimizedBody812_3

def optimizedBody812_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody812_14, 812, 6)) (some 68) ([2]) (some (2, optimizedBody812_16, 812, 7))

def optimizedBody812_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 6), (48, 4), (50, 50), (52, 0), (54, 54)]

def optimizedBody812_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (48, 48), (50, 50), (4, 52), (52, 54)]

def optimizedBody812_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (50, 50), (4, 52), (52, 54)]

def optimizedBody812_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_20 optimizedBody812_3

def optimizedBody812_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody812_19, 812, 8)) (some 787) ([2, 4]) (some (2, optimizedBody812_21, 812, 9))

def optimizedBody812_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody812_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody812_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody812_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 256#64)))

def optimizedBody812_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (44, 44), (46, 6), (48, 48), (50, 50), (52, 52)]

def optimizedBody812_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48), (48, 50), (50, 52)]

def optimizedBody812_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (48, 50), (50, 52)]

def optimizedBody812_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_29 optimizedBody812_3

def optimizedBody812_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody812_28, 812, 10)) (some 787) ([2, 4]) (some (2, optimizedBody812_30, 812, 11))

def optimizedBody812_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (4, 4), (48, 48), (0, 0), (50, 50)]

def optimizedBody812_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_6 optimizedBody812_32

def optimizedBody812_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_31 optimizedBody812_33

def optimizedBody812_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_27 optimizedBody812_34

def optimizedBody812_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_26 optimizedBody812_35

def optimizedBody812_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_25 optimizedBody812_36

def optimizedBody812_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_6 optimizedBody812_37

def optimizedBody812_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (4, 48), (48, 50), (0, 0), (50, 52)]

def optimizedBody812_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_6 optimizedBody812_39

def optimizedBody812_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody812_38 optimizedBody812_40

def optimizedBody812_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody812_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 50), (46, 44)]

def optimizedBody812_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody812_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46)]

def optimizedBody812_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_45 optimizedBody812_3

def optimizedBody812_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody812_44, 812, 12)) (some 70) ([2]) (some (2, optimizedBody812_46, 812, 13))

def optimizedBody812_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody812_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody812_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_48 optimizedBody812_49

def optimizedBody812_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_24 optimizedBody812_50

def optimizedBody812_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_6 optimizedBody812_51

def optimizedBody812_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_47 optimizedBody812_52

def optimizedBody812_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_43 optimizedBody812_53

def optimizedBody812_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_6 optimizedBody812_54

def optimizedBody812_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 6), (4, 4), (48, 48), (50, 50), (44, 44)]

def optimizedBody812_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody812_55 optimizedBody812_56

def optimizedBody812_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 4), (48, 48), (50, 50)]

def optimizedBody812_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody812_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody812_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_60 optimizedBody812_3

def optimizedBody812_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody812_59, 812, 14)) (some 783) ([2, 4, 6]) (some (2, optimizedBody812_61, 812, 15))

def optimizedBody812_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody812_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody812_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody812_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_65 optimizedBody812_3

def optimizedBody812_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody812_64, 812, 16)) (some 788) ([2, 4]) (some (2, optimizedBody812_66, 812, 17))

def optimizedBody812_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody812_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody812_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody812_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_70 optimizedBody812_3

def optimizedBody812_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody812_69, 812, 18)) (some 70) ([2]) (some (2, optimizedBody812_71, 812, 19))

def optimizedBody812_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_42 optimizedBody812_50

def optimizedBody812_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_6 optimizedBody812_73

def optimizedBody812_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_72 optimizedBody812_74

def optimizedBody812_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_68 optimizedBody812_75

def optimizedBody812_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_6 optimizedBody812_76

def optimizedBody812_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_67 optimizedBody812_77

def optimizedBody812_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_63 optimizedBody812_78

def optimizedBody812_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_6 optimizedBody812_79

def optimizedBody812_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_62 optimizedBody812_80

def optimizedBody812_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_58 optimizedBody812_81

def optimizedBody812_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_6 optimizedBody812_82

def optimizedBody812_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_6 optimizedBody812_83

def optimizedBody812_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_57 optimizedBody812_84

def optimizedBody812_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_42 optimizedBody812_85

def optimizedBody812_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_23 optimizedBody812_86

def optimizedBody812_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_6 optimizedBody812_87

def optimizedBody812_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_41 optimizedBody812_88

def optimizedBody812_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_24 optimizedBody812_89

def optimizedBody812_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_23 optimizedBody812_90

def optimizedBody812_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_6 optimizedBody812_91

def optimizedBody812_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_22 optimizedBody812_92

def optimizedBody812_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_18 optimizedBody812_93

def optimizedBody812_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_6 optimizedBody812_94

def optimizedBody812_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_17 optimizedBody812_95

def optimizedBody812_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_13 optimizedBody812_96

def optimizedBody812_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_7 optimizedBody812_97

def optimizedBody812_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_6 optimizedBody812_98

def optimizedBody812_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_12 optimizedBody812_99

def optimizedBody812_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_8 optimizedBody812_100

def optimizedBody812_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_7 optimizedBody812_101

def optimizedBody812_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_6 optimizedBody812_102

def optimizedBody812_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_5 optimizedBody812_103

def optimizedBody812_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody812_0 optimizedBody812_104

def optimized812 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(812, 3, optimizedBody812_105)
end InitECandidate.Proofs.StackAnalysis
