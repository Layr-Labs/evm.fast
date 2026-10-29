import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source705
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles705
def optimizedBody705_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (6, 4)]

def optimizedBody705_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody705_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (54, 6), (46, 2)]

def optimizedBody705_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (12, 2), (6, 6), (10, 4), (44, 44), (54, 54), (0, 46)]

def optimizedBody705_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (0, 46)]

def optimizedBody705_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody705_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_4 optimizedBody705_5

def optimizedBody705_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_3, 705, 2)) (some 146) ([2, 4]) (some (2, optimizedBody705_6, 705, 3))

def optimizedBody705_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody705_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody705_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody705_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (54, 54), (56, 8), (46, 0), (58, 12), (62, 6), (72, 10)]

def optimizedBody705_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (10, 4), (12, 2), (6, 6), (44, 44), (54, 54), (56, 56), (0, 46), (58, 58), (62, 62), (72, 72)]

def optimizedBody705_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (56, 56), (0, 46), (58, 58), (62, 62), (72, 72)]

def optimizedBody705_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_13 optimizedBody705_5

def optimizedBody705_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_12, 705, 4)) (some 146) ([2, 4]) (some (2, optimizedBody705_14, 705, 5))

def optimizedBody705_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody705_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (48, 8), (54, 54), (56, 56), (46, 0), (58, 58), (50, 10), (62, 62), (52, 12), (66, 6),
    (72, 72)]

def optimizedBody705_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (10, 4), (12, 2), (6, 6), (44, 44), (48, 48), (54, 54), (56, 56), (0, 46), (58, 58), (50, 50), (62, 62),
    (52, 52), (66, 66), (72, 72)]

def optimizedBody705_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (54, 54), (56, 56), (0, 46), (58, 58), (50, 50), (62, 62), (52, 52), (66, 66), (72, 72)]

def optimizedBody705_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_19 optimizedBody705_5

def optimizedBody705_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_18, 705, 6)) (some 146) ([2, 4]) (some (2, optimizedBody705_20, 705, 7))

def optimizedBody705_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody705_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 8), (48, 48), (54, 54), (56, 56), (64, 0), (60, 10), (58, 58), (50, 50), (62, 62),
    (52, 52), (66, 66), (68, 12), (72, 72), (80, 6)]

def optimizedBody705_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 4), (18, 6), (20, 8), (22, 2), (44, 44), (46, 46), (8, 48), (54, 54), (56, 56), (64, 64), (60, 60), (58, 58),
    (4, 50), (62, 62), (10, 52), (6, 66), (68, 68), (72, 72), (80, 80)]

def optimizedBody705_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (8, 48), (54, 54), (56, 56), (64, 64), (60, 60), (58, 58), (4, 50), (62, 62), (10, 52),
    (6, 66), (68, 68), (72, 72), (80, 80)]

def optimizedBody705_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_25 optimizedBody705_5

def optimizedBody705_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_24, 705, 8)) (some 146) ([2, 4]) (some (2, optimizedBody705_26, 705, 9))

def optimizedBody705_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody705_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 3486998266802970665#64)

def optimizedBody705_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 13281191951274694749#64)

def optimizedBody705_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 10917124144477883021#64)

def optimizedBody705_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 4332616871279656263#64)

def optimizedBody705_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 0), (52, 8),
    (54, 54), (50, 18), (56, 56), (64, 64), (60, 60), (58, 58), (70, 4), (62, 62), (74, 2), (76, 6), (66, 20), (68, 68),
    (72, 72), (80, 80), (78, 22)]

def optimizedBody705_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (50, 50), (8, 56), (64, 64), (60, 60), (0, 58), (70, 70),
    (6, 62), (74, 74), (76, 76), (56, 66), (66, 68), (4, 72), (80, 80), (78, 78)]

def optimizedBody705_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (50, 50), (8, 56), (64, 64), (60, 60), (0, 58), (70, 70),
    (6, 62), (74, 74), (76, 76), (56, 66), (66, 68), (4, 72), (80, 80), (78, 78)]

def optimizedBody705_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_35 optimizedBody705_5

def optimizedBody705_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_34, 705, 10)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody705_36, 705, 11))

def optimizedBody705_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody705_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (52, 52),
    (54, 54), (50, 50), (58, 18), (62, 8), (64, 64), (60, 60), (68, 2), (70, 70), (72, 6), (74, 74), (76, 76), (56, 56),
    (66, 66), (82, 4), (80, 80), (78, 78)]

def optimizedBody705_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (46, 46), (4, 48), (52, 52), (54, 54), (6, 50), (58, 58), (62, 62), (64, 64), (60, 60), (68, 68),
    (70, 70), (72, 72), (74, 74), (76, 76), (8, 56), (66, 66), (82, 82), (80, 80), (0, 78)]

def optimizedBody705_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (52, 52), (54, 54), (6, 50), (58, 58), (62, 62), (64, 64), (60, 60), (68, 68),
    (70, 70), (72, 72), (74, 74), (76, 76), (8, 56), (66, 66), (82, 82), (80, 80), (0, 78)]

def optimizedBody705_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_41 optimizedBody705_5

def optimizedBody705_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_40, 705, 12)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody705_42, 705, 13))

def optimizedBody705_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 18), (50, 4),
    (52, 52), (54, 54), (56, 6), (58, 58), (62, 62), (64, 64), (60, 60), (68, 68), (70, 70), (72, 72), (74, 74),
    (76, 76), (78, 8), (66, 66), (82, 82), (80, 80), (86, 2)]

def optimizedBody705_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (8, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (4, 60),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (0, 66), (82, 82), (6, 80), (86, 86)]

def optimizedBody705_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (8, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (4, 60),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (0, 66), (82, 82), (6, 80), (86, 86)]

def optimizedBody705_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_46 optimizedBody705_5

def optimizedBody705_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_45, 705, 14)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody705_47, 705, 15))

def optimizedBody705_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 8), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 58), (60, 18), (62, 62), (64, 64), (66, 4), (68, 68), (70, 70), (72, 72),
    (74, 74), (76, 76), (78, 78), (80, 2), (82, 82), (84, 6), (86, 86)]

def optimizedBody705_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (12, 44), (46, 46), (6, 48), (48, 50), (50, 52), (52, 54), (54, 56), (4, 58), (10, 60), (56, 62), (0, 64),
    (58, 66), (60, 68), (62, 70), (64, 72), (66, 74), (68, 76), (70, 78), (72, 80), (74, 82), (76, 84), (78, 86)]

def optimizedBody705_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (12, 44), (46, 46), (6, 48), (48, 50), (50, 52), (52, 54), (54, 56), (4, 58), (10, 60), (56, 62), (0, 64),
    (58, 66), (60, 68), (62, 70), (64, 72), (66, 74), (68, 76), (70, 78), (72, 80), (74, 82), (76, 84), (78, 86)]

def optimizedBody705_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_51 optimizedBody705_5

def optimizedBody705_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_50, 705, 16)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody705_52, 705, 17))

def optimizedBody705_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody705_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody705_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody705_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody705_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody705_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody705_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody705_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody705_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody705_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody705_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_62 optimizedBody705_63

def optimizedBody705_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_61 optimizedBody705_64

def optimizedBody705_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_65

def optimizedBody705_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody705_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody705_66 optimizedBody705_67

def optimizedBody705_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody705_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 128#64)

def optimizedBody705_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 12), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78)]

def optimizedBody705_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (46, 46), (48, 48), (8, 50), (52, 52), (54, 54), (50, 56), (56, 58), (58, 60), (4, 62), (60, 64),
    (0, 66), (6, 68), (62, 70), (66, 72), (64, 74), (70, 76), (68, 78)]

def optimizedBody705_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (8, 50), (52, 52), (54, 54), (50, 56), (56, 58), (58, 60), (4, 62), (60, 64),
    (0, 66), (6, 68), (62, 70), (66, 72), (64, 74), (70, 76), (68, 78)]

def optimizedBody705_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_73 optimizedBody705_5

def optimizedBody705_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_72, 705, 18)) (some 80) ([2, 4]) (some (2, optimizedBody705_74, 705, 19))

def optimizedBody705_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody705_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 52)]

def optimizedBody705_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody705_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (72, 44)]

def optimizedBody705_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 72)]

def optimizedBody705_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 72)]

def optimizedBody705_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_81 optimizedBody705_5

def optimizedBody705_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_80, 705, 20)) (some 687) ([2, 4]) (some (2, optimizedBody705_82, 705, 21))

def optimizedBody705_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody705_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody705_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_62 optimizedBody705_85

def optimizedBody705_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_84 optimizedBody705_86

def optimizedBody705_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_87

def optimizedBody705_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_83 optimizedBody705_88

def optimizedBody705_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_79 optimizedBody705_89

def optimizedBody705_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_78 optimizedBody705_90

def optimizedBody705_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_77 optimizedBody705_91

def optimizedBody705_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_92

def optimizedBody705_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (8, 8), (52, 52), (54, 54), (50, 50), (56, 56), (58, 58), (4, 4), (60, 60), (0, 0), (6, 6),
    (62, 62), (66, 66), (64, 64), (70, 70), (68, 68), (44, 44)]

def optimizedBody705_95 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody705_93 optimizedBody705_94

def optimizedBody705_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (50, 50), (56, 56), (58, 58),
    (60, 60), (62, 62), (66, 66), (64, 64), (70, 70), (68, 68)]

def optimizedBody705_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (4, 4), (16, 2), (6, 6), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (12, 50), (56, 56), (14, 58),
    (10, 60), (60, 62), (66, 66), (0, 64), (70, 70), (68, 68)]

def optimizedBody705_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (12, 50), (56, 56), (14, 58), (10, 60), (60, 62), (66, 66),
    (0, 64), (70, 70), (68, 68)]

def optimizedBody705_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_98 optimizedBody705_5

def optimizedBody705_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
  Flapjack.Spt.ln)), optimizedBody705_97, 705, 22)) (some 669) ([2, 4, 6, 8]) (some (2, optimizedBody705_99, 705, 23))

def optimizedBody705_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (46, 46), (48, 48), (50, 8), (52, 52), (54, 54), (56, 56), (58, 4),
    (62, 16), (64, 6), (60, 60), (66, 66), (70, 70), (68, 68)]

def optimizedBody705_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (16, 2), (6, 6), (4, 4), (44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (10, 54), (52, 56), (58, 58),
    (62, 62), (64, 64), (12, 60), (66, 66), (70, 70), (14, 68)]

def optimizedBody705_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (10, 54), (52, 56), (58, 58), (62, 62), (64, 64), (12, 60),
    (66, 66), (70, 70), (14, 68)]

def optimizedBody705_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_103 optimizedBody705_5

def optimizedBody705_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
  Flapjack.Spt.ln)), optimizedBody705_102, 705, 24)) (some 669) ([2, 4, 6, 8]) (some (2, optimizedBody705_104, 705, 25))

def optimizedBody705_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (46, 46), (48, 48), (50, 50), (54, 8), (52, 52), (56, 16), (58, 58),
    (60, 6), (62, 62), (64, 64), (66, 66), (68, 4), (70, 70)]

def optimizedBody705_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (6, 6), (8, 8), (16, 2), (44, 44), (12, 46), (48, 48), (50, 50), (54, 54), (0, 52), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (14, 66), (68, 68), (10, 70)]

def optimizedBody705_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (48, 48), (50, 50), (54, 54), (0, 52), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (14, 66), (68, 68), (10, 70)]

def optimizedBody705_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_108 optimizedBody705_5

def optimizedBody705_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
  Flapjack.Spt.ln)), optimizedBody705_107, 705, 26)) (some 669) ([2, 4, 6, 8]) (some (2, optimizedBody705_109, 705, 27))

def optimizedBody705_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (46, 4), (48, 48), (50, 50), (52, 6), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 8), (68, 68), (70, 16)]

def optimizedBody705_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (4, 4), (0, 2), (6, 6), (44, 44), (26, 46), (28, 48), (10, 50), (20, 52), (22, 54), (16, 56), (34, 58),
    (14, 60), (30, 62), (32, 64), (18, 66), (24, 68), (12, 70)]

def optimizedBody705_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (26, 46), (28, 48), (10, 50), (20, 52), (22, 54), (16, 56), (34, 58), (14, 60), (30, 62), (32, 64),
    (18, 66), (24, 68), (12, 70)]

def optimizedBody705_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_113 optimizedBody705_5

def optimizedBody705_115 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
  Flapjack.Spt.ln)), optimizedBody705_112, 705, 28)) (some 669) ([2, 4, 6, 8]) (some (2, optimizedBody705_114, 705, 29))

def optimizedBody705_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (30, 30), (28, 28), (32, 32), (34, 34)]

def optimizedBody705_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody705_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (34, 34)]

def optimizedBody705_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 34 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody705_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (32, 32)]

def optimizedBody705_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 32 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody705_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (28, 28)]

def optimizedBody705_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody705_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody705_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (16, 16), (22, 22), (14, 14), (24, 24)]

def optimizedBody705_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody705_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (24, 24)]

def optimizedBody705_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody705_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody705_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody705_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (22, 22)]

def optimizedBody705_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody705_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody705_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12), (18, 18), (20, 20), (26, 26)]

def optimizedBody705_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody705_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (26, 26)]

def optimizedBody705_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody705_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (20, 20)]

def optimizedBody705_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody705_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (18, 18)]

def optimizedBody705_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody705_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody705_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0), (8, 8), (6, 6), (4, 4)]

def optimizedBody705_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody705_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody705_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody705_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody705_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody705_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody705_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody705_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 10 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody705_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody705_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody705_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody705_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody705_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 10 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody705_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 10)]

def optimizedBody705_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50)]

def optimizedBody705_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50)]

def optimizedBody705_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_159 optimizedBody705_5

def optimizedBody705_161 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_158, 705, 30)) (some 69) ([]) (some (2, optimizedBody705_160, 705, 31))

def optimizedBody705_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody705_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (52, 0)]

def optimizedBody705_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (52, 52)]

def optimizedBody705_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (52, 52)]

def optimizedBody705_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_165 optimizedBody705_5

def optimizedBody705_167 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_164, 705, 32)) (some 68) ([2]) (some (2, optimizedBody705_166, 705, 33))

def optimizedBody705_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (52, 52)]

def optimizedBody705_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (52, 52)]

def optimizedBody705_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52)]

def optimizedBody705_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_170 optimizedBody705_5

def optimizedBody705_172 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_169, 705, 34)) (some 68) ([2]) (some (2, optimizedBody705_171, 705, 35))

def optimizedBody705_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 0)]

def optimizedBody705_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54)]

def optimizedBody705_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54)]

def optimizedBody705_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_175 optimizedBody705_5

def optimizedBody705_177 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_174, 705, 36)) (some 68) ([2]) (some (2, optimizedBody705_176, 705, 37))

def optimizedBody705_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody705_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody705_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody705_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551112#64))

def optimizedBody705_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 64#64)

def optimizedBody705_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 2), (50, 50), (52, 52), (54, 54)]

def optimizedBody705_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (0, 50), (52, 52), (54, 54)]

def optimizedBody705_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (0, 50), (52, 52), (54, 54)]

def optimizedBody705_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_185 optimizedBody705_5

def optimizedBody705_187 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody705_184, 705, 38)) (some 77) ([2, 4, 6]) (some (2, optimizedBody705_186, 705, 39))

def optimizedBody705_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody705_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody705_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (6, 6), (44, 44), (46, 2), (48, 48), (50, 0), (52, 52), (54, 54)]

def optimizedBody705_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (6, 50), (52, 52), (0, 54)]

def optimizedBody705_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (6, 50), (52, 52), (0, 54)]

def optimizedBody705_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_192 optimizedBody705_5

def optimizedBody705_194 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody705_191, 705, 40)) (some 673) ([2, 4, 6]) (some (2, optimizedBody705_193, 705, 41))

def optimizedBody705_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 6), (6, 6), (44, 44), (46, 46), (48, 48), (50, 6), (52, 52), (54, 0)]

def optimizedBody705_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (6, 50), (50, 52), (4, 54)]

def optimizedBody705_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (6, 50), (50, 52), (4, 54)]

def optimizedBody705_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_197 optimizedBody705_5

def optimizedBody705_199 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody705_196, 705, 42)) (some 673) ([2, 4, 6]) (some (2, optimizedBody705_198, 705, 43))

def optimizedBody705_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 4)]

def optimizedBody705_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (8, 48), (48, 50), (6, 52)]

def optimizedBody705_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (8, 48), (48, 50), (6, 52)]

def optimizedBody705_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_202 optimizedBody705_5

def optimizedBody705_204 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_201, 705, 44)) (some 673) ([2, 4, 6]) (some (2, optimizedBody705_203, 705, 45))

def optimizedBody705_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody705_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 6)]

def optimizedBody705_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48), (4, 50)]

def optimizedBody705_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (4, 50)]

def optimizedBody705_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_208 optimizedBody705_5

def optimizedBody705_210 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_207, 705, 46)) (some 679) ([2, 4, 6, 8]) (some (2, optimizedBody705_209, 705, 47))

def optimizedBody705_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody705_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody705_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody705_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody705_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_214 optimizedBody705_5

def optimizedBody705_216 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_213, 705, 48)) (some 79) ([2, 4, 6]) (some (2, optimizedBody705_215, 705, 49))

def optimizedBody705_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4)]

def optimizedBody705_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody705_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody705_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_219 optimizedBody705_5

def optimizedBody705_221 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody705_218, 705, 50)) (some 70) ([2]) (some (2, optimizedBody705_220, 705, 51))

def optimizedBody705_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody705_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_62 optimizedBody705_222

def optimizedBody705_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_61 optimizedBody705_223

def optimizedBody705_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_224

def optimizedBody705_226 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody705_225 optimizedBody705_67

def optimizedBody705_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_84 optimizedBody705_223

def optimizedBody705_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_227

def optimizedBody705_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_228

def optimizedBody705_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_226 optimizedBody705_229

def optimizedBody705_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_84 optimizedBody705_230

def optimizedBody705_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_9 optimizedBody705_231

def optimizedBody705_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_232

def optimizedBody705_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_221 optimizedBody705_233

def optimizedBody705_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_217 optimizedBody705_234

def optimizedBody705_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_235

def optimizedBody705_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_216 optimizedBody705_236

def optimizedBody705_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_212 optimizedBody705_237

def optimizedBody705_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_182 optimizedBody705_238

def optimizedBody705_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_211 optimizedBody705_239

def optimizedBody705_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_240

def optimizedBody705_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_210 optimizedBody705_241

def optimizedBody705_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_206 optimizedBody705_242

def optimizedBody705_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_78 optimizedBody705_243

def optimizedBody705_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_205 optimizedBody705_244

def optimizedBody705_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_245

def optimizedBody705_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_204 optimizedBody705_246

def optimizedBody705_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_200 optimizedBody705_247

def optimizedBody705_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_248

def optimizedBody705_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_199 optimizedBody705_249

def optimizedBody705_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_195 optimizedBody705_250

def optimizedBody705_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_251

def optimizedBody705_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_194 optimizedBody705_252

def optimizedBody705_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_190 optimizedBody705_253

def optimizedBody705_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_189 optimizedBody705_254

def optimizedBody705_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_188 optimizedBody705_255

def optimizedBody705_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_256

def optimizedBody705_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_187 optimizedBody705_257

def optimizedBody705_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_183 optimizedBody705_258

def optimizedBody705_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_182 optimizedBody705_259

def optimizedBody705_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_181 optimizedBody705_260

def optimizedBody705_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_180 optimizedBody705_261

def optimizedBody705_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_179 optimizedBody705_262

def optimizedBody705_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_178 optimizedBody705_263

def optimizedBody705_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_69 optimizedBody705_264

def optimizedBody705_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_265

def optimizedBody705_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_177 optimizedBody705_266

def optimizedBody705_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_173 optimizedBody705_267

def optimizedBody705_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_162 optimizedBody705_268

def optimizedBody705_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_269

def optimizedBody705_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_172 optimizedBody705_270

def optimizedBody705_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_168 optimizedBody705_271

def optimizedBody705_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_162 optimizedBody705_272

def optimizedBody705_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_273

def optimizedBody705_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_167 optimizedBody705_274

def optimizedBody705_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_163 optimizedBody705_275

def optimizedBody705_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_162 optimizedBody705_276

def optimizedBody705_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_277

def optimizedBody705_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_161 optimizedBody705_278

def optimizedBody705_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_157 optimizedBody705_279

def optimizedBody705_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_155 optimizedBody705_280

def optimizedBody705_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_9 optimizedBody705_281

def optimizedBody705_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_84 optimizedBody705_282

def optimizedBody705_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_154 optimizedBody705_283

def optimizedBody705_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_9 optimizedBody705_284

def optimizedBody705_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_84 optimizedBody705_285

def optimizedBody705_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_153 optimizedBody705_286

def optimizedBody705_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_9 optimizedBody705_287

def optimizedBody705_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_84 optimizedBody705_288

def optimizedBody705_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_152 optimizedBody705_289

def optimizedBody705_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_9 optimizedBody705_290

def optimizedBody705_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_84 optimizedBody705_291

def optimizedBody705_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_156 optimizedBody705_292

def optimizedBody705_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_76 optimizedBody705_293

def optimizedBody705_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_155 optimizedBody705_294

def optimizedBody705_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_9 optimizedBody705_295

def optimizedBody705_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_84 optimizedBody705_296

def optimizedBody705_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_154 optimizedBody705_297

def optimizedBody705_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_9 optimizedBody705_298

def optimizedBody705_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_84 optimizedBody705_299

def optimizedBody705_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_153 optimizedBody705_300

def optimizedBody705_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_9 optimizedBody705_301

def optimizedBody705_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_84 optimizedBody705_302

def optimizedBody705_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_152 optimizedBody705_303

def optimizedBody705_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_9 optimizedBody705_304

def optimizedBody705_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_61 optimizedBody705_305

def optimizedBody705_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_151 optimizedBody705_306

def optimizedBody705_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_76 optimizedBody705_307

def optimizedBody705_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_150 optimizedBody705_308

def optimizedBody705_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_149 optimizedBody705_309

def optimizedBody705_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_148 optimizedBody705_310

def optimizedBody705_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_147 optimizedBody705_311

def optimizedBody705_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_146 optimizedBody705_312

def optimizedBody705_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_145 optimizedBody705_313

def optimizedBody705_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_144 optimizedBody705_314

def optimizedBody705_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_143 optimizedBody705_315

def optimizedBody705_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_142 optimizedBody705_316

def optimizedBody705_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_76 optimizedBody705_317

def optimizedBody705_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_141 optimizedBody705_318

def optimizedBody705_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_140 optimizedBody705_319

def optimizedBody705_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_139 optimizedBody705_320

def optimizedBody705_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_138 optimizedBody705_321

def optimizedBody705_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_137 optimizedBody705_322

def optimizedBody705_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_136 optimizedBody705_323

def optimizedBody705_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_135 optimizedBody705_324

def optimizedBody705_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_134 optimizedBody705_325

def optimizedBody705_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_133 optimizedBody705_326

def optimizedBody705_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_76 optimizedBody705_327

def optimizedBody705_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_132 optimizedBody705_328

def optimizedBody705_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_131 optimizedBody705_329

def optimizedBody705_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_130 optimizedBody705_330

def optimizedBody705_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_129 optimizedBody705_331

def optimizedBody705_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_128 optimizedBody705_332

def optimizedBody705_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_127 optimizedBody705_333

def optimizedBody705_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_126 optimizedBody705_334

def optimizedBody705_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_125 optimizedBody705_335

def optimizedBody705_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_124 optimizedBody705_336

def optimizedBody705_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_76 optimizedBody705_337

def optimizedBody705_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_123 optimizedBody705_338

def optimizedBody705_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_122 optimizedBody705_339

def optimizedBody705_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_121 optimizedBody705_340

def optimizedBody705_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_120 optimizedBody705_341

def optimizedBody705_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_119 optimizedBody705_342

def optimizedBody705_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_118 optimizedBody705_343

def optimizedBody705_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_117 optimizedBody705_344

def optimizedBody705_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_116 optimizedBody705_345

def optimizedBody705_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_346

def optimizedBody705_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_115 optimizedBody705_347

def optimizedBody705_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_111 optimizedBody705_348

def optimizedBody705_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_349

def optimizedBody705_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_110 optimizedBody705_350

def optimizedBody705_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_106 optimizedBody705_351

def optimizedBody705_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_352

def optimizedBody705_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_105 optimizedBody705_353

def optimizedBody705_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_101 optimizedBody705_354

def optimizedBody705_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_355

def optimizedBody705_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_100 optimizedBody705_356

def optimizedBody705_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_96 optimizedBody705_357

def optimizedBody705_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_358

def optimizedBody705_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_359

def optimizedBody705_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_95 optimizedBody705_360

def optimizedBody705_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_61 optimizedBody705_361

def optimizedBody705_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_76 optimizedBody705_362

def optimizedBody705_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_363

def optimizedBody705_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_75 optimizedBody705_364

def optimizedBody705_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_71 optimizedBody705_365

def optimizedBody705_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_70 optimizedBody705_366

def optimizedBody705_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_69 optimizedBody705_367

def optimizedBody705_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_368

def optimizedBody705_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_369

def optimizedBody705_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_68 optimizedBody705_370

def optimizedBody705_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_60 optimizedBody705_371

def optimizedBody705_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_59 optimizedBody705_372

def optimizedBody705_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_58 optimizedBody705_373

def optimizedBody705_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_57 optimizedBody705_374

def optimizedBody705_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_56 optimizedBody705_375

def optimizedBody705_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_55 optimizedBody705_376

def optimizedBody705_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_54 optimizedBody705_377

def optimizedBody705_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_378

def optimizedBody705_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_53 optimizedBody705_379

def optimizedBody705_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_49 optimizedBody705_380

def optimizedBody705_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_32 optimizedBody705_381

def optimizedBody705_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_31 optimizedBody705_382

def optimizedBody705_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_30 optimizedBody705_383

def optimizedBody705_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_29 optimizedBody705_384

def optimizedBody705_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_38 optimizedBody705_385

def optimizedBody705_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_386

def optimizedBody705_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_48 optimizedBody705_387

def optimizedBody705_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_44 optimizedBody705_388

def optimizedBody705_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_32 optimizedBody705_389

def optimizedBody705_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_31 optimizedBody705_390

def optimizedBody705_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_30 optimizedBody705_391

def optimizedBody705_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_29 optimizedBody705_392

def optimizedBody705_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_38 optimizedBody705_393

def optimizedBody705_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_394

def optimizedBody705_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_43 optimizedBody705_395

def optimizedBody705_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_39 optimizedBody705_396

def optimizedBody705_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_32 optimizedBody705_397

def optimizedBody705_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_31 optimizedBody705_398

def optimizedBody705_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_30 optimizedBody705_399

def optimizedBody705_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_29 optimizedBody705_400

def optimizedBody705_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_38 optimizedBody705_401

def optimizedBody705_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_402

def optimizedBody705_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_37 optimizedBody705_403

def optimizedBody705_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_33 optimizedBody705_404

def optimizedBody705_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_32 optimizedBody705_405

def optimizedBody705_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_31 optimizedBody705_406

def optimizedBody705_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_30 optimizedBody705_407

def optimizedBody705_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_29 optimizedBody705_408

def optimizedBody705_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_28 optimizedBody705_409

def optimizedBody705_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_410

def optimizedBody705_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_27 optimizedBody705_411

def optimizedBody705_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_23 optimizedBody705_412

def optimizedBody705_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_1 optimizedBody705_413

def optimizedBody705_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_22 optimizedBody705_414

def optimizedBody705_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_9 optimizedBody705_415

def optimizedBody705_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_416

def optimizedBody705_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_21 optimizedBody705_417

def optimizedBody705_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_17 optimizedBody705_418

def optimizedBody705_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_1 optimizedBody705_419

def optimizedBody705_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_16 optimizedBody705_420

def optimizedBody705_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_9 optimizedBody705_421

def optimizedBody705_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_422

def optimizedBody705_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_15 optimizedBody705_423

def optimizedBody705_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_11 optimizedBody705_424

def optimizedBody705_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_1 optimizedBody705_425

def optimizedBody705_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_10 optimizedBody705_426

def optimizedBody705_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_9 optimizedBody705_427

def optimizedBody705_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_428

def optimizedBody705_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_7 optimizedBody705_429

def optimizedBody705_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_2 optimizedBody705_430

def optimizedBody705_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_1 optimizedBody705_431

def optimizedBody705_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_0 optimizedBody705_432

def oracle705 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 22)) 33
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 7)))
                    23
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 30
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                    36 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 12)) 8 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 9)) (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 0)) 2
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 8 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0)) 32
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 36 (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 4))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))) 27
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 Flapjack.Spt.ln)) 6
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 26))))
                  4
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 36 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)) 27 (Flapjack.Spt.ls 41)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 24 (Flapjack.Spt.ls 6))))
                  2
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 36
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 27 (Flapjack.Spt.ls 32))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)) 10
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  5
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 37 (Flapjack.Spt.ls 2)) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 12)) 32
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 38 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 4
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 43 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 13))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 35))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 34))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 3))))
                  27
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 31)))
                    22 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 5)) 9 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 6 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 28 (Flapjack.Spt.ls 4)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 Flapjack.Spt.ln) 29
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1)) 34
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 38 (Flapjack.Spt.ls 14)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 24 (Flapjack.Spt.ls 39)))
                  31
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 5)) 3
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 25)) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 31))))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 39)
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 2 (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 31 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 0)) 4
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 17))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 6 Flapjack.Spt.ln))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 6
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 35
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 9 Flapjack.Spt.ln))
                    3
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 16)) 27
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 40 (Flapjack.Spt.ls 0)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 4 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 17)))
                    22
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 32
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 33
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 28 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 10))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 7))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 1)) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 31 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 35 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 9))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 8))))
                  28
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 8 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 17)) 0 Flapjack.Spt.ln)))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 Flapjack.Spt.ln))
                    3
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 7))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 5))))
                  6
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 33 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln) 2 (Flapjack.Spt.ls 9))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 35 (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)))
                  36
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 29
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)) 4
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 4 (Flapjack.Spt.ls 32))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 34
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 26 (Flapjack.Spt.ls 31))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 13))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 32 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 16)) 11
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 5 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 5
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3 (Flapjack.Spt.ls 1)) 6
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 9)) 28
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 0 (Flapjack.Spt.ls 35))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 37 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 25
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 31
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
                27
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 33))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 9
                      (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 40 Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 33))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 10))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 2))))
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15)) Flapjack.Spt.ln)))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 38 (Flapjack.Spt.ls 3)) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)) 30 Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 30
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 37 (Flapjack.Spt.ls 13)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 23 (Flapjack.Spt.ls 38)))
                  29
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))) 28
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 16)) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 11))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 29))))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 29 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 29 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 1)) 3
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 7 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 7 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 15)) 4
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 41 (Flapjack.Spt.ls 33))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 38 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 35)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    22 (Flapjack.Spt.ls 31))
                  28
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 22 Flapjack.Spt.ln)) 29
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 40)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln) 34
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 34))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 31)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.ls 32))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 35))) 24
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 32)))
                    28 (Flapjack.Spt.ls 34))
                  36
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 33
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 32 (Flapjack.Spt.ls 42))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 38 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln) 40
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 36))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 30)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 40 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.ls 29))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)) 28
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 34)))
                    30 (Flapjack.Spt.ls 40))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 34)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 33 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 28)))))
                27
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 38 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))) 24
                    (Flapjack.Spt.ls 38))
                  29 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 31 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 40 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 36 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 37 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 33)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 22)) 39
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.ls 35))
                  27
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))) 29
                    (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 41)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 33
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 29)))))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 34))) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 31)))
                    27 (Flapjack.Spt.ls 33))
                  31 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 26 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 41 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 37 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln) 36
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 35))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 32)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 41 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.ls 30))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)) 27
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 33)))
                    32 (Flapjack.Spt.ls 36))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 36
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 30 (Flapjack.Spt.ls 43))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 39 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 31
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 27)))))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 37 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 43)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                    23 (Flapjack.Spt.ls 37))
                  23 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 25 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 39 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 35)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 35 (Flapjack.Spt.ls 34))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    Flapjack.Spt.ln)))))))))
def optimized705 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(705, 3, optimizedBody705_433)
end InitECandidate.Proofs.SmallStages.Oracles705
