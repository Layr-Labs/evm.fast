import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody773_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (16, 2)]

def optimizedBody773_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody773_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 4)]

def optimizedBody773_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 14 104#64))

def optimizedBody773_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody773_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 14 112#64))

def optimizedBody773_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 14 120#64))

def optimizedBody773_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 14 128#64))

def optimizedBody773_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 14 136#64))

def optimizedBody773_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0), (48, 8), (46, 14), (62, 2), (64, 16), (68, 6), (70, 12),
    (72, 10), (78, 4)]

def optimizedBody773_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 10), (20, 8), (16, 4), (18, 6), (24, 12), (14, 2), (44, 44), (48, 48), (0, 46), (62, 62), (64, 64), (68, 68),
    (70, 70), (72, 72), (78, 78)]

def optimizedBody773_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (0, 46), (62, 62), (64, 64), (68, 68), (70, 70), (72, 72), (78, 78)]

def optimizedBody773_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody773_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_11 optimizedBody773_12

def optimizedBody773_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody773_10, 773, 2)) (some 721) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody773_13, 773, 3))

def optimizedBody773_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody773_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody773_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody773_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody773_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody773_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody773_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody773_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody773_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody773_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody773_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody773_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody773_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody773_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody773_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (48, 48), (46, 30), (50, 32), (52, 22), (54, 28), (56, 20), (58, 34), (60, 16), (62, 62), (64, 64),
    (66, 18), (68, 68), (70, 70), (72, 72), (74, 24), (76, 26), (78, 78), (80, 14), (82, 0)]

def optimizedBody773_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 10), (4, 4), (6, 6), (12, 12), (36, 2), (8, 8), (44, 44), (48, 48), (30, 46), (26, 50), (22, 52), (0, 54),
    (20, 56), (28, 58), (16, 60), (54, 62), (56, 64), (18, 66), (60, 68), (62, 70), (68, 72), (24, 74), (34, 76),
    (70, 78), (14, 80), (32, 82)]

def optimizedBody773_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (30, 46), (26, 50), (22, 52), (0, 54), (20, 56), (28, 58), (16, 60), (54, 62), (56, 64),
    (18, 66), (60, 68), (62, 70), (68, 72), (24, 74), (34, 76), (70, 78), (14, 80), (32, 82)]

def optimizedBody773_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_31 optimizedBody773_12

def optimizedBody773_33 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody773_30, 773, 4)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody773_32, 773, 5))

def optimizedBody773_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 34), (4, 0), (6, 26), (8, 28), (10, 30), (12, 32), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 10), (48, 48), (50, 4), (52, 6), (54, 54), (56, 56), (58, 12), (60, 60), (62, 62), (64, 36), (66, 8),
    (68, 68), (70, 70)]

def optimizedBody773_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 10), (6, 6), (4, 4), (0, 8), (16, 2), (14, 12), (44, 44), (18, 46), (8, 48), (20, 50), (24, 52), (38, 54),
    (34, 56), (22, 58), (30, 60), (12, 62), (26, 64), (36, 66), (32, 68), (28, 70)]

def optimizedBody773_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (18, 46), (8, 48), (20, 50), (24, 52), (38, 54), (34, 56), (22, 58), (30, 60), (12, 62), (26, 64),
    (36, 66), (32, 68), (28, 70)]

def optimizedBody773_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_36 optimizedBody773_12

def optimizedBody773_38 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody773_35, 773, 6)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody773_37, 773, 7))

def optimizedBody773_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (26, 26), (22, 22), (18, 18), (36, 36), (24, 24), (20, 20)]

def optimizedBody773_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 34 0#64))

def optimizedBody773_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (20, 20)]

def optimizedBody773_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 34 8#64))

def optimizedBody773_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (24, 24)]

def optimizedBody773_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 34 16#64))

def optimizedBody773_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (36, 36)]

def optimizedBody773_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 36 (Flapjack.WordLangAddr.addr 34 24#64))

def optimizedBody773_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (18, 18)]

def optimizedBody773_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 34 32#64))

def optimizedBody773_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (22, 22)]

def optimizedBody773_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 34 40#64))

def optimizedBody773_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34)]

def optimizedBody773_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 34 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody773_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (16, 16), (14, 14), (10, 10), (0, 0), (6, 6), (4, 4)]

def optimizedBody773_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody773_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody773_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody773_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody773_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody773_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody773_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody773_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody773_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody773_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody773_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody773_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 38), (4, 28), (6, 30), (8, 8), (10, 32), (12, 12), (44, 44)]

def optimizedBody773_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody773_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody773_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_67 optimizedBody773_12

def optimizedBody773_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody773_66, 773, 8)) (some 705) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody773_68, 773, 9))

def optimizedBody773_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody773_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody773_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody773_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody773_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_72 optimizedBody773_73

def optimizedBody773_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_71 optimizedBody773_74

def optimizedBody773_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_75

def optimizedBody773_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_70 optimizedBody773_76

def optimizedBody773_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_15 optimizedBody773_77

def optimizedBody773_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_69 optimizedBody773_78

def optimizedBody773_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_65 optimizedBody773_79

def optimizedBody773_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_64 optimizedBody773_80

def optimizedBody773_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_63 optimizedBody773_81

def optimizedBody773_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_62 optimizedBody773_82

def optimizedBody773_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_61 optimizedBody773_83

def optimizedBody773_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_60 optimizedBody773_84

def optimizedBody773_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_59 optimizedBody773_85

def optimizedBody773_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_58 optimizedBody773_86

def optimizedBody773_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_57 optimizedBody773_87

def optimizedBody773_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_56 optimizedBody773_88

def optimizedBody773_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_55 optimizedBody773_89

def optimizedBody773_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_54 optimizedBody773_90

def optimizedBody773_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_53 optimizedBody773_91

def optimizedBody773_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_52 optimizedBody773_92

def optimizedBody773_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_51 optimizedBody773_93

def optimizedBody773_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_50 optimizedBody773_94

def optimizedBody773_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_49 optimizedBody773_95

def optimizedBody773_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_48 optimizedBody773_96

def optimizedBody773_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_47 optimizedBody773_97

def optimizedBody773_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_46 optimizedBody773_98

def optimizedBody773_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_45 optimizedBody773_99

def optimizedBody773_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_44 optimizedBody773_100

def optimizedBody773_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_43 optimizedBody773_101

def optimizedBody773_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_42 optimizedBody773_102

def optimizedBody773_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_41 optimizedBody773_103

def optimizedBody773_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_40 optimizedBody773_104

def optimizedBody773_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_39 optimizedBody773_105

def optimizedBody773_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_15 optimizedBody773_106

def optimizedBody773_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_38 optimizedBody773_107

def optimizedBody773_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_34 optimizedBody773_108

def optimizedBody773_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_15 optimizedBody773_109

def optimizedBody773_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_33 optimizedBody773_110

def optimizedBody773_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_29 optimizedBody773_111

def optimizedBody773_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_28 optimizedBody773_112

def optimizedBody773_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_113

def optimizedBody773_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_27 optimizedBody773_114

def optimizedBody773_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_115

def optimizedBody773_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_26 optimizedBody773_116

def optimizedBody773_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_117

def optimizedBody773_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_25 optimizedBody773_118

def optimizedBody773_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_119

def optimizedBody773_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_24 optimizedBody773_120

def optimizedBody773_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_121

def optimizedBody773_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_23 optimizedBody773_122

def optimizedBody773_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_123

def optimizedBody773_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_22 optimizedBody773_124

def optimizedBody773_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_125

def optimizedBody773_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_21 optimizedBody773_126

def optimizedBody773_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_127

def optimizedBody773_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_20 optimizedBody773_128

def optimizedBody773_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_129

def optimizedBody773_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_19 optimizedBody773_130

def optimizedBody773_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_131

def optimizedBody773_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_18 optimizedBody773_132

def optimizedBody773_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_133

def optimizedBody773_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_17 optimizedBody773_134

def optimizedBody773_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_135

def optimizedBody773_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_15 optimizedBody773_136

def optimizedBody773_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_14 optimizedBody773_137

def optimizedBody773_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_9 optimizedBody773_138

def optimizedBody773_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_8 optimizedBody773_139

def optimizedBody773_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_4 optimizedBody773_140

def optimizedBody773_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_7 optimizedBody773_141

def optimizedBody773_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_4 optimizedBody773_142

def optimizedBody773_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_6 optimizedBody773_143

def optimizedBody773_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_4 optimizedBody773_144

def optimizedBody773_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_5 optimizedBody773_145

def optimizedBody773_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_4 optimizedBody773_146

def optimizedBody773_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_3 optimizedBody773_147

def optimizedBody773_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_2 optimizedBody773_148

def optimizedBody773_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_1 optimizedBody773_149

def optimizedBody773_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_0 optimizedBody773_150

def optimized773 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(773, 3, optimizedBody773_151)
end InitECandidate.Proofs.StackAnalysis
