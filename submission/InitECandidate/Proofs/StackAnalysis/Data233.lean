import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody233_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (0, 0), (24, 2), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22)]

def optimizedBody233_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 27#64)

def optimizedBody233_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody233_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody233_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 28#64)

def optimizedBody233_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody233_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody233_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody233_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_6 optimizedBody233_7

def optimizedBody233_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_5 optimizedBody233_8

def optimizedBody233_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_2 optimizedBody233_9

def optimizedBody233_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody233_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody233_10 optimizedBody233_11

def optimizedBody233_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 4)]

def optimizedBody233_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_2 optimizedBody233_13

def optimizedBody233_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_2 optimizedBody233_14

def optimizedBody233_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_12 optimizedBody233_15

def optimizedBody233_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_4 optimizedBody233_16

def optimizedBody233_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_3 optimizedBody233_17

def optimizedBody233_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_2 optimizedBody233_18

def optimizedBody233_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody233_19 optimizedBody233_14

def optimizedBody233_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 0), (46, 16), (48, 8), (50, 50), (52, 20), (54, 12), (56, 24), (58, 18), (60, 10), (62, 6), (64, 22), (66, 14)]

def optimizedBody233_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66)]

def optimizedBody233_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66)]

def optimizedBody233_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody233_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_23 optimizedBody233_24

def optimizedBody233_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody233_22, 233, 2)) (some 69) ([]) (some (2, optimizedBody233_25, 233, 3))

def optimizedBody233_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody233_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 0)]

def optimizedBody233_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 2), (44, 44), (14, 46), (6, 48), (0, 50), (18, 52), (10, 54), (20, 56), (16, 58), (8, 60), (4, 62), (48, 64),
    (12, 66), (50, 68)]

def optimizedBody233_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (14, 46), (6, 48), (0, 50), (18, 52), (10, 54), (20, 56), (16, 58), (8, 60), (4, 62), (48, 64),
    (12, 66), (50, 68)]

def optimizedBody233_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_30 optimizedBody233_24

def optimizedBody233_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody233_29, 233, 4)) (some 68) ([2]) (some (2, optimizedBody233_31, 233, 5))

def optimizedBody233_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(0, 0), (18, 18), (16, 16), (14, 14), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 20)]

def optimizedBody233_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 0 (Flapjack.WordRegImm.imm 18446744073709551589#64)))

def optimizedBody233_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (44, 44),
    (46, 22), (48, 48), (50, 50)]

def optimizedBody233_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48), (48, 50)]

def optimizedBody233_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (48, 50)]

def optimizedBody233_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_37 optimizedBody233_24

def optimizedBody233_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody233_36, 233, 6)) (some 231) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22]) (some (2, optimizedBody233_38, 233, 7))

def optimizedBody233_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody233_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody233_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 0), (48, 48)]

def optimizedBody233_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48)]

def optimizedBody233_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody233_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_44 optimizedBody233_24

def optimizedBody233_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody233_43, 233, 8)) (some 232) ([2, 4]) (some (2, optimizedBody233_45, 233, 9))

def optimizedBody233_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0)]

def optimizedBody233_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_2 optimizedBody233_47

def optimizedBody233_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_46 optimizedBody233_48

def optimizedBody233_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_42 optimizedBody233_49

def optimizedBody233_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_2 optimizedBody233_50

def optimizedBody233_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 0), (0, 48)]

def optimizedBody233_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_2 optimizedBody233_52

def optimizedBody233_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody233_51 optimizedBody233_53

def optimizedBody233_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody233_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody233_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody233_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_57 optimizedBody233_24

def optimizedBody233_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody233_56, 233, 10)) (some 70) ([2]) (some (2, optimizedBody233_58, 233, 11))

def optimizedBody233_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody233_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_60 optimizedBody233_7

def optimizedBody233_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_2 optimizedBody233_61

def optimizedBody233_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_59 optimizedBody233_62

def optimizedBody233_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_55 optimizedBody233_63

def optimizedBody233_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_2 optimizedBody233_64

def optimizedBody233_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_54 optimizedBody233_65

def optimizedBody233_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_41 optimizedBody233_66

def optimizedBody233_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_40 optimizedBody233_67

def optimizedBody233_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_2 optimizedBody233_68

def optimizedBody233_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_39 optimizedBody233_69

def optimizedBody233_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_35 optimizedBody233_70

def optimizedBody233_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_34 optimizedBody233_71

def optimizedBody233_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_33 optimizedBody233_72

def optimizedBody233_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_2 optimizedBody233_73

def optimizedBody233_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_32 optimizedBody233_74

def optimizedBody233_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_28 optimizedBody233_75

def optimizedBody233_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_27 optimizedBody233_76

def optimizedBody233_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_2 optimizedBody233_77

def optimizedBody233_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_26 optimizedBody233_78

def optimizedBody233_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_21 optimizedBody233_79

def optimizedBody233_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_2 optimizedBody233_80

def optimizedBody233_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_20 optimizedBody233_81

def optimizedBody233_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_1 optimizedBody233_82

def optimizedBody233_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody233_0 optimizedBody233_83

def optimized233 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(233, 12, optimizedBody233_84)
end InitECandidate.Proofs.StackAnalysis
