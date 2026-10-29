import InitECandidate.Proofs.WordStages.Optimize681
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source697
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody697_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (0, 0), (10, 4)]

def optimizedBody697_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 64#64))

def optimizedBody697_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody697_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 72#64))

def optimizedBody697_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 80#64))

def optimizedBody697_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 88#64))

def optimizedBody697_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 8), (50, 10), (48, 6), (52, 4), (54, 12), (56, 2)]

def optimizedBody697_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (8, 46), (50, 50), (6, 48), (4, 52), (46, 54), (0, 56)]

def optimizedBody697_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (50, 50), (6, 48), (4, 52), (46, 54), (0, 56)]

def optimizedBody697_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody697_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_8 optimizedBody697_9

def optimizedBody697_11 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody697_7, 697, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody697_10, 697, 3))

def optimizedBody697_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody697_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody697_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody697_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 50)]

def optimizedBody697_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 64#64)

def optimizedBody697_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (48, 44)]

def optimizedBody697_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 48)]

def optimizedBody697_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 48)]

def optimizedBody697_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_19 optimizedBody697_9

def optimizedBody697_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody697_18, 697, 4)) (some 78) ([2, 4]) (some (2, optimizedBody697_20, 697, 5))

def optimizedBody697_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody697_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody697_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody697_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_23 optimizedBody697_24

def optimizedBody697_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_22 optimizedBody697_25

def optimizedBody697_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_12 optimizedBody697_26

def optimizedBody697_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_21 optimizedBody697_27

def optimizedBody697_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_17 optimizedBody697_28

def optimizedBody697_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_16 optimizedBody697_29

def optimizedBody697_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_15 optimizedBody697_30

def optimizedBody697_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_12 optimizedBody697_31

def optimizedBody697_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 8), (50, 50), (6, 6), (4, 4), (46, 46), (0, 0), (44, 44)]

def optimizedBody697_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody697_32 optimizedBody697_33

def optimizedBody697_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (50, 50), (46, 46)]

def optimizedBody697_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 4), (10, 2), (14, 6), (16, 8), (44, 44), (50, 50), (0, 46)]

def optimizedBody697_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (0, 46)]

def optimizedBody697_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_37 optimizedBody697_9

def optimizedBody697_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody697_36, 697, 6)) (some 664) ([2, 4, 6, 8]) (some (2, optimizedBody697_38, 697, 7))

def optimizedBody697_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody697_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody697_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody697_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody697_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody697_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody697_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody697_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody697_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody697_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 12), (48, 10), (50, 50),
    (52, 14), (54, 0), (56, 18), (58, 20), (60, 16), (62, 22)]

def optimizedBody697_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 2), (4, 4), (6, 6), (8, 8), (44, 44), (12, 46), (10, 48), (50, 50), (14, 52), (20, 54), (18, 56), (22, 58),
    (16, 60), (0, 62)]

def optimizedBody697_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (10, 48), (50, 50), (14, 52), (20, 54), (18, 56), (22, 58), (16, 60), (0, 62)]

def optimizedBody697_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_51 optimizedBody697_9

def optimizedBody697_53 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody697_50, 697, 8)) (some 661) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody697_52, 697, 9))

def optimizedBody697_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 24), (48, 4), (50, 50),
    (52, 6), (54, 8)]

def optimizedBody697_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (16, 2), (4, 4), (44, 44), (14, 46), (0, 48), (50, 50), (10, 52), (12, 54)]

def optimizedBody697_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (0, 48), (50, 50), (10, 52), (12, 54)]

def optimizedBody697_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_56 optimizedBody697_9

def optimizedBody697_58 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody697_55, 697, 10)) (some 661) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody697_57, 697, 11))

def optimizedBody697_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (50, 50), (46, 8), (48, 6), (52, 16), (54, 4)]

def optimizedBody697_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 2), (4, 4), (6, 6), (8, 8), (44, 44), (50, 50), (12, 46), (10, 48), (14, 52), (0, 54)]

def optimizedBody697_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (12, 46), (10, 48), (14, 52), (0, 54)]

def optimizedBody697_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_61 optimizedBody697_9

def optimizedBody697_63 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody697_60, 697, 12)) (some 663) ([2, 4, 6, 8]) (some (2, optimizedBody697_62, 697, 13))

def optimizedBody697_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (46, 16), (48, 4), (50, 50), (52, 6), (54, 8)]

def optimizedBody697_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (18, 2), (4, 4), (44, 44), (16, 46), (0, 48), (10, 50), (12, 52), (14, 54)]

def optimizedBody697_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 46), (0, 48), (10, 50), (12, 52), (14, 54)]

def optimizedBody697_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_66 optimizedBody697_9

def optimizedBody697_68 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody697_65, 697, 14)) (some 663) ([2, 4, 6, 8]) (some (2, optimizedBody697_67, 697, 15))

def optimizedBody697_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 16), (4, 0), (6, 12), (8, 14), (10, 10), (44, 44), (46, 10), (48, 8), (50, 6), (52, 18), (54, 4)]

def optimizedBody697_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (8, 48), (6, 50), (10, 52), (4, 54)]

def optimizedBody697_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (6, 50), (10, 52), (4, 54)]

def optimizedBody697_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_71 optimizedBody697_9

def optimizedBody697_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody697_70, 697, 16)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody697_72, 697, 17))

def optimizedBody697_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody697_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody697_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44)]

def optimizedBody697_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody697_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody697_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_78 optimizedBody697_9

def optimizedBody697_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody697_77, 697, 18)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody697_79, 697, 19))

def optimizedBody697_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody697_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_23 optimizedBody697_81

def optimizedBody697_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_22 optimizedBody697_82

def optimizedBody697_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_12 optimizedBody697_83

def optimizedBody697_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_80 optimizedBody697_84

def optimizedBody697_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_76 optimizedBody697_85

def optimizedBody697_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_75 optimizedBody697_86

def optimizedBody697_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_74 optimizedBody697_87

def optimizedBody697_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_12 optimizedBody697_88

def optimizedBody697_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_73 optimizedBody697_89

def optimizedBody697_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_69 optimizedBody697_90

def optimizedBody697_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_12 optimizedBody697_91

def optimizedBody697_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_68 optimizedBody697_92

def optimizedBody697_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_64 optimizedBody697_93

def optimizedBody697_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_12 optimizedBody697_94

def optimizedBody697_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_63 optimizedBody697_95

def optimizedBody697_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_59 optimizedBody697_96

def optimizedBody697_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_12 optimizedBody697_97

def optimizedBody697_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_58 optimizedBody697_98

def optimizedBody697_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_54 optimizedBody697_99

def optimizedBody697_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_12 optimizedBody697_100

def optimizedBody697_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_53 optimizedBody697_101

def optimizedBody697_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_49 optimizedBody697_102

def optimizedBody697_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_48 optimizedBody697_103

def optimizedBody697_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_40 optimizedBody697_104

def optimizedBody697_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_47 optimizedBody697_105

def optimizedBody697_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_40 optimizedBody697_106

def optimizedBody697_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_46 optimizedBody697_107

def optimizedBody697_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_40 optimizedBody697_108

def optimizedBody697_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_45 optimizedBody697_109

def optimizedBody697_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_40 optimizedBody697_110

def optimizedBody697_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_44 optimizedBody697_111

def optimizedBody697_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_40 optimizedBody697_112

def optimizedBody697_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_43 optimizedBody697_113

def optimizedBody697_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_40 optimizedBody697_114

def optimizedBody697_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_42 optimizedBody697_115

def optimizedBody697_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_40 optimizedBody697_116

def optimizedBody697_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_41 optimizedBody697_117

def optimizedBody697_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_40 optimizedBody697_118

def optimizedBody697_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_12 optimizedBody697_119

def optimizedBody697_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_39 optimizedBody697_120

def optimizedBody697_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_35 optimizedBody697_121

def optimizedBody697_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_12 optimizedBody697_122

def optimizedBody697_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_12 optimizedBody697_123

def optimizedBody697_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_34 optimizedBody697_124

def optimizedBody697_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_14 optimizedBody697_125

def optimizedBody697_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_13 optimizedBody697_126

def optimizedBody697_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_12 optimizedBody697_127

def optimizedBody697_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_11 optimizedBody697_128

def optimizedBody697_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_6 optimizedBody697_129

def optimizedBody697_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_5 optimizedBody697_130

def optimizedBody697_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_131

def optimizedBody697_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_4 optimizedBody697_132

def optimizedBody697_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_133

def optimizedBody697_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_3 optimizedBody697_134

def optimizedBody697_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_135

def optimizedBody697_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_1 optimizedBody697_136

def optimizedBody697_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_0 optimizedBody697_137

def oracle697 : Option (Spt Nat) :=
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
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 5 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 10 (Flapjack.Spt.ls 25)) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 6
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) (Flapjack.Spt.ls 8))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 11 (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)))
                6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 7)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                6 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 6 Flapjack.Spt.ln) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 7 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3)))
                3
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 5 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 23
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 10))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 Flapjack.Spt.ln) (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))
                4
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)) 5
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln) 23
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 27
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 28)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln) 22
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 26
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 29))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 28
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 27))))))))))
def optimized697 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(697, 3, optimizedBody697_138)
theorem optimize697_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source697, oracle697) = optimized697 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize697_eq
end InitECandidate.Proofs.WordStages
