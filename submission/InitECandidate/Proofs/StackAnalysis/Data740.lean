import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody740_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (26, 2)]

def optimizedBody740_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody740_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 4)]

def optimizedBody740_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 24 8#64))

def optimizedBody740_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody740_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 24 16#64))

def optimizedBody740_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 24 24#64))

def optimizedBody740_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 24 32#64))

def optimizedBody740_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 24 40#64))

def optimizedBody740_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 24 48#64))

def optimizedBody740_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 24 56#64))

def optimizedBody740_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 24 64#64))

def optimizedBody740_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 24 72#64))

def optimizedBody740_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 24 80#64))

def optimizedBody740_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 24 88#64))

def optimizedBody740_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 0), (46, 24), (48, 22), (50, 20), (52, 16), (54, 18), (56, 12), (58, 14), (68, 26), (60, 6), (62, 4), (64, 8),
    (66, 10), (70, 2)]

def optimizedBody740_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (36, 2), (4, 4), (6, 6), (10, 10), (12, 12), (44, 44), (24, 46), (22, 48), (20, 50), (16, 52), (18, 54),
    (32, 56), (14, 58), (68, 68), (26, 60), (0, 62), (28, 64), (30, 66), (34, 70)]

def optimizedBody740_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (24, 46), (22, 48), (20, 50), (16, 52), (18, 54), (32, 56), (14, 58), (68, 68), (26, 60), (0, 62),
    (28, 64), (30, 66), (34, 70)]

def optimizedBody740_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody740_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_17 optimizedBody740_18

def optimizedBody740_20 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody740_16, 740, 2)) (some 710) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody740_19, 740, 3))

def optimizedBody740_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody740_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 34), (4, 0), (6, 26), (8, 28), (10, 30), (12, 32), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 8), (48, 36), (50, 24), (52, 4), (54, 22), (56, 20), (58, 6), (60, 16), (62, 18), (64, 32), (66, 14),
    (68, 68), (70, 26), (72, 0), (74, 10), (76, 28), (78, 30), (80, 12), (82, 34)]

def optimizedBody740_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 10), (20, 8), (24, 12), (14, 2), (16, 4), (18, 6), (44, 44), (8, 46), (0, 48), (46, 50), (4, 52), (48, 54),
    (50, 56), (6, 58), (52, 60), (54, 62), (56, 64), (58, 66), (60, 68), (62, 70), (64, 72), (10, 74), (66, 76),
    (68, 78), (12, 80), (70, 82)]

def optimizedBody740_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (8, 46), (0, 48), (46, 50), (4, 52), (48, 54), (50, 56), (6, 58), (52, 60), (54, 62), (56, 64),
    (58, 66), (60, 68), (62, 70), (64, 72), (10, 74), (66, 76), (68, 78), (12, 80), (70, 82)]

def optimizedBody740_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_24 optimizedBody740_18

def optimizedBody740_26 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody740_23, 740, 4)) (some 711) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody740_25, 740, 5))

def optimizedBody740_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody740_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(36, 2), (10, 10), (8, 8), (6, 6), (4, 4), (12, 12), (44, 44), (24, 46), (22, 48), (20, 50), (16, 52), (18, 54),
    (32, 56), (14, 58), (56, 60), (26, 62), (0, 64), (28, 66), (30, 68), (34, 70)]

def optimizedBody740_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (24, 46), (22, 48), (20, 50), (16, 52), (18, 54), (32, 56), (14, 58), (56, 60), (26, 62), (0, 64),
    (28, 66), (30, 68), (34, 70)]

def optimizedBody740_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_29 optimizedBody740_18

def optimizedBody740_31 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody740_28, 740, 6)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody740_30, 740, 7))

def optimizedBody740_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 34), (4, 0), (6, 26), (8, 28), (10, 30), (12, 32), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 36), (48, 10), (50, 8), (52, 6), (54, 4), (56, 56), (58, 12)]

def optimizedBody740_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (10, 10), (8, 8), (12, 12), (14, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56), (58, 58)]

def optimizedBody740_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody740_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_34 optimizedBody740_18

def optimizedBody740_36 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody740_33, 740, 8)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody740_35, 740, 9))

def optimizedBody740_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 4), (18, 6), (20, 8), (22, 10), (24, 12),
    (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody740_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (10, 10), (8, 8), (12, 12), (0, 2), (4, 4), (28, 44), (22, 46), (14, 48), (26, 50), (18, 52), (20, 54),
    (16, 56), (24, 58)]

def optimizedBody740_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (28, 44), (22, 46), (14, 48), (26, 50), (18, 52), (20, 54), (16, 56), (24, 58)]

def optimizedBody740_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_39 optimizedBody740_18

def optimizedBody740_41 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody740_38, 740, 10)) (some 710) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody740_40, 740, 11))

def optimizedBody740_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (22, 22), (24, 24), (14, 14), (26, 26), (18, 18), (20, 20)]

def optimizedBody740_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody740_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (20, 20)]

def optimizedBody740_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 16 8#64))

def optimizedBody740_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (18, 18)]

def optimizedBody740_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 16 16#64))

def optimizedBody740_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (26, 26)]

def optimizedBody740_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 16 24#64))

def optimizedBody740_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody740_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 16 32#64))

def optimizedBody740_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (24, 24)]

def optimizedBody740_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 16 40#64))

def optimizedBody740_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody740_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody740_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody740_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody740_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody740_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody740_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody740_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody740_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody740_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody740_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody740_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody740_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody740_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody740_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody740_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody740_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 28 [2]

def optimizedBody740_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_69 optimizedBody740_70

def optimizedBody740_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_68 optimizedBody740_71

def optimizedBody740_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_67 optimizedBody740_72

def optimizedBody740_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_66 optimizedBody740_73

def optimizedBody740_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_65 optimizedBody740_74

def optimizedBody740_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_64 optimizedBody740_75

def optimizedBody740_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_63 optimizedBody740_76

def optimizedBody740_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_62 optimizedBody740_77

def optimizedBody740_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_61 optimizedBody740_78

def optimizedBody740_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_60 optimizedBody740_79

def optimizedBody740_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_59 optimizedBody740_80

def optimizedBody740_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_58 optimizedBody740_81

def optimizedBody740_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_57 optimizedBody740_82

def optimizedBody740_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_56 optimizedBody740_83

def optimizedBody740_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_55 optimizedBody740_84

def optimizedBody740_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_54 optimizedBody740_85

def optimizedBody740_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_53 optimizedBody740_86

def optimizedBody740_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_52 optimizedBody740_87

def optimizedBody740_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_51 optimizedBody740_88

def optimizedBody740_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_50 optimizedBody740_89

def optimizedBody740_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_49 optimizedBody740_90

def optimizedBody740_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_48 optimizedBody740_91

def optimizedBody740_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_47 optimizedBody740_92

def optimizedBody740_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_46 optimizedBody740_93

def optimizedBody740_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_45 optimizedBody740_94

def optimizedBody740_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_44 optimizedBody740_95

def optimizedBody740_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_43 optimizedBody740_96

def optimizedBody740_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_42 optimizedBody740_97

def optimizedBody740_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_21 optimizedBody740_98

def optimizedBody740_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_41 optimizedBody740_99

def optimizedBody740_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_37 optimizedBody740_100

def optimizedBody740_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_21 optimizedBody740_101

def optimizedBody740_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_36 optimizedBody740_102

def optimizedBody740_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_32 optimizedBody740_103

def optimizedBody740_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_21 optimizedBody740_104

def optimizedBody740_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_31 optimizedBody740_105

def optimizedBody740_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_27 optimizedBody740_106

def optimizedBody740_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_21 optimizedBody740_107

def optimizedBody740_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_26 optimizedBody740_108

def optimizedBody740_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_22 optimizedBody740_109

def optimizedBody740_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_21 optimizedBody740_110

def optimizedBody740_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_20 optimizedBody740_111

def optimizedBody740_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_15 optimizedBody740_112

def optimizedBody740_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_14 optimizedBody740_113

def optimizedBody740_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_4 optimizedBody740_114

def optimizedBody740_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_13 optimizedBody740_115

def optimizedBody740_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_4 optimizedBody740_116

def optimizedBody740_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_12 optimizedBody740_117

def optimizedBody740_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_4 optimizedBody740_118

def optimizedBody740_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_11 optimizedBody740_119

def optimizedBody740_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_4 optimizedBody740_120

def optimizedBody740_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_10 optimizedBody740_121

def optimizedBody740_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_4 optimizedBody740_122

def optimizedBody740_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_9 optimizedBody740_123

def optimizedBody740_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_4 optimizedBody740_124

def optimizedBody740_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_8 optimizedBody740_125

def optimizedBody740_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_4 optimizedBody740_126

def optimizedBody740_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_7 optimizedBody740_127

def optimizedBody740_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_4 optimizedBody740_128

def optimizedBody740_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_6 optimizedBody740_129

def optimizedBody740_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_4 optimizedBody740_130

def optimizedBody740_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_5 optimizedBody740_131

def optimizedBody740_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_4 optimizedBody740_132

def optimizedBody740_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_3 optimizedBody740_133

def optimizedBody740_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_2 optimizedBody740_134

def optimizedBody740_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_1 optimizedBody740_135

def optimizedBody740_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody740_0 optimizedBody740_136

def optimized740 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(740, 3, optimizedBody740_137)
end InitECandidate.Proofs.StackAnalysis
