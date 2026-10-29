import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody696_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (6, 4)]

def optimizedBody696_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody696_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (62, 6), (46, 2)]

def optimizedBody696_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (6, 6), (8, 8), (10, 4), (44, 44), (62, 62), (0, 46)]

def optimizedBody696_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (62, 62), (0, 46)]

def optimizedBody696_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody696_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_4 optimizedBody696_5

def optimizedBody696_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody696_3, 696, 2)) (some 146) ([2, 4]) (some (2, optimizedBody696_6, 696, 3))

def optimizedBody696_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody696_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody696_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody696_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (62, 62), (54, 12), (64, 6), (66, 8), (46, 0), (80, 10)]

def optimizedBody696_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (8, 8), (12, 2), (10, 4), (44, 44), (62, 62), (54, 54), (64, 64), (66, 66), (0, 46), (80, 80)]

def optimizedBody696_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (62, 62), (54, 54), (64, 64), (66, 66), (0, 46), (80, 80)]

def optimizedBody696_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_13 optimizedBody696_5

def optimizedBody696_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody696_12, 696, 4)) (some 146) ([2, 4]) (some (2, optimizedBody696_14, 696, 5))

def optimizedBody696_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody696_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 6), (50, 8), (62, 62), (54, 54), (64, 64), (66, 66), (56, 12), (48, 0), (58, 10),
    (80, 80)]

def optimizedBody696_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (12, 2), (10, 4), (44, 44), (46, 46), (50, 50), (62, 62), (54, 54), (64, 64), (66, 66), (56, 56),
    (0, 48), (58, 58), (80, 80)]

def optimizedBody696_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (62, 62), (54, 54), (64, 64), (66, 66), (56, 56), (0, 48), (58, 58), (80, 80)]

def optimizedBody696_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_19 optimizedBody696_5

def optimizedBody696_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody696_18, 696, 6)) (some 146) ([2, 4]) (some (2, optimizedBody696_20, 696, 7))

def optimizedBody696_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody696_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (48, 8), (52, 6), (46, 46), (50, 50), (60, 12), (62, 62), (54, 54), (64, 64), (66, 66),
    (56, 56), (72, 0), (74, 10), (58, 58), (80, 80)]

def optimizedBody696_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 2), (0, 4), (18, 6), (20, 8), (44, 44), (48, 48), (52, 52), (6, 46), (8, 50), (60, 60), (62, 62), (54, 54),
    (64, 64), (66, 66), (10, 56), (72, 72), (74, 74), (4, 58), (80, 80)]

def optimizedBody696_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (52, 52), (6, 46), (8, 50), (60, 60), (62, 62), (54, 54), (64, 64), (66, 66), (10, 56),
    (72, 72), (74, 74), (4, 58), (80, 80)]

def optimizedBody696_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_25 optimizedBody696_5

def optimizedBody696_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody696_24, 696, 8)) (some 146) ([2, 4]) (some (2, optimizedBody696_26, 696, 9))

def optimizedBody696_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody696_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 3486998266802970665#64)

def optimizedBody696_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 13281191951274694749#64)

def optimizedBody696_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 10917124144477883021#64)

def optimizedBody696_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 4332616871279656263#64)

def optimizedBody696_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 22), (48, 48), (52, 52),
    (50, 0), (56, 6), (58, 8), (60, 60), (62, 62), (54, 54), (64, 64), (66, 66), (70, 2), (72, 72), (74, 74), (76, 4),
    (68, 18), (78, 20), (80, 80)]

def optimizedBody696_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (46, 46), (48, 48), (52, 52), (50, 50), (56, 56), (58, 58), (60, 60), (62, 62), (0, 54), (6, 64),
    (8, 66), (70, 70), (72, 72), (74, 74), (76, 76), (54, 68), (78, 78), (4, 80)]

def optimizedBody696_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (50, 50), (56, 56), (58, 58), (60, 60), (62, 62), (0, 54), (6, 64),
    (8, 66), (70, 70), (72, 72), (74, 74), (76, 76), (54, 68), (78, 78), (4, 80)]

def optimizedBody696_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_35 optimizedBody696_5

def optimizedBody696_37 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody696_34, 696, 10)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody696_36, 696, 11))

def optimizedBody696_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody696_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (52, 52),
    (50, 50), (56, 56), (58, 58), (60, 60), (62, 62), (64, 2), (66, 6), (68, 8), (70, 70), (72, 72), (74, 74), (76, 76),
    (54, 54), (78, 78), (82, 18), (84, 4)]

def optimizedBody696_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (0, 46), (48, 48), (52, 52), (4, 50), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (6, 54), (8, 78), (82, 82), (84, 84)]

def optimizedBody696_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (48, 48), (52, 52), (4, 50), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (6, 54), (8, 78), (82, 82), (84, 84)]

def optimizedBody696_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_41 optimizedBody696_5

def optimizedBody696_43 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody696_40, 696, 12)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody696_42, 696, 13))

def optimizedBody696_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 2), (48, 48), (50, 18),
    (52, 52), (54, 4), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72),
    (74, 74), (76, 76), (78, 6), (80, 8), (82, 82), (84, 84)]

def optimizedBody696_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (46, 46), (8, 48), (50, 50), (6, 52), (54, 54), (56, 56), (58, 58), (0, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (4, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84)]

def optimizedBody696_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (8, 48), (50, 50), (6, 52), (54, 54), (56, 56), (58, 58), (0, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (4, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84)]

def optimizedBody696_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_46 optimizedBody696_5

def optimizedBody696_48 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody696_45, 696, 14)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody696_47, 696, 15))

def optimizedBody696_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 8), (50, 50),
    (52, 6), (54, 54), (56, 56), (58, 58), (60, 2), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 4),
    (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 18)]

def optimizedBody696_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (12, 44), (46, 46), (48, 48), (6, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (64, 66), (66, 68), (68, 70), (0, 72), (70, 74), (72, 76), (74, 78), (76, 80), (4, 82), (78, 84), (10, 86)]

def optimizedBody696_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (12, 44), (46, 46), (48, 48), (6, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (64, 66), (66, 68), (68, 70), (0, 72), (70, 74), (72, 76), (74, 78), (76, 80), (4, 82), (78, 84), (10, 86)]

def optimizedBody696_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_51 optimizedBody696_5

def optimizedBody696_53 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody696_50, 696, 16)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody696_52, 696, 17))

def optimizedBody696_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody696_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody696_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody696_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody696_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody696_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody696_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody696_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody696_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody696_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody696_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_62 optimizedBody696_63

def optimizedBody696_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_61 optimizedBody696_64

def optimizedBody696_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_65

def optimizedBody696_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody696_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody696_66 optimizedBody696_67

def optimizedBody696_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody696_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 128#64)

def optimizedBody696_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 12), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78)]

def optimizedBody696_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (6, 54), (8, 56), (58, 58), (60, 60), (54, 62), (56, 64),
    (62, 66), (0, 68), (66, 70), (4, 72), (64, 74), (70, 76), (68, 78)]

def optimizedBody696_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (6, 54), (8, 56), (58, 58), (60, 60), (54, 62), (56, 64),
    (62, 66), (0, 68), (66, 70), (4, 72), (64, 74), (70, 76), (68, 78)]

def optimizedBody696_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_73 optimizedBody696_5

def optimizedBody696_75 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody696_72, 696, 18)) (some 80) ([2, 4]) (some (2, optimizedBody696_74, 696, 19))

def optimizedBody696_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody696_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 60)]

def optimizedBody696_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody696_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (72, 44)]

def optimizedBody696_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 72)]

def optimizedBody696_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 72)]

def optimizedBody696_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_81 optimizedBody696_5

def optimizedBody696_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody696_80, 696, 20)) (some 680) ([2, 4]) (some (2, optimizedBody696_82, 696, 21))

def optimizedBody696_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody696_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody696_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_62 optimizedBody696_85

def optimizedBody696_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_84 optimizedBody696_86

def optimizedBody696_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_87

def optimizedBody696_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_83 optimizedBody696_88

def optimizedBody696_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_79 optimizedBody696_89

def optimizedBody696_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_78 optimizedBody696_90

def optimizedBody696_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_77 optimizedBody696_91

def optimizedBody696_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_92

def optimizedBody696_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (50, 50), (52, 52), (6, 6), (8, 8), (58, 58), (60, 60), (54, 54), (56, 56), (62, 62), (0, 0),
    (66, 66), (4, 4), (64, 64), (70, 70), (68, 68), (44, 44)]

def optimizedBody696_95 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody696_93 optimizedBody696_94

def optimizedBody696_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (58, 58), (60, 60), (54, 54),
    (56, 56), (62, 62), (66, 66), (64, 64), (70, 70), (68, 68)]

def optimizedBody696_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (8, 8), (16, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (58, 58), (60, 60), (14, 54),
    (10, 56), (12, 62), (66, 66), (62, 64), (70, 70), (0, 68)]

def optimizedBody696_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (58, 58), (60, 60), (14, 54), (10, 56), (12, 62), (66, 66),
    (62, 64), (70, 70), (0, 68)]

def optimizedBody696_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_98 optimizedBody696_5

def optimizedBody696_100 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody696_97, 696, 22)) (some 662) ([2, 4, 6, 8]) (some (2, optimizedBody696_99, 696, 23))

def optimizedBody696_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 6), (56, 8), (58, 58),
    (60, 60), (64, 16), (66, 66), (68, 4), (62, 62), (70, 70)]

def optimizedBody696_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 2), (6, 6), (8, 8), (4, 4), (44, 44), (14, 46), (46, 48), (48, 50), (0, 52), (50, 54), (52, 56), (54, 58),
    (56, 60), (64, 64), (66, 66), (68, 68), (10, 62), (12, 70)]

def optimizedBody696_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (14, 46), (46, 48), (48, 50), (0, 52), (50, 54), (52, 56), (54, 58), (56, 60), (64, 64), (66, 66),
    (68, 68), (10, 62), (12, 70)]

def optimizedBody696_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_103 optimizedBody696_5

def optimizedBody696_105 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody696_102, 696, 24)) (some 662) ([2, 4, 6, 8]) (some (2, optimizedBody696_104, 696, 25))

def optimizedBody696_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 16),
    (60, 6), (62, 8), (64, 64), (66, 66), (68, 68), (70, 4)]

def optimizedBody696_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 2), (4, 4), (6, 6), (8, 8), (44, 44), (12, 46), (10, 48), (50, 50), (52, 52), (14, 54), (54, 56), (56, 58),
    (58, 60), (60, 62), (62, 64), (0, 66), (64, 68), (70, 70)]

def optimizedBody696_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (10, 48), (50, 50), (52, 52), (14, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (0, 66), (64, 68), (70, 70)]

def optimizedBody696_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_108 optimizedBody696_5

def optimizedBody696_110 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody696_107, 696, 26)) (some 662) ([2, 4, 6, 8]) (some (2, optimizedBody696_109, 696, 27))

def optimizedBody696_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (46, 16), (48, 4), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 6), (68, 8), (70, 70)]

def optimizedBody696_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (18, 2), (4, 4), (44, 44), (26, 46), (20, 48), (28, 50), (30, 52), (10, 54), (16, 56), (22, 58),
    (14, 60), (32, 62), (34, 64), (0, 66), (12, 68), (24, 70)]

def optimizedBody696_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (26, 46), (20, 48), (28, 50), (30, 52), (10, 54), (16, 56), (22, 58), (14, 60), (32, 62), (34, 64),
    (0, 66), (12, 68), (24, 70)]

def optimizedBody696_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_113 optimizedBody696_5

def optimizedBody696_115 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody696_112, 696, 28)) (some 662) ([2, 4, 6, 8]) (some (2, optimizedBody696_114, 696, 29))

def optimizedBody696_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (32, 32), (30, 30), (28, 28), (34, 34)]

def optimizedBody696_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 32 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody696_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (34, 34)]

def optimizedBody696_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 34 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody696_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (28, 28)]

def optimizedBody696_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody696_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (30, 30)]

def optimizedBody696_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody696_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody696_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (16, 16), (14, 14), (22, 22), (24, 24)]

def optimizedBody696_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody696_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (24, 24)]

def optimizedBody696_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody696_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (22, 22)]

def optimizedBody696_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody696_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody696_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody696_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody696_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (26, 26), (12, 12), (0, 0), (20, 20)]

def optimizedBody696_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody696_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (20, 20)]

def optimizedBody696_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody696_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody696_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody696_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody696_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody696_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 10 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody696_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (18, 18), (8, 8), (6, 6), (4, 4)]

def optimizedBody696_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody696_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody696_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody696_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody696_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody696_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody696_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody696_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 10 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody696_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 15230403791020821917#64)

def optimizedBody696_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody696_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 754611498739239741#64)

def optimizedBody696_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody696_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7381016538464732716#64)

def optimizedBody696_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody696_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1011752739694698287#64)

def optimizedBody696_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody696_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 10 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody696_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 10)]

def optimizedBody696_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody696_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody696_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_163 optimizedBody696_5

def optimizedBody696_165 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody696_162, 696, 30)) (some 69) ([]) (some (2, optimizedBody696_164, 696, 31))

def optimizedBody696_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody696_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0)]

def optimizedBody696_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody696_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody696_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_169 optimizedBody696_5

def optimizedBody696_171 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody696_168, 696, 32)) (some 68) ([2]) (some (2, optimizedBody696_170, 696, 33))

def optimizedBody696_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 0)]

def optimizedBody696_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody696_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody696_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_174 optimizedBody696_5

def optimizedBody696_176 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody696_173, 696, 34)) (some 68) ([2]) (some (2, optimizedBody696_175, 696, 35))

def optimizedBody696_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0)]

def optimizedBody696_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (48, 48), (6, 50), (52, 52)]

def optimizedBody696_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (6, 50), (52, 52)]

def optimizedBody696_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_179 optimizedBody696_5

def optimizedBody696_181 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody696_178, 696, 36)) (some 68) ([2]) (some (2, optimizedBody696_180, 696, 37))

def optimizedBody696_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4321547867055981224#64)

def optimizedBody696_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody696_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 147241268046680925#64)

def optimizedBody696_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody696_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2789960110459671136#64)

def optimizedBody696_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody696_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2671978398120978541#64)

def optimizedBody696_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody696_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody696_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 4100506350182530919#64)

def optimizedBody696_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody696_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 7345568344173317438#64)

def optimizedBody696_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody696_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 15513160039642431658#64)

def optimizedBody696_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody696_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 90557763186888013#64)

def optimizedBody696_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody696_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 6)]

def optimizedBody696_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody696_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (6, 6), (44, 44), (46, 0), (48, 48), (50, 2), (52, 52), (54, 4)]

def optimizedBody696_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (48, 48), (50, 50), (0, 52), (54, 54)]

def optimizedBody696_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (50, 50), (0, 52), (54, 54)]

def optimizedBody696_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_203 optimizedBody696_5

def optimizedBody696_205 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody696_202, 696, 38)) (some 666) ([2, 4, 6]) (some (2, optimizedBody696_204, 696, 39))

def optimizedBody696_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 6), (6, 6), (44, 44), (46, 6), (48, 48), (50, 50), (52, 0), (54, 54)]

def optimizedBody696_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (46, 48), (48, 50), (4, 52), (52, 54)]

def optimizedBody696_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (46, 48), (48, 50), (4, 52), (52, 54)]

def optimizedBody696_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_208 optimizedBody696_5

def optimizedBody696_210 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody696_207, 696, 40)) (some 666) ([2, 4, 6]) (some (2, optimizedBody696_209, 696, 41))

def optimizedBody696_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 4), (52, 52)]

def optimizedBody696_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (6, 50), (8, 52)]

def optimizedBody696_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (6, 50), (8, 52)]

def optimizedBody696_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_213 optimizedBody696_5

def optimizedBody696_215 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody696_212, 696, 42)) (some 666) ([2, 4, 6]) (some (2, optimizedBody696_214, 696, 43))

def optimizedBody696_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody696_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 6)]

def optimizedBody696_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody696_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody696_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_219 optimizedBody696_5

def optimizedBody696_221 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody696_218, 696, 44)) (some 672) ([2, 4, 6, 8]) (some (2, optimizedBody696_220, 696, 45))

def optimizedBody696_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody696_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 64#64)

def optimizedBody696_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody696_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody696_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody696_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_226 optimizedBody696_5

def optimizedBody696_228 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody696_225, 696, 46)) (some 79) ([2, 4, 6]) (some (2, optimizedBody696_227, 696, 47))

def optimizedBody696_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4)]

def optimizedBody696_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody696_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody696_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_231 optimizedBody696_5

def optimizedBody696_233 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody696_230, 696, 48)) (some 70) ([2]) (some (2, optimizedBody696_232, 696, 49))

def optimizedBody696_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody696_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_62 optimizedBody696_234

def optimizedBody696_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_61 optimizedBody696_235

def optimizedBody696_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_236

def optimizedBody696_238 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody696_237 optimizedBody696_67

def optimizedBody696_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_84 optimizedBody696_235

def optimizedBody696_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_239

def optimizedBody696_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_240

def optimizedBody696_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_238 optimizedBody696_241

def optimizedBody696_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_84 optimizedBody696_242

def optimizedBody696_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_9 optimizedBody696_243

def optimizedBody696_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_244

def optimizedBody696_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_233 optimizedBody696_245

def optimizedBody696_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_229 optimizedBody696_246

def optimizedBody696_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_247

def optimizedBody696_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_228 optimizedBody696_248

def optimizedBody696_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_224 optimizedBody696_249

def optimizedBody696_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_223 optimizedBody696_250

def optimizedBody696_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_222 optimizedBody696_251

def optimizedBody696_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_252

def optimizedBody696_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_221 optimizedBody696_253

def optimizedBody696_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_217 optimizedBody696_254

def optimizedBody696_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_78 optimizedBody696_255

def optimizedBody696_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_216 optimizedBody696_256

def optimizedBody696_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_257

def optimizedBody696_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_215 optimizedBody696_258

def optimizedBody696_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_211 optimizedBody696_259

def optimizedBody696_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_260

def optimizedBody696_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_210 optimizedBody696_261

def optimizedBody696_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_206 optimizedBody696_262

def optimizedBody696_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_263

def optimizedBody696_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_205 optimizedBody696_264

def optimizedBody696_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_201 optimizedBody696_265

def optimizedBody696_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_200 optimizedBody696_266

def optimizedBody696_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_199 optimizedBody696_267

def optimizedBody696_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_198 optimizedBody696_268

def optimizedBody696_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_62 optimizedBody696_269

def optimizedBody696_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_197 optimizedBody696_270

def optimizedBody696_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_196 optimizedBody696_271

def optimizedBody696_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_62 optimizedBody696_272

def optimizedBody696_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_195 optimizedBody696_273

def optimizedBody696_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_194 optimizedBody696_274

def optimizedBody696_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_62 optimizedBody696_275

def optimizedBody696_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_193 optimizedBody696_276

def optimizedBody696_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_192 optimizedBody696_277

def optimizedBody696_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_62 optimizedBody696_278

def optimizedBody696_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_191 optimizedBody696_279

def optimizedBody696_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_190 optimizedBody696_280

def optimizedBody696_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_58 optimizedBody696_281

def optimizedBody696_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_189 optimizedBody696_282

def optimizedBody696_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_58 optimizedBody696_283

def optimizedBody696_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_188 optimizedBody696_284

def optimizedBody696_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_187 optimizedBody696_285

def optimizedBody696_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_58 optimizedBody696_286

def optimizedBody696_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_186 optimizedBody696_287

def optimizedBody696_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_185 optimizedBody696_288

def optimizedBody696_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_58 optimizedBody696_289

def optimizedBody696_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_184 optimizedBody696_290

def optimizedBody696_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_183 optimizedBody696_291

def optimizedBody696_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_58 optimizedBody696_292

def optimizedBody696_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_182 optimizedBody696_293

def optimizedBody696_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_58 optimizedBody696_294

def optimizedBody696_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_295

def optimizedBody696_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_181 optimizedBody696_296

def optimizedBody696_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_177 optimizedBody696_297

def optimizedBody696_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_166 optimizedBody696_298

def optimizedBody696_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_299

def optimizedBody696_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_176 optimizedBody696_300

def optimizedBody696_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_172 optimizedBody696_301

def optimizedBody696_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_166 optimizedBody696_302

def optimizedBody696_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_303

def optimizedBody696_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_171 optimizedBody696_304

def optimizedBody696_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_167 optimizedBody696_305

def optimizedBody696_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_166 optimizedBody696_306

def optimizedBody696_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_307

def optimizedBody696_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_165 optimizedBody696_308

def optimizedBody696_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_161 optimizedBody696_309

def optimizedBody696_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_159 optimizedBody696_310

def optimizedBody696_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_9 optimizedBody696_311

def optimizedBody696_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_84 optimizedBody696_312

def optimizedBody696_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_157 optimizedBody696_313

def optimizedBody696_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_9 optimizedBody696_314

def optimizedBody696_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_84 optimizedBody696_315

def optimizedBody696_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_155 optimizedBody696_316

def optimizedBody696_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_9 optimizedBody696_317

def optimizedBody696_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_84 optimizedBody696_318

def optimizedBody696_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_153 optimizedBody696_319

def optimizedBody696_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_9 optimizedBody696_320

def optimizedBody696_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_84 optimizedBody696_321

def optimizedBody696_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_160 optimizedBody696_322

def optimizedBody696_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_76 optimizedBody696_323

def optimizedBody696_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_159 optimizedBody696_324

def optimizedBody696_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_9 optimizedBody696_325

def optimizedBody696_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_158 optimizedBody696_326

def optimizedBody696_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_157 optimizedBody696_327

def optimizedBody696_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_9 optimizedBody696_328

def optimizedBody696_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_156 optimizedBody696_329

def optimizedBody696_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_155 optimizedBody696_330

def optimizedBody696_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_9 optimizedBody696_331

def optimizedBody696_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_154 optimizedBody696_332

def optimizedBody696_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_153 optimizedBody696_333

def optimizedBody696_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_9 optimizedBody696_334

def optimizedBody696_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_152 optimizedBody696_335

def optimizedBody696_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_151 optimizedBody696_336

def optimizedBody696_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_76 optimizedBody696_337

def optimizedBody696_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_150 optimizedBody696_338

def optimizedBody696_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_149 optimizedBody696_339

def optimizedBody696_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_148 optimizedBody696_340

def optimizedBody696_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_147 optimizedBody696_341

def optimizedBody696_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_146 optimizedBody696_342

def optimizedBody696_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_145 optimizedBody696_343

def optimizedBody696_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_144 optimizedBody696_344

def optimizedBody696_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_143 optimizedBody696_345

def optimizedBody696_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_142 optimizedBody696_346

def optimizedBody696_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_76 optimizedBody696_347

def optimizedBody696_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_141 optimizedBody696_348

def optimizedBody696_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_140 optimizedBody696_349

def optimizedBody696_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_139 optimizedBody696_350

def optimizedBody696_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_138 optimizedBody696_351

def optimizedBody696_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_137 optimizedBody696_352

def optimizedBody696_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_136 optimizedBody696_353

def optimizedBody696_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_135 optimizedBody696_354

def optimizedBody696_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_134 optimizedBody696_355

def optimizedBody696_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_133 optimizedBody696_356

def optimizedBody696_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_76 optimizedBody696_357

def optimizedBody696_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_132 optimizedBody696_358

def optimizedBody696_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_131 optimizedBody696_359

def optimizedBody696_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_130 optimizedBody696_360

def optimizedBody696_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_129 optimizedBody696_361

def optimizedBody696_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_128 optimizedBody696_362

def optimizedBody696_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_127 optimizedBody696_363

def optimizedBody696_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_126 optimizedBody696_364

def optimizedBody696_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_125 optimizedBody696_365

def optimizedBody696_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_124 optimizedBody696_366

def optimizedBody696_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_76 optimizedBody696_367

def optimizedBody696_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_123 optimizedBody696_368

def optimizedBody696_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_122 optimizedBody696_369

def optimizedBody696_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_121 optimizedBody696_370

def optimizedBody696_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_120 optimizedBody696_371

def optimizedBody696_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_119 optimizedBody696_372

def optimizedBody696_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_118 optimizedBody696_373

def optimizedBody696_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_117 optimizedBody696_374

def optimizedBody696_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_116 optimizedBody696_375

def optimizedBody696_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_376

def optimizedBody696_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_115 optimizedBody696_377

def optimizedBody696_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_111 optimizedBody696_378

def optimizedBody696_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_379

def optimizedBody696_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_110 optimizedBody696_380

def optimizedBody696_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_106 optimizedBody696_381

def optimizedBody696_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_382

def optimizedBody696_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_105 optimizedBody696_383

def optimizedBody696_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_101 optimizedBody696_384

def optimizedBody696_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_385

def optimizedBody696_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_100 optimizedBody696_386

def optimizedBody696_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_96 optimizedBody696_387

def optimizedBody696_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_388

def optimizedBody696_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_389

def optimizedBody696_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_95 optimizedBody696_390

def optimizedBody696_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_61 optimizedBody696_391

def optimizedBody696_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_76 optimizedBody696_392

def optimizedBody696_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_393

def optimizedBody696_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_75 optimizedBody696_394

def optimizedBody696_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_71 optimizedBody696_395

def optimizedBody696_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_70 optimizedBody696_396

def optimizedBody696_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_69 optimizedBody696_397

def optimizedBody696_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_398

def optimizedBody696_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_399

def optimizedBody696_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_68 optimizedBody696_400

def optimizedBody696_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_60 optimizedBody696_401

def optimizedBody696_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_59 optimizedBody696_402

def optimizedBody696_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_58 optimizedBody696_403

def optimizedBody696_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_57 optimizedBody696_404

def optimizedBody696_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_56 optimizedBody696_405

def optimizedBody696_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_55 optimizedBody696_406

def optimizedBody696_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_54 optimizedBody696_407

def optimizedBody696_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_408

def optimizedBody696_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_53 optimizedBody696_409

def optimizedBody696_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_49 optimizedBody696_410

def optimizedBody696_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_32 optimizedBody696_411

def optimizedBody696_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_31 optimizedBody696_412

def optimizedBody696_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_30 optimizedBody696_413

def optimizedBody696_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_29 optimizedBody696_414

def optimizedBody696_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_38 optimizedBody696_415

def optimizedBody696_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_416

def optimizedBody696_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_48 optimizedBody696_417

def optimizedBody696_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_44 optimizedBody696_418

def optimizedBody696_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_32 optimizedBody696_419

def optimizedBody696_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_31 optimizedBody696_420

def optimizedBody696_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_30 optimizedBody696_421

def optimizedBody696_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_29 optimizedBody696_422

def optimizedBody696_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_38 optimizedBody696_423

def optimizedBody696_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_424

def optimizedBody696_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_43 optimizedBody696_425

def optimizedBody696_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_39 optimizedBody696_426

def optimizedBody696_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_32 optimizedBody696_427

def optimizedBody696_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_31 optimizedBody696_428

def optimizedBody696_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_30 optimizedBody696_429

def optimizedBody696_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_29 optimizedBody696_430

def optimizedBody696_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_38 optimizedBody696_431

def optimizedBody696_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_432

def optimizedBody696_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_37 optimizedBody696_433

def optimizedBody696_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_33 optimizedBody696_434

def optimizedBody696_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_32 optimizedBody696_435

def optimizedBody696_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_31 optimizedBody696_436

def optimizedBody696_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_30 optimizedBody696_437

def optimizedBody696_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_29 optimizedBody696_438

def optimizedBody696_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_28 optimizedBody696_439

def optimizedBody696_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_440

def optimizedBody696_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_27 optimizedBody696_441

def optimizedBody696_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_23 optimizedBody696_442

def optimizedBody696_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_1 optimizedBody696_443

def optimizedBody696_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_22 optimizedBody696_444

def optimizedBody696_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_9 optimizedBody696_445

def optimizedBody696_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_446

def optimizedBody696_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_21 optimizedBody696_447

def optimizedBody696_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_17 optimizedBody696_448

def optimizedBody696_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_1 optimizedBody696_449

def optimizedBody696_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_16 optimizedBody696_450

def optimizedBody696_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_9 optimizedBody696_451

def optimizedBody696_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_452

def optimizedBody696_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_15 optimizedBody696_453

def optimizedBody696_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_11 optimizedBody696_454

def optimizedBody696_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_1 optimizedBody696_455

def optimizedBody696_457 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_10 optimizedBody696_456

def optimizedBody696_458 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_9 optimizedBody696_457

def optimizedBody696_459 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_8 optimizedBody696_458

def optimizedBody696_460 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_7 optimizedBody696_459

def optimizedBody696_461 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_2 optimizedBody696_460

def optimizedBody696_462 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_1 optimizedBody696_461

def optimizedBody696_463 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody696_0 optimizedBody696_462

def optimized696 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(696, 3, optimizedBody696_463)
end InitECandidate.Proofs.StackAnalysis
