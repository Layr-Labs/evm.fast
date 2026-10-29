import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody795_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 0), (46, 16), (50, 8), (48, 24), (56, 4), (52, 20), (62, 12), (66, 2), (54, 18), (70, 10), (74, 6), (58, 22),
    (60, 14)]

def optimizedBody795_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 12), (6, 6), (24, 2), (8, 8), (10, 10), (4, 4), (44, 44), (0, 46), (50, 50), (20, 48), (56, 56), (16, 52),
    (62, 62), (66, 66), (14, 54), (70, 70), (74, 74), (18, 58), (22, 60)]

def optimizedBody795_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (50, 50), (20, 48), (56, 56), (16, 52), (62, 62), (66, 66), (14, 54), (70, 70), (74, 74),
    (18, 58), (22, 60)]

def optimizedBody795_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody795_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_2 optimizedBody795_3

def optimizedBody795_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody795_1, 795, 2)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody795_4, 795, 3))

def optimizedBody795_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody795_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 14), (8, 16), (10, 18), (12, 20), (44, 44), (46, 0), (48, 12), (50, 50), (52, 6), (54, 20),
    (56, 56), (58, 16), (60, 24), (62, 62), (64, 8), (66, 66), (68, 14), (70, 70), (74, 74), (72, 10), (76, 18),
    (78, 22), (80, 4)]

def optimizedBody795_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 6), (14, 2), (24, 12), (20, 8), (16, 4), (22, 10), (44, 44), (46, 46), (12, 48), (50, 50), (6, 52), (54, 54),
    (56, 56), (58, 58), (0, 60), (62, 62), (8, 64), (66, 66), (68, 68), (70, 70), (74, 74), (10, 72), (76, 76),
    (78, 78), (4, 80)]

def optimizedBody795_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (12, 48), (50, 50), (6, 52), (54, 54), (56, 56), (58, 58), (0, 60), (62, 62), (8, 64),
    (66, 66), (68, 68), (70, 70), (74, 74), (10, 72), (76, 76), (78, 78), (4, 80)]

def optimizedBody795_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_9 optimizedBody795_3

def optimizedBody795_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody795_8, 795, 4)) (some 715) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody795_10, 795, 5))

def optimizedBody795_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 46), (48, 12), (50, 50), (52, 6), (54, 54), (56, 56), (58, 58), (60, 0), (62, 62), (64, 8), (66, 66),
    (68, 68), (70, 70), (74, 74), (72, 10), (76, 76), (78, 78), (80, 4)]

def optimizedBody795_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 10), (0, 2), (8, 8), (12, 12), (6, 6), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (74, 74), (72, 72), (76, 76),
    (78, 78), (80, 80)]

def optimizedBody795_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (74, 74), (72, 72), (76, 76), (78, 78), (80, 80)]

def optimizedBody795_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_14 optimizedBody795_3

def optimizedBody795_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody795_13, 795, 6)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody795_15, 795, 7))

def optimizedBody795_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody795_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody795_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody795_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody795_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551224#64))

def optimizedBody795_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 0 (Flapjack.WordRegImm.imm 1480#64)))

def optimizedBody795_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 6#64)

def optimizedBody795_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (74, 74),
    (72, 72), (76, 76), (78, 78), (80, 80)]

def optimizedBody795_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 10), (14, 2), (20, 8), (24, 12), (18, 6), (16, 4), (44, 44), (46, 46), (12, 48), (48, 50), (6, 52), (50, 54),
    (52, 56), (58, 58), (0, 60), (60, 62), (8, 64), (64, 66), (66, 68), (68, 70), (74, 74), (10, 72), (76, 76),
    (78, 78), (4, 80)]

def optimizedBody795_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (12, 48), (48, 50), (6, 52), (50, 54), (52, 56), (58, 58), (0, 60), (60, 62), (8, 64),
    (64, 66), (66, 68), (68, 70), (74, 74), (10, 72), (76, 76), (78, 78), (4, 80)]

def optimizedBody795_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_26 optimizedBody795_3

def optimizedBody795_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody795_25, 795, 8)) (some 722) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody795_27, 795, 9))

def optimizedBody795_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (58, 58), (60, 60), (64, 64), (66, 66), (68, 68), (74, 74),
    (76, 76), (78, 78)]

def optimizedBody795_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (12, 12), (0, 2), (4, 4), (10, 10), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (58, 58),
    (60, 60), (64, 64), (66, 66), (68, 68), (74, 74), (76, 76), (78, 78)]

def optimizedBody795_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (58, 58), (60, 60), (64, 64), (66, 66), (68, 68), (74, 74),
    (76, 76), (78, 78)]

def optimizedBody795_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_31 optimizedBody795_3

def optimizedBody795_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody795_30, 795, 10)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody795_32, 795, 11))

def optimizedBody795_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 6),
    (56, 12), (58, 58), (60, 60), (62, 0), (64, 64), (66, 66), (68, 68), (70, 4), (72, 10), (74, 74), (76, 76),
    (78, 78), (80, 8)]

def optimizedBody795_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (4, 4), (6, 6), (12, 12), (10, 10), (0, 2), (44, 44), (16, 46), (46, 48), (24, 50), (48, 52), (50, 54),
    (52, 56), (20, 58), (54, 60), (56, 62), (58, 64), (18, 66), (60, 68), (62, 70), (64, 72), (66, 74), (22, 76),
    (14, 78), (68, 80)]

def optimizedBody795_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (16, 46), (46, 48), (24, 50), (48, 52), (50, 54), (52, 56), (20, 58), (54, 60), (56, 62), (58, 64),
    (18, 66), (60, 68), (62, 70), (64, 72), (66, 74), (22, 76), (14, 78), (68, 80)]

def optimizedBody795_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_36 optimizedBody795_3

def optimizedBody795_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody795_35, 795, 12)) (some 715) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody795_37, 795, 13))

def optimizedBody795_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody795_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (4, 4), (6, 6), (12, 12), (10, 10), (0, 2), (44, 44), (20, 46), (16, 48), (46, 50), (48, 52), (24, 54),
    (50, 56), (14, 58), (22, 60), (52, 62), (54, 64), (18, 66), (56, 68)]

def optimizedBody795_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (20, 46), (16, 48), (46, 50), (48, 52), (24, 54), (50, 56), (14, 58), (22, 60), (52, 62), (54, 64),
    (18, 66), (56, 68)]

def optimizedBody795_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_41 optimizedBody795_3

def optimizedBody795_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody795_40, 795, 14)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody795_42, 795, 15))

def optimizedBody795_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody795_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (4, 4), (6, 6), (12, 12), (10, 10), (0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56)]

def optimizedBody795_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody795_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_46 optimizedBody795_3

def optimizedBody795_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody795_45, 795, 16)) (some 711) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody795_47, 795, 17))

def optimizedBody795_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56)]

def optimizedBody795_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 2), (0, 44), (8, 46), (14, 48), (4, 50), (6, 52), (12, 54), (10, 56)]

def optimizedBody795_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (8, 46), (14, 48), (4, 50), (6, 52), (12, 54), (10, 56)]

def optimizedBody795_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_51 optimizedBody795_3

def optimizedBody795_53 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody795_50, 795, 18)) (some 705) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody795_52, 795, 19))

def optimizedBody795_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 16), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14)]

def optimizedBody795_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8, 10, 12, 14]

def optimizedBody795_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_54 optimizedBody795_55

def optimizedBody795_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_6 optimizedBody795_56

def optimizedBody795_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_53 optimizedBody795_57

def optimizedBody795_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_49 optimizedBody795_58

def optimizedBody795_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_6 optimizedBody795_59

def optimizedBody795_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_48 optimizedBody795_60

def optimizedBody795_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_44 optimizedBody795_61

def optimizedBody795_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_6 optimizedBody795_62

def optimizedBody795_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_43 optimizedBody795_63

def optimizedBody795_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_39 optimizedBody795_64

def optimizedBody795_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_6 optimizedBody795_65

def optimizedBody795_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_38 optimizedBody795_66

def optimizedBody795_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_34 optimizedBody795_67

def optimizedBody795_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_6 optimizedBody795_68

def optimizedBody795_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_33 optimizedBody795_69

def optimizedBody795_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_29 optimizedBody795_70

def optimizedBody795_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_6 optimizedBody795_71

def optimizedBody795_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_28 optimizedBody795_72

def optimizedBody795_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_24 optimizedBody795_73

def optimizedBody795_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_23 optimizedBody795_74

def optimizedBody795_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_22 optimizedBody795_75

def optimizedBody795_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_21 optimizedBody795_76

def optimizedBody795_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_20 optimizedBody795_77

def optimizedBody795_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_19 optimizedBody795_78

def optimizedBody795_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_18 optimizedBody795_79

def optimizedBody795_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_17 optimizedBody795_80

def optimizedBody795_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_6 optimizedBody795_81

def optimizedBody795_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_16 optimizedBody795_82

def optimizedBody795_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_12 optimizedBody795_83

def optimizedBody795_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_6 optimizedBody795_84

def optimizedBody795_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_11 optimizedBody795_85

def optimizedBody795_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_7 optimizedBody795_86

def optimizedBody795_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_6 optimizedBody795_87

def optimizedBody795_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_5 optimizedBody795_88

def optimizedBody795_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody795_0 optimizedBody795_89

def optimized795 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(795, 13, optimizedBody795_90)
end InitECandidate.Proofs.StackAnalysis
