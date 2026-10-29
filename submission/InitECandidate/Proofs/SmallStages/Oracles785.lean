import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source785
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles785
def optimizedBody785_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (16, 2)]

def optimizedBody785_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody785_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 4)]

def optimizedBody785_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 14 104#64))

def optimizedBody785_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody785_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 14 112#64))

def optimizedBody785_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 14 120#64))

def optimizedBody785_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 14 128#64))

def optimizedBody785_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 14 136#64))

def optimizedBody785_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0), (48, 8), (46, 14), (62, 2), (64, 16), (68, 6), (70, 12),
    (72, 10), (78, 4)]

def optimizedBody785_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 10), (20, 8), (16, 4), (18, 6), (24, 12), (14, 2), (44, 44), (48, 48), (0, 46), (62, 62), (64, 64), (68, 68),
    (70, 70), (72, 72), (78, 78)]

def optimizedBody785_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (0, 46), (62, 62), (64, 64), (68, 68), (70, 70), (72, 72), (78, 78)]

def optimizedBody785_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody785_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_11 optimizedBody785_12

def optimizedBody785_14 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody785_10, 785, 2)) (some 731) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody785_13, 785, 3))

def optimizedBody785_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody785_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody785_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody785_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody785_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody785_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody785_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody785_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody785_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody785_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody785_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody785_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody785_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody785_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody785_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (48, 48), (46, 30), (50, 32), (52, 22), (54, 28), (56, 20), (58, 34), (60, 16), (62, 62), (64, 64),
    (66, 18), (68, 68), (70, 70), (72, 72), (74, 24), (76, 26), (78, 78), (80, 14), (82, 0)]

def optimizedBody785_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 10), (4, 4), (6, 6), (12, 12), (36, 2), (8, 8), (44, 44), (48, 48), (30, 46), (26, 50), (22, 52), (0, 54),
    (20, 56), (28, 58), (16, 60), (54, 62), (56, 64), (18, 66), (60, 68), (62, 70), (68, 72), (24, 74), (34, 76),
    (70, 78), (14, 80), (32, 82)]

def optimizedBody785_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (30, 46), (26, 50), (22, 52), (0, 54), (20, 56), (28, 58), (16, 60), (54, 62), (56, 64),
    (18, 66), (60, 68), (62, 70), (68, 72), (24, 74), (34, 76), (70, 78), (14, 80), (32, 82)]

def optimizedBody785_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_31 optimizedBody785_12

def optimizedBody785_33 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody785_30, 785, 4)) (some 724) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody785_32, 785, 5))

def optimizedBody785_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 34), (4, 0), (6, 26), (8, 28), (10, 30), (12, 32), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 10), (48, 48), (50, 4), (52, 6), (54, 54), (56, 56), (58, 12), (60, 60), (62, 62), (64, 36), (66, 8),
    (68, 68), (70, 70)]

def optimizedBody785_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 10), (6, 6), (4, 4), (0, 8), (16, 2), (14, 12), (44, 44), (18, 46), (8, 48), (20, 50), (24, 52), (38, 54),
    (34, 56), (22, 58), (30, 60), (12, 62), (26, 64), (36, 66), (32, 68), (28, 70)]

def optimizedBody785_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (18, 46), (8, 48), (20, 50), (24, 52), (38, 54), (34, 56), (22, 58), (30, 60), (12, 62), (26, 64),
    (36, 66), (32, 68), (28, 70)]

def optimizedBody785_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_36 optimizedBody785_12

def optimizedBody785_38 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody785_35, 785, 6)) (some 724) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody785_37, 785, 7))

def optimizedBody785_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (26, 26), (22, 22), (18, 18), (36, 36), (24, 24), (20, 20)]

def optimizedBody785_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 34 0#64))

def optimizedBody785_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (20, 20)]

def optimizedBody785_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 34 8#64))

def optimizedBody785_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (24, 24)]

def optimizedBody785_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 34 16#64))

def optimizedBody785_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (36, 36)]

def optimizedBody785_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 36 (Flapjack.WordLangAddr.addr 34 24#64))

def optimizedBody785_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (18, 18)]

def optimizedBody785_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 34 32#64))

def optimizedBody785_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34), (22, 22)]

def optimizedBody785_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 34 40#64))

def optimizedBody785_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34)]

def optimizedBody785_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 34 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody785_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (16, 16), (14, 14), (10, 10), (0, 0), (6, 6), (4, 4)]

def optimizedBody785_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody785_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody785_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody785_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody785_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody785_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody785_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody785_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody785_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody785_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody785_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody785_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 38), (4, 28), (6, 30), (8, 8), (10, 32), (12, 12), (44, 44)]

def optimizedBody785_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody785_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody785_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_67 optimizedBody785_12

def optimizedBody785_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody785_66, 785, 8)) (some 714) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody785_68, 785, 9))

def optimizedBody785_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody785_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody785_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody785_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody785_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_72 optimizedBody785_73

def optimizedBody785_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_71 optimizedBody785_74

def optimizedBody785_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_16 optimizedBody785_75

def optimizedBody785_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_70 optimizedBody785_76

def optimizedBody785_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_15 optimizedBody785_77

def optimizedBody785_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_69 optimizedBody785_78

def optimizedBody785_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_65 optimizedBody785_79

def optimizedBody785_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_64 optimizedBody785_80

def optimizedBody785_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_63 optimizedBody785_81

def optimizedBody785_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_62 optimizedBody785_82

def optimizedBody785_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_61 optimizedBody785_83

def optimizedBody785_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_60 optimizedBody785_84

def optimizedBody785_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_59 optimizedBody785_85

def optimizedBody785_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_58 optimizedBody785_86

def optimizedBody785_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_57 optimizedBody785_87

def optimizedBody785_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_56 optimizedBody785_88

def optimizedBody785_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_55 optimizedBody785_89

def optimizedBody785_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_54 optimizedBody785_90

def optimizedBody785_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_53 optimizedBody785_91

def optimizedBody785_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_52 optimizedBody785_92

def optimizedBody785_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_51 optimizedBody785_93

def optimizedBody785_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_50 optimizedBody785_94

def optimizedBody785_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_49 optimizedBody785_95

def optimizedBody785_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_48 optimizedBody785_96

def optimizedBody785_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_47 optimizedBody785_97

def optimizedBody785_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_46 optimizedBody785_98

def optimizedBody785_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_45 optimizedBody785_99

def optimizedBody785_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_44 optimizedBody785_100

def optimizedBody785_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_43 optimizedBody785_101

def optimizedBody785_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_42 optimizedBody785_102

def optimizedBody785_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_41 optimizedBody785_103

def optimizedBody785_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_40 optimizedBody785_104

def optimizedBody785_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_39 optimizedBody785_105

def optimizedBody785_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_15 optimizedBody785_106

def optimizedBody785_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_38 optimizedBody785_107

def optimizedBody785_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_34 optimizedBody785_108

def optimizedBody785_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_15 optimizedBody785_109

def optimizedBody785_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_33 optimizedBody785_110

def optimizedBody785_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_29 optimizedBody785_111

def optimizedBody785_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_28 optimizedBody785_112

def optimizedBody785_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_16 optimizedBody785_113

def optimizedBody785_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_27 optimizedBody785_114

def optimizedBody785_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_16 optimizedBody785_115

def optimizedBody785_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_26 optimizedBody785_116

def optimizedBody785_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_16 optimizedBody785_117

def optimizedBody785_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_25 optimizedBody785_118

def optimizedBody785_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_16 optimizedBody785_119

def optimizedBody785_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_24 optimizedBody785_120

def optimizedBody785_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_16 optimizedBody785_121

def optimizedBody785_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_23 optimizedBody785_122

def optimizedBody785_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_16 optimizedBody785_123

def optimizedBody785_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_22 optimizedBody785_124

def optimizedBody785_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_16 optimizedBody785_125

def optimizedBody785_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_21 optimizedBody785_126

def optimizedBody785_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_16 optimizedBody785_127

def optimizedBody785_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_20 optimizedBody785_128

def optimizedBody785_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_16 optimizedBody785_129

def optimizedBody785_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_19 optimizedBody785_130

def optimizedBody785_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_16 optimizedBody785_131

def optimizedBody785_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_18 optimizedBody785_132

def optimizedBody785_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_16 optimizedBody785_133

def optimizedBody785_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_17 optimizedBody785_134

def optimizedBody785_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_16 optimizedBody785_135

def optimizedBody785_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_15 optimizedBody785_136

def optimizedBody785_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_14 optimizedBody785_137

def optimizedBody785_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_9 optimizedBody785_138

def optimizedBody785_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_8 optimizedBody785_139

def optimizedBody785_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_4 optimizedBody785_140

def optimizedBody785_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_7 optimizedBody785_141

def optimizedBody785_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_4 optimizedBody785_142

def optimizedBody785_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_6 optimizedBody785_143

def optimizedBody785_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_4 optimizedBody785_144

def optimizedBody785_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_5 optimizedBody785_145

def optimizedBody785_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_4 optimizedBody785_146

def optimizedBody785_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_3 optimizedBody785_147

def optimizedBody785_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_2 optimizedBody785_148

def optimizedBody785_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_1 optimizedBody785_149

def optimizedBody785_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody785_0 optimizedBody785_150

def oracle785 : Option (Spt Nat) :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 15 (Flapjack.Spt.ls 18)))
                7
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 17) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln) 32
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 13 Flapjack.Spt.ln))
                2
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 8 (Flapjack.Spt.ls 11)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 39
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 16 Flapjack.Spt.ln))
                7
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 17)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 7 (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) (Flapjack.Spt.ls 17)) 7
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 11) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 2 (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 6 (Flapjack.Spt.ls 7)))
                8
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 19) (Flapjack.Spt.ls 15)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 35 (Flapjack.Spt.ls 14)) 7
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 18) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 11 (Flapjack.Spt.ls 10))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 0 (Flapjack.Spt.ls 3)) 7
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 0 (Flapjack.Spt.ls 4)))
                4
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 17) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 9))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 31
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 0 (Flapjack.Spt.ls 16)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 17) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 9 (Flapjack.Spt.ls 13)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 36
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln))
                2
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 17) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 0 (Flapjack.Spt.ls 14))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 11) Flapjack.Spt.ln) 6
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) (Flapjack.Spt.ls 0)) 3
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 17) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 0 (Flapjack.Spt.ls 27))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 35)))
                0
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 17) (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 12 (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 34
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 17) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 10 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 0 (Flapjack.Spt.ls 6)) 5
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 35)) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 34 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)
                (Flapjack.Spt.ls 24))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 33)) Flapjack.Spt.ln)
                (Flapjack.Spt.ls 31))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 36 Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 34)) Flapjack.Spt.ln)
                (Flapjack.Spt.ls 32))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)) 39 Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)
                (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 35 Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))))))))))
def optimized785 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(785, 3, optimizedBody785_151)
end InitECandidate.Proofs.SmallStages.Oracles785
