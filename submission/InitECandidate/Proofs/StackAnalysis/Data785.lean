import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody785_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 4), (52, 2)]

def optimizedBody785_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (52, 52)]

def optimizedBody785_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (52, 52)]

def optimizedBody785_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody785_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_2 optimizedBody785_3

def optimizedBody785_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody785_1, 785, 2)) (some 69) ([]) (some (2, optimizedBody785_4, 785, 3))

def optimizedBody785_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody785_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody785_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (52, 52)]

def optimizedBody785_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48), (52, 52)]

def optimizedBody785_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (52, 52)]

def optimizedBody785_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_10 optimizedBody785_3

def optimizedBody785_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody785_9, 785, 4)) (some 68) ([2]) (some (2, optimizedBody785_11, 785, 5))

def optimizedBody785_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 4), (50, 0), (52, 52)]

def optimizedBody785_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (4, 48), (0, 50), (52, 52)]

def optimizedBody785_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50), (52, 52)]

def optimizedBody785_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_15 optimizedBody785_3

def optimizedBody785_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody785_14, 785, 6)) (some 779) ([2]) (some (2, optimizedBody785_16, 785, 7))

def optimizedBody785_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody785_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody785_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 52)]

def optimizedBody785_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 192#64)

def optimizedBody785_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (48, 44), (44, 46)]

def optimizedBody785_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (0, 44)]

def optimizedBody785_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (0, 44)]

def optimizedBody785_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_24 optimizedBody785_3

def optimizedBody785_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody785_23, 785, 8)) (some 78) ([2, 4]) (some (2, optimizedBody785_25, 785, 9))

def optimizedBody785_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (48, 48)]

def optimizedBody785_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 48)]

def optimizedBody785_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 48)]

def optimizedBody785_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_29 optimizedBody785_3

def optimizedBody785_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody785_28, 785, 10)) (some 70) ([2]) (some (2, optimizedBody785_30, 785, 11))

def optimizedBody785_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody785_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody785_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody785_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_33 optimizedBody785_34

def optimizedBody785_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_32 optimizedBody785_35

def optimizedBody785_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_6 optimizedBody785_36

def optimizedBody785_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_31 optimizedBody785_37

def optimizedBody785_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_27 optimizedBody785_38

def optimizedBody785_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_6 optimizedBody785_39

def optimizedBody785_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_26 optimizedBody785_40

def optimizedBody785_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_22 optimizedBody785_41

def optimizedBody785_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_21 optimizedBody785_42

def optimizedBody785_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_20 optimizedBody785_43

def optimizedBody785_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_6 optimizedBody785_44

def optimizedBody785_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (4, 4), (0, 0), (52, 52), (44, 44)]

def optimizedBody785_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody785_45 optimizedBody785_46

def optimizedBody785_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody785_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody785_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 2), (50, 0), (52, 52)]

def optimizedBody785_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (6, 48), (4, 50), (0, 52)]

def optimizedBody785_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (6, 48), (4, 50), (0, 52)]

def optimizedBody785_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_52 optimizedBody785_3

def optimizedBody785_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody785_51, 785, 12)) (some 743) ([2, 4]) (some (2, optimizedBody785_53, 785, 13))

def optimizedBody785_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 4), (52, 0)]

def optimizedBody785_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (6, 48), (0, 50), (4, 52)]

def optimizedBody785_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (6, 48), (0, 50), (4, 52)]

def optimizedBody785_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_57 optimizedBody785_3

def optimizedBody785_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody785_56, 785, 14)) (some 739) ([2, 4, 6]) (some (2, optimizedBody785_58, 785, 15))

def optimizedBody785_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody785_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody785_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody785_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody785_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody785_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody785_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody785_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_66 optimizedBody785_3

def optimizedBody785_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody785_65, 785, 16)) (some 739) ([2, 4, 6]) (some (2, optimizedBody785_67, 785, 17))

def optimizedBody785_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody785_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody785_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody785_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_71 optimizedBody785_3

def optimizedBody785_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody785_70, 785, 18)) (some 70) ([2]) (some (2, optimizedBody785_72, 785, 19))

def optimizedBody785_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody785_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_33 optimizedBody785_74

def optimizedBody785_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_19 optimizedBody785_75

def optimizedBody785_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_6 optimizedBody785_76

def optimizedBody785_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_73 optimizedBody785_77

def optimizedBody785_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_69 optimizedBody785_78

def optimizedBody785_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_6 optimizedBody785_79

def optimizedBody785_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_68 optimizedBody785_80

def optimizedBody785_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_64 optimizedBody785_81

def optimizedBody785_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_63 optimizedBody785_82

def optimizedBody785_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_62 optimizedBody785_83

def optimizedBody785_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_61 optimizedBody785_84

def optimizedBody785_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_60 optimizedBody785_85

def optimizedBody785_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_6 optimizedBody785_86

def optimizedBody785_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_59 optimizedBody785_87

def optimizedBody785_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_55 optimizedBody785_88

def optimizedBody785_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_6 optimizedBody785_89

def optimizedBody785_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_54 optimizedBody785_90

def optimizedBody785_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_50 optimizedBody785_91

def optimizedBody785_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_49 optimizedBody785_92

def optimizedBody785_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_48 optimizedBody785_93

def optimizedBody785_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_6 optimizedBody785_94

def optimizedBody785_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_6 optimizedBody785_95

def optimizedBody785_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_47 optimizedBody785_96

def optimizedBody785_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_19 optimizedBody785_97

def optimizedBody785_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_18 optimizedBody785_98

def optimizedBody785_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_6 optimizedBody785_99

def optimizedBody785_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_17 optimizedBody785_100

def optimizedBody785_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_13 optimizedBody785_101

def optimizedBody785_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_6 optimizedBody785_102

def optimizedBody785_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_12 optimizedBody785_103

def optimizedBody785_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_8 optimizedBody785_104

def optimizedBody785_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_7 optimizedBody785_105

def optimizedBody785_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_6 optimizedBody785_106

def optimizedBody785_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_5 optimizedBody785_107

def optimizedBody785_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_0 optimizedBody785_108

def optimized785 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(785, 3, optimizedBody785_109)
end InitECandidate.Proofs.StackAnalysis
