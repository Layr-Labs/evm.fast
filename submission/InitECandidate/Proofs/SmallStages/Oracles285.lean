import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source285
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles285
def optimizedBody285_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14)]

def optimizedBody285_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 16 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody285_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 8), (50, 16), (52, 12), (56, 10), (60, 6), (62, 14)]

def optimizedBody285_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (12, 44), (44, 46), (0, 50), (50, 52), (46, 56), (10, 60), (52, 62)]

def optimizedBody285_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (44, 46), (0, 50), (50, 52), (46, 56), (10, 60), (52, 62)]

def optimizedBody285_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody285_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_4 optimizedBody285_5

def optimizedBody285_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_3, 285, 2)) (some 284) ([2, 4]) (some (2, optimizedBody285_6, 285, 3))

def optimizedBody285_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody285_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody285_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody285_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody285_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody285_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody285_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody285_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody285_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_15 optimizedBody285_5

def optimizedBody285_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_14 optimizedBody285_16

def optimizedBody285_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_13 optimizedBody285_17

def optimizedBody285_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_12 optimizedBody285_18

def optimizedBody285_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_11 optimizedBody285_19

def optimizedBody285_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_20

def optimizedBody285_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody285_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody285_21 optimizedBody285_22

def optimizedBody285_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody285_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 44), (4, 46), (6, 50), (8, 52)]

def optimizedBody285_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4, 6, 8]

def optimizedBody285_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_26

def optimizedBody285_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_27

def optimizedBody285_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(48, 44), (54, 50), (58, 46), (66, 52)]

def optimizedBody285_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 0) optimizedBody285_28 optimizedBody285_29

def optimizedBody285_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 12), (48, 48), (52, 0), (54, 54), (58, 58), (56, 10), (66, 66)]

def optimizedBody285_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (0, 2), (8, 8), (6, 6), (44, 44), (48, 48), (52, 52), (54, 54), (58, 58), (56, 56), (66, 66)]

def optimizedBody285_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (52, 52), (54, 54), (58, 58), (56, 56), (66, 66)]

def optimizedBody285_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_33 optimizedBody285_5

def optimizedBody285_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_32, 285, 4)) (some 99) ([2]) (some (2, optimizedBody285_34, 285, 5))

def optimizedBody285_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody285_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 4), (48, 48), (50, 0), (52, 52), (54, 54), (58, 58), (56, 56), (64, 8), (66, 66), (68, 6)]

def optimizedBody285_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (12, 2), (4, 4), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (52, 54), (58, 58), (10, 56),
    (64, 64), (66, 66), (68, 68)]

def optimizedBody285_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (52, 54), (58, 58), (10, 56), (64, 64), (66, 66), (68, 68)]

def optimizedBody285_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_39 optimizedBody285_5

def optimizedBody285_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_38, 285, 6)) (some 99) ([2]) (some (2, optimizedBody285_40, 285, 7))

def optimizedBody285_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody285_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 10 (Flapjack.WordRegImm.reg 0)))

def optimizedBody285_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (70, 44), (44, 46), (46, 48), (48, 50), (50, 52), (52, 6), (54, 12), (56, 58), (58, 4), (60, 8), (62, 64),
    (64, 66), (66, 68)]

def optimizedBody285_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 8), (14, 6), (10, 2), (12, 4), (70, 70), (44, 44), (0, 46), (48, 48), (6, 50), (52, 52), (54, 54), (4, 56),
    (58, 58), (60, 60), (62, 62), (8, 64), (66, 66)]

def optimizedBody285_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (70, 70), (44, 44), (0, 46), (48, 48), (6, 50), (52, 52), (54, 54), (4, 56), (58, 58), (60, 60), (62, 62),
    (8, 64), (66, 66)]

def optimizedBody285_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_46 optimizedBody285_5

def optimizedBody285_48 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_45, 285, 8)) (some 99) ([2]) (some (2, optimizedBody285_47, 285, 9))

def optimizedBody285_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (70, 70), (44, 44), (46, 0), (48, 48),
    (50, 6), (52, 52), (54, 54), (56, 4), (58, 58), (60, 60), (62, 62), (64, 8), (66, 66)]

def optimizedBody285_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (0, 2), (6, 6), (4, 4), (70, 70), (12, 44), (46, 46), (10, 48), (50, 50), (44, 52), (48, 54), (54, 56),
    (52, 58), (56, 60), (16, 62), (58, 64), (14, 66)]

def optimizedBody285_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (70, 70), (12, 44), (46, 46), (10, 48), (50, 50), (44, 52), (48, 54), (54, 56), (52, 58), (56, 60), (16, 62),
    (58, 64), (14, 66)]

def optimizedBody285_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_51 optimizedBody285_5

def optimizedBody285_53 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_50, 285, 10)) (some 120) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody285_52, 285, 11))

def optimizedBody285_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (70, 70), (46, 46), (50, 50), (44, 44),
    (48, 48), (54, 54), (52, 52), (56, 56), (58, 58)]

def optimizedBody285_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (0, 2), (6, 6), (8, 8), (70, 70), (46, 46), (50, 50), (14, 44), (10, 48), (54, 54), (12, 52), (16, 56),
    (58, 58)]

def optimizedBody285_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (70, 70), (46, 46), (50, 50), (14, 44), (10, 48), (54, 54), (12, 52), (16, 56), (58, 58)]

def optimizedBody285_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_56 optimizedBody285_5

def optimizedBody285_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_55, 285, 12)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody285_57, 285, 13))

def optimizedBody285_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (70, 70), (46, 46), (50, 50), (54, 54),
    (58, 58)]

def optimizedBody285_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (4, 4), (0, 2), (70, 70), (46, 46), (50, 50), (54, 54), (58, 58)]

def optimizedBody285_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (70, 70), (46, 46), (50, 50), (54, 54), (58, 58)]

def optimizedBody285_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_61 optimizedBody285_5

def optimizedBody285_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_60, 285, 14)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody285_62, 285, 15))

def optimizedBody285_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (70, 70), (44, 6), (46, 46), (48, 8), (50, 50), (52, 4), (54, 54), (56, 0), (58, 58)]

def optimizedBody285_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (70, 70), (14, 44), (44, 46), (16, 48), (46, 50), (12, 52), (48, 54), (10, 56), (50, 58)]

def optimizedBody285_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (70, 70), (14, 44), (44, 46), (16, 48), (46, 50), (12, 52), (48, 54), (10, 56), (50, 58)]

def optimizedBody285_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_66 optimizedBody285_5

def optimizedBody285_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_65, 285, 16)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody285_67, 285, 17))

def optimizedBody285_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody285_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody285_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (70, 70), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody285_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 6), (16, 8), (12, 4), (10, 2), (70, 70), (0, 44), (6, 46), (4, 48), (8, 50)]

def optimizedBody285_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (70, 70), (0, 44), (6, 46), (4, 48), (8, 50)]

def optimizedBody285_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_73 optimizedBody285_5

def optimizedBody285_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_72, 285, 18)) (some 99) ([2]) (some (2, optimizedBody285_74, 285, 19))

def optimizedBody285_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(70, 70), (14, 14), (0, 0), (16, 16), (6, 6), (12, 12), (4, 4), (10, 10), (8, 8)]

def optimizedBody285_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_76

def optimizedBody285_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_75 optimizedBody285_77

def optimizedBody285_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_71 optimizedBody285_78

def optimizedBody285_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_70 optimizedBody285_79

def optimizedBody285_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_80

def optimizedBody285_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(70, 70), (14, 14), (0, 44), (16, 16), (6, 46), (12, 12), (4, 48), (10, 10), (8, 50)]

def optimizedBody285_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_82

def optimizedBody285_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody285_81 optimizedBody285_83

def optimizedBody285_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (70, 70)]

def optimizedBody285_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 2), (6, 6), (4, 4), (8, 8), (12, 70)]

def optimizedBody285_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 70)]

def optimizedBody285_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_87 optimizedBody285_5

def optimizedBody285_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_86, 285, 20)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody285_88, 285, 21))

def optimizedBody285_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 14), (4, 4), (6, 6), (8, 8)]

def optimizedBody285_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_90 optimizedBody285_26

def optimizedBody285_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_91

def optimizedBody285_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_89 optimizedBody285_92

def optimizedBody285_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_85 optimizedBody285_93

def optimizedBody285_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_94

def optimizedBody285_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_84 optimizedBody285_95

def optimizedBody285_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_10 optimizedBody285_96

def optimizedBody285_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_69 optimizedBody285_97

def optimizedBody285_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_98

def optimizedBody285_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_68 optimizedBody285_99

def optimizedBody285_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_64 optimizedBody285_100

def optimizedBody285_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_101

def optimizedBody285_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_63 optimizedBody285_102

def optimizedBody285_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_59 optimizedBody285_103

def optimizedBody285_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_104

def optimizedBody285_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_58 optimizedBody285_105

def optimizedBody285_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_54 optimizedBody285_106

def optimizedBody285_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_107

def optimizedBody285_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_53 optimizedBody285_108

def optimizedBody285_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_49 optimizedBody285_109

def optimizedBody285_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_110

def optimizedBody285_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_48 optimizedBody285_111

def optimizedBody285_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_44 optimizedBody285_112

def optimizedBody285_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_43 optimizedBody285_113

def optimizedBody285_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_24 optimizedBody285_114

def optimizedBody285_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_115

def optimizedBody285_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (50, 50), (0, 0), (52, 52), (54, 6), (56, 12), (58, 58), (60, 4), (62, 8), (10, 10), (64, 64),
    (66, 66), (68, 68), (44, 44)]

def optimizedBody285_118 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 10) optimizedBody285_116 optimizedBody285_117

def optimizedBody285_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody285_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody285_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 8), (14, 6), (10, 2), (12, 4), (44, 44), (46, 46), (0, 48), (50, 50), (6, 52), (54, 54), (56, 56), (4, 58),
    (60, 60), (62, 62), (64, 64), (8, 66), (68, 68)]

def optimizedBody285_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (6, 52), (54, 54), (56, 56), (4, 58), (60, 60), (62, 62), (64, 64),
    (8, 66), (68, 68)]

def optimizedBody285_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_122 optimizedBody285_5

def optimizedBody285_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody285_121, 285, 22)) (some 99) ([2]) (some (2, optimizedBody285_123, 285, 23))

def optimizedBody285_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 0), (50, 50),
    (52, 6), (54, 54), (56, 56), (58, 4), (60, 60), (62, 62), (64, 64), (66, 8), (68, 68)]

def optimizedBody285_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (0, 2), (6, 6), (4, 4), (44, 44), (12, 46), (46, 48), (10, 50), (48, 52), (50, 54), (52, 56), (54, 58),
    (56, 60), (58, 62), (16, 64), (60, 66), (14, 68)]

def optimizedBody285_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (46, 48), (10, 50), (48, 52), (50, 54), (52, 56), (54, 58), (56, 60), (58, 62), (16, 64),
    (60, 66), (14, 68)]

def optimizedBody285_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_127 optimizedBody285_5

def optimizedBody285_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody285_126, 285, 24)) (some 120) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody285_128, 285, 25))

def optimizedBody285_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody285_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (0, 2), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (14, 50), (10, 52), (50, 54), (12, 56), (16, 58),
    (52, 60)]

def optimizedBody285_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (14, 50), (10, 52), (50, 54), (12, 56), (16, 58), (52, 60)]

def optimizedBody285_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_132 optimizedBody285_5

def optimizedBody285_134 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_131, 285, 26)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody285_133, 285, 27))

def optimizedBody285_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52)]

def optimizedBody285_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 6), (16, 8), (12, 4), (10, 2), (44, 44), (0, 46), (6, 48), (4, 50), (8, 52)]

def optimizedBody285_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (4, 50), (8, 52)]

def optimizedBody285_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_137 optimizedBody285_5

def optimizedBody285_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_136, 285, 28)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody285_138, 285, 29))

def optimizedBody285_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody285_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (4, 4), (8, 8), (6, 6), (0, 44)]

def optimizedBody285_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody285_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_142 optimizedBody285_5

def optimizedBody285_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_141, 285, 30)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody285_143, 285, 31))

def optimizedBody285_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody285_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody285_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_145 optimizedBody285_146

def optimizedBody285_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_147

def optimizedBody285_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_144 optimizedBody285_148

def optimizedBody285_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_140 optimizedBody285_149

def optimizedBody285_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_150

def optimizedBody285_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_139 optimizedBody285_151

def optimizedBody285_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_135 optimizedBody285_152

def optimizedBody285_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_153

def optimizedBody285_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_134 optimizedBody285_154

def optimizedBody285_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_130 optimizedBody285_155

def optimizedBody285_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_156

def optimizedBody285_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_129 optimizedBody285_157

def optimizedBody285_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_125 optimizedBody285_158

def optimizedBody285_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_159

def optimizedBody285_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_124 optimizedBody285_160

def optimizedBody285_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_120 optimizedBody285_161

def optimizedBody285_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_119 optimizedBody285_162

def optimizedBody285_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_42 optimizedBody285_163

def optimizedBody285_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_164

def optimizedBody285_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_165

def optimizedBody285_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_118 optimizedBody285_166

def optimizedBody285_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_42 optimizedBody285_167

def optimizedBody285_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_168

def optimizedBody285_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_41 optimizedBody285_169

def optimizedBody285_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_37 optimizedBody285_170

def optimizedBody285_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_36 optimizedBody285_171

def optimizedBody285_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_172

def optimizedBody285_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_35 optimizedBody285_173

def optimizedBody285_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_31 optimizedBody285_174

def optimizedBody285_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_175

def optimizedBody285_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_176

def optimizedBody285_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_30 optimizedBody285_177

def optimizedBody285_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_24 optimizedBody285_178

def optimizedBody285_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_179

def optimizedBody285_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_180

def optimizedBody285_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_23 optimizedBody285_181

def optimizedBody285_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_10 optimizedBody285_182

def optimizedBody285_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_9 optimizedBody285_183

def optimizedBody285_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_184

def optimizedBody285_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_7 optimizedBody285_185

def optimizedBody285_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_2 optimizedBody285_186

def optimizedBody285_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_1 optimizedBody285_187

def optimizedBody285_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_0 optimizedBody285_188

def oracle285 : Option (Spt Nat) :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 23 Flapjack.Spt.ln) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 8)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 35))))
                7
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 2)) 25
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) 29
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                  2
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 35))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) (Flapjack.Spt.ls 33)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 4 (Flapjack.Spt.ls 6)) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 5))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 27)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 8 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5))))
                  1 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 (Flapjack.Spt.ls 3)))
                  22 (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 33
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 8))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 (Flapjack.Spt.ls 5))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 35)) 1 (Flapjack.Spt.ls 30)) 5
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 6 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5)) 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4))))
                  8
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 7)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 7))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 35 Flapjack.Spt.ln) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6))))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))
                6
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 8)) 0 (Flapjack.Spt.ls 27)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 32 (Flapjack.Spt.ls 29))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) (Flapjack.Spt.ls 31)) 26
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 27
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 7 (Flapjack.Spt.ls 35)))
                  1 (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                4
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 3 (Flapjack.Spt.ls 4)))
                  6
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 28
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 25)) 5
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 6))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 35 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 34 Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 7)) (Flapjack.Spt.ls 29)) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 1)) 27
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 23)))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 8)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 24 (Flapjack.Spt.ls 25)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 26 (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 25)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) (Flapjack.Spt.ls 33)) 25
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 32 (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bs Flapjack.Spt.ln 31
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 35)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) (Flapjack.Spt.ls 29))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 34 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 28
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 27))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) (Flapjack.Spt.ls 31)) 22
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 29 (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bs Flapjack.Spt.ln 28
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) (Flapjack.Spt.ls 27))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) 33
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 29))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln) (Flapjack.Spt.ls 32)) 23
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 28 (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
                (Flapjack.Spt.bs Flapjack.Spt.ln 30
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 35)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) (Flapjack.Spt.ls 28))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 33 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 29
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) (Flapjack.Spt.ls 30))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 27 (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln) Flapjack.Spt.ln) 26
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) (Flapjack.Spt.ls 26))
                  Flapjack.Spt.ln))))))))
def optimized285 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(285, 8, optimizedBody285_189)
end InitECandidate.Proofs.SmallStages.Oracles285
