import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source826
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles826
def optimizedBody826_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (54, 2), (58, 6)]

def optimizedBody826_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (54, 54), (58, 58)]

def optimizedBody826_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (54, 54), (58, 58)]

def optimizedBody826_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody826_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_2 optimizedBody826_3

def optimizedBody826_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_1, 826, 2)) (some 69) ([]) (some (2, optimizedBody826_4, 826, 3))

def optimizedBody826_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody826_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 144#64)

def optimizedBody826_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (54, 54), (58, 58)]

def optimizedBody826_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (54, 54), (58, 58)]

def optimizedBody826_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (54, 54), (58, 58)]

def optimizedBody826_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_10 optimizedBody826_3

def optimizedBody826_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_9, 826, 4)) (some 68) ([2]) (some (2, optimizedBody826_11, 826, 5))

def optimizedBody826_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 288#64)

def optimizedBody826_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 0), (54, 54), (58, 58)]

def optimizedBody826_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (58, 58)]

def optimizedBody826_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (58, 58)]

def optimizedBody826_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_16 optimizedBody826_3

def optimizedBody826_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_15, 826, 6)) (some 68) ([2]) (some (2, optimizedBody826_17, 826, 7))

def optimizedBody826_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 576#64)

def optimizedBody826_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (52, 0), (48, 48), (50, 50), (54, 54), (58, 58)]

def optimizedBody826_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (52, 52), (48, 48), (50, 50), (54, 54), (58, 58)]

def optimizedBody826_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (52, 52), (48, 48), (50, 50), (54, 54), (58, 58)]

def optimizedBody826_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_22 optimizedBody826_3

def optimizedBody826_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_21, 826, 8)) (some 68) ([2]) (some (2, optimizedBody826_23, 826, 9))

def optimizedBody826_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (52, 52), (48, 48), (50, 50), (54, 54), (56, 0), (58, 58)]

def optimizedBody826_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (52, 52), (46, 48), (14, 50), (12, 54), (48, 56), (50, 58)]

def optimizedBody826_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (52, 52), (46, 48), (14, 50), (12, 54), (48, 56), (50, 58)]

def optimizedBody826_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_27 optimizedBody826_3

def optimizedBody826_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_26, 826, 10)) (some 767) ([2]) (some (2, optimizedBody826_28, 826, 11))

def optimizedBody826_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody826_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 8), (52, 52), (46, 46), (14, 14), (12, 12), (48, 48), (10, 10), (50, 50)]

def optimizedBody826_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (10, 10)]

def optimizedBody826_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody826_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 384#64)

def optimizedBody826_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 10), (4, 4)]

def optimizedBody826_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody826_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (0, 0)]

def optimizedBody826_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody826_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 14), (44, 44), (46, 8), (48, 52), (50, 46), (52, 14), (54, 12), (56, 48), (58, 10), (60, 50), (62, 2)]

def optimizedBody826_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody826_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody826_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_41 optimizedBody826_3

def optimizedBody826_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_40, 826, 12)) (some 787) ([2, 4]) (some (2, optimizedBody826_42, 826, 13))

def optimizedBody826_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody826_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody826_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 50), (52, 44)]

def optimizedBody826_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 52)]

def optimizedBody826_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 52)]

def optimizedBody826_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_48 optimizedBody826_3

def optimizedBody826_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_47, 826, 14)) (some 70) ([2]) (some (2, optimizedBody826_49, 826, 15))

def optimizedBody826_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody826_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody826_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody826_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_52 optimizedBody826_53

def optimizedBody826_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_51 optimizedBody826_54

def optimizedBody826_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_55

def optimizedBody826_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_50 optimizedBody826_56

def optimizedBody826_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_46 optimizedBody826_57

def optimizedBody826_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_58

def optimizedBody826_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (50, 50), (0, 0), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (44, 44)]

def optimizedBody826_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody826_59 optimizedBody826_60

def optimizedBody826_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody826_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (0, 62)]

def optimizedBody826_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (0, 62)]

def optimizedBody826_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_64 optimizedBody826_3

def optimizedBody826_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_63, 826, 16)) (some 789) ([2]) (some (2, optimizedBody826_65, 826, 17))

def optimizedBody826_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody826_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 50), (48, 44)]

def optimizedBody826_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 48)]

def optimizedBody826_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 48)]

def optimizedBody826_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_70 optimizedBody826_3

def optimizedBody826_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_69, 826, 18)) (some 70) ([2]) (some (2, optimizedBody826_71, 826, 19))

def optimizedBody826_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody826_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_52 optimizedBody826_73

def optimizedBody826_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_51 optimizedBody826_74

def optimizedBody826_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_75

def optimizedBody826_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_72 optimizedBody826_76

def optimizedBody826_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_68 optimizedBody826_77

def optimizedBody826_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_78

def optimizedBody826_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (4, 4), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (0, 0), (44, 44)]

def optimizedBody826_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody826_79 optimizedBody826_80

def optimizedBody826_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody826_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody826_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 4), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody826_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody826_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody826_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_86 optimizedBody826_3

def optimizedBody826_88 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody826_85, 826, 20)) (some 799) ([2, 4]) (some (2, optimizedBody826_87, 826, 21))

def optimizedBody826_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 48)]

def optimizedBody826_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 48)]

def optimizedBody826_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_90 optimizedBody826_3

def optimizedBody826_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_89, 826, 22)) (some 70) ([2]) (some (2, optimizedBody826_91, 826, 23))

def optimizedBody826_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_92 optimizedBody826_56

def optimizedBody826_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_68 optimizedBody826_93

def optimizedBody826_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_94

def optimizedBody826_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (0, 0), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (44, 44)]

def optimizedBody826_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody826_95 optimizedBody826_96

def optimizedBody826_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody826_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (44, 44), (46, 46), (6, 48), (50, 50), (4, 52), (54, 54), (0, 56), (58, 58), (60, 60)]

def optimizedBody826_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (6, 48), (50, 50), (4, 52), (54, 54), (0, 56), (58, 58), (60, 60)]

def optimizedBody826_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_100 optimizedBody826_3

def optimizedBody826_102 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody826_99, 826, 24)) (some 801) ([2]) (some (2, optimizedBody826_101, 826, 25))

def optimizedBody826_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody826_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 48)]

def optimizedBody826_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 48)]

def optimizedBody826_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_105 optimizedBody826_3

def optimizedBody826_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_104, 826, 26)) (some 70) ([2]) (some (2, optimizedBody826_106, 826, 27))

def optimizedBody826_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody826_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_52 optimizedBody826_108

def optimizedBody826_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_51 optimizedBody826_109

def optimizedBody826_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_110

def optimizedBody826_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_107 optimizedBody826_111

def optimizedBody826_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_68 optimizedBody826_112

def optimizedBody826_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_113

def optimizedBody826_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (6, 6), (50, 50), (4, 4), (54, 54), (0, 0), (58, 58), (60, 60), (44, 44)]

def optimizedBody826_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody826_114 optimizedBody826_115

def optimizedBody826_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 50), (52, 4), (54, 54), (56, 0), (58, 58), (60, 60)]

def optimizedBody826_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (4, 48), (46, 50), (14, 52), (12, 54), (6, 56), (0, 58), (50, 60)]

def optimizedBody826_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (8, 46), (4, 48), (46, 50), (14, 52), (12, 54), (6, 56), (0, 58), (50, 60)]

def optimizedBody826_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_119 optimizedBody826_3

def optimizedBody826_121 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody826_118, 826, 28)) (some 806) ([2, 4, 6]) (some (2, optimizedBody826_120, 826, 29))

def optimizedBody826_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody826_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (8, 8), (52, 4), (46, 46), (14, 14), (12, 12), (48, 6), (10, 10), (50, 50)]

def optimizedBody826_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody826_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_123 optimizedBody826_124

def optimizedBody826_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_122 optimizedBody826_125

def optimizedBody826_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_82 optimizedBody826_126

def optimizedBody826_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_127

def optimizedBody826_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_121 optimizedBody826_128

def optimizedBody826_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_117 optimizedBody826_129

def optimizedBody826_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_130

def optimizedBody826_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_131

def optimizedBody826_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_116 optimizedBody826_132

def optimizedBody826_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_45 optimizedBody826_133

def optimizedBody826_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_103 optimizedBody826_134

def optimizedBody826_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_135

def optimizedBody826_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_102 optimizedBody826_136

def optimizedBody826_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_98 optimizedBody826_137

def optimizedBody826_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_138

def optimizedBody826_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_139

def optimizedBody826_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_97 optimizedBody826_140

def optimizedBody826_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_45 optimizedBody826_141

def optimizedBody826_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_44 optimizedBody826_142

def optimizedBody826_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_143

def optimizedBody826_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_88 optimizedBody826_144

def optimizedBody826_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_84 optimizedBody826_145

def optimizedBody826_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_83 optimizedBody826_146

def optimizedBody826_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_82 optimizedBody826_147

def optimizedBody826_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_148

def optimizedBody826_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_149

def optimizedBody826_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_81 optimizedBody826_150

def optimizedBody826_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_45 optimizedBody826_151

def optimizedBody826_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_67 optimizedBody826_152

def optimizedBody826_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_153

def optimizedBody826_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_66 optimizedBody826_154

def optimizedBody826_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_62 optimizedBody826_155

def optimizedBody826_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_156

def optimizedBody826_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_157

def optimizedBody826_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_61 optimizedBody826_158

def optimizedBody826_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_45 optimizedBody826_159

def optimizedBody826_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_44 optimizedBody826_160

def optimizedBody826_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_161

def optimizedBody826_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_43 optimizedBody826_162

def optimizedBody826_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_39 optimizedBody826_163

def optimizedBody826_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_38 optimizedBody826_164

def optimizedBody826_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_37 optimizedBody826_165

def optimizedBody826_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_36 optimizedBody826_166

def optimizedBody826_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_35 optimizedBody826_167

def optimizedBody826_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_34 optimizedBody826_168

def optimizedBody826_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_33 optimizedBody826_169

def optimizedBody826_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_170

def optimizedBody826_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody826_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_172

def optimizedBody826_174 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 10 (Flapjack.WordRegImm.reg 8) optimizedBody826_171 optimizedBody826_173

def optimizedBody826_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (8, 8), (52, 2), (46, 4), (14, 14), (12, 12), (48, 6), (10, 10), (50, 16)]

def optimizedBody826_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_175

def optimizedBody826_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_174 optimizedBody826_176

def optimizedBody826_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_32 optimizedBody826_177

def optimizedBody826_179 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody826_178 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody826_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 48), (4, 48), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody826_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (48, 50)]

def optimizedBody826_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (48, 50)]

def optimizedBody826_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_182 optimizedBody826_3

def optimizedBody826_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_181, 826, 30)) (some 776) ([2, 4]) (some (2, optimizedBody826_183, 826, 31))

def optimizedBody826_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48)]

def optimizedBody826_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody826_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody826_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_187 optimizedBody826_3

def optimizedBody826_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_186, 826, 32)) (some 768) ([2]) (some (2, optimizedBody826_188, 826, 33))

def optimizedBody826_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody826_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody826_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 6), (50, 2)]

def optimizedBody826_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody826_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody826_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_194 optimizedBody826_3

def optimizedBody826_196 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_193, 826, 34)) (some 78) ([2, 4]) (some (2, optimizedBody826_195, 826, 35))

def optimizedBody826_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 31#64)))

def optimizedBody826_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody826_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 44)]

def optimizedBody826_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody826_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody826_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_201 optimizedBody826_3

def optimizedBody826_203 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_200, 826, 36)) (some 70) ([2]) (some (2, optimizedBody826_202, 826, 37))

def optimizedBody826_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody826_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_52 optimizedBody826_204

def optimizedBody826_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_45 optimizedBody826_205

def optimizedBody826_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_206

def optimizedBody826_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_203 optimizedBody826_207

def optimizedBody826_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_199 optimizedBody826_208

def optimizedBody826_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_198 optimizedBody826_209

def optimizedBody826_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_82 optimizedBody826_210

def optimizedBody826_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_197 optimizedBody826_211

def optimizedBody826_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_44 optimizedBody826_212

def optimizedBody826_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_213

def optimizedBody826_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_196 optimizedBody826_214

def optimizedBody826_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_192 optimizedBody826_215

def optimizedBody826_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_191 optimizedBody826_216

def optimizedBody826_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_190 optimizedBody826_217

def optimizedBody826_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_218

def optimizedBody826_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_189 optimizedBody826_219

def optimizedBody826_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_185 optimizedBody826_220

def optimizedBody826_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_221

def optimizedBody826_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_184 optimizedBody826_222

def optimizedBody826_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_180 optimizedBody826_223

def optimizedBody826_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_224

def optimizedBody826_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_179 optimizedBody826_225

def optimizedBody826_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_31 optimizedBody826_226

def optimizedBody826_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_227

def optimizedBody826_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_30 optimizedBody826_228

def optimizedBody826_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_229

def optimizedBody826_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_29 optimizedBody826_230

def optimizedBody826_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_25 optimizedBody826_231

def optimizedBody826_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_232

def optimizedBody826_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_24 optimizedBody826_233

def optimizedBody826_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_20 optimizedBody826_234

def optimizedBody826_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_19 optimizedBody826_235

def optimizedBody826_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_236

def optimizedBody826_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_18 optimizedBody826_237

def optimizedBody826_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_14 optimizedBody826_238

def optimizedBody826_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_13 optimizedBody826_239

def optimizedBody826_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_240

def optimizedBody826_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_12 optimizedBody826_241

def optimizedBody826_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_8 optimizedBody826_242

def optimizedBody826_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_7 optimizedBody826_243

def optimizedBody826_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_244

def optimizedBody826_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_5 optimizedBody826_245

def optimizedBody826_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_0 optimizedBody826_246

def oracle826 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) 29
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 30)))
                  24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 29
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 7)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 1 (Flapjack.Spt.ls 28))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 31 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 22)) 26 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0 (Flapjack.Spt.ls 29)))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 6 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 6
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 26 (Flapjack.Spt.ls 29)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                27
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 22)) 25 Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 2 Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4)) 1 Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 27
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 24 Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))) 23
                  Flapjack.Spt.ln)
                29
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 1)) 27
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.ls 29))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 6)) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                  0 (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 23 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 24 (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 27))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 30 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 1))))
                23
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 24 Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 5 Flapjack.Spt.ln) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 0 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
                23 (Flapjack.Spt.ls 22))
              22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 27)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 27))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 31 Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 27 Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 29 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 29 Flapjack.Spt.ln))))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 27
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                  (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 30 Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 25 Flapjack.Spt.ln) 29
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln) 29
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 24)) 22
                    (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 28 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) 29 Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 26)) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))))))))
def optimized826 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(826, 4, optimizedBody826_247)
end InitECandidate.Proofs.SmallStages.Oracles826
