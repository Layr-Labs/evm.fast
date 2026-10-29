import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source751
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles751
def optimizedBody751_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (26, 2)]

def optimizedBody751_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody751_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 4)]

def optimizedBody751_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 24 8#64))

def optimizedBody751_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody751_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 24 16#64))

def optimizedBody751_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 24 24#64))

def optimizedBody751_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 24 32#64))

def optimizedBody751_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 24 40#64))

def optimizedBody751_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 24 48#64))

def optimizedBody751_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 24 56#64))

def optimizedBody751_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 24 64#64))

def optimizedBody751_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 24 72#64))

def optimizedBody751_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 24 80#64))

def optimizedBody751_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 24 88#64))

def optimizedBody751_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 0), (46, 24), (48, 22), (50, 20), (52, 16), (54, 18), (56, 12), (58, 14), (68, 26), (60, 6), (62, 4), (64, 8),
    (66, 10), (70, 2)]

def optimizedBody751_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (36, 2), (4, 4), (6, 6), (10, 10), (12, 12), (44, 44), (24, 46), (22, 48), (20, 50), (16, 52), (18, 54),
    (32, 56), (14, 58), (68, 68), (26, 60), (0, 62), (28, 64), (30, 66), (34, 70)]

def optimizedBody751_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (24, 46), (22, 48), (20, 50), (16, 52), (18, 54), (32, 56), (14, 58), (68, 68), (26, 60), (0, 62),
    (28, 64), (30, 66), (34, 70)]

def optimizedBody751_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody751_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_17 optimizedBody751_18

def optimizedBody751_20 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody751_16, 751, 2)) (some 719) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody751_19, 751, 3))

def optimizedBody751_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody751_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 34), (4, 0), (6, 26), (8, 28), (10, 30), (12, 32), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 8), (48, 36), (50, 24), (52, 4), (54, 22), (56, 20), (58, 6), (60, 16), (62, 18), (64, 32), (66, 14),
    (68, 68), (70, 26), (72, 0), (74, 10), (76, 28), (78, 30), (80, 12), (82, 34)]

def optimizedBody751_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 10), (20, 8), (24, 12), (14, 2), (16, 4), (18, 6), (44, 44), (8, 46), (0, 48), (46, 50), (4, 52), (48, 54),
    (50, 56), (6, 58), (52, 60), (54, 62), (56, 64), (58, 66), (60, 68), (62, 70), (64, 72), (10, 74), (66, 76),
    (68, 78), (12, 80), (70, 82)]

def optimizedBody751_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (8, 46), (0, 48), (46, 50), (4, 52), (48, 54), (50, 56), (6, 58), (52, 60), (54, 62), (56, 64),
    (58, 66), (60, 68), (62, 70), (64, 72), (10, 74), (66, 76), (68, 78), (12, 80), (70, 82)]

def optimizedBody751_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_24 optimizedBody751_18

def optimizedBody751_26 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody751_23, 751, 4)) (some 720) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody751_25, 751, 5))

def optimizedBody751_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70)]

def optimizedBody751_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(36, 2), (10, 10), (8, 8), (6, 6), (4, 4), (12, 12), (44, 44), (24, 46), (22, 48), (20, 50), (16, 52), (18, 54),
    (32, 56), (14, 58), (56, 60), (26, 62), (0, 64), (28, 66), (30, 68), (34, 70)]

def optimizedBody751_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (24, 46), (22, 48), (20, 50), (16, 52), (18, 54), (32, 56), (14, 58), (56, 60), (26, 62), (0, 64),
    (28, 66), (30, 68), (34, 70)]

def optimizedBody751_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_29 optimizedBody751_18

def optimizedBody751_31 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody751_28, 751, 6)) (some 724) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody751_30, 751, 7))

def optimizedBody751_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 34), (4, 0), (6, 26), (8, 28), (10, 30), (12, 32), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 36), (48, 10), (50, 8), (52, 6), (54, 4), (56, 56), (58, 12)]

def optimizedBody751_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (10, 10), (8, 8), (12, 12), (14, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56), (58, 58)]

def optimizedBody751_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody751_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_34 optimizedBody751_18

def optimizedBody751_36 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody751_33, 751, 8)) (some 724) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody751_35, 751, 9))

def optimizedBody751_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 4), (18, 6), (20, 8), (22, 10), (24, 12),
    (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody751_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (10, 10), (8, 8), (12, 12), (0, 2), (4, 4), (28, 44), (22, 46), (14, 48), (26, 50), (18, 52), (20, 54),
    (16, 56), (24, 58)]

def optimizedBody751_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (28, 44), (22, 46), (14, 48), (26, 50), (18, 52), (20, 54), (16, 56), (24, 58)]

def optimizedBody751_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_39 optimizedBody751_18

def optimizedBody751_41 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody751_38, 751, 10)) (some 719) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody751_40, 751, 11))

def optimizedBody751_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (22, 22), (24, 24), (14, 14), (26, 26), (18, 18), (20, 20)]

def optimizedBody751_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody751_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (20, 20)]

def optimizedBody751_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 16 8#64))

def optimizedBody751_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (18, 18)]

def optimizedBody751_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 16 16#64))

def optimizedBody751_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (26, 26)]

def optimizedBody751_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 16 24#64))

def optimizedBody751_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody751_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 16 32#64))

def optimizedBody751_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (24, 24)]

def optimizedBody751_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 16 40#64))

def optimizedBody751_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody751_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody751_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody751_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody751_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody751_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody751_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody751_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody751_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody751_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody751_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody751_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody751_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody751_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody751_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody751_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody751_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 28 [2]

def optimizedBody751_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_69 optimizedBody751_70

def optimizedBody751_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_68 optimizedBody751_71

def optimizedBody751_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_67 optimizedBody751_72

def optimizedBody751_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_66 optimizedBody751_73

def optimizedBody751_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_65 optimizedBody751_74

def optimizedBody751_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_64 optimizedBody751_75

def optimizedBody751_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_63 optimizedBody751_76

def optimizedBody751_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_62 optimizedBody751_77

def optimizedBody751_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_61 optimizedBody751_78

def optimizedBody751_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_60 optimizedBody751_79

def optimizedBody751_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_59 optimizedBody751_80

def optimizedBody751_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_58 optimizedBody751_81

def optimizedBody751_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_57 optimizedBody751_82

def optimizedBody751_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_56 optimizedBody751_83

def optimizedBody751_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_55 optimizedBody751_84

def optimizedBody751_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_54 optimizedBody751_85

def optimizedBody751_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_53 optimizedBody751_86

def optimizedBody751_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_52 optimizedBody751_87

def optimizedBody751_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_51 optimizedBody751_88

def optimizedBody751_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_50 optimizedBody751_89

def optimizedBody751_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_49 optimizedBody751_90

def optimizedBody751_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_48 optimizedBody751_91

def optimizedBody751_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_47 optimizedBody751_92

def optimizedBody751_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_46 optimizedBody751_93

def optimizedBody751_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_45 optimizedBody751_94

def optimizedBody751_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_44 optimizedBody751_95

def optimizedBody751_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_43 optimizedBody751_96

def optimizedBody751_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_42 optimizedBody751_97

def optimizedBody751_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_21 optimizedBody751_98

def optimizedBody751_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_41 optimizedBody751_99

def optimizedBody751_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_37 optimizedBody751_100

def optimizedBody751_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_21 optimizedBody751_101

def optimizedBody751_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_36 optimizedBody751_102

def optimizedBody751_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_32 optimizedBody751_103

def optimizedBody751_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_21 optimizedBody751_104

def optimizedBody751_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_31 optimizedBody751_105

def optimizedBody751_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_27 optimizedBody751_106

def optimizedBody751_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_21 optimizedBody751_107

def optimizedBody751_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_26 optimizedBody751_108

def optimizedBody751_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_22 optimizedBody751_109

def optimizedBody751_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_21 optimizedBody751_110

def optimizedBody751_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_20 optimizedBody751_111

def optimizedBody751_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_15 optimizedBody751_112

def optimizedBody751_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_14 optimizedBody751_113

def optimizedBody751_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_4 optimizedBody751_114

def optimizedBody751_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_13 optimizedBody751_115

def optimizedBody751_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_4 optimizedBody751_116

def optimizedBody751_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_12 optimizedBody751_117

def optimizedBody751_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_4 optimizedBody751_118

def optimizedBody751_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_11 optimizedBody751_119

def optimizedBody751_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_4 optimizedBody751_120

def optimizedBody751_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_10 optimizedBody751_121

def optimizedBody751_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_4 optimizedBody751_122

def optimizedBody751_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_9 optimizedBody751_123

def optimizedBody751_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_4 optimizedBody751_124

def optimizedBody751_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_8 optimizedBody751_125

def optimizedBody751_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_4 optimizedBody751_126

def optimizedBody751_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_7 optimizedBody751_127

def optimizedBody751_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_4 optimizedBody751_128

def optimizedBody751_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_6 optimizedBody751_129

def optimizedBody751_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_4 optimizedBody751_130

def optimizedBody751_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_5 optimizedBody751_131

def optimizedBody751_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_4 optimizedBody751_132

def optimizedBody751_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_3 optimizedBody751_133

def optimizedBody751_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_2 optimizedBody751_134

def optimizedBody751_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_1 optimizedBody751_135

def optimizedBody751_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_0 optimizedBody751_136

def oracle751 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) (Flapjack.Spt.ls 6)))
                12
                (Flapjack.Spt.bs Flapjack.Spt.ln 12
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 17 (Flapjack.Spt.ls 0)) 7 (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))) 12
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 14 (Flapjack.Spt.ls 32)))
                13
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))) 12
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 12
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 3)) 10 (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 12
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 17 (Flapjack.Spt.ls 33)))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 12))) 12
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 12))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 5)) 9 (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 6 Flapjack.Spt.ln) 12
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 13 (Flapjack.Spt.ls 30)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 13))) 12
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 12 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)) Flapjack.Spt.ln) 12
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 34)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 9
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 15 (Flapjack.Spt.ls 6)) 16 (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14))) 5
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 31)))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 9))) 7
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 11
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 2)) 11 (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 15 (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 8))) 8
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 8)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 12
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)) 8 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) 4
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 34 (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 7))) 6
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 10
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 1)) 22
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 35)) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 27 (Flapjack.Spt.ls 36)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 40))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 23 (Flapjack.Spt.ls 32))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 25 (Flapjack.Spt.ls 34)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 22 Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 29 (Flapjack.Spt.ls 38))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 30)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 26 (Flapjack.Spt.ls 35)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 23 Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 39))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 22 (Flapjack.Spt.ls 31))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 41))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 24 (Flapjack.Spt.ls 33)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 28 (Flapjack.Spt.ls 37))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 29))))))))))
def optimized751 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(751, 3, optimizedBody751_137)
end InitECandidate.Proofs.SmallStages.Oracles751
