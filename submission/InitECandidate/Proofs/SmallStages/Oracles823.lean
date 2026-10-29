import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source823
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles823
def optimizedBody823_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 0), (46, 4), (50, 2), (54, 6)]

def optimizedBody823_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (46, 46), (50, 50), (54, 54)]

def optimizedBody823_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (46, 46), (50, 50), (54, 54)]

def optimizedBody823_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody823_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_2 optimizedBody823_3

def optimizedBody823_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody823_1, 823, 2)) (some 69) ([]) (some (2, optimizedBody823_4, 823, 3))

def optimizedBody823_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody823_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 144#64)

def optimizedBody823_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (46, 46), (50, 50), (54, 54), (56, 0)]

def optimizedBody823_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (46, 46), (50, 50), (54, 54), (56, 56)]

def optimizedBody823_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (46, 46), (50, 50), (54, 54), (56, 56)]

def optimizedBody823_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_10 optimizedBody823_3

def optimizedBody823_12 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody823_9, 823, 4)) (some 68) ([2]) (some (2, optimizedBody823_11, 823, 5))

def optimizedBody823_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (46, 46), (50, 50), (52, 0), (54, 54), (56, 56)]

def optimizedBody823_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody823_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody823_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_15 optimizedBody823_3

def optimizedBody823_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody823_14, 823, 6)) (some 68) ([2]) (some (2, optimizedBody823_16, 823, 7))

def optimizedBody823_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody823_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (44, 0), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody823_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (12, 44), (8, 46), (10, 50), (44, 52), (46, 54), (50, 56)]

def optimizedBody823_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (12, 44), (8, 46), (10, 50), (44, 52), (46, 54), (50, 56)]

def optimizedBody823_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_21 optimizedBody823_3

def optimizedBody823_23 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody823_20, 823, 8)) (some 68) ([2]) (some (2, optimizedBody823_22, 823, 9))

def optimizedBody823_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody823_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (12, 12), (8, 8), (52, 0), (10, 10), (44, 44), (14, 14), (46, 46), (50, 50)]

def optimizedBody823_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (14, 14)]

def optimizedBody823_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody823_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 160#64)

def optimizedBody823_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 14), (4, 4)]

def optimizedBody823_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody823_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0)]

def optimizedBody823_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody823_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 12), (48, 48), (44, 12), (46, 8), (50, 52), (52, 10), (54, 44), (56, 2), (58, 14), (60, 46), (62, 50)]

def optimizedBody823_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (48, 48), (0, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody823_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (0, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody823_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_35 optimizedBody823_3

def optimizedBody823_37 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody823_34, 823, 10)) (some 787) ([2, 4]) (some (2, optimizedBody823_36, 823, 11))

def optimizedBody823_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody823_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody823_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 62), (44, 48)]

def optimizedBody823_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody823_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody823_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_42 optimizedBody823_3

def optimizedBody823_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody823_41, 823, 12)) (some 70) ([2]) (some (2, optimizedBody823_43, 823, 13))

def optimizedBody823_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody823_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody823_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody823_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_46 optimizedBody823_47

def optimizedBody823_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_45 optimizedBody823_48

def optimizedBody823_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_49

def optimizedBody823_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_44 optimizedBody823_50

def optimizedBody823_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_40 optimizedBody823_51

def optimizedBody823_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_52

def optimizedBody823_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(0, 0), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (48, 48)]

def optimizedBody823_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody823_53 optimizedBody823_54

def optimizedBody823_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (48, 48), (44, 0), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody823_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (48, 48), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (0, 56), (56, 58), (58, 60), (60, 62)]

def optimizedBody823_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (0, 56), (56, 58), (58, 60), (60, 62)]

def optimizedBody823_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_58 optimizedBody823_3

def optimizedBody823_60 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody823_57, 823, 14)) (some 789) ([2]) (some (2, optimizedBody823_59, 823, 15))

def optimizedBody823_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 60), (62, 48)]

def optimizedBody823_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 62)]

def optimizedBody823_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 62)]

def optimizedBody823_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_63 optimizedBody823_3

def optimizedBody823_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody823_62, 823, 16)) (some 70) ([2]) (some (2, optimizedBody823_64, 823, 17))

def optimizedBody823_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_65 optimizedBody823_50

def optimizedBody823_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_61 optimizedBody823_66

def optimizedBody823_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_67

def optimizedBody823_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (0, 0), (56, 56), (58, 58), (60, 60), (48, 48)]

def optimizedBody823_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody823_68 optimizedBody823_69

def optimizedBody823_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody823_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody823_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody823_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (48, 48), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody823_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (4, 4), (8, 8), (6, 6), (48, 48), (0, 44), (46, 46), (12, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60)]

def optimizedBody823_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (0, 44), (46, 46), (12, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody823_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_76 optimizedBody823_3

def optimizedBody823_78 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody823_75, 823, 18)) (some 146) ([2, 4]) (some (2, optimizedBody823_77, 823, 19))

def optimizedBody823_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 12), (10, 10), (8, 8), (2, 6), (4, 4)]

def optimizedBody823_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody823_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody823_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody823_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody823_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody823_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody823_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody823_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 0)]

def optimizedBody823_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 4#64)

def optimizedBody823_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (8, 8), (48, 48), (44, 4), (46, 46), (50, 6), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60)]

def optimizedBody823_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (6, 44), (46, 46), (50, 50), (52, 52), (4, 54), (0, 56), (58, 58), (60, 60)]

def optimizedBody823_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (6, 44), (46, 46), (50, 50), (52, 52), (4, 54), (0, 56), (58, 58), (60, 60)]

def optimizedBody823_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_91 optimizedBody823_3

def optimizedBody823_93 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody823_90, 823, 20)) (some 784) ([2, 4, 6, 8]) (some (2, optimizedBody823_92, 823, 21))

def optimizedBody823_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 6), (48, 48), (44, 6), (46, 46), (50, 50), (52, 52), (54, 4), (56, 0), (58, 58), (60, 60)]

def optimizedBody823_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (12, 44), (8, 46), (0, 50), (10, 52), (4, 54), (14, 56), (6, 58), (50, 60)]

def optimizedBody823_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (12, 44), (8, 46), (0, 50), (10, 52), (4, 54), (14, 56), (6, 58), (50, 60)]

def optimizedBody823_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_96 optimizedBody823_3

def optimizedBody823_98 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody823_95, 823, 22)) (some 780) ([2, 4]) (some (2, optimizedBody823_97, 823, 23))

def optimizedBody823_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (12, 12), (8, 8), (0, 0), (10, 10), (4, 4), (14, 14), (6, 6), (50, 50)]

def optimizedBody823_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_99

def optimizedBody823_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_98 optimizedBody823_100

def optimizedBody823_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_94 optimizedBody823_101

def optimizedBody823_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_102

def optimizedBody823_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (48, 48), (44, 6), (46, 46), (50, 50), (52, 52), (54, 4), (56, 0), (58, 58), (60, 60)]

def optimizedBody823_105 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody823_95, 823, 24)) (some 783) ([2, 4, 6]) (some (2, optimizedBody823_97, 823, 25))

def optimizedBody823_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_105 optimizedBody823_100

def optimizedBody823_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_104 optimizedBody823_106

def optimizedBody823_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_107

def optimizedBody823_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody823_103 optimizedBody823_108

def optimizedBody823_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody823_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (12, 12), (8, 8), (52, 0), (10, 10), (44, 4), (14, 14), (46, 6), (50, 50)]

def optimizedBody823_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody823_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_111 optimizedBody823_112

def optimizedBody823_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_110 optimizedBody823_113

def optimizedBody823_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_27 optimizedBody823_114

def optimizedBody823_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_115

def optimizedBody823_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_109 optimizedBody823_116

def optimizedBody823_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_39 optimizedBody823_117

def optimizedBody823_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_71 optimizedBody823_118

def optimizedBody823_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_119

def optimizedBody823_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_93 optimizedBody823_120

def optimizedBody823_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_89 optimizedBody823_121

def optimizedBody823_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_88 optimizedBody823_122

def optimizedBody823_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_87 optimizedBody823_123

def optimizedBody823_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_86 optimizedBody823_124

def optimizedBody823_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_85 optimizedBody823_125

def optimizedBody823_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_84 optimizedBody823_126

def optimizedBody823_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_83 optimizedBody823_127

def optimizedBody823_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_82 optimizedBody823_128

def optimizedBody823_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_81 optimizedBody823_129

def optimizedBody823_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_80 optimizedBody823_130

def optimizedBody823_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_79 optimizedBody823_131

def optimizedBody823_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_132

def optimizedBody823_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_78 optimizedBody823_133

def optimizedBody823_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_74 optimizedBody823_134

def optimizedBody823_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_73 optimizedBody823_135

def optimizedBody823_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_72 optimizedBody823_136

def optimizedBody823_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_71 optimizedBody823_137

def optimizedBody823_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_138

def optimizedBody823_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_139

def optimizedBody823_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_70 optimizedBody823_140

def optimizedBody823_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_39 optimizedBody823_141

def optimizedBody823_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_38 optimizedBody823_142

def optimizedBody823_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_143

def optimizedBody823_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_60 optimizedBody823_144

def optimizedBody823_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_56 optimizedBody823_145

def optimizedBody823_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_146

def optimizedBody823_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_147

def optimizedBody823_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_55 optimizedBody823_148

def optimizedBody823_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_39 optimizedBody823_149

def optimizedBody823_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_38 optimizedBody823_150

def optimizedBody823_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_151

def optimizedBody823_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_37 optimizedBody823_152

def optimizedBody823_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_33 optimizedBody823_153

def optimizedBody823_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_32 optimizedBody823_154

def optimizedBody823_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_31 optimizedBody823_155

def optimizedBody823_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_30 optimizedBody823_156

def optimizedBody823_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_29 optimizedBody823_157

def optimizedBody823_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_28 optimizedBody823_158

def optimizedBody823_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_27 optimizedBody823_159

def optimizedBody823_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_160

def optimizedBody823_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody823_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_162

def optimizedBody823_164 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 8) optimizedBody823_161 optimizedBody823_163

def optimizedBody823_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 0), (12, 12), (8, 8), (52, 2), (10, 10), (44, 4), (14, 14), (46, 6), (50, 16)]

def optimizedBody823_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_165

def optimizedBody823_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_164 optimizedBody823_166

def optimizedBody823_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_26 optimizedBody823_167

def optimizedBody823_169 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody823_168 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody823_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 46), (44, 48), (46, 50)]

def optimizedBody823_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody823_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody823_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_172 optimizedBody823_3

def optimizedBody823_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody823_171, 823, 26)) (some 788) ([2, 4]) (some (2, optimizedBody823_173, 823, 27))

def optimizedBody823_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody823_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody823_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody823_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_177 optimizedBody823_3

def optimizedBody823_179 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody823_176, 823, 28)) (some 70) ([2]) (some (2, optimizedBody823_178, 823, 29))

def optimizedBody823_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody823_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_46 optimizedBody823_180

def optimizedBody823_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_39 optimizedBody823_181

def optimizedBody823_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_182

def optimizedBody823_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_179 optimizedBody823_183

def optimizedBody823_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_175 optimizedBody823_184

def optimizedBody823_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_185

def optimizedBody823_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_174 optimizedBody823_186

def optimizedBody823_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_170 optimizedBody823_187

def optimizedBody823_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_188

def optimizedBody823_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_169 optimizedBody823_189

def optimizedBody823_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_25 optimizedBody823_190

def optimizedBody823_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_191

def optimizedBody823_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_24 optimizedBody823_192

def optimizedBody823_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_193

def optimizedBody823_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_23 optimizedBody823_194

def optimizedBody823_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_19 optimizedBody823_195

def optimizedBody823_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_18 optimizedBody823_196

def optimizedBody823_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_197

def optimizedBody823_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_17 optimizedBody823_198

def optimizedBody823_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_13 optimizedBody823_199

def optimizedBody823_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_7 optimizedBody823_200

def optimizedBody823_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_201

def optimizedBody823_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_12 optimizedBody823_202

def optimizedBody823_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_8 optimizedBody823_203

def optimizedBody823_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_7 optimizedBody823_204

def optimizedBody823_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_205

def optimizedBody823_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_5 optimizedBody823_206

def optimizedBody823_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_0 optimizedBody823_207

def oracle823 : Option (Spt Nat) :=
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
def optimized823 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(823, 4, optimizedBody823_208)
end InitECandidate.Proofs.SmallStages.Oracles823
