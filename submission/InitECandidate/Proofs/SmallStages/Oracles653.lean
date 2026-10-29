import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source653
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles653
def optimizedBody653_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 0), (46, 32), (64, 16), (90, 48), (48, 8), (74, 40), (60, 24), (50, 4), (56, 36), (80, 20), (68, 12),
    (52, 44), (54, 28), (58, 2), (62, 34), (66, 18), (78, 50), (70, 10), (92, 42), (72, 26), (76, 6), (88, 38),
    (82, 22), (84, 14), (86, 46), (94, 30)]

def optimizedBody653_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (64, 64), (90, 90), (6, 48), (74, 74), (60, 60), (0, 50), (56, 56), (80, 80), (68, 68), (48, 52),
    (52, 54), (54, 58), (58, 62), (62, 66), (78, 78), (8, 70), (92, 92), (70, 72), (4, 76), (88, 88), (76, 82),
    (82, 84), (84, 86), (94, 94)]

def optimizedBody653_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (64, 64), (90, 90), (6, 48), (74, 74), (60, 60), (0, 50), (56, 56), (80, 80), (68, 68),
    (48, 52), (52, 54), (54, 58), (58, 62), (62, 66), (78, 78), (8, 70), (92, 92), (70, 72), (4, 76), (88, 88),
    (76, 82), (82, 84), (84, 86), (94, 94)]

def optimizedBody653_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody653_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_2 optimizedBody653_3

def optimizedBody653_5 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody653_1, 653, 2)) (some 649) ([2]) (some (2, optimizedBody653_4, 653, 3))

def optimizedBody653_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody653_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (64, 64), (90, 90), (50, 6), (74, 74), (60, 60), (86, 0),
    (56, 56), (80, 80), (68, 68), (48, 48), (52, 52), (54, 54), (58, 58), (62, 62), (78, 78), (66, 8), (92, 92),
    (70, 70), (72, 4), (88, 88), (76, 76), (82, 82), (84, 84), (94, 94)]

def optimizedBody653_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (6, 46), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80), (68, 68),
    (48, 48), (0, 52), (46, 54), (8, 58), (54, 62), (78, 78), (66, 66), (92, 92), (52, 70), (62, 72), (88, 88),
    (58, 76), (82, 82), (70, 84), (4, 94)]

def optimizedBody653_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80), (68, 68),
    (48, 48), (0, 52), (46, 54), (8, 58), (54, 62), (78, 78), (66, 66), (92, 92), (52, 70), (62, 72), (88, 88),
    (58, 76), (82, 82), (70, 84), (4, 94)]

def optimizedBody653_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_9 optimizedBody653_3

def optimizedBody653_11 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody653_8, 653, 4)) (some 138) ([2, 4, 6, 8]) (some (2, optimizedBody653_10, 653, 5))

def optimizedBody653_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (76, 6), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86),
    (56, 56), (80, 80), (68, 68), (48, 48), (72, 0), (46, 46), (84, 8), (54, 54), (78, 78), (66, 66), (92, 92),
    (52, 52), (62, 62), (88, 88), (58, 58), (82, 82), (70, 70), (96, 4), (94, 10)]

def optimizedBody653_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (76, 76), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80), (68, 68),
    (48, 48), (72, 72), (46, 46), (84, 84), (54, 54), (78, 78), (66, 66), (92, 92), (52, 52), (62, 62), (88, 88),
    (58, 58), (82, 82), (70, 70), (96, 96), (0, 94)]

def optimizedBody653_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (76, 76), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80), (68, 68),
    (48, 48), (72, 72), (46, 46), (84, 84), (54, 54), (78, 78), (66, 66), (92, 92), (52, 52), (62, 62), (88, 88),
    (58, 58), (82, 82), (70, 70), (96, 96), (0, 94)]

def optimizedBody653_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_14 optimizedBody653_3

def optimizedBody653_16 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody653_13, 653, 6)) (some 138) ([2, 4, 6, 8]) (some (2, optimizedBody653_15, 653, 7))

def optimizedBody653_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (76, 76), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80),
    (68, 68), (94, 4), (48, 48), (72, 72), (46, 46), (84, 84), (54, 54), (78, 78), (66, 66), (92, 92), (52, 52),
    (62, 62), (88, 88), (58, 58), (82, 82), (70, 70), (96, 96), (98, 0)]

def optimizedBody653_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(28, 2), (44, 44), (76, 76), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80),
    (68, 68), (94, 94), (48, 48), (72, 72), (0, 46), (84, 84), (54, 54), (78, 78), (66, 66), (92, 92), (52, 52),
    (62, 62), (88, 88), (58, 58), (82, 82), (70, 70), (96, 96), (46, 98)]

def optimizedBody653_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (76, 76), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80), (68, 68),
    (94, 94), (48, 48), (72, 72), (0, 46), (84, 84), (54, 54), (78, 78), (66, 66), (92, 92), (52, 52), (62, 62),
    (88, 88), (58, 58), (82, 82), (70, 70), (96, 96), (46, 98)]

def optimizedBody653_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_19 optimizedBody653_3

def optimizedBody653_21 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody653_18, 653, 8)) (some 93) ([2, 4]) (some (2, optimizedBody653_20, 653, 9))

def optimizedBody653_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (76, 76), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 86), (56, 56), (80, 80), (68, 68),
    (94, 94), (48, 48), (72, 72), (2, 0), (84, 84), (54, 54), (78, 78), (66, 66), (92, 92), (52, 52), (28, 28),
    (62, 62), (88, 88), (58, 58), (82, 82), (70, 70), (96, 96), (46, 46)]

def optimizedBody653_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody653_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28)]

def optimizedBody653_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 28 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody653_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 76), (64, 64), (48, 90), (50, 50), (74, 74), (56, 60), (86, 86), (60, 56), (62, 80), (54, 68),
    (66, 94), (70, 48), (72, 72), (68, 2), (76, 84), (52, 54), (78, 78), (58, 66), (82, 92), (84, 52), (80, 0),
    (88, 62), (90, 88), (92, 58), (94, 82), (96, 70), (98, 96), (100, 46)]

def optimizedBody653_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (64, 64), (48, 48), (6, 50), (50, 74), (56, 56), (0, 86), (60, 60), (62, 62), (54, 54), (66, 66),
    (70, 70), (74, 72), (68, 68), (76, 76), (72, 52), (78, 78), (8, 58), (82, 82), (84, 84), (10, 80), (4, 88),
    (90, 90), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody653_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (64, 64), (48, 48), (6, 50), (50, 74), (56, 56), (0, 86), (60, 60), (62, 62), (54, 54),
    (66, 66), (70, 70), (74, 72), (68, 68), (76, 76), (72, 52), (78, 78), (8, 58), (82, 82), (84, 84), (10, 80),
    (4, 88), (90, 90), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody653_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_28 optimizedBody653_3

def optimizedBody653_30 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody653_27, 653, 10)) (some 651) ([2]) (some (2, optimizedBody653_29, 653, 11))

def optimizedBody653_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (64, 64), (48, 48), (52, 6), (50, 50), (56, 56),
    (58, 0), (60, 60), (62, 62), (54, 54), (66, 66), (70, 70), (74, 74), (68, 68), (76, 76), (72, 72), (78, 78),
    (80, 8), (82, 82), (84, 84), (86, 10), (88, 4), (90, 90), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody653_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (64, 64), (48, 48), (52, 52), (50, 50), (56, 56), (58, 58), (60, 60), (62, 62), (54, 54),
    (66, 66), (70, 70), (74, 74), (68, 68), (76, 76), (72, 72), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody653_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (64, 64), (48, 48), (52, 52), (50, 50), (56, 56), (58, 58), (60, 60), (62, 62), (54, 54),
    (66, 66), (70, 70), (74, 74), (68, 68), (76, 76), (72, 72), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody653_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_33 optimizedBody653_3

def optimizedBody653_35 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody653_32, 653, 12)) (some 104) ([2, 4, 6, 8, 10]) (some (2, optimizedBody653_34, 653, 13))

def optimizedBody653_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody653_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody653_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 68), (4, 54), (6, 94), (8, 64), (10, 72), (12, 62), (14, 92), (16, 56), (18, 84), (44, 44), (46, 46), (64, 64),
    (48, 48), (52, 52), (50, 50), (56, 56), (58, 58), (54, 60), (62, 62), (60, 54), (66, 66), (68, 70), (70, 74),
    (72, 68), (74, 76), (76, 72), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86), (88, 88), (90, 90), (92, 92),
    (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody653_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (6, 46), (64, 64), (46, 48), (52, 52), (48, 50), (56, 56), (58, 58), (50, 54), (62, 62), (54, 60),
    (66, 66), (60, 68), (0, 70), (68, 72), (8, 74), (72, 76), (78, 78), (80, 80), (82, 82), (84, 84), (10, 86),
    (88, 88), (90, 90), (92, 92), (94, 94), (96, 96), (4, 98), (100, 100)]

def optimizedBody653_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (64, 64), (46, 48), (52, 52), (48, 50), (56, 56), (58, 58), (50, 54), (62, 62), (54, 60),
    (66, 66), (60, 68), (0, 70), (68, 72), (8, 74), (72, 76), (78, 78), (80, 80), (82, 82), (84, 84), (10, 86),
    (88, 88), (90, 90), (92, 92), (94, 94), (96, 96), (4, 98), (100, 100)]

def optimizedBody653_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_40 optimizedBody653_3

def optimizedBody653_42 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody653_39, 653, 14)) (some 652) ([2, 4, 6, 8, 10, 12, 14, 16, 18]) (some (2, optimizedBody653_41, 653, 15))

def optimizedBody653_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (6, 6), (64, 64), (46, 46), (52, 52), (48, 48), (56, 56), (58, 58), (50, 50), (62, 62), (54, 54), (66, 66),
    (60, 60), (0, 0), (68, 68), (8, 8), (72, 72), (78, 78), (80, 80), (82, 82), (84, 84), (10, 10), (88, 88), (90, 90),
    (92, 92), (94, 94), (96, 96), (4, 4), (100, 100)]

def optimizedBody653_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_43

def optimizedBody653_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_42 optimizedBody653_44

def optimizedBody653_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_38 optimizedBody653_45

def optimizedBody653_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_46

def optimizedBody653_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (6, 46), (64, 64), (46, 48), (52, 52), (48, 50), (56, 56), (58, 58), (50, 60), (62, 62), (54, 54),
    (66, 66), (60, 70), (0, 74), (68, 68), (8, 76), (72, 72), (78, 78), (80, 80), (82, 82), (84, 84), (10, 86),
    (88, 88), (90, 90), (92, 92), (94, 94), (96, 96), (4, 98), (100, 100)]

def optimizedBody653_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_48

def optimizedBody653_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody653_47 optimizedBody653_49

def optimizedBody653_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (76, 6), (64, 64), (46, 46), (52, 52), (48, 48), (56, 56),
    (58, 58), (50, 50), (62, 62), (54, 54), (66, 66), (60, 60), (70, 0), (68, 68), (74, 8), (72, 72), (78, 78),
    (80, 80), (82, 82), (84, 84), (86, 10), (88, 88), (90, 90), (92, 92), (94, 94), (96, 96), (98, 4), (100, 100)]

def optimizedBody653_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (76, 76), (64, 64), (16, 46), (52, 52), (8, 48), (56, 56), (58, 58), (4, 50), (62, 62), (46, 54),
    (66, 66), (12, 60), (70, 70), (20, 68), (74, 74), (48, 72), (18, 78), (80, 80), (10, 82), (84, 84), (86, 86),
    (88, 88), (6, 90), (92, 92), (94, 94), (14, 96), (96, 98), (100, 100)]

def optimizedBody653_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (76, 76), (64, 64), (16, 46), (52, 52), (8, 48), (56, 56), (58, 58), (4, 50), (62, 62), (46, 54),
    (66, 66), (12, 60), (70, 70), (20, 68), (74, 74), (48, 72), (18, 78), (80, 80), (10, 82), (84, 84), (86, 86),
    (88, 88), (6, 90), (92, 92), (94, 94), (14, 96), (96, 98), (100, 100)]

def optimizedBody653_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_53 optimizedBody653_3

def optimizedBody653_55 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody653_52, 653, 16)) (some 104) ([2, 4, 6, 8, 10]) (some (2, optimizedBody653_54, 653, 17))

def optimizedBody653_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 20), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (44, 44), (46, 76), (48, 64),
    (50, 16), (52, 52), (54, 8), (56, 56), (58, 58), (60, 4), (62, 62), (64, 46), (66, 66), (68, 12), (70, 70),
    (72, 20), (74, 74), (76, 48), (78, 18), (80, 80), (82, 10), (84, 84), (86, 86), (88, 88), (90, 6), (92, 92),
    (94, 94), (96, 14), (98, 96), (100, 100)]

def optimizedBody653_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(42, 44), (40, 46), (38, 48), (36, 50), (34, 52), (0, 54), (4, 56), (6, 58), (8, 60), (10, 62), (12, 64), (14, 66),
    (16, 68), (18, 70), (20, 72), (22, 74), (24, 76), (26, 78), (28, 80), (30, 82), (32, 84), (44, 86), (46, 88),
    (48, 90), (50, 92), (52, 94), (70, 96), (96, 98), (54, 100)]

def optimizedBody653_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (42, 44), (40, 46), (38, 48), (36, 50), (34, 52), (0, 54), (4, 56), (6, 58), (8, 60), (10, 62), (12, 64),
    (14, 66), (16, 68), (18, 70), (20, 72), (22, 74), (24, 76), (26, 78), (28, 80), (30, 82), (32, 84), (44, 86),
    (46, 88), (48, 90), (50, 92), (52, 94), (70, 96), (96, 98), (54, 100)]

def optimizedBody653_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_58 optimizedBody653_3

def optimizedBody653_60 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody653_57, 653, 18)) (some 652) ([2, 4, 6, 8, 10, 12, 14, 16, 18]) (some (2, optimizedBody653_59, 653, 19))

def optimizedBody653_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 42), (76, 40), (64, 38), (90, 36), (0, 34), (2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14),
    (16, 16), (18, 18), (20, 20), (22, 22), (24, 24), (26, 26), (28, 28), (30, 30), (32, 32), (34, 44), (36, 46),
    (38, 48), (40, 50), (42, 52), (70, 70), (96, 96), (46, 54)]

def optimizedBody653_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_61

def optimizedBody653_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_60 optimizedBody653_62

def optimizedBody653_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_56 optimizedBody653_63

def optimizedBody653_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_64

def optimizedBody653_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (76, 76), (64, 64), (90, 16), (0, 52), (2, 8), (4, 56), (6, 58), (8, 4), (10, 62), (12, 46), (14, 66),
    (16, 12), (18, 70), (20, 20), (22, 74), (24, 48), (26, 18), (28, 80), (30, 10), (32, 84), (34, 86), (36, 88),
    (38, 6), (40, 92), (42, 94), (70, 14), (96, 96), (46, 100)]

def optimizedBody653_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_66

def optimizedBody653_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody653_65 optimizedBody653_67

def optimizedBody653_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (76, 76), (64, 64), (90, 90), (50, 0), (74, 2), (60, 4), (86, 6), (56, 8), (80, 10), (68, 12), (94, 14),
    (48, 16), (72, 18), (2, 20), (84, 22), (54, 24), (78, 26), (66, 28), (92, 30), (52, 32), (28, 34), (62, 36),
    (88, 38), (58, 40), (82, 42), (70, 70), (96, 96), (46, 46)]

def optimizedBody653_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody653_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_69 optimizedBody653_70

def optimizedBody653_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_71

def optimizedBody653_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_68 optimizedBody653_72

def optimizedBody653_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_37 optimizedBody653_73

def optimizedBody653_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_36 optimizedBody653_74

def optimizedBody653_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_75

def optimizedBody653_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_55 optimizedBody653_76

def optimizedBody653_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_51 optimizedBody653_77

def optimizedBody653_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_78

def optimizedBody653_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_50 optimizedBody653_79

def optimizedBody653_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_37 optimizedBody653_80

def optimizedBody653_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_36 optimizedBody653_81

def optimizedBody653_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_82

def optimizedBody653_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_35 optimizedBody653_83

def optimizedBody653_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_31 optimizedBody653_84

def optimizedBody653_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_85

def optimizedBody653_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_30 optimizedBody653_86

def optimizedBody653_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_26 optimizedBody653_87

def optimizedBody653_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_25 optimizedBody653_88

def optimizedBody653_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_24 optimizedBody653_89

def optimizedBody653_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_90

def optimizedBody653_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody653_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_92

def optimizedBody653_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 28) optimizedBody653_91 optimizedBody653_93

def optimizedBody653_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (76, 76), (64, 64), (90, 90), (50, 50), (74, 74), (60, 60), (86, 0), (56, 2), (80, 4), (68, 6), (94, 8),
    (48, 10), (72, 12), (2, 14), (84, 16), (54, 18), (78, 20), (66, 22), (92, 24), (52, 26), (28, 28), (62, 30),
    (88, 32), (58, 34), (82, 36), (70, 38), (96, 40), (46, 42)]

def optimizedBody653_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_95

def optimizedBody653_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_94 optimizedBody653_96

def optimizedBody653_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_24 optimizedBody653_97

def optimizedBody653_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_23 optimizedBody653_98

def optimizedBody653_100 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln) optimizedBody653_99 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody653_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody653_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody653_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody653_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_102 optimizedBody653_103

def optimizedBody653_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_101 optimizedBody653_104

def optimizedBody653_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_105

def optimizedBody653_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_100 optimizedBody653_106

def optimizedBody653_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_22 optimizedBody653_107

def optimizedBody653_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_108

def optimizedBody653_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_109

def optimizedBody653_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_21 optimizedBody653_110

def optimizedBody653_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_17 optimizedBody653_111

def optimizedBody653_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_112

def optimizedBody653_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_16 optimizedBody653_113

def optimizedBody653_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_12 optimizedBody653_114

def optimizedBody653_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_115

def optimizedBody653_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_11 optimizedBody653_116

def optimizedBody653_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_7 optimizedBody653_117

def optimizedBody653_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_118

def optimizedBody653_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_5 optimizedBody653_119

def optimizedBody653_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_0 optimizedBody653_120

def oracle653 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 15 (Flapjack.Spt.ls 23)) 7
          (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 19)))
        3
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 21)) 5
          (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 9 (Flapjack.Spt.ls 17))))
      1
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 22)) 6
          (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 18)))
        2
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 20)) 4
          (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 8 (Flapjack.Spt.ls 16)))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 8)) (Flapjack.Spt.ls 46))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 16)) (Flapjack.Spt.ls 48)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 48
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    2 (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 45)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 17))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)) 40 Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bs Flapjack.Spt.ln 43
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 47 (Flapjack.Spt.ls 46))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 16))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 46)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 8))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15)) 33 Flapjack.Spt.ln) 26
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 46))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.ls 27)) 38 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 45 (Flapjack.Spt.ls 36)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 12))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 50)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 12)) (Flapjack.Spt.ls 44)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 44 Flapjack.Spt.ln) 39
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 2)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 21))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 30))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 37 Flapjack.Spt.ln) 22
                    (Flapjack.Spt.bs Flapjack.Spt.ln 45
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 43 (Flapjack.Spt.ls 42))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 20))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 42)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 19)) 23 Flapjack.Spt.ln) 28
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 50)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    42 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 50)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 30))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 10)) (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 14)) (Flapjack.Spt.ls 41)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 41 Flapjack.Spt.ln) 46
                    (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 47)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 10)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 19))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 43 Flapjack.Spt.ln) 32
                    (Flapjack.Spt.bs Flapjack.Spt.ln 37
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 40 (Flapjack.Spt.ls 44))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 18))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 44)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 6)) (Flapjack.Spt.ls 39)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 17)) 27 Flapjack.Spt.ln) 34
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 39))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 39))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 35)) (Flapjack.Spt.ls 14))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 38 (Flapjack.Spt.ls 34)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 14))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 10)) (Flapjack.Spt.ls 14)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)) 26 Flapjack.Spt.ln) 29
                    (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 31))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 34))))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 45)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 37 (Flapjack.Spt.ls 40))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 40)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 21)) 24 Flapjack.Spt.ln) 30
                    (Flapjack.Spt.bs Flapjack.Spt.ln 40
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 36 (Flapjack.Spt.ls 48)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))) 38
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 27)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 9))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 15)) (Flapjack.Spt.ls 35)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 35 Flapjack.Spt.ln) 35
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 46)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 37)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 18))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 31))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 28 Flapjack.Spt.ln) 45
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 45))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 17))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 7))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 32))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 16)) 39 Flapjack.Spt.ln) 24
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 33))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 36))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 48)) 22 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 4)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 13))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 48)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 11)) (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 31 Flapjack.Spt.ln) 31
                    (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 50)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 32
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 30 (Flapjack.Spt.ls 41))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 21))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 20)) 36 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                    41 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 42))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 14))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 49)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 33))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 11)) (Flapjack.Spt.ls 5))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 13)) (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 29 Flapjack.Spt.ln) 4
                    (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 48)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 35)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 20))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 33))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 30 Flapjack.Spt.ln) 23
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 28 (Flapjack.Spt.ls 5))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 19))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 43)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 18)) 42 Flapjack.Spt.ln) 40
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 2
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    47 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 40))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 (Flapjack.Spt.ls 0)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 15))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 47)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 9))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)) 46 Flapjack.Spt.ln) 27
                    (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 32)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.ls 39))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 9)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 29))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 34 Flapjack.Spt.ln) 37
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 24 (Flapjack.Spt.ls 47)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)))
                    44 (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 33 (Flapjack.Spt.ls 31)) 31
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 40))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 39)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 43 Flapjack.Spt.ln) 23 (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 35)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 40 (Flapjack.Spt.ls 36)) 30
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 43)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 47)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 41
                    (Flapjack.Spt.ls 47)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 27 (Flapjack.Spt.ls 39)) 34
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 47)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 35)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 45 Flapjack.Spt.ln) (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 31)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 47 Flapjack.Spt.ln) 37 (Flapjack.Spt.ls 28)) 32
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 39)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 47))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 43)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))) 46
                    (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 49)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 31 (Flapjack.Spt.ls 46)) 27
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 49)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 37)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 37 Flapjack.Spt.ln) (Flapjack.Spt.ls 32))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 33)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 36 Flapjack.Spt.ln) 43 (Flapjack.Spt.ls 34)) 24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 41)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 49))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 45)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 38
                    (Flapjack.Spt.ls 41)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 24 (Flapjack.Spt.ls 42)) 28
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 45)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 33)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 38 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 49)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))) 43
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 40 Flapjack.Spt.ln) 45 (Flapjack.Spt.ls 30)) 22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 37)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 45))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 41)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 39
                    (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 35))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 39 (Flapjack.Spt.ls 26)) 29
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 50)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 38)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 30 Flapjack.Spt.ln) 22 (Flapjack.Spt.ls 45))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 23 Flapjack.Spt.ln) 28 (Flapjack.Spt.ls 24)) 37
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 42)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 50))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 46)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 44
                    (Flapjack.Spt.ls 42)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 26 (Flapjack.Spt.ls 27)) 40
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 46)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 34)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 32 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.ls 50)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25))) 47
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 34 Flapjack.Spt.ln) 25 (Flapjack.Spt.ls 43)) 23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 36)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 46))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 42)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 35
                    (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 48)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 29 (Flapjack.Spt.ls 33)) 26
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 48)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 36)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 25 Flapjack.Spt.ln) (Flapjack.Spt.ls 38))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 27)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 24 Flapjack.Spt.ln) 30 (Flapjack.Spt.ls 40)) 45
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 40)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 48))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 44)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))) 36
                    (Flapjack.Spt.ls 38)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 34 (Flapjack.Spt.ls 23)) 25
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 44)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 22 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 48)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 42
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 28 Flapjack.Spt.ln) 32 (Flapjack.Spt.ls 37))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 44))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 40)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 33
                    (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 41)))))))))))
def optimized653 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(653, 26, optimizedBody653_121)
end InitECandidate.Proofs.SmallStages.Oracles653
