import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody743_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (16, 2)]

def optimizedBody743_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody743_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 4)]

def optimizedBody743_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 14 8#64))

def optimizedBody743_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody743_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 14 16#64))

def optimizedBody743_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 14 24#64))

def optimizedBody743_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 14 32#64))

def optimizedBody743_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 14 40#64))

def optimizedBody743_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 14 48#64))

def optimizedBody743_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 14 56#64))

def optimizedBody743_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 14 64#64))

def optimizedBody743_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 14 72#64))

def optimizedBody743_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 14 80#64))

def optimizedBody743_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 14 88#64))

def optimizedBody743_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0), (46, 2), (48, 6), (50, 10), (52, 18), (54, 20),
    (56, 22), (68, 4), (70, 12), (58, 24), (74, 16), (76, 8), (60, 26), (62, 14)]

def optimizedBody743_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (12, 12), (24, 2), (6, 6), (10, 10), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (22, 52), (14, 54),
    (18, 56), (68, 68), (70, 70), (16, 58), (74, 74), (76, 76), (0, 60), (20, 62)]

def optimizedBody743_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (22, 52), (14, 54), (18, 56), (68, 68), (70, 70), (16, 58), (74, 74),
    (76, 76), (0, 60), (20, 62)]

def optimizedBody743_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody743_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_17 optimizedBody743_18

def optimizedBody743_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody743_16, 743, 2)) (some 715) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody743_19, 743, 3))

def optimizedBody743_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody743_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 14), (8, 16), (10, 18), (12, 20), (44, 44), (46, 46), (48, 48), (50, 50), (52, 4), (54, 22),
    (56, 14), (58, 12), (60, 18), (62, 24), (64, 6), (66, 10), (68, 68), (70, 70), (72, 16), (74, 74), (76, 76),
    (78, 0), (80, 20), (82, 8)]

def optimizedBody743_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(20, 8), (14, 2), (18, 6), (22, 10), (16, 4), (24, 12), (44, 44), (46, 46), (48, 48), (50, 50), (4, 52), (52, 54),
    (54, 56), (12, 58), (56, 60), (0, 62), (6, 64), (10, 66), (58, 68), (60, 70), (62, 72), (64, 74), (66, 76),
    (68, 78), (70, 80), (8, 82)]

def optimizedBody743_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (4, 52), (52, 54), (54, 56), (12, 58), (56, 60), (0, 62), (6, 64),
    (10, 66), (58, 68), (60, 70), (62, 72), (64, 74), (66, 76), (68, 78), (70, 80), (8, 82)]

def optimizedBody743_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_24 optimizedBody743_18

def optimizedBody743_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody743_23, 743, 4)) (some 715) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody743_25, 743, 5))

def optimizedBody743_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody743_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (0, 2), (6, 6), (10, 10), (12, 12), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody743_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody743_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_29 optimizedBody743_18

def optimizedBody743_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody743_28, 743, 6)) (some 710) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody743_30, 743, 7))

def optimizedBody743_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody743_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 4), (24, 12), (14, 2), (18, 6), (22, 10), (20, 8), (44, 44), (0, 46), (6, 48), (10, 50), (46, 52), (48, 54),
    (50, 56), (4, 58), (12, 60), (56, 62), (58, 64), (8, 66), (66, 68), (68, 70)]

def optimizedBody743_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (6, 48), (10, 50), (46, 52), (48, 54), (50, 56), (4, 58), (12, 60), (56, 62), (58, 64),
    (8, 66), (66, 68), (68, 70)]

def optimizedBody743_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_34 optimizedBody743_18

def optimizedBody743_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody743_33, 743, 8)) (some 721) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody743_35, 743, 9))

def optimizedBody743_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 46), (48, 48), (50, 50), (52, 16), (54, 24), (56, 56), (58, 58), (60, 14), (62, 18), (64, 22),
    (66, 66), (68, 68), (70, 20)]

def optimizedBody743_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (36, 2), (6, 6), (10, 10), (4, 4), (12, 12), (44, 44), (34, 46), (26, 48), (30, 50), (16, 52), (24, 54),
    (28, 56), (48, 58), (14, 60), (18, 62), (22, 64), (0, 66), (32, 68), (20, 70)]

def optimizedBody743_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (34, 46), (26, 48), (30, 50), (16, 52), (24, 54), (28, 56), (48, 58), (14, 60), (18, 62), (22, 64),
    (0, 66), (32, 68), (20, 70)]

def optimizedBody743_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_39 optimizedBody743_18

def optimizedBody743_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody743_38, 743, 10)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody743_40, 743, 11))

def optimizedBody743_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 34), (4, 0), (6, 26), (8, 28), (10, 30), (12, 32), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 8), (48, 48), (50, 36), (52, 6), (54, 10), (56, 4), (58, 12)]

def optimizedBody743_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 12), (4, 4), (8, 8), (0, 2), (6, 6), (10, 10), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56), (58, 58)]

def optimizedBody743_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody743_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_44 optimizedBody743_18

def optimizedBody743_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody743_43, 743, 12)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody743_45, 743, 13))

def optimizedBody743_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56), (58, 58)]

def optimizedBody743_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 12), (4, 4), (8, 8), (0, 2), (6, 6), (10, 10), (28, 44), (14, 46), (16, 48), (22, 50), (18, 52), (26, 54),
    (20, 56), (24, 58)]

def optimizedBody743_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (28, 44), (14, 46), (16, 48), (22, 50), (18, 52), (26, 54), (20, 56), (24, 58)]

def optimizedBody743_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_49 optimizedBody743_18

def optimizedBody743_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody743_48, 743, 14)) (some 712) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody743_50, 743, 15))

def optimizedBody743_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (22, 22), (24, 24), (26, 26), (14, 14), (18, 18), (20, 20)]

def optimizedBody743_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody743_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (20, 20)]

def optimizedBody743_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 16 8#64))

def optimizedBody743_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (18, 18)]

def optimizedBody743_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 16 16#64))

def optimizedBody743_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody743_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 16 24#64))

def optimizedBody743_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (26, 26)]

def optimizedBody743_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 16 32#64))

def optimizedBody743_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (24, 24)]

def optimizedBody743_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 16 40#64))

def optimizedBody743_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody743_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody743_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody743_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody743_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody743_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody743_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody743_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody743_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody743_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody743_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody743_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody743_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody743_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody743_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody743_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody743_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 28 [2]

def optimizedBody743_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_79 optimizedBody743_80

def optimizedBody743_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_78 optimizedBody743_81

def optimizedBody743_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_77 optimizedBody743_82

def optimizedBody743_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_76 optimizedBody743_83

def optimizedBody743_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_75 optimizedBody743_84

def optimizedBody743_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_74 optimizedBody743_85

def optimizedBody743_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_73 optimizedBody743_86

def optimizedBody743_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_72 optimizedBody743_87

def optimizedBody743_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_71 optimizedBody743_88

def optimizedBody743_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_70 optimizedBody743_89

def optimizedBody743_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_69 optimizedBody743_90

def optimizedBody743_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_68 optimizedBody743_91

def optimizedBody743_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_67 optimizedBody743_92

def optimizedBody743_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_66 optimizedBody743_93

def optimizedBody743_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_65 optimizedBody743_94

def optimizedBody743_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_64 optimizedBody743_95

def optimizedBody743_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_63 optimizedBody743_96

def optimizedBody743_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_62 optimizedBody743_97

def optimizedBody743_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_61 optimizedBody743_98

def optimizedBody743_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_60 optimizedBody743_99

def optimizedBody743_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_59 optimizedBody743_100

def optimizedBody743_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_58 optimizedBody743_101

def optimizedBody743_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_57 optimizedBody743_102

def optimizedBody743_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_56 optimizedBody743_103

def optimizedBody743_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_55 optimizedBody743_104

def optimizedBody743_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_54 optimizedBody743_105

def optimizedBody743_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_53 optimizedBody743_106

def optimizedBody743_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_52 optimizedBody743_107

def optimizedBody743_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_21 optimizedBody743_108

def optimizedBody743_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_51 optimizedBody743_109

def optimizedBody743_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_47 optimizedBody743_110

def optimizedBody743_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_21 optimizedBody743_111

def optimizedBody743_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_46 optimizedBody743_112

def optimizedBody743_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_42 optimizedBody743_113

def optimizedBody743_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_21 optimizedBody743_114

def optimizedBody743_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_41 optimizedBody743_115

def optimizedBody743_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_37 optimizedBody743_116

def optimizedBody743_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_21 optimizedBody743_117

def optimizedBody743_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_36 optimizedBody743_118

def optimizedBody743_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_32 optimizedBody743_119

def optimizedBody743_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_21 optimizedBody743_120

def optimizedBody743_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_31 optimizedBody743_121

def optimizedBody743_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_27 optimizedBody743_122

def optimizedBody743_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_21 optimizedBody743_123

def optimizedBody743_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_26 optimizedBody743_124

def optimizedBody743_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_22 optimizedBody743_125

def optimizedBody743_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_21 optimizedBody743_126

def optimizedBody743_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_20 optimizedBody743_127

def optimizedBody743_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_15 optimizedBody743_128

def optimizedBody743_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_14 optimizedBody743_129

def optimizedBody743_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_4 optimizedBody743_130

def optimizedBody743_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_13 optimizedBody743_131

def optimizedBody743_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_4 optimizedBody743_132

def optimizedBody743_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_12 optimizedBody743_133

def optimizedBody743_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_4 optimizedBody743_134

def optimizedBody743_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_11 optimizedBody743_135

def optimizedBody743_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_4 optimizedBody743_136

def optimizedBody743_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_10 optimizedBody743_137

def optimizedBody743_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_4 optimizedBody743_138

def optimizedBody743_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_9 optimizedBody743_139

def optimizedBody743_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_4 optimizedBody743_140

def optimizedBody743_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_8 optimizedBody743_141

def optimizedBody743_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_4 optimizedBody743_142

def optimizedBody743_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_7 optimizedBody743_143

def optimizedBody743_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_4 optimizedBody743_144

def optimizedBody743_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_6 optimizedBody743_145

def optimizedBody743_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_4 optimizedBody743_146

def optimizedBody743_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_5 optimizedBody743_147

def optimizedBody743_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_4 optimizedBody743_148

def optimizedBody743_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_3 optimizedBody743_149

def optimizedBody743_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_2 optimizedBody743_150

def optimizedBody743_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_1 optimizedBody743_151

def optimizedBody743_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody743_0 optimizedBody743_152

def optimized743 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(743, 3, optimizedBody743_153)
end InitECandidate.Proofs.StackAnalysis
