import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source825
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles825
def optimizedBody825_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 0), (46, 4), (50, 2), (54, 6)]

def optimizedBody825_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (46, 46), (50, 50), (54, 54)]

def optimizedBody825_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (46, 46), (50, 50), (54, 54)]

def optimizedBody825_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody825_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_2 optimizedBody825_3

def optimizedBody825_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody825_1, 825, 2)) (some 69) ([]) (some (2, optimizedBody825_4, 825, 3))

def optimizedBody825_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody825_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 288#64)

def optimizedBody825_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (46, 46), (50, 50), (54, 54), (56, 0)]

def optimizedBody825_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (46, 46), (50, 50), (54, 54), (56, 56)]

def optimizedBody825_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (46, 46), (50, 50), (54, 54), (56, 56)]

def optimizedBody825_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_10 optimizedBody825_3

def optimizedBody825_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody825_9, 825, 4)) (some 68) ([2]) (some (2, optimizedBody825_11, 825, 5))

def optimizedBody825_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (46, 46), (50, 50), (52, 0), (54, 54), (56, 56)]

def optimizedBody825_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody825_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody825_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_15 optimizedBody825_3

def optimizedBody825_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody825_14, 825, 6)) (some 68) ([2]) (some (2, optimizedBody825_16, 825, 7))

def optimizedBody825_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody825_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (44, 0), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody825_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (12, 44), (8, 46), (10, 50), (44, 52), (46, 54), (50, 56)]

def optimizedBody825_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (12, 44), (8, 46), (10, 50), (44, 52), (46, 54), (50, 56)]

def optimizedBody825_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_21 optimizedBody825_3

def optimizedBody825_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody825_20, 825, 8)) (some 68) ([2]) (some (2, optimizedBody825_22, 825, 9))

def optimizedBody825_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody825_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (12, 12), (8, 8), (52, 0), (10, 10), (44, 44), (14, 14), (46, 46), (50, 50)]

def optimizedBody825_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (14, 14)]

def optimizedBody825_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody825_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 288#64)

def optimizedBody825_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 14), (4, 4)]

def optimizedBody825_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody825_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0)]

def optimizedBody825_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody825_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 12), (48, 48), (44, 12), (46, 8), (50, 52), (52, 10), (54, 44), (56, 2), (58, 14), (60, 46), (62, 50)]

def optimizedBody825_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (48, 48), (0, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody825_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (0, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody825_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_35 optimizedBody825_3

def optimizedBody825_37 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody825_34, 825, 10)) (some 799) ([2, 4]) (some (2, optimizedBody825_36, 825, 11))

def optimizedBody825_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody825_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody825_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 62), (44, 48)]

def optimizedBody825_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody825_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody825_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_42 optimizedBody825_3

def optimizedBody825_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody825_41, 825, 12)) (some 70) ([2]) (some (2, optimizedBody825_43, 825, 13))

def optimizedBody825_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody825_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody825_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody825_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_46 optimizedBody825_47

def optimizedBody825_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_45 optimizedBody825_48

def optimizedBody825_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_49

def optimizedBody825_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_44 optimizedBody825_50

def optimizedBody825_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_40 optimizedBody825_51

def optimizedBody825_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_52

def optimizedBody825_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(0, 0), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (48, 48)]

def optimizedBody825_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody825_53 optimizedBody825_54

def optimizedBody825_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (48, 48), (44, 0), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody825_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (48, 48), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (0, 56), (56, 58), (58, 60), (60, 62)]

def optimizedBody825_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (0, 56), (56, 58), (58, 60), (60, 62)]

def optimizedBody825_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_58 optimizedBody825_3

def optimizedBody825_60 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody825_57, 825, 14)) (some 801) ([2]) (some (2, optimizedBody825_59, 825, 15))

def optimizedBody825_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 60), (62, 48)]

def optimizedBody825_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 62)]

def optimizedBody825_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 62)]

def optimizedBody825_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_63 optimizedBody825_3

def optimizedBody825_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody825_62, 825, 16)) (some 70) ([2]) (some (2, optimizedBody825_64, 825, 17))

def optimizedBody825_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_65 optimizedBody825_50

def optimizedBody825_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_61 optimizedBody825_66

def optimizedBody825_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_67

def optimizedBody825_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (0, 0), (56, 56), (58, 58), (60, 60), (48, 48)]

def optimizedBody825_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody825_68 optimizedBody825_69

def optimizedBody825_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody825_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 256#64)))

def optimizedBody825_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody825_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (48, 48), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody825_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (4, 4), (8, 8), (6, 6), (48, 48), (0, 44), (46, 46), (12, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60)]

def optimizedBody825_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (0, 44), (46, 46), (12, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody825_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_76 optimizedBody825_3

def optimizedBody825_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody825_75, 825, 18)) (some 146) ([2, 4]) (some (2, optimizedBody825_77, 825, 19))

def optimizedBody825_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 12), (10, 10), (8, 8), (2, 6), (4, 4)]

def optimizedBody825_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody825_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody825_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody825_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody825_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody825_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody825_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody825_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 0)]

def optimizedBody825_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 4#64)

def optimizedBody825_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (8, 8), (48, 48), (44, 4), (46, 46), (50, 6), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60)]

def optimizedBody825_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (6, 44), (46, 46), (50, 50), (52, 52), (4, 54), (0, 56), (58, 58), (60, 60)]

def optimizedBody825_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (6, 44), (46, 46), (50, 50), (52, 52), (4, 54), (0, 56), (58, 58), (60, 60)]

def optimizedBody825_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_91 optimizedBody825_3

def optimizedBody825_93 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody825_90, 825, 20)) (some 796) ([2, 4, 6, 8]) (some (2, optimizedBody825_92, 825, 21))

def optimizedBody825_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 6), (48, 48), (44, 6), (46, 46), (50, 50), (52, 52), (54, 4), (56, 0), (58, 58), (60, 60)]

def optimizedBody825_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (12, 44), (8, 46), (0, 50), (10, 52), (4, 54), (14, 56), (6, 58), (50, 60)]

def optimizedBody825_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (12, 44), (8, 46), (0, 50), (10, 52), (4, 54), (14, 56), (6, 58), (50, 60)]

def optimizedBody825_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_96 optimizedBody825_3

def optimizedBody825_98 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody825_95, 825, 22)) (some 792) ([2, 4]) (some (2, optimizedBody825_97, 825, 23))

def optimizedBody825_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (12, 12), (8, 8), (0, 0), (10, 10), (4, 4), (14, 14), (6, 6), (50, 50)]

def optimizedBody825_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_99

def optimizedBody825_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_98 optimizedBody825_100

def optimizedBody825_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_94 optimizedBody825_101

def optimizedBody825_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_102

def optimizedBody825_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (48, 48), (44, 6), (46, 46), (50, 50), (52, 52), (54, 4), (56, 0), (58, 58), (60, 60)]

def optimizedBody825_105 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody825_95, 825, 24)) (some 795) ([2, 4, 6]) (some (2, optimizedBody825_97, 825, 25))

def optimizedBody825_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_105 optimizedBody825_100

def optimizedBody825_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_104 optimizedBody825_106

def optimizedBody825_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_107

def optimizedBody825_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody825_103 optimizedBody825_108

def optimizedBody825_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody825_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (12, 12), (8, 8), (52, 0), (10, 10), (44, 4), (14, 14), (46, 6), (50, 50)]

def optimizedBody825_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody825_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_111 optimizedBody825_112

def optimizedBody825_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_110 optimizedBody825_113

def optimizedBody825_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_27 optimizedBody825_114

def optimizedBody825_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_115

def optimizedBody825_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_109 optimizedBody825_116

def optimizedBody825_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_39 optimizedBody825_117

def optimizedBody825_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_71 optimizedBody825_118

def optimizedBody825_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_119

def optimizedBody825_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_93 optimizedBody825_120

def optimizedBody825_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_89 optimizedBody825_121

def optimizedBody825_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_88 optimizedBody825_122

def optimizedBody825_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_87 optimizedBody825_123

def optimizedBody825_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_86 optimizedBody825_124

def optimizedBody825_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_85 optimizedBody825_125

def optimizedBody825_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_84 optimizedBody825_126

def optimizedBody825_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_83 optimizedBody825_127

def optimizedBody825_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_82 optimizedBody825_128

def optimizedBody825_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_81 optimizedBody825_129

def optimizedBody825_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_80 optimizedBody825_130

def optimizedBody825_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_79 optimizedBody825_131

def optimizedBody825_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_132

def optimizedBody825_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_78 optimizedBody825_133

def optimizedBody825_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_74 optimizedBody825_134

def optimizedBody825_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_73 optimizedBody825_135

def optimizedBody825_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_72 optimizedBody825_136

def optimizedBody825_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_71 optimizedBody825_137

def optimizedBody825_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_138

def optimizedBody825_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_139

def optimizedBody825_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_70 optimizedBody825_140

def optimizedBody825_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_39 optimizedBody825_141

def optimizedBody825_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_38 optimizedBody825_142

def optimizedBody825_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_143

def optimizedBody825_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_60 optimizedBody825_144

def optimizedBody825_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_56 optimizedBody825_145

def optimizedBody825_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_146

def optimizedBody825_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_147

def optimizedBody825_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_55 optimizedBody825_148

def optimizedBody825_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_39 optimizedBody825_149

def optimizedBody825_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_38 optimizedBody825_150

def optimizedBody825_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_151

def optimizedBody825_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_37 optimizedBody825_152

def optimizedBody825_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_33 optimizedBody825_153

def optimizedBody825_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_32 optimizedBody825_154

def optimizedBody825_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_31 optimizedBody825_155

def optimizedBody825_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_30 optimizedBody825_156

def optimizedBody825_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_29 optimizedBody825_157

def optimizedBody825_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_28 optimizedBody825_158

def optimizedBody825_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_27 optimizedBody825_159

def optimizedBody825_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_160

def optimizedBody825_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody825_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_162

def optimizedBody825_164 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 8) optimizedBody825_161 optimizedBody825_163

def optimizedBody825_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 0), (12, 12), (8, 8), (52, 2), (10, 10), (44, 4), (14, 14), (46, 6), (50, 16)]

def optimizedBody825_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_165

def optimizedBody825_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_164 optimizedBody825_166

def optimizedBody825_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_26 optimizedBody825_167

def optimizedBody825_169 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody825_168 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody825_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 46), (44, 48), (46, 50)]

def optimizedBody825_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody825_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody825_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_172 optimizedBody825_3

def optimizedBody825_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody825_171, 825, 26)) (some 800) ([2, 4]) (some (2, optimizedBody825_173, 825, 27))

def optimizedBody825_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody825_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody825_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody825_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_177 optimizedBody825_3

def optimizedBody825_179 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody825_176, 825, 28)) (some 70) ([2]) (some (2, optimizedBody825_178, 825, 29))

def optimizedBody825_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody825_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_46 optimizedBody825_180

def optimizedBody825_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_39 optimizedBody825_181

def optimizedBody825_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_182

def optimizedBody825_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_179 optimizedBody825_183

def optimizedBody825_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_175 optimizedBody825_184

def optimizedBody825_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_185

def optimizedBody825_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_174 optimizedBody825_186

def optimizedBody825_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_170 optimizedBody825_187

def optimizedBody825_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_188

def optimizedBody825_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_169 optimizedBody825_189

def optimizedBody825_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_25 optimizedBody825_190

def optimizedBody825_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_191

def optimizedBody825_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_24 optimizedBody825_192

def optimizedBody825_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_193

def optimizedBody825_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_23 optimizedBody825_194

def optimizedBody825_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_19 optimizedBody825_195

def optimizedBody825_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_18 optimizedBody825_196

def optimizedBody825_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_197

def optimizedBody825_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_17 optimizedBody825_198

def optimizedBody825_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_13 optimizedBody825_199

def optimizedBody825_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_7 optimizedBody825_200

def optimizedBody825_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_201

def optimizedBody825_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_12 optimizedBody825_202

def optimizedBody825_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_8 optimizedBody825_203

def optimizedBody825_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_7 optimizedBody825_204

def optimizedBody825_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_205

def optimizedBody825_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_5 optimizedBody825_206

def optimizedBody825_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_0 optimizedBody825_207

def oracle825 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))))
                1
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 5)) 7 (Flapjack.Spt.ls 31)))
                23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 26
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 25)) 26
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 7)) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))) 28
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 6 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 7 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 4))) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 6 (Flapjack.Spt.ls 30)))
                27
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 23 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 7
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 4))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0)) 0 (Flapjack.Spt.ls 24)))
                24
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 2 Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 25
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 4
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24)) 5 Flapjack.Spt.ln) 28
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 7)) (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 4
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 5)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))) 27
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 23))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 7)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 6)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 6)))
                  24 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)) 24 Flapjack.Spt.ln))
                25
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 8)) (Flapjack.Spt.ls 24)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 22 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 25
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 1)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 28
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 28 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                23
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 25
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))) 26
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                27 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) 28 (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 26)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) 24 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))) 27
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 27 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                24
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 25
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                25
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 31)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))))
def optimized825 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(825, 4, optimizedBody825_208)
end InitECandidate.Proofs.SmallStages.Oracles825
