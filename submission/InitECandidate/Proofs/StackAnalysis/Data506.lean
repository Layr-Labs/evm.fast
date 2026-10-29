import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody506_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody506_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 8), (4, 4), (6, 6), (44, 44)]

def optimizedBody506_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody506_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody506_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_2 optimizedBody506_3

def optimizedBody506_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody506_1, 506, 2)) (some 475) ([]) (some (2, optimizedBody506_4, 506, 3))

def optimizedBody506_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody506_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 0), (52, 8), (54, 4), (60, 6)]

def optimizedBody506_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (0, 2), (8, 8), (44, 44), (50, 50), (52, 52), (54, 54), (60, 60)]

def optimizedBody506_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (52, 52), (54, 54), (60, 60)]

def optimizedBody506_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_9 optimizedBody506_3

def optimizedBody506_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody506_8, 506, 4)) (some 475) ([]) (some (2, optimizedBody506_10, 506, 5))

def optimizedBody506_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 4), (48, 6), (50, 50), (52, 52), (54, 54), (56, 0), (58, 8), (60, 60)]

def optimizedBody506_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody506_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody506_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_14 optimizedBody506_3

def optimizedBody506_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody506_13, 506, 6)) (some 139) ([2, 4, 6, 8]) (some (2, optimizedBody506_15, 506, 7))

def optimizedBody506_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody506_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 50#64)

def optimizedBody506_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody506_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody506_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody506_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 10#64)))

def optimizedBody506_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (12, 46), (14, 48), (0, 50), (8, 52), (4, 54), (10, 56), (16, 58), (6, 60)]

def optimizedBody506_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (14, 48), (0, 50), (8, 52), (4, 54), (10, 56), (16, 58), (6, 60)]

def optimizedBody506_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_24 optimizedBody506_3

def optimizedBody506_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody506_23, 506, 8)) (some 470) ([2]) (some (2, optimizedBody506_25, 506, 9))

def optimizedBody506_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody506_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (0, 2), (8, 8), (44, 44)]

def optimizedBody506_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody506_28, 506, 10)) (some 140) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody506_4, 506, 11))

def optimizedBody506_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody506_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody506_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody506_31, 506, 12)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody506_4, 506, 13))

def optimizedBody506_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody506_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody506_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody506_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_35 optimizedBody506_3

def optimizedBody506_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody506_34, 506, 14)) (some 490) ([2]) (some (2, optimizedBody506_36, 506, 15))

def optimizedBody506_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody506_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody506_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody506_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_39 optimizedBody506_40

def optimizedBody506_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_38 optimizedBody506_41

def optimizedBody506_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_6 optimizedBody506_42

def optimizedBody506_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_37 optimizedBody506_43

def optimizedBody506_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_2 optimizedBody506_44

def optimizedBody506_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_33 optimizedBody506_45

def optimizedBody506_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_6 optimizedBody506_46

def optimizedBody506_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_32 optimizedBody506_47

def optimizedBody506_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_30 optimizedBody506_48

def optimizedBody506_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_6 optimizedBody506_49

def optimizedBody506_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_29 optimizedBody506_50

def optimizedBody506_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_27 optimizedBody506_51

def optimizedBody506_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_6 optimizedBody506_52

def optimizedBody506_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_26 optimizedBody506_53

def optimizedBody506_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_14 optimizedBody506_54

def optimizedBody506_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_22 optimizedBody506_55

def optimizedBody506_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_21 optimizedBody506_56

def optimizedBody506_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_20 optimizedBody506_57

def optimizedBody506_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_19 optimizedBody506_58

def optimizedBody506_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_18 optimizedBody506_59

def optimizedBody506_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_17 optimizedBody506_60

def optimizedBody506_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_6 optimizedBody506_61

def optimizedBody506_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_16 optimizedBody506_62

def optimizedBody506_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_12 optimizedBody506_63

def optimizedBody506_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_6 optimizedBody506_64

def optimizedBody506_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_11 optimizedBody506_65

def optimizedBody506_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_7 optimizedBody506_66

def optimizedBody506_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_6 optimizedBody506_67

def optimizedBody506_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_5 optimizedBody506_68

def optimizedBody506_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody506_0 optimizedBody506_69

def optimized506 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(506, 1, optimizedBody506_70)
end InitECandidate.Proofs.StackAnalysis
