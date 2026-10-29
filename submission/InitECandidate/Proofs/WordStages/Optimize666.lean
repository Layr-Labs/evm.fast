import InitECandidate.Proofs.WordStages.Optimize650
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source666
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody666_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (20, 2), (18, 6)]

def optimizedBody666_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody666_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 4)]

def optimizedBody666_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody666_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody666_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody666_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody666_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody666_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 10 40#64))

def optimizedBody666_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 10 48#64))

def optimizedBody666_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 10 56#64))

def optimizedBody666_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody666_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody666_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 18 8#64))

def optimizedBody666_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 18 16#64))

def optimizedBody666_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 18 24#64))

def optimizedBody666_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 18 32#64))

def optimizedBody666_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 18 40#64))

def optimizedBody666_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 18 48#64))

def optimizedBody666_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 18 56#64))

def optimizedBody666_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0), (54, 4), (56, 2), (58, 6), (60, 8),
    (62, 20), (46, 30), (66, 16), (48, 18), (70, 14), (50, 32), (74, 12), (76, 10), (52, 34), (64, 26), (68, 28),
    (72, 22), (78, 24)]

def optimizedBody666_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (4, 4), (24, 2), (44, 44), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (14, 46), (66, 66),
    (16, 48), (70, 70), (10, 50), (74, 74), (76, 76), (12, 52), (18, 64), (20, 68), (22, 72), (0, 78)]

def optimizedBody666_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (14, 46), (66, 66), (16, 48), (70, 70), (10, 50),
    (74, 74), (76, 76), (12, 52), (18, 64), (20, 68), (22, 72), (0, 78)]

def optimizedBody666_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody666_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_22 optimizedBody666_23

def optimizedBody666_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody666_21, 666, 2)) (some 661) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody666_24, 666, 3))

def optimizedBody666_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody666_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 8), (48, 6), (50, 4),
    (52, 24), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 14), (66, 66), (68, 16), (70, 70), (72, 10),
    (74, 74), (76, 76), (78, 12), (80, 18), (82, 20), (84, 22), (86, 0)]

def optimizedBody666_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (24, 2), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (22, 56), (18, 58),
    (20, 60), (54, 62), (14, 64), (58, 66), (16, 68), (62, 70), (10, 72), (64, 74), (68, 76), (12, 78), (72, 80),
    (74, 82), (76, 84), (78, 86)]

def optimizedBody666_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (22, 56), (18, 58), (20, 60), (54, 62), (14, 64),
    (58, 66), (16, 68), (62, 70), (10, 72), (64, 74), (68, 76), (12, 78), (72, 80), (74, 82), (76, 84), (78, 86)]

def optimizedBody666_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_29 optimizedBody666_23

def optimizedBody666_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody666_28, 666, 4)) (some 661) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody666_30, 666, 5))

def optimizedBody666_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 4), (58, 58), (60, 24), (62, 62), (64, 64), (66, 6), (68, 68), (70, 8), (72, 72), (74, 74),
    (76, 76), (78, 78)]

def optimizedBody666_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (4, 4), (24, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (16, 58),
    (58, 60), (14, 62), (12, 64), (60, 66), (10, 68), (62, 70), (18, 72), (20, 74), (22, 76), (0, 78)]

def optimizedBody666_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (16, 58), (58, 60), (14, 62), (12, 64),
    (60, 66), (10, 68), (62, 70), (18, 72), (20, 74), (22, 76), (0, 78)]

def optimizedBody666_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_34 optimizedBody666_23

def optimizedBody666_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody666_33, 666, 6)) (some 661) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody666_35, 666, 7))

def optimizedBody666_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 8), (66, 6), (68, 4), (70, 24)]

def optimizedBody666_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (8, 8), (24, 2), (4, 4), (44, 44), (20, 46), (18, 48), (0, 50), (22, 52), (54, 54), (12, 56), (10, 58),
    (14, 60), (16, 62), (56, 64), (58, 66), (60, 68), (62, 70)]

def optimizedBody666_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (20, 46), (18, 48), (0, 50), (22, 52), (54, 54), (12, 56), (10, 58), (14, 60), (16, 62), (56, 64),
    (58, 66), (60, 68), (62, 70)]

def optimizedBody666_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_39 optimizedBody666_23

def optimizedBody666_41 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody666_38, 666, 8)) (some 661) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody666_40, 666, 9))

def optimizedBody666_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 6), (48, 8), (50, 24),
    (52, 4), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody666_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (24, 2), (6, 6), (8, 8), (44, 44), (14, 46), (16, 48), (10, 50), (12, 52), (46, 54), (20, 56), (18, 58),
    (0, 60), (22, 62)]

def optimizedBody666_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (14, 46), (16, 48), (10, 50), (12, 52), (46, 54), (20, 56), (18, 58), (0, 60), (22, 62)]

def optimizedBody666_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_44 optimizedBody666_23

def optimizedBody666_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody666_43, 666, 10)) (some 659) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody666_45, 666, 11))

def optimizedBody666_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 4), (50, 24),
    (52, 6), (54, 8)]

def optimizedBody666_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (18, 2), (6, 6), (8, 8), (20, 44), (0, 46), (14, 48), (16, 50), (12, 52), (10, 54)]

def optimizedBody666_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (20, 44), (0, 46), (14, 48), (16, 50), (12, 52), (10, 54)]

def optimizedBody666_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_49 optimizedBody666_23

def optimizedBody666_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody666_48, 666, 12)) (some 658) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody666_50, 666, 13))

def optimizedBody666_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (16, 16), (10, 10), (12, 12), (14, 14)]

def optimizedBody666_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody666_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (14, 14)]

def optimizedBody666_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody666_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12)]

def optimizedBody666_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody666_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody666_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody666_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody666_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody666_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (18, 18), (8, 8), (6, 6), (4, 4)]

def optimizedBody666_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody666_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody666_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody666_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody666_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody666_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody666_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody666_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody666_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody666_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 20 [2]

def optimizedBody666_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_71 optimizedBody666_72

def optimizedBody666_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_70 optimizedBody666_73

def optimizedBody666_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_69 optimizedBody666_74

def optimizedBody666_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_68 optimizedBody666_75

def optimizedBody666_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_67 optimizedBody666_76

def optimizedBody666_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_66 optimizedBody666_77

def optimizedBody666_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_65 optimizedBody666_78

def optimizedBody666_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_64 optimizedBody666_79

def optimizedBody666_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_63 optimizedBody666_80

def optimizedBody666_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_62 optimizedBody666_81

def optimizedBody666_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_61 optimizedBody666_82

def optimizedBody666_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_60 optimizedBody666_83

def optimizedBody666_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_59 optimizedBody666_84

def optimizedBody666_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_58 optimizedBody666_85

def optimizedBody666_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_57 optimizedBody666_86

def optimizedBody666_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_56 optimizedBody666_87

def optimizedBody666_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_55 optimizedBody666_88

def optimizedBody666_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_54 optimizedBody666_89

def optimizedBody666_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_53 optimizedBody666_90

def optimizedBody666_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_52 optimizedBody666_91

def optimizedBody666_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_26 optimizedBody666_92

def optimizedBody666_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_51 optimizedBody666_93

def optimizedBody666_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_47 optimizedBody666_94

def optimizedBody666_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_26 optimizedBody666_95

def optimizedBody666_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_46 optimizedBody666_96

def optimizedBody666_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_42 optimizedBody666_97

def optimizedBody666_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_26 optimizedBody666_98

def optimizedBody666_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_41 optimizedBody666_99

def optimizedBody666_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_37 optimizedBody666_100

def optimizedBody666_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_26 optimizedBody666_101

def optimizedBody666_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_36 optimizedBody666_102

def optimizedBody666_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_32 optimizedBody666_103

def optimizedBody666_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_26 optimizedBody666_104

def optimizedBody666_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_31 optimizedBody666_105

def optimizedBody666_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_27 optimizedBody666_106

def optimizedBody666_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_26 optimizedBody666_107

def optimizedBody666_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_25 optimizedBody666_108

def optimizedBody666_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_20 optimizedBody666_109

def optimizedBody666_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_19 optimizedBody666_110

def optimizedBody666_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_11 optimizedBody666_111

def optimizedBody666_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_18 optimizedBody666_112

def optimizedBody666_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_11 optimizedBody666_113

def optimizedBody666_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_17 optimizedBody666_114

def optimizedBody666_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_11 optimizedBody666_115

def optimizedBody666_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_16 optimizedBody666_116

def optimizedBody666_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_11 optimizedBody666_117

def optimizedBody666_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_15 optimizedBody666_118

def optimizedBody666_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_11 optimizedBody666_119

def optimizedBody666_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_14 optimizedBody666_120

def optimizedBody666_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_11 optimizedBody666_121

def optimizedBody666_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_13 optimizedBody666_122

def optimizedBody666_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_11 optimizedBody666_123

def optimizedBody666_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_12 optimizedBody666_124

def optimizedBody666_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_11 optimizedBody666_125

def optimizedBody666_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_10 optimizedBody666_126

def optimizedBody666_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_4 optimizedBody666_127

def optimizedBody666_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_9 optimizedBody666_128

def optimizedBody666_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_4 optimizedBody666_129

def optimizedBody666_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_8 optimizedBody666_130

def optimizedBody666_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_4 optimizedBody666_131

def optimizedBody666_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_7 optimizedBody666_132

def optimizedBody666_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_4 optimizedBody666_133

def optimizedBody666_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_6 optimizedBody666_134

def optimizedBody666_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_4 optimizedBody666_135

def optimizedBody666_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_5 optimizedBody666_136

def optimizedBody666_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_4 optimizedBody666_137

def optimizedBody666_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_3 optimizedBody666_138

def optimizedBody666_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_2 optimizedBody666_139

def optimizedBody666_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_1 optimizedBody666_140

def optimizedBody666_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody666_0 optimizedBody666_141

def oracle666 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 2)) 7 (Flapjack.Spt.ls 29)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                  5 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
                  16 (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 12))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)) 9 (Flapjack.Spt.ls 37)) 11
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                  15 (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 28 (Flapjack.Spt.ls 9)))
                10
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) Flapjack.Spt.ln)
                  13 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 3
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 10)))
                  7 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 8)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 5 (Flapjack.Spt.ls 32)) 3
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                  9 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 3)) 30 (Flapjack.Spt.ls 27)))
                9
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  14 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  8 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 5)) (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 38 (Flapjack.Spt.ls 6)) 4
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln)
                  17 (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 6)) 11 (Flapjack.Spt.ls 39)) 12
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 12
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6)))
                  6 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 31)) 2 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 9)) 31 (Flapjack.Spt.ls 7)))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                  9 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))
                  9 (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 0)) 6 (Flapjack.Spt.ls 36)) 5
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                  9 (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 27 (Flapjack.Spt.ls 11)))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 Flapjack.Spt.ln) 5
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 23)))
                  9 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 7)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 35 (Flapjack.Spt.ls 5)) 5
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  9 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 4)) 29 (Flapjack.Spt.ls 10)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                  5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
                  9 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 6)) (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 37 (Flapjack.Spt.ls 34)) 5
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                  9 (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) 10 (Flapjack.Spt.ls 38)) 5
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5)))
                  9 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 10)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 33 (Flapjack.Spt.ls 8)) 5 Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 23 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 24 (Flapjack.Spt.ls 39))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) (Flapjack.Spt.ls 36))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 22 (Flapjack.Spt.ls 31)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 23)) 30 (Flapjack.Spt.ls 35))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 43)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 27))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 25)) 23 (Flapjack.Spt.ls 37))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) (Flapjack.Spt.ls 32))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 29)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 28 (Flapjack.Spt.ls 33))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 41)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 35))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 22 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 26)) 33 (Flapjack.Spt.ls 38))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) (Flapjack.Spt.ls 34))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 30)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 22)) 29 (Flapjack.Spt.ls 34))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 42)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 26))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 24)) 31 (Flapjack.Spt.ls 36))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 26))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 28)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) (Flapjack.Spt.ls 39))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 27 (Flapjack.Spt.ls 32))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 40)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 34)))))))))))
def optimized666 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(666, 4, optimizedBody666_142)
theorem optimize666_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source666, oracle666) = optimized666 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize666_eq
end InitECandidate.Proofs.WordStages
