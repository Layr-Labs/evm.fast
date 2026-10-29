import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source625
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles625
def optimizedBody625_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody625_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (0, 2), (6, 6), (44, 44)]

def optimizedBody625_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody625_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody625_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_2 optimizedBody625_3

def optimizedBody625_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_1, 625, 2)) (some 477) ([]) (some (2, optimizedBody625_4, 625, 3))

def optimizedBody625_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody625_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (68, 4), (70, 8), (82, 0), (84, 6)]

def optimizedBody625_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (8, 8), (6, 6), (44, 44), (68, 68), (70, 70), (82, 82), (84, 84)]

def optimizedBody625_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (68, 68), (70, 70), (82, 82), (84, 84)]

def optimizedBody625_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_9 optimizedBody625_3

def optimizedBody625_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_8, 625, 4)) (some 477) ([]) (some (2, optimizedBody625_10, 625, 5))

def optimizedBody625_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (68, 68), (70, 70), (82, 82), (84, 84)]

def optimizedBody625_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (68, 68), (70, 70), (82, 82), (84, 84)]

def optimizedBody625_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_13, 625, 6)) (some 468) ([2, 4, 6, 8]) (some (2, optimizedBody625_10, 625, 7))

def optimizedBody625_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (68, 68), (70, 70), (56, 0), (82, 82), (84, 84)]

def optimizedBody625_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (6, 6), (8, 8), (4, 4), (44, 44), (68, 68), (70, 70), (56, 56), (82, 82), (84, 84)]

def optimizedBody625_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (68, 68), (70, 70), (56, 56), (82, 82), (84, 84)]

def optimizedBody625_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_17 optimizedBody625_3

def optimizedBody625_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_16, 625, 8)) (some 477) ([]) (some (2, optimizedBody625_18, 625, 9))

def optimizedBody625_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (68, 68), (70, 70), (56, 56), (58, 0), (60, 6), (62, 8), (82, 82), (84, 84), (66, 4)]

def optimizedBody625_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (8, 8), (0, 2), (4, 4), (44, 44), (68, 68), (70, 70), (56, 56), (58, 58), (60, 60), (62, 62), (82, 82),
    (84, 84), (66, 66)]

def optimizedBody625_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (68, 68), (70, 70), (56, 56), (58, 58), (60, 60), (62, 62), (82, 82), (84, 84), (66, 66)]

def optimizedBody625_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_22 optimizedBody625_3

def optimizedBody625_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_21, 625, 10)) (some 477) ([]) (some (2, optimizedBody625_23, 625, 11))

def optimizedBody625_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 6), (48, 8), (68, 68), (70, 70), (56, 56), (58, 58), (60, 60), (62, 62), (64, 0), (82, 82), (84, 84),
    (66, 66), (72, 4)]

def optimizedBody625_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (6, 6), (8, 8), (4, 4), (44, 44), (46, 46), (48, 48), (68, 68), (70, 70), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (82, 82), (84, 84), (66, 66), (72, 72)]

def optimizedBody625_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (68, 68), (70, 70), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (82, 82),
    (84, 84), (66, 66), (72, 72)]

def optimizedBody625_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_27 optimizedBody625_3

def optimizedBody625_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_26, 625, 12)) (some 477) ([]) (some (2, optimizedBody625_28, 625, 13))

def optimizedBody625_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 0), (52, 6), (54, 8), (68, 68), (70, 70), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (82, 82), (84, 84), (66, 66), (72, 72), (74, 4)]

def optimizedBody625_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(30, 6), (32, 8), (26, 2), (28, 4), (44, 44), (14, 46), (16, 48), (18, 50), (22, 52), (24, 54), (68, 68), (70, 70),
    (46, 56), (0, 58), (6, 60), (8, 62), (10, 64), (82, 82), (84, 84), (4, 66), (12, 72), (20, 74)]

def optimizedBody625_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (14, 46), (16, 48), (18, 50), (22, 52), (24, 54), (68, 68), (70, 70), (46, 56), (0, 58), (6, 60),
    (8, 62), (10, 64), (82, 82), (84, 84), (4, 66), (12, 72), (20, 74)]

def optimizedBody625_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_32 optimizedBody625_3

def optimizedBody625_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_31, 625, 14)) (some 477) ([]) (some (2, optimizedBody625_33, 625, 15))

def optimizedBody625_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody625_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody625_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody625_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody625_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody625_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (26, 26), (28, 28), (30, 30), (32, 32), (44, 44), (50, 30), (52, 32), (54, 2), (56, 14), (58, 16), (60, 18),
    (62, 22), (64, 24), (66, 26), (68, 68), (70, 70), (46, 46), (74, 0), (76, 6), (78, 8), (80, 10), (82, 82), (84, 84),
    (86, 4), (88, 12), (90, 20), (92, 28)]

def optimizedBody625_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (6, 2), (44, 44), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (0, 46), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86), (88, 88),
    (90, 90), (92, 92)]

def optimizedBody625_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68),
    (70, 70), (0, 46), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86), (88, 88), (90, 90),
    (92, 92)]

def optimizedBody625_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_42 optimizedBody625_3

def optimizedBody625_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_41, 625, 16)) (some 483) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]) (some (2, optimizedBody625_43, 625, 17))

def optimizedBody625_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (48, 4), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 0), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86), (88, 88),
    (90, 90), (92, 92), (46, 6)]

def optimizedBody625_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86), (88, 88),
    (90, 90), (92, 92), (4, 46)]

def optimizedBody625_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86), (88, 88),
    (90, 90), (92, 92), (4, 46)]

def optimizedBody625_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_47 optimizedBody625_3

def optimizedBody625_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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
  Flapjack.Spt.ln)), optimizedBody625_46, 625, 18)) (some 495) ([2]) (some (2, optimizedBody625_48, 625, 19))

def optimizedBody625_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 100#64)

def optimizedBody625_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody625_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody625_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3000#64)

def optimizedBody625_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody625_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_53 optimizedBody625_54

def optimizedBody625_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_55

def optimizedBody625_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_54

def optimizedBody625_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 6) optimizedBody625_56 optimizedBody625_57

def optimizedBody625_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84),
    (86, 86), (88, 88), (90, 90), (92, 92)]

def optimizedBody625_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (92, 92)]

def optimizedBody625_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (92, 92)]

def optimizedBody625_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_61 optimizedBody625_3

def optimizedBody625_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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
  Flapjack.Spt.ln)), optimizedBody625_60, 625, 20)) (some 465) ([2, 4]) (some (2, optimizedBody625_62, 625, 21))

def optimizedBody625_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (92, 92)]

def optimizedBody625_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (4, 46), (46, 48), (48, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (64, 66), (66, 68), (70, 70), (0, 72), (72, 74), (74, 76), (76, 78), (78, 80), (80, 82), (82, 84), (84, 86),
    (86, 88), (90, 90), (92, 92)]

def optimizedBody625_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (46, 48), (48, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (64, 66), (66, 68), (70, 70), (0, 72), (72, 74), (74, 76), (76, 78), (78, 80), (80, 82), (82, 84), (84, 86),
    (86, 88), (90, 90), (92, 92)]

def optimizedBody625_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_66 optimizedBody625_3

def optimizedBody625_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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
  Flapjack.Spt.ln)), optimizedBody625_65, 625, 22)) (some 472) ([2]) (some (2, optimizedBody625_67, 625, 23))

def optimizedBody625_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody625_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody625_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (68, 0), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (90, 90), (92, 92)]

def optimizedBody625_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (0, 68), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (90, 90), (92, 92)]

def optimizedBody625_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (0, 68), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (90, 90), (92, 92)]

def optimizedBody625_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_73 optimizedBody625_3

def optimizedBody625_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_72, 625, 24)) (some 496) ([2]) (some (2, optimizedBody625_74, 625, 25))

def optimizedBody625_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (0, 0), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (90, 90), (92, 92)]

def optimizedBody625_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_76

def optimizedBody625_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_75 optimizedBody625_77

def optimizedBody625_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_71 optimizedBody625_78

def optimizedBody625_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_79

def optimizedBody625_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody625_80 optimizedBody625_77

def optimizedBody625_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86), (90, 90),
    (92, 92)]

def optimizedBody625_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84),
    (86, 86), (90, 90), (92, 92)]

def optimizedBody625_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86), (90, 90),
    (92, 92)]

def optimizedBody625_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_84 optimizedBody625_3

def optimizedBody625_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_83, 625, 26)) (some 593) ([2]) (some (2, optimizedBody625_85, 625, 27))

def optimizedBody625_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (68, 4)]

def optimizedBody625_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 0), (90, 90), (92, 92)]

def optimizedBody625_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (0, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (92, 92)]

def optimizedBody625_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (0, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (92, 92)]

def optimizedBody625_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_90 optimizedBody625_3

def optimizedBody625_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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
  Flapjack.Spt.ln)), optimizedBody625_89, 625, 28)) (some 472) ([2]) (some (2, optimizedBody625_91, 625, 29))

def optimizedBody625_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 0), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (92, 92)]

def optimizedBody625_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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
  Flapjack.Spt.ln)), optimizedBody625_89, 625, 30)) (some 496) ([2]) (some (2, optimizedBody625_91, 625, 31))

def optimizedBody625_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (0, 0), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (92, 92)]

def optimizedBody625_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_95

def optimizedBody625_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_94 optimizedBody625_96

def optimizedBody625_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_93 optimizedBody625_97

def optimizedBody625_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_98

def optimizedBody625_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_92 optimizedBody625_99

def optimizedBody625_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_88 optimizedBody625_100

def optimizedBody625_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_101

def optimizedBody625_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (0, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 0), (90, 90), (92, 92)]

def optimizedBody625_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_103

def optimizedBody625_105 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody625_102 optimizedBody625_104

def optimizedBody625_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (0, 66), (66, 68), (8, 70), (68, 72), (70, 74), (72, 76), (74, 78), (10, 80), (6, 82), (76, 84), (78, 86),
    (80, 88), (82, 90), (88, 92)]

def optimizedBody625_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (0, 66), (66, 68), (8, 70), (68, 72), (70, 74), (72, 76), (74, 78), (10, 80), (6, 82), (76, 84), (78, 86), (80, 88),
    (82, 90), (88, 92)]

def optimizedBody625_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_107 optimizedBody625_3

def optimizedBody625_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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
  Flapjack.Spt.ln)), optimizedBody625_106, 625, 32)) (some 567) ([2]) (some (2, optimizedBody625_108, 625, 33))

def optimizedBody625_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 0), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80),
    (82, 82), (84, 12), (86, 4), (88, 88)]

def optimizedBody625_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84),
    (86, 86), (88, 88)]

def optimizedBody625_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88)]

def optimizedBody625_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_112 optimizedBody625_3

def optimizedBody625_114 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_111, 625, 34)) (some 464) ([2, 4, 6, 8]) (some (2, optimizedBody625_113, 625, 35))

def optimizedBody625_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody625_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody625_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody625_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody625_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody625_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody625_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody625_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody625_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody625_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody625_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72),
    (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86), (88, 88)]

def optimizedBody625_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84),
    (86, 86), (88, 88)]

def optimizedBody625_127 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
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
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_126, 625, 36)) (some 622) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody625_113, 625, 37))

def optimizedBody625_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 4)]

def optimizedBody625_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (6, 46), (46, 48), (48, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (64, 66), (66, 68), (68, 70), (70, 72), (72, 74), (74, 76), (76, 78), (78, 80), (80, 82), (82, 84), (84, 86),
    (86, 88), (0, 90)]

def optimizedBody625_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (46, 48), (48, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (64, 66), (66, 68), (68, 70), (70, 72), (72, 74), (74, 76), (76, 78), (78, 80), (80, 82), (82, 84), (84, 86),
    (86, 88), (0, 90)]

def optimizedBody625_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_130 optimizedBody625_3

def optimizedBody625_132 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_129, 625, 38)) (some 472) ([2]) (some (2, optimizedBody625_131, 625, 39))

def optimizedBody625_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 184#64)))

def optimizedBody625_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 184#64))

def optimizedBody625_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody625_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody625_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody625_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 0)]

def optimizedBody625_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (10, 66), (6, 68), (8, 70), (66, 72), (4, 74), (68, 76), (70, 78), (72, 80), (74, 82), (76, 84), (78, 86), (80, 88)]

def optimizedBody625_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (10, 66), (6, 68), (8, 70), (66, 72), (4, 74), (68, 76), (70, 78), (72, 80), (74, 82), (76, 84), (78, 86), (80, 88)]

def optimizedBody625_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_140 optimizedBody625_3

def optimizedBody625_142 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_139, 625, 40)) (some 484) ([2]) (some (2, optimizedBody625_141, 625, 41))

def optimizedBody625_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody625_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody625_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody625_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody625_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody625_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80),
    (82, 2)]

def optimizedBody625_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (8, 54), (52, 56), (54, 58), (56, 60), (58, 62), (60, 64),
    (0, 66), (4, 68), (62, 70), (64, 72), (66, 74), (68, 76), (70, 78), (72, 80), (74, 82)]

def optimizedBody625_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (8, 54), (52, 56), (54, 58), (56, 60), (58, 62), (60, 64),
    (0, 66), (4, 68), (62, 70), (64, 72), (66, 74), (68, 76), (70, 78), (72, 80), (74, 82)]

def optimizedBody625_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_150 optimizedBody625_3

def optimizedBody625_152 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody625_149, 625, 42)) (some 464) ([2, 4, 6, 8]) (some (2, optimizedBody625_151, 625, 43))

def optimizedBody625_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 10)]

def optimizedBody625_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (6, 54), (8, 56), (52, 58), (54, 60), (58, 62), (4, 64),
    (60, 66), (62, 68), (64, 70), (66, 72), (68, 74), (70, 76)]

def optimizedBody625_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (6, 54), (8, 56), (52, 58), (54, 60), (58, 62), (4, 64),
    (60, 66), (62, 68), (64, 70), (66, 72), (68, 74), (70, 76)]

def optimizedBody625_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_155 optimizedBody625_3

def optimizedBody625_157 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
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
  Flapjack.Spt.ln)), optimizedBody625_154, 625, 44)) (some 464) ([2, 4, 6, 8]) (some (2, optimizedBody625_156, 625, 45))

def optimizedBody625_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 10), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody625_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (6, 46), (8, 48), (46, 50), (0, 52), (48, 54), (50, 56), (52, 58), (54, 60), (56, 62), (4, 64),
    (58, 66), (60, 68), (62, 70)]

def optimizedBody625_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (8, 48), (46, 50), (0, 52), (48, 54), (50, 56), (52, 58), (54, 60), (56, 62), (4, 64),
    (58, 66), (60, 68), (62, 70)]

def optimizedBody625_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_160 optimizedBody625_3

def optimizedBody625_162 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody625_159, 625, 46)) (some 464) ([2, 4, 6, 8]) (some (2, optimizedBody625_161, 625, 47))

def optimizedBody625_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 10)]

def optimizedBody625_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(30, 2), (44, 44), (0, 46), (18, 48), (26, 50), (36, 52), (32, 54), (34, 56), (40, 58), (4, 60), (24, 62), (28, 64)]

def optimizedBody625_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (18, 48), (26, 50), (36, 52), (32, 54), (34, 56), (40, 58), (4, 60), (24, 62), (28, 64)]

def optimizedBody625_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_165 optimizedBody625_3

def optimizedBody625_167 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_164, 625, 48)) (some 464) ([2, 4, 6, 8]) (some (2, optimizedBody625_166, 625, 49))

def optimizedBody625_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (40, 40)]

def optimizedBody625_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody625_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody625_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody625_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody625_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody625_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody625_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (34, 34), (32, 32), (30, 30), (28, 28), (26, 26), (24, 24), (18, 18)]

def optimizedBody625_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 0#64)

def optimizedBody625_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def optimizedBody625_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def optimizedBody625_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 40), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (26, 26), (28, 28), (30, 30), (32, 32), (34, 34), (36, 36), (38, 38), (44, 44)]

def optimizedBody625_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody625_181 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_180, 625, 50)) (some 621) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38]) (some (2, optimizedBody625_4, 625, 51))

def optimizedBody625_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody625_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody625_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody625_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_184 optimizedBody625_3

def optimizedBody625_186 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_183, 625, 52)) (some 492) ([2]) (some (2, optimizedBody625_185, 625, 53))

def optimizedBody625_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_144

def optimizedBody625_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_186 optimizedBody625_187

def optimizedBody625_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_2 optimizedBody625_188

def optimizedBody625_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_182 optimizedBody625_189

def optimizedBody625_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_190

def optimizedBody625_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody625_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_192

def optimizedBody625_194 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody625_191 optimizedBody625_193

def optimizedBody625_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody625_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody625_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_195 optimizedBody625_196

def optimizedBody625_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_70 optimizedBody625_197

def optimizedBody625_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_198

def optimizedBody625_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_194 optimizedBody625_199

def optimizedBody625_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_70 optimizedBody625_200

def optimizedBody625_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_51 optimizedBody625_201

def optimizedBody625_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_202

def optimizedBody625_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_181 optimizedBody625_203

def optimizedBody625_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_179 optimizedBody625_204

def optimizedBody625_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_178 optimizedBody625_205

def optimizedBody625_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_177 optimizedBody625_206

def optimizedBody625_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_176 optimizedBody625_207

def optimizedBody625_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_175 optimizedBody625_208

def optimizedBody625_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_174 optimizedBody625_209

def optimizedBody625_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_51 optimizedBody625_210

def optimizedBody625_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_173 optimizedBody625_211

def optimizedBody625_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_51 optimizedBody625_212

def optimizedBody625_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_172 optimizedBody625_213

def optimizedBody625_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_51 optimizedBody625_214

def optimizedBody625_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_171 optimizedBody625_215

def optimizedBody625_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_51 optimizedBody625_216

def optimizedBody625_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_170 optimizedBody625_217

def optimizedBody625_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_51 optimizedBody625_218

def optimizedBody625_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_169 optimizedBody625_219

def optimizedBody625_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_168 optimizedBody625_220

def optimizedBody625_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_221

def optimizedBody625_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_167 optimizedBody625_222

def optimizedBody625_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_163 optimizedBody625_223

def optimizedBody625_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_224

def optimizedBody625_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_162 optimizedBody625_225

def optimizedBody625_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_158 optimizedBody625_226

def optimizedBody625_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_227

def optimizedBody625_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_157 optimizedBody625_228

def optimizedBody625_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_153 optimizedBody625_229

def optimizedBody625_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_230

def optimizedBody625_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_152 optimizedBody625_231

def optimizedBody625_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_148 optimizedBody625_232

def optimizedBody625_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_147 optimizedBody625_233

def optimizedBody625_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_51 optimizedBody625_234

def optimizedBody625_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_146 optimizedBody625_235

def optimizedBody625_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_145 optimizedBody625_236

def optimizedBody625_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_144 optimizedBody625_237

def optimizedBody625_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_143 optimizedBody625_238

def optimizedBody625_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_119 optimizedBody625_239

def optimizedBody625_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_118 optimizedBody625_240

def optimizedBody625_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_117 optimizedBody625_241

def optimizedBody625_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_116 optimizedBody625_242

def optimizedBody625_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_243

def optimizedBody625_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_142 optimizedBody625_244

def optimizedBody625_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_138 optimizedBody625_245

def optimizedBody625_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_137 optimizedBody625_246

def optimizedBody625_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_136 optimizedBody625_247

def optimizedBody625_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_135 optimizedBody625_248

def optimizedBody625_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_51 optimizedBody625_249

def optimizedBody625_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_134 optimizedBody625_250

def optimizedBody625_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_54 optimizedBody625_251

def optimizedBody625_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_133 optimizedBody625_252

def optimizedBody625_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_38 optimizedBody625_253

def optimizedBody625_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_37 optimizedBody625_254

def optimizedBody625_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_36 optimizedBody625_255

def optimizedBody625_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_35 optimizedBody625_256

def optimizedBody625_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_257

def optimizedBody625_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_132 optimizedBody625_258

def optimizedBody625_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_128 optimizedBody625_259

def optimizedBody625_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_260

def optimizedBody625_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_127 optimizedBody625_261

def optimizedBody625_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_125 optimizedBody625_262

def optimizedBody625_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_70 optimizedBody625_263

def optimizedBody625_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_124 optimizedBody625_264

def optimizedBody625_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_52 optimizedBody625_265

def optimizedBody625_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_123 optimizedBody625_266

def optimizedBody625_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_122 optimizedBody625_267

def optimizedBody625_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_121 optimizedBody625_268

def optimizedBody625_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_120 optimizedBody625_269

def optimizedBody625_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_119 optimizedBody625_270

def optimizedBody625_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_118 optimizedBody625_271

def optimizedBody625_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_117 optimizedBody625_272

def optimizedBody625_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_116 optimizedBody625_273

def optimizedBody625_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_115 optimizedBody625_274

def optimizedBody625_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_275

def optimizedBody625_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_114 optimizedBody625_276

def optimizedBody625_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_110 optimizedBody625_277

def optimizedBody625_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_278

def optimizedBody625_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_109 optimizedBody625_279

def optimizedBody625_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_93 optimizedBody625_280

def optimizedBody625_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_281

def optimizedBody625_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_105 optimizedBody625_282

def optimizedBody625_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_70 optimizedBody625_283

def optimizedBody625_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_87 optimizedBody625_284

def optimizedBody625_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_285

def optimizedBody625_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_86 optimizedBody625_286

def optimizedBody625_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_82 optimizedBody625_287

def optimizedBody625_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_288

def optimizedBody625_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_81 optimizedBody625_289

def optimizedBody625_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_70 optimizedBody625_290

def optimizedBody625_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_69 optimizedBody625_291

def optimizedBody625_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_292

def optimizedBody625_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_68 optimizedBody625_293

def optimizedBody625_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_64 optimizedBody625_294

def optimizedBody625_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_295

def optimizedBody625_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_63 optimizedBody625_296

def optimizedBody625_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_59 optimizedBody625_297

def optimizedBody625_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_298

def optimizedBody625_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_58 optimizedBody625_299

def optimizedBody625_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_52 optimizedBody625_300

def optimizedBody625_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_51 optimizedBody625_301

def optimizedBody625_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_50 optimizedBody625_302

def optimizedBody625_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_303

def optimizedBody625_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_49 optimizedBody625_304

def optimizedBody625_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_45 optimizedBody625_305

def optimizedBody625_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_306

def optimizedBody625_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_44 optimizedBody625_307

def optimizedBody625_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_40 optimizedBody625_308

def optimizedBody625_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_39 optimizedBody625_309

def optimizedBody625_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_38 optimizedBody625_310

def optimizedBody625_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_37 optimizedBody625_311

def optimizedBody625_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_36 optimizedBody625_312

def optimizedBody625_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_35 optimizedBody625_313

def optimizedBody625_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_314

def optimizedBody625_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_34 optimizedBody625_315

def optimizedBody625_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_30 optimizedBody625_316

def optimizedBody625_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_317

def optimizedBody625_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_29 optimizedBody625_318

def optimizedBody625_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_25 optimizedBody625_319

def optimizedBody625_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_320

def optimizedBody625_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_24 optimizedBody625_321

def optimizedBody625_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_20 optimizedBody625_322

def optimizedBody625_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_323

def optimizedBody625_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_19 optimizedBody625_324

def optimizedBody625_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_15 optimizedBody625_325

def optimizedBody625_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_326

def optimizedBody625_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_14 optimizedBody625_327

def optimizedBody625_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_12 optimizedBody625_328

def optimizedBody625_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_329

def optimizedBody625_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_11 optimizedBody625_330

def optimizedBody625_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_7 optimizedBody625_331

def optimizedBody625_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_6 optimizedBody625_332

def optimizedBody625_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_5 optimizedBody625_333

def optimizedBody625_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_0 optimizedBody625_334

def oracle625 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 19))) 3
        (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 17))))
      1
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 18))) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 16)))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 19)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                    30
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 2))) 14
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 45
                        (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 22))))
                    22
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 0)) 24
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 38
                        (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 23))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 6)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 34))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 35)))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 26)) 35 (Flapjack.Spt.ls 29))
                    22
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 37))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 12)))
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 22))))
                  34
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))) 2
                      (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 25)))
                    0
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 2)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 46)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 0
                        (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 28))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 42)) 41
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 46
                        (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 31)))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 29)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 16)))
                      Flapjack.Spt.ln)
                    34
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 43
                        (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 18)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 33)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 34 Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 46))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 3
                        (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 4)))))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 22)) 9 (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 8)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln) 3
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 39)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 30)) 4 (Flapjack.Spt.ls 33)) 42
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 41)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 1 (Flapjack.Spt.ls 46)) 15
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 3))))
                    41
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 38)) 29
                      (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 27)))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln) 33
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 18)))
                      Flapjack.Spt.ln)
                    28
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 46
                        (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 17)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 35))) 22
                      (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 5)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                    3
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 2)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 24)) 12 (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 44) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 32)) 41
                      (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 43)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15))) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 26))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 46 (Flapjack.Spt.ls 40)) 31
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 44
                        (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 29)))))
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 14)))
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 43) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                  41
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 9))) 10
                      (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 31)))
                      (Flapjack.Spt.ls 32))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 30))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 0 (Flapjack.Spt.ls 44)) 33
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 5)))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 7 (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 31))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 43) (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 7)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 36))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 37)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 28)) 0 (Flapjack.Spt.ls 31))
                    35
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 39)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 14)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 2
                        (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 24))))
                    35
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 5))) 35
                      (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 41
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 10))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0))))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))
                    29
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 20)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 33)) 23
                      (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 22))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                    0
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 34)))))
                  4
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 25)) 34 (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 23))))
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 33)) 42
                      (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 29)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 45)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 20))) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 1
                        (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 27))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 41)) 32
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 45
                        (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 30)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 15)))
                      Flapjack.Spt.ln)
                    22
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 44) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                  42
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 13)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 32)))
                      (Flapjack.Spt.ls 33))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 0))))
                    2
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 45)) 36
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 8 (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 32))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln) 4
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 38)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 29)) 3 (Flapjack.Spt.ls 32))
                    41
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 25 (Flapjack.Spt.ls 40)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 2 (Flapjack.Spt.ls 45)) 16
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 25))))
                    28
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 37)) 28
                      (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 26)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                    4
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 42
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 17)))
                      Flapjack.Spt.ln)
                    35
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 44) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 45 (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 16)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 34)))
                      (Flapjack.Spt.ls 35))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                    4
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 2
                        (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 33)))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 23)) 11 (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 9)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 43) (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 40)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 31)) 5
                      (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 42)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 4))))
                    42
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 45 (Flapjack.Spt.ls 39)) 30
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 43
                        (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 28)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                    0
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 2))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 13)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln)))
                  35
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 0))) 6
                      (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 30)))
                      (Flapjack.Spt.ls 31))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 3
                        (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 29))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 43)) 42
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 32)))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 35))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 36)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 27)) 23 (Flapjack.Spt.ls 30))
                    34
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 12)))
                      13
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 46
                        (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 23))))
                    34
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 35)) 34
                      (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                      Flapjack.Spt.ln)
                    3
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 31
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 11))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 29
                      (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 25))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 35)) 29
                      (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 26))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 43)) 22
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 45
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 25)) 41
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 27)) 23 (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln) 31
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 43)) 37
                      (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 33)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 31)) 27 (Flapjack.Spt.ls 34)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))
                    35
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln) 33
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 22))))
                    34
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 37)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 41
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) 28
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 34)))
                      (Flapjack.Spt.ls 26)))
                  35
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 30))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 35
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 44) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 46) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 45 (Flapjack.Spt.ls 39)) 41
                      (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 29)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 33 Flapjack.Spt.ln)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 27
                      (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 33)) 35
                      (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 43) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))))
                    41
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 24))))
                    41
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 41))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 43
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 23)) 30
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 28)))
                  42
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) 29
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 41)) 33
                      (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 31)))
                      (Flapjack.Spt.ls 35))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.ls 27)) 33
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 29)) 25 (Flapjack.Spt.ls 32)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 44) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                    22
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln) 41
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 45))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 35)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 35)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) 34
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                      (Flapjack.Spt.ls 24)))
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 28))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 45)) 24
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 44) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 37)) 31
                      (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.ls 31))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 28
                      (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 34)) 28
                      (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 44) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))))
                    42
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 25))))
                    42
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 42))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 44
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.ls 24)) 31
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 26)) 22 (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) 30
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 42)) 36
                      (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 32)))
                      (Flapjack.Spt.ls 23))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 30)) 26 (Flapjack.Spt.ls 33)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 45) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))))
                    34
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln) 42
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 46))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 36)))
                    22
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 36)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln) 35
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 33)))
                      (Flapjack.Spt.ls 25)))
                  34
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 29))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 46)) 34
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 43) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 45) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 38)) 32
                      (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 28)))
                      (Flapjack.Spt.ls 32)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 26
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 32)) 34 (Flapjack.Spt.ls 35)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))))
                    28
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln) 36
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 23))))
                    35
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 38)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 42
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.ls 22)) 29
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 35)))
                      (Flapjack.Spt.ls 27)))
                  41
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) 28
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))))
                (Flapjack.Spt.bs Flapjack.Spt.ln 22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 46 (Flapjack.Spt.ls 40)) 42
                      (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 30)))
                      (Flapjack.Spt.ls 34))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.ls 26)) 42
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 28)) 24 (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 43) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) 32
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 44))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 34)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) 22
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                      (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 27))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 44)) 23
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 46
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 43) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 36)) 30
                      (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.ls 30)))))))))))
def optimized625 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(625, 1, optimizedBody625_335)
end InitECandidate.Proofs.SmallStages.Oracles625
