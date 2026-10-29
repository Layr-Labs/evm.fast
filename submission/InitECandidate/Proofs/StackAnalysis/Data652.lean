import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody652_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 0), (46, 32), (64, 16), (90, 48), (48, 8), (74, 40), (60, 24), (50, 4), (56, 36), (80, 20), (68, 12),
    (52, 44), (54, 28), (58, 2), (62, 34), (66, 18), (78, 50), (70, 10), (92, 42), (72, 26), (76, 6), (88, 38),
    (82, 22), (84, 14), (86, 46), (94, 30)]

def optimizedBody652_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (64, 64), (90, 90), (6, 48), (74, 74), (60, 60), (0, 50), (56, 56), (80, 80), (68, 68), (48, 52),
    (52, 54), (54, 58), (58, 62), (62, 66), (78, 78), (8, 70), (92, 92), (70, 72), (4, 76), (88, 88), (76, 82),
    (82, 84), (84, 86), (94, 94)]

def optimizedBody652_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (64, 64), (90, 90), (6, 48), (74, 74), (60, 60), (0, 50), (56, 56), (80, 80), (68, 68),
    (48, 52), (52, 54), (54, 58), (58, 62), (62, 66), (78, 78), (8, 70), (92, 92), (70, 72), (4, 76), (88, 88),
    (76, 82), (82, 84), (84, 86), (94, 94)]

def optimizedBody652_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody652_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_2 optimizedBody652_3

def optimizedBody652_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody652_1, 652, 2)) (some 648) ([2]) (some (2, optimizedBody652_4, 652, 3))

def optimizedBody652_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody652_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (64, 64), (90, 90), (50, 6), (74, 74), (60, 60), (86, 0),
    (56, 56), (80, 80), (68, 68), (48, 48), (52, 52), (54, 54), (58, 58), (62, 62), (78, 78), (66, 8), (92, 92),
    (70, 70), (72, 4), (88, 88), (76, 76), (82, 82), (84, 84), (94, 94)]

def optimizedBody652_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (6, 46), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80), (68, 68),
    (48, 48), (0, 52), (46, 54), (8, 58), (54, 62), (78, 78), (66, 66), (92, 92), (52, 70), (62, 72), (88, 88),
    (58, 76), (82, 82), (70, 84), (4, 94)]

def optimizedBody652_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80), (68, 68),
    (48, 48), (0, 52), (46, 54), (8, 58), (54, 62), (78, 78), (66, 66), (92, 92), (52, 70), (62, 72), (88, 88),
    (58, 76), (82, 82), (70, 84), (4, 94)]

def optimizedBody652_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_9 optimizedBody652_3

def optimizedBody652_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody652_8, 652, 4)) (some 138) ([2, 4, 6, 8]) (some (2, optimizedBody652_10, 652, 5))

def optimizedBody652_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (76, 6), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86),
    (56, 56), (80, 80), (68, 68), (48, 48), (72, 0), (46, 46), (84, 8), (54, 54), (78, 78), (66, 66), (92, 92),
    (52, 52), (62, 62), (88, 88), (58, 58), (82, 82), (70, 70), (96, 4), (94, 10)]

def optimizedBody652_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (76, 76), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80), (68, 68),
    (48, 48), (72, 72), (46, 46), (84, 84), (54, 54), (78, 78), (66, 66), (92, 92), (52, 52), (62, 62), (88, 88),
    (58, 58), (82, 82), (70, 70), (96, 96), (0, 94)]

def optimizedBody652_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (76, 76), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80), (68, 68),
    (48, 48), (72, 72), (46, 46), (84, 84), (54, 54), (78, 78), (66, 66), (92, 92), (52, 52), (62, 62), (88, 88),
    (58, 58), (82, 82), (70, 70), (96, 96), (0, 94)]

def optimizedBody652_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_14 optimizedBody652_3

def optimizedBody652_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody652_13, 652, 6)) (some 138) ([2, 4, 6, 8]) (some (2, optimizedBody652_15, 652, 7))

def optimizedBody652_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (76, 76), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80),
    (68, 68), (94, 4), (48, 48), (72, 72), (46, 46), (84, 84), (54, 54), (78, 78), (66, 66), (92, 92), (52, 52),
    (62, 62), (88, 88), (58, 58), (82, 82), (70, 70), (96, 96), (98, 0)]

def optimizedBody652_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(28, 2), (44, 44), (76, 76), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80),
    (68, 68), (94, 94), (48, 48), (72, 72), (0, 46), (84, 84), (54, 54), (78, 78), (66, 66), (92, 92), (52, 52),
    (62, 62), (88, 88), (58, 58), (82, 82), (70, 70), (96, 96), (46, 98)]

def optimizedBody652_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (76, 76), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80), (68, 68),
    (94, 94), (48, 48), (72, 72), (0, 46), (84, 84), (54, 54), (78, 78), (66, 66), (92, 92), (52, 52), (62, 62),
    (88, 88), (58, 58), (82, 82), (70, 70), (96, 96), (46, 98)]

def optimizedBody652_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_19 optimizedBody652_3

def optimizedBody652_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody652_18, 652, 8)) (some 93) ([2, 4]) (some (2, optimizedBody652_20, 652, 9))

def optimizedBody652_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (76, 76), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80), (68, 68),
    (94, 94), (48, 48), (72, 72), (2, 0), (84, 84), (54, 54), (78, 78), (66, 66), (92, 92), (52, 52), (28, 28),
    (62, 62), (88, 88), (58, 58), (82, 82), (70, 70), (96, 96), (46, 46)]

def optimizedBody652_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody652_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28)]

def optimizedBody652_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 28 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody652_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 76), (64, 64), (48, 90), (50, 50), (74, 74), (56, 60), (86, 86), (60, 56), (62, 80), (54, 68),
    (66, 94), (70, 48), (72, 72), (68, 2), (76, 84), (52, 54), (78, 78), (58, 66), (82, 92), (84, 52), (80, 0),
    (88, 62), (90, 88), (92, 58), (94, 82), (96, 70), (98, 96), (100, 46)]

def optimizedBody652_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (64, 64), (48, 48), (6, 50), (50, 74), (56, 56), (0, 86), (60, 60), (62, 62), (54, 54), (66, 66),
    (70, 70), (74, 72), (68, 68), (76, 76), (72, 52), (78, 78), (8, 58), (82, 82), (84, 84), (10, 80), (4, 88),
    (90, 90), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody652_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (64, 64), (48, 48), (6, 50), (50, 74), (56, 56), (0, 86), (60, 60), (62, 62), (54, 54),
    (66, 66), (70, 70), (74, 72), (68, 68), (76, 76), (72, 52), (78, 78), (8, 58), (82, 82), (84, 84), (10, 80),
    (4, 88), (90, 90), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody652_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_28 optimizedBody652_3

def optimizedBody652_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody652_27, 652, 10)) (some 650) ([2]) (some (2, optimizedBody652_29, 652, 11))

def optimizedBody652_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (64, 64), (48, 48), (52, 6), (50, 50), (56, 56),
    (58, 0), (60, 60), (62, 62), (54, 54), (66, 66), (70, 70), (74, 74), (68, 68), (76, 76), (72, 72), (78, 78),
    (80, 8), (82, 82), (84, 84), (86, 10), (88, 4), (90, 90), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody652_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (64, 64), (48, 48), (52, 52), (50, 50), (56, 56), (58, 58), (60, 60), (62, 62), (54, 54),
    (66, 66), (70, 70), (74, 74), (68, 68), (76, 76), (72, 72), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody652_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (64, 64), (48, 48), (52, 52), (50, 50), (56, 56), (58, 58), (60, 60), (62, 62), (54, 54),
    (66, 66), (70, 70), (74, 74), (68, 68), (76, 76), (72, 72), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody652_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_33 optimizedBody652_3

def optimizedBody652_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody652_32, 652, 12)) (some 104) ([2, 4, 6, 8, 10]) (some (2, optimizedBody652_34, 652, 13))

def optimizedBody652_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody652_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody652_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 68), (4, 54), (6, 94), (8, 64), (10, 72), (12, 62), (14, 92), (16, 56), (18, 84), (44, 44), (46, 46), (64, 64),
    (48, 48), (52, 52), (50, 50), (56, 56), (58, 58), (54, 60), (62, 62), (60, 54), (66, 66), (68, 70), (70, 74),
    (72, 68), (74, 76), (76, 72), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86), (88, 88), (90, 90), (92, 92),
    (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody652_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (6, 46), (64, 64), (46, 48), (52, 52), (48, 50), (56, 56), (58, 58), (50, 54), (62, 62), (54, 60),
    (66, 66), (60, 68), (0, 70), (68, 72), (8, 74), (72, 76), (78, 78), (80, 80), (82, 82), (84, 84), (10, 86),
    (88, 88), (90, 90), (92, 92), (94, 94), (96, 96), (4, 98), (100, 100)]

def optimizedBody652_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (64, 64), (46, 48), (52, 52), (48, 50), (56, 56), (58, 58), (50, 54), (62, 62), (54, 60),
    (66, 66), (60, 68), (0, 70), (68, 72), (8, 74), (72, 76), (78, 78), (80, 80), (82, 82), (84, 84), (10, 86),
    (88, 88), (90, 90), (92, 92), (94, 94), (96, 96), (4, 98), (100, 100)]

def optimizedBody652_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_40 optimizedBody652_3

def optimizedBody652_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody652_39, 652, 14)) (some 651) ([2, 4, 6, 8, 10, 12, 14, 16, 18]) (some (2, optimizedBody652_41, 652, 15))

def optimizedBody652_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (6, 6), (64, 64), (46, 46), (52, 52), (48, 48), (56, 56), (58, 58), (50, 50), (62, 62), (54, 54), (66, 66),
    (60, 60), (0, 0), (68, 68), (8, 8), (72, 72), (78, 78), (80, 80), (82, 82), (84, 84), (10, 10), (88, 88), (90, 90),
    (92, 92), (94, 94), (96, 96), (4, 4), (100, 100)]

def optimizedBody652_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_43

def optimizedBody652_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_42 optimizedBody652_44

def optimizedBody652_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_38 optimizedBody652_45

def optimizedBody652_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_46

def optimizedBody652_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (6, 46), (64, 64), (46, 48), (52, 52), (48, 50), (56, 56), (58, 58), (50, 60), (62, 62), (54, 54),
    (66, 66), (60, 70), (0, 74), (68, 68), (8, 76), (72, 72), (78, 78), (80, 80), (82, 82), (84, 84), (10, 86),
    (88, 88), (90, 90), (92, 92), (94, 94), (96, 96), (4, 98), (100, 100)]

def optimizedBody652_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_48

def optimizedBody652_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody652_47 optimizedBody652_49

def optimizedBody652_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (76, 6), (64, 64), (46, 46), (52, 52), (48, 48), (56, 56),
    (58, 58), (50, 50), (62, 62), (54, 54), (66, 66), (60, 60), (70, 0), (68, 68), (74, 8), (72, 72), (78, 78),
    (80, 80), (82, 82), (84, 84), (86, 10), (88, 88), (90, 90), (92, 92), (94, 94), (96, 96), (98, 4), (100, 100)]

def optimizedBody652_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (76, 76), (64, 64), (16, 46), (52, 52), (8, 48), (56, 56), (58, 58), (4, 50), (62, 62), (46, 54),
    (66, 66), (12, 60), (70, 70), (20, 68), (74, 74), (48, 72), (18, 78), (80, 80), (10, 82), (84, 84), (86, 86),
    (88, 88), (6, 90), (92, 92), (94, 94), (14, 96), (96, 98), (100, 100)]

def optimizedBody652_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (76, 76), (64, 64), (16, 46), (52, 52), (8, 48), (56, 56), (58, 58), (4, 50), (62, 62), (46, 54),
    (66, 66), (12, 60), (70, 70), (20, 68), (74, 74), (48, 72), (18, 78), (80, 80), (10, 82), (84, 84), (86, 86),
    (88, 88), (6, 90), (92, 92), (94, 94), (14, 96), (96, 98), (100, 100)]

def optimizedBody652_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_53 optimizedBody652_3

def optimizedBody652_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody652_52, 652, 16)) (some 104) ([2, 4, 6, 8, 10]) (some (2, optimizedBody652_54, 652, 17))

def optimizedBody652_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 20), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (44, 44), (46, 76), (48, 64),
    (50, 16), (52, 52), (54, 8), (56, 56), (58, 58), (60, 4), (62, 62), (64, 46), (66, 66), (68, 12), (70, 70),
    (72, 20), (74, 74), (76, 48), (78, 18), (80, 80), (82, 10), (84, 84), (86, 86), (88, 88), (90, 6), (92, 92),
    (94, 94), (96, 14), (98, 96), (100, 100)]

def optimizedBody652_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(42, 44), (40, 46), (38, 48), (36, 50), (34, 52), (0, 54), (4, 56), (6, 58), (8, 60), (10, 62), (12, 64), (14, 66),
    (16, 68), (18, 70), (20, 72), (22, 74), (24, 76), (26, 78), (28, 80), (30, 82), (32, 84), (44, 86), (46, 88),
    (48, 90), (50, 92), (52, 94), (70, 96), (96, 98), (54, 100)]

def optimizedBody652_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (42, 44), (40, 46), (38, 48), (36, 50), (34, 52), (0, 54), (4, 56), (6, 58), (8, 60), (10, 62), (12, 64),
    (14, 66), (16, 68), (18, 70), (20, 72), (22, 74), (24, 76), (26, 78), (28, 80), (30, 82), (32, 84), (44, 86),
    (46, 88), (48, 90), (50, 92), (52, 94), (70, 96), (96, 98), (54, 100)]

def optimizedBody652_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_58 optimizedBody652_3

def optimizedBody652_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody652_57, 652, 18)) (some 651) ([2, 4, 6, 8, 10, 12, 14, 16, 18]) (some (2, optimizedBody652_59, 652, 19))

def optimizedBody652_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 42), (76, 40), (64, 38), (90, 36), (0, 34), (2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14),
    (16, 16), (18, 18), (20, 20), (22, 22), (24, 24), (26, 26), (28, 28), (30, 30), (32, 32), (34, 44), (36, 46),
    (38, 48), (40, 50), (42, 52), (70, 70), (96, 96), (46, 54)]

def optimizedBody652_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_61

def optimizedBody652_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_60 optimizedBody652_62

def optimizedBody652_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_56 optimizedBody652_63

def optimizedBody652_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_64

def optimizedBody652_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (76, 76), (64, 64), (90, 16), (0, 52), (2, 8), (4, 56), (6, 58), (8, 4), (10, 62), (12, 46), (14, 66),
    (16, 12), (18, 70), (20, 20), (22, 74), (24, 48), (26, 18), (28, 80), (30, 10), (32, 84), (34, 86), (36, 88),
    (38, 6), (40, 92), (42, 94), (70, 14), (96, 96), (46, 100)]

def optimizedBody652_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_66

def optimizedBody652_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody652_65 optimizedBody652_67

def optimizedBody652_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (76, 76), (64, 64), (90, 90), (50, 0), (74, 2), (60, 4), (86, 6), (56, 8), (80, 10), (68, 12), (94, 14),
    (48, 16), (72, 18), (2, 20), (84, 22), (54, 24), (78, 26), (66, 28), (92, 30), (52, 32), (28, 34), (62, 36),
    (88, 38), (58, 40), (82, 42), (70, 70), (96, 96), (46, 46)]

def optimizedBody652_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody652_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_69 optimizedBody652_70

def optimizedBody652_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_71

def optimizedBody652_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_68 optimizedBody652_72

def optimizedBody652_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_37 optimizedBody652_73

def optimizedBody652_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_36 optimizedBody652_74

def optimizedBody652_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_75

def optimizedBody652_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_55 optimizedBody652_76

def optimizedBody652_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_51 optimizedBody652_77

def optimizedBody652_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_78

def optimizedBody652_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_50 optimizedBody652_79

def optimizedBody652_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_37 optimizedBody652_80

def optimizedBody652_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_36 optimizedBody652_81

def optimizedBody652_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_82

def optimizedBody652_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_35 optimizedBody652_83

def optimizedBody652_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_31 optimizedBody652_84

def optimizedBody652_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_85

def optimizedBody652_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_30 optimizedBody652_86

def optimizedBody652_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_26 optimizedBody652_87

def optimizedBody652_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_25 optimizedBody652_88

def optimizedBody652_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_24 optimizedBody652_89

def optimizedBody652_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_90

def optimizedBody652_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody652_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_92

def optimizedBody652_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 28) optimizedBody652_91 optimizedBody652_93

def optimizedBody652_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (76, 76), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 0), (56, 2), (80, 4), (68, 6), (94, 8),
    (48, 10), (72, 12), (2, 14), (84, 16), (54, 18), (78, 20), (66, 22), (92, 24), (52, 26), (28, 28), (62, 30),
    (88, 32), (58, 34), (82, 36), (70, 38), (96, 40), (46, 42)]

def optimizedBody652_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_95

def optimizedBody652_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_94 optimizedBody652_96

def optimizedBody652_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_24 optimizedBody652_97

def optimizedBody652_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_23 optimizedBody652_98

def optimizedBody652_100 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln) optimizedBody652_99 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody652_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody652_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody652_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody652_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_102 optimizedBody652_103

def optimizedBody652_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_101 optimizedBody652_104

def optimizedBody652_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_105

def optimizedBody652_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_100 optimizedBody652_106

def optimizedBody652_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_22 optimizedBody652_107

def optimizedBody652_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_108

def optimizedBody652_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_109

def optimizedBody652_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_21 optimizedBody652_110

def optimizedBody652_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_17 optimizedBody652_111

def optimizedBody652_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_112

def optimizedBody652_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_16 optimizedBody652_113

def optimizedBody652_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_12 optimizedBody652_114

def optimizedBody652_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_115

def optimizedBody652_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_11 optimizedBody652_116

def optimizedBody652_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_7 optimizedBody652_117

def optimizedBody652_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_6 optimizedBody652_118

def optimizedBody652_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_5 optimizedBody652_119

def optimizedBody652_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody652_0 optimizedBody652_120

def optimized652 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(652, 26, optimizedBody652_121)
end InitECandidate.Proofs.StackAnalysis
