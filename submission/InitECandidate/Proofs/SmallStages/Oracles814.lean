import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source814
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles814
def optimizedBody814_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (44, 8), (48, 4), (52, 2), (54, 10), (56, 6)]

def optimizedBody814_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (44, 44), (48, 48), (52, 52), (54, 54), (56, 56)]

def optimizedBody814_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (52, 52), (54, 54), (56, 56)]

def optimizedBody814_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody814_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_2 optimizedBody814_3

def optimizedBody814_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_1, 814, 2)) (some 69) ([]) (some (2, optimizedBody814_4, 814, 3))

def optimizedBody814_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody814_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody814_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (52, 52), (54, 54), (56, 56), (58, 0)]

def optimizedBody814_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (44, 44), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody814_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody814_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_10 optimizedBody814_3

def optimizedBody814_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_9, 814, 4)) (some 68) ([2]) (some (2, optimizedBody814_11, 814, 5))

def optimizedBody814_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody814_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 2), (46, 46), (44, 44), (10, 48), (8, 50), (50, 52), (54, 54), (12, 56), (58, 58)]

def optimizedBody814_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (10, 48), (8, 50), (50, 52), (54, 54), (12, 56), (58, 58)]

def optimizedBody814_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_15 optimizedBody814_3

def optimizedBody814_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody814_14, 814, 6)) (some 68) ([2]) (some (2, optimizedBody814_16, 814, 7))

def optimizedBody814_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody814_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody814_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 96#64)

def optimizedBody814_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody814_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody814_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0), (8, 8)]

def optimizedBody814_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody814_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 8), (4, 4), (46, 46), (44, 44), (52, 10), (48, 8), (50, 50), (54, 54), (56, 12), (58, 58), (60, 14)]

def optimizedBody814_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (6, 44), (52, 52), (4, 48), (44, 50), (54, 54), (8, 56), (48, 58), (50, 60)]

def optimizedBody814_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (6, 44), (52, 52), (4, 48), (44, 50), (54, 54), (8, 56), (48, 58), (50, 60)]

def optimizedBody814_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_27 optimizedBody814_3

def optimizedBody814_29 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody814_26, 814, 8)) (some 739) ([2, 4]) (some (2, optimizedBody814_28, 814, 9))

def optimizedBody814_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody814_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (6, 6), (52, 52), (4, 4), (0, 0), (44, 44), (54, 54), (8, 8), (48, 48), (50, 50)]

def optimizedBody814_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody814_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody814_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (44, 6), (52, 52), (50, 4), (48, 0), (54, 44), (56, 54), (58, 8), (60, 48),
    (62, 50)]

def optimizedBody814_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (8, 52), (50, 50), (10, 48), (54, 54), (16, 56), (12, 58), (60, 60), (14, 62)]

def optimizedBody814_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (8, 52), (50, 50), (10, 48), (54, 54), (16, 56), (12, 58), (60, 60), (14, 62)]

def optimizedBody814_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_36 optimizedBody814_3

def optimizedBody814_38 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody814_35, 814, 10)) (some 750) ([2, 4, 6]) (some (2, optimizedBody814_37, 814, 11))

def optimizedBody814_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody814_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 10), (4, 4)]

def optimizedBody814_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (2, 0)]

def optimizedBody814_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def optimizedBody814_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody814_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (2, 2), (14, 14), (0, 0)]

def optimizedBody814_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.reg 16)))

def optimizedBody814_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody814_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 4), (6, 6), (46, 46), (44, 44), (48, 8), (50, 50), (52, 10), (54, 54), (56, 16), (58, 12), (60, 60),
    (62, 14)]

def optimizedBody814_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (6, 62)]

def optimizedBody814_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (6, 62)]

def optimizedBody814_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_49 optimizedBody814_3

def optimizedBody814_51 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody814_48, 814, 12)) (some 750) ([2, 4, 6]) (some (2, optimizedBody814_50, 814, 13))

def optimizedBody814_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (44, 44), (48, 48), (50, 4), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 6)]

def optimizedBody814_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (6, 44), (10, 48), (4, 50), (0, 52), (12, 54), (14, 56), (8, 58), (48, 60), (16, 62)]

def optimizedBody814_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (6, 44), (10, 48), (4, 50), (0, 52), (12, 54), (14, 56), (8, 58), (48, 60), (16, 62)]

def optimizedBody814_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_54 optimizedBody814_3

def optimizedBody814_56 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody814_53, 814, 14)) (some 745) ([2, 4, 6]) (some (2, optimizedBody814_55, 814, 15))

def optimizedBody814_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody814_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody814_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (6, 6), (52, 10), (4, 4), (0, 0), (44, 12), (54, 14), (8, 8), (48, 48), (50, 16)]

def optimizedBody814_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody814_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_59 optimizedBody814_60

def optimizedBody814_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_58 optimizedBody814_61

def optimizedBody814_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_57 optimizedBody814_62

def optimizedBody814_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_63

def optimizedBody814_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_56 optimizedBody814_64

def optimizedBody814_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_52 optimizedBody814_65

def optimizedBody814_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_66

def optimizedBody814_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_51 optimizedBody814_67

def optimizedBody814_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_47 optimizedBody814_68

def optimizedBody814_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_46 optimizedBody814_69

def optimizedBody814_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_32 optimizedBody814_70

def optimizedBody814_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_45 optimizedBody814_71

def optimizedBody814_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_44 optimizedBody814_72

def optimizedBody814_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_22 optimizedBody814_73

def optimizedBody814_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_21 optimizedBody814_74

def optimizedBody814_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_20 optimizedBody814_75

def optimizedBody814_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_43 optimizedBody814_76

def optimizedBody814_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_39 optimizedBody814_77

def optimizedBody814_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_42 optimizedBody814_78

def optimizedBody814_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_41 optimizedBody814_79

def optimizedBody814_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_22 optimizedBody814_80

def optimizedBody814_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_40 optimizedBody814_81

def optimizedBody814_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_20 optimizedBody814_82

def optimizedBody814_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_39 optimizedBody814_83

def optimizedBody814_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_84

def optimizedBody814_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_38 optimizedBody814_85

def optimizedBody814_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_34 optimizedBody814_86

def optimizedBody814_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_87

def optimizedBody814_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody814_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_89

def optimizedBody814_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody814_88 optimizedBody814_90

def optimizedBody814_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 2), (6, 6), (52, 10), (4, 4), (0, 0), (44, 12), (54, 14), (8, 8), (48, 16), (50, 18)]

def optimizedBody814_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_92

def optimizedBody814_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_91 optimizedBody814_93

def optimizedBody814_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_33 optimizedBody814_94

def optimizedBody814_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_32 optimizedBody814_95

def optimizedBody814_97 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody814_96 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody814_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 4), (44, 46), (46, 48)]

def optimizedBody814_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody814_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody814_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_100 optimizedBody814_3

def optimizedBody814_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_99, 814, 16)) (some 739) ([2, 4]) (some (2, optimizedBody814_101, 814, 17))

def optimizedBody814_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody814_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody814_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody814_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_105 optimizedBody814_3

def optimizedBody814_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_104, 814, 18)) (some 70) ([2]) (some (2, optimizedBody814_106, 814, 19))

def optimizedBody814_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody814_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody814_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody814_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_109 optimizedBody814_110

def optimizedBody814_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_108 optimizedBody814_111

def optimizedBody814_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_112

def optimizedBody814_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_107 optimizedBody814_113

def optimizedBody814_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_103 optimizedBody814_114

def optimizedBody814_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_115

def optimizedBody814_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_102 optimizedBody814_116

def optimizedBody814_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_98 optimizedBody814_117

def optimizedBody814_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_118

def optimizedBody814_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_97 optimizedBody814_119

def optimizedBody814_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_31 optimizedBody814_120

def optimizedBody814_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_121

def optimizedBody814_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_30 optimizedBody814_122

def optimizedBody814_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_123

def optimizedBody814_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_29 optimizedBody814_124

def optimizedBody814_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_25 optimizedBody814_125

def optimizedBody814_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_24 optimizedBody814_126

def optimizedBody814_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_23 optimizedBody814_127

def optimizedBody814_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_22 optimizedBody814_128

def optimizedBody814_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_21 optimizedBody814_129

def optimizedBody814_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_20 optimizedBody814_130

def optimizedBody814_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_19 optimizedBody814_131

def optimizedBody814_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_18 optimizedBody814_132

def optimizedBody814_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_133

def optimizedBody814_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_17 optimizedBody814_134

def optimizedBody814_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_13 optimizedBody814_135

def optimizedBody814_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_7 optimizedBody814_136

def optimizedBody814_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_137

def optimizedBody814_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_12 optimizedBody814_138

def optimizedBody814_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_8 optimizedBody814_139

def optimizedBody814_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_7 optimizedBody814_140

def optimizedBody814_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_141

def optimizedBody814_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_5 optimizedBody814_142

def optimizedBody814_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_0 optimizedBody814_143

def oracle814 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 Flapjack.Spt.ln) 26
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 25))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 4 (Flapjack.Spt.ls 8)) (Flapjack.Spt.ls 27))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 2)))
                26 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 4 (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                28
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 5 (Flapjack.Spt.ls 7)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 7)) (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))
                22 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 25 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 29)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 27 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 25))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 5)))
                24 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 23)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln))
                27
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 23))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 30)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))
                23
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 29))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 28
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 31))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 27))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                26 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 29))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 28))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)
                27 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26))
                (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 30))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln))
                23
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 28)))))))))
def optimized814 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(814, 6, optimizedBody814_144)
end InitECandidate.Proofs.SmallStages.Oracles814
