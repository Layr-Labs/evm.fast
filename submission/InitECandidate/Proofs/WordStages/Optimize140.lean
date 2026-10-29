import InitECandidate.Proofs.WordStages.Optimize124
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source140
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody140_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody140_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 1#64)

def optimizedBody140_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def optimizedBody140_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody140_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def optimizedBody140_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 12), (6, 14), (8, 16), (44, 0), (46, 16), (50, 18), (62, 8), (52, 20), (54, 4), (48, 12), (66, 2),
    (56, 22), (64, 2), (60, 4), (68, 8), (58, 10), (70, 6), (72, 24), (74, 6), (76, 14)]

def optimizedBody140_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(26, 2), (44, 44), (36, 46), (50, 50), (62, 62), (52, 52), (54, 54), (4, 48), (66, 66), (48, 56), (64, 64), (60, 60),
    (68, 68), (18, 58), (58, 70), (46, 72), (56, 74), (6, 76)]

def optimizedBody140_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (36, 46), (50, 50), (62, 62), (52, 52), (54, 54), (4, 48), (66, 66), (48, 56), (64, 64), (60, 60),
    (68, 68), (18, 58), (58, 70), (46, 72), (56, 74), (6, 76)]

def optimizedBody140_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody140_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_7 optimizedBody140_8

def optimizedBody140_10 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody140_6, 140, 2)) (some 138) ([2, 4, 6, 8]) (some (2, optimizedBody140_9, 140, 3))

def optimizedBody140_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody140_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody140_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (36, 36), (50, 50), (62, 62), (52, 52), (54, 54), (26, 26), (4, 4), (66, 66), (48, 48), (64, 64), (60, 60),
    (68, 68), (18, 18), (8, 8), (58, 58), (46, 46), (56, 56), (6, 6)]

def optimizedBody140_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26), (10, 8)]

def optimizedBody140_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 18), (4, 4), (6, 6), (8, 36), (10, 10), (44, 44), (46, 36), (48, 50), (50, 62), (52, 52), (54, 54), (56, 26),
    (58, 4), (66, 66), (60, 48), (62, 64), (64, 60), (68, 68), (70, 18), (72, 10), (74, 58), (76, 46), (78, 56),
    (80, 6)]

def optimizedBody140_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (10, 66), (60, 60), (62, 62),
    (38, 64), (16, 68), (64, 70), (66, 72), (68, 74), (70, 76), (14, 78), (72, 80)]

def optimizedBody140_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (10, 66), (60, 60), (62, 62),
    (38, 64), (16, 68), (64, 70), (66, 72), (68, 74), (70, 76), (14, 78), (72, 80)]

def optimizedBody140_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_17 optimizedBody140_8

def optimizedBody140_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody140_16, 140, 4)) (some 104) ([2, 4, 6, 8, 10]) (some (2, optimizedBody140_18, 140, 5))

def optimizedBody140_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody140_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody140_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 70), (4, 60), (6, 48), (8, 52), (10, 10), (12, 38), (14, 14), (16, 16), (44, 44), (46, 46), (50, 50), (54, 54),
    (48, 56), (58, 58), (52, 10), (62, 62), (56, 38), (60, 16), (64, 64), (66, 66), (68, 68), (70, 14), (72, 72)]

def optimizedBody140_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (8, 8), (4, 4), (18, 2), (44, 44), (46, 46), (50, 50), (54, 54), (0, 48), (58, 58), (10, 52), (62, 62),
    (38, 56), (16, 60), (64, 64), (12, 66), (68, 68), (14, 70), (72, 72)]

def optimizedBody140_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (54, 54), (0, 48), (58, 58), (10, 52), (62, 62), (38, 56), (16, 60), (64, 64),
    (12, 66), (68, 68), (14, 70), (72, 72)]

def optimizedBody140_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_24 optimizedBody140_8

def optimizedBody140_26 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody140_23, 140, 6)) (some 120) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody140_25, 140, 7))

def optimizedBody140_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 6), (50, 50), (52, 8), (54, 54), (0, 0), (58, 58), (10, 10), (60, 4), (62, 62), (38, 38),
    (16, 16), (64, 64), (12, 12), (68, 68), (70, 18), (14, 14), (72, 72)]

def optimizedBody140_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_11 optimizedBody140_27

def optimizedBody140_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_26 optimizedBody140_28

def optimizedBody140_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_22 optimizedBody140_29

def optimizedBody140_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_11 optimizedBody140_30

def optimizedBody140_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (58, 58), (10, 10), (60, 60), (62, 62),
    (38, 38), (16, 16), (64, 64), (12, 66), (68, 68), (70, 70), (14, 14), (72, 72)]

def optimizedBody140_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_11 optimizedBody140_32

def optimizedBody140_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody140_31 optimizedBody140_33

def optimizedBody140_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody140_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody140_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 0), (8, 8)]

def optimizedBody140_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 38), (6, 14), (8, 16), (10, 10), (12, 38), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 26), (58, 58), (60, 60), (62, 62), (64, 64), (66, 8), (68, 68), (70, 70), (72, 72)]

def optimizedBody140_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (38, 4), (16, 8), (14, 6), (34, 44), (36, 46), (28, 48), (0, 50), (20, 52), (12, 54), (26, 56), (4, 58),
    (22, 60), (24, 62), (18, 64), (8, 66), (30, 68), (32, 70), (6, 72)]

def optimizedBody140_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (34, 44), (36, 46), (28, 48), (0, 50), (20, 52), (12, 54), (26, 56), (4, 58), (22, 60), (24, 62), (18, 64),
    (8, 66), (30, 68), (32, 70), (6, 72)]

def optimizedBody140_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_40 optimizedBody140_8

def optimizedBody140_42 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody140_39, 140, 8)) (some 120) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody140_41, 140, 9))

def optimizedBody140_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(34, 34), (36, 36), (28, 28), (0, 0), (20, 20), (12, 12), (26, 26), (4, 4), (10, 10), (22, 22), (24, 24), (38, 38),
    (16, 16), (18, 18), (8, 8), (30, 30), (32, 32), (14, 14), (6, 6)]

def optimizedBody140_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_11 optimizedBody140_43

def optimizedBody140_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_42 optimizedBody140_44

def optimizedBody140_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_38 optimizedBody140_45

def optimizedBody140_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_11 optimizedBody140_46

def optimizedBody140_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(34, 44), (36, 46), (28, 48), (0, 50), (20, 52), (12, 54), (26, 26), (4, 58), (10, 10), (22, 60), (24, 62), (38, 38),
    (16, 16), (18, 64), (8, 8), (30, 68), (32, 70), (14, 14), (6, 72)]

def optimizedBody140_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_11 optimizedBody140_48

def optimizedBody140_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 26) optimizedBody140_47 optimizedBody140_49

def optimizedBody140_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 34), (36, 36), (50, 28), (62, 0), (52, 20), (54, 12), (26, 26), (4, 4), (66, 10), (48, 22), (64, 24), (60, 38),
    (68, 16), (18, 18), (8, 8), (58, 30), (46, 32), (56, 14), (6, 6)]

def optimizedBody140_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody140_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_51 optimizedBody140_52

def optimizedBody140_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_11 optimizedBody140_53

def optimizedBody140_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_50 optimizedBody140_54

def optimizedBody140_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_37 optimizedBody140_55

def optimizedBody140_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_36 optimizedBody140_56

def optimizedBody140_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_35 optimizedBody140_57

def optimizedBody140_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_11 optimizedBody140_58

def optimizedBody140_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_34 optimizedBody140_59

def optimizedBody140_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_21 optimizedBody140_60

def optimizedBody140_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_20 optimizedBody140_61

def optimizedBody140_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_11 optimizedBody140_62

def optimizedBody140_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_19 optimizedBody140_63

def optimizedBody140_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_15 optimizedBody140_64

def optimizedBody140_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_11 optimizedBody140_65

def optimizedBody140_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody140_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_11 optimizedBody140_67

def optimizedBody140_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 26) optimizedBody140_66 optimizedBody140_68

def optimizedBody140_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (36, 36), (50, 2), (62, 10), (52, 12), (54, 14), (26, 26), (4, 4), (66, 16), (48, 20), (64, 22), (60, 24),
    (68, 28), (18, 18), (8, 8), (58, 30), (46, 32), (56, 34), (6, 6)]

def optimizedBody140_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_11 optimizedBody140_70

def optimizedBody140_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_69 optimizedBody140_71

def optimizedBody140_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_14 optimizedBody140_72

def optimizedBody140_74 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln) optimizedBody140_73 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody140_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46), (4, 48), (6, 50), (8, 52)]

def optimizedBody140_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4, 6, 8]

def optimizedBody140_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_75 optimizedBody140_76

def optimizedBody140_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_11 optimizedBody140_77

def optimizedBody140_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_74 optimizedBody140_78

def optimizedBody140_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_13 optimizedBody140_79

def optimizedBody140_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_11 optimizedBody140_80

def optimizedBody140_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_12 optimizedBody140_81

def optimizedBody140_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_11 optimizedBody140_82

def optimizedBody140_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_10 optimizedBody140_83

def optimizedBody140_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_5 optimizedBody140_84

def optimizedBody140_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_4 optimizedBody140_85

def optimizedBody140_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_3 optimizedBody140_86

def optimizedBody140_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_2 optimizedBody140_87

def optimizedBody140_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_1 optimizedBody140_88

def optimizedBody140_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody140_0 optimizedBody140_89

def oracle140 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))) 30
                  (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 26 Flapjack.Spt.ln)))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 17))) 25
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 34 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 19))))
                12
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 4))) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 22
                    (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 4)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 33 (Flapjack.Spt.ls 1)))
                5
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 19)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 2)) 23
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))) 24
                  (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 18)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 16)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 32 Flapjack.Spt.ln))
                7
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7)) 3
                    (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 6))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 16))) 26
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 4 Flapjack.Spt.ln))
                9
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 18)) 13
                    (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 12)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 19) 13 Flapjack.Spt.ln))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 9
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 18))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14))) 32
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 16))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 17)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 19 (Flapjack.Spt.ls 3))) 18
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
                8
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 19 (Flapjack.Spt.ls 13))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 15))) 27
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 29 Flapjack.Spt.ln))
                10
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 9)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 2 (Flapjack.Spt.ls 0)))
                4
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 29
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 14)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 36)) 33
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 18 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 15)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
                6
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 13)) 28
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 10))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 31
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 9 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
                11
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 11)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 27 (Flapjack.Spt.ls 0)))
                2
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 34
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 17)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 34 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 37 Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 31 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 34)) 33 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 32 Flapjack.Spt.ln) 37 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 36)) 32 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 35 Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 23 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 39 Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 32)) 27 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 30 Flapjack.Spt.ln) 35 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 30 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 36 Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 25 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 40 Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 33)) 24 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 31 Flapjack.Spt.ln) 36 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 35)) 28 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 34 Flapjack.Spt.ln) 38 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 22 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 38 Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 30)) 26 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 29 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))))))))
def optimized140 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(140, 9, optimizedBody140_90)
theorem optimize140_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source140, oracle140) = optimized140 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize140_eq
end InitECandidate.Proofs.WordStages
