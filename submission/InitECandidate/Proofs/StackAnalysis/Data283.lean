import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody283_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14)]

def optimizedBody283_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 16 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody283_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 8), (50, 16), (52, 12), (56, 10), (60, 6), (62, 14)]

def optimizedBody283_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (12, 44), (44, 46), (0, 50), (50, 52), (46, 56), (10, 60), (52, 62)]

def optimizedBody283_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (44, 46), (0, 50), (50, 52), (46, 56), (10, 60), (52, 62)]

def optimizedBody283_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody283_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_4 optimizedBody283_5

def optimizedBody283_7 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody283_3, 283, 2)) (some 282) ([2, 4]) (some (2, optimizedBody283_6, 283, 3))

def optimizedBody283_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody283_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody283_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody283_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody283_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody283_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody283_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody283_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody283_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_15 optimizedBody283_5

def optimizedBody283_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_14 optimizedBody283_16

def optimizedBody283_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_13 optimizedBody283_17

def optimizedBody283_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_12 optimizedBody283_18

def optimizedBody283_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_11 optimizedBody283_19

def optimizedBody283_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_20

def optimizedBody283_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody283_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody283_21 optimizedBody283_22

def optimizedBody283_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody283_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 44), (4, 46), (6, 50), (8, 52)]

def optimizedBody283_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4, 6, 8]

def optimizedBody283_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_25 optimizedBody283_26

def optimizedBody283_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_27

def optimizedBody283_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(48, 44), (54, 50), (58, 46), (66, 52)]

def optimizedBody283_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 0) optimizedBody283_28 optimizedBody283_29

def optimizedBody283_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 12), (48, 48), (52, 0), (54, 54), (58, 58), (56, 10), (66, 66)]

def optimizedBody283_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (0, 2), (8, 8), (6, 6), (44, 44), (48, 48), (52, 52), (54, 54), (58, 58), (56, 56), (66, 66)]

def optimizedBody283_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (52, 52), (54, 54), (58, 58), (56, 56), (66, 66)]

def optimizedBody283_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_33 optimizedBody283_5

def optimizedBody283_35 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody283_32, 283, 4)) (some 99) ([2]) (some (2, optimizedBody283_34, 283, 5))

def optimizedBody283_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody283_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 4), (48, 48), (50, 0), (52, 52), (54, 54), (58, 58), (56, 56), (64, 8), (66, 66), (68, 6)]

def optimizedBody283_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (12, 2), (4, 4), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (52, 54), (58, 58), (10, 56),
    (64, 64), (66, 66), (68, 68)]

def optimizedBody283_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (52, 54), (58, 58), (10, 56), (64, 64), (66, 66), (68, 68)]

def optimizedBody283_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_39 optimizedBody283_5

def optimizedBody283_41 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody283_38, 283, 6)) (some 99) ([2]) (some (2, optimizedBody283_40, 283, 7))

def optimizedBody283_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody283_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 10 (Flapjack.WordRegImm.reg 0)))

def optimizedBody283_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (70, 44), (44, 46), (46, 48), (48, 50), (50, 52), (52, 6), (54, 12), (56, 58), (58, 4), (60, 8), (62, 64),
    (64, 66), (66, 68)]

def optimizedBody283_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 8), (14, 6), (10, 2), (12, 4), (70, 70), (44, 44), (0, 46), (48, 48), (6, 50), (52, 52), (54, 54), (4, 56),
    (58, 58), (60, 60), (62, 62), (8, 64), (66, 66)]

def optimizedBody283_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (70, 70), (44, 44), (0, 46), (48, 48), (6, 50), (52, 52), (54, 54), (4, 56), (58, 58), (60, 60), (62, 62),
    (8, 64), (66, 66)]

def optimizedBody283_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_46 optimizedBody283_5

def optimizedBody283_48 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody283_45, 283, 8)) (some 99) ([2]) (some (2, optimizedBody283_47, 283, 9))

def optimizedBody283_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (70, 70), (44, 44), (46, 0), (48, 48),
    (50, 6), (52, 52), (54, 54), (56, 4), (58, 58), (60, 60), (62, 62), (64, 8), (66, 66)]

def optimizedBody283_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (0, 2), (6, 6), (4, 4), (70, 70), (12, 44), (46, 46), (10, 48), (50, 50), (44, 52), (48, 54), (54, 56),
    (52, 58), (56, 60), (16, 62), (58, 64), (14, 66)]

def optimizedBody283_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (70, 70), (12, 44), (46, 46), (10, 48), (50, 50), (44, 52), (48, 54), (54, 56), (52, 58), (56, 60), (16, 62),
    (58, 64), (14, 66)]

def optimizedBody283_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_51 optimizedBody283_5

def optimizedBody283_53 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody283_50, 283, 10)) (some 120) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody283_52, 283, 11))

def optimizedBody283_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (70, 70), (46, 46), (50, 50), (44, 44),
    (48, 48), (54, 54), (52, 52), (56, 56), (58, 58)]

def optimizedBody283_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (0, 2), (6, 6), (8, 8), (70, 70), (46, 46), (50, 50), (14, 44), (10, 48), (54, 54), (12, 52), (16, 56),
    (58, 58)]

def optimizedBody283_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (70, 70), (46, 46), (50, 50), (14, 44), (10, 48), (54, 54), (12, 52), (16, 56), (58, 58)]

def optimizedBody283_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_56 optimizedBody283_5

def optimizedBody283_58 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody283_55, 283, 12)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody283_57, 283, 13))

def optimizedBody283_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (70, 70), (46, 46), (50, 50), (54, 54),
    (58, 58)]

def optimizedBody283_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (4, 4), (0, 2), (70, 70), (46, 46), (50, 50), (54, 54), (58, 58)]

def optimizedBody283_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (70, 70), (46, 46), (50, 50), (54, 54), (58, 58)]

def optimizedBody283_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_61 optimizedBody283_5

def optimizedBody283_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody283_60, 283, 14)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody283_62, 283, 15))

def optimizedBody283_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (70, 70), (44, 6), (46, 46), (48, 8), (50, 50), (52, 4), (54, 54), (56, 0), (58, 58)]

def optimizedBody283_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (70, 70), (14, 44), (44, 46), (16, 48), (46, 50), (12, 52), (48, 54), (10, 56), (50, 58)]

def optimizedBody283_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (70, 70), (14, 44), (44, 46), (16, 48), (46, 50), (12, 52), (48, 54), (10, 56), (50, 58)]

def optimizedBody283_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_66 optimizedBody283_5

def optimizedBody283_68 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody283_65, 283, 16)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody283_67, 283, 17))

def optimizedBody283_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody283_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody283_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (70, 70), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody283_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 6), (16, 8), (12, 4), (10, 2), (70, 70), (0, 44), (6, 46), (4, 48), (8, 50)]

def optimizedBody283_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (70, 70), (0, 44), (6, 46), (4, 48), (8, 50)]

def optimizedBody283_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_73 optimizedBody283_5

def optimizedBody283_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody283_72, 283, 18)) (some 99) ([2]) (some (2, optimizedBody283_74, 283, 19))

def optimizedBody283_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(70, 70), (14, 14), (0, 0), (16, 16), (6, 6), (12, 12), (4, 4), (10, 10), (8, 8)]

def optimizedBody283_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_76

def optimizedBody283_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_75 optimizedBody283_77

def optimizedBody283_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_71 optimizedBody283_78

def optimizedBody283_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_70 optimizedBody283_79

def optimizedBody283_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_80

def optimizedBody283_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(70, 70), (14, 14), (0, 44), (16, 16), (6, 46), (12, 12), (4, 48), (10, 10), (8, 50)]

def optimizedBody283_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_82

def optimizedBody283_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody283_81 optimizedBody283_83

def optimizedBody283_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (70, 70)]

def optimizedBody283_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 2), (6, 6), (4, 4), (8, 8), (12, 70)]

def optimizedBody283_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 70)]

def optimizedBody283_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_87 optimizedBody283_5

def optimizedBody283_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody283_86, 283, 20)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody283_88, 283, 21))

def optimizedBody283_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 14), (4, 4), (6, 6), (8, 8)]

def optimizedBody283_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_90 optimizedBody283_26

def optimizedBody283_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_91

def optimizedBody283_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_89 optimizedBody283_92

def optimizedBody283_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_85 optimizedBody283_93

def optimizedBody283_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_94

def optimizedBody283_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_84 optimizedBody283_95

def optimizedBody283_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_10 optimizedBody283_96

def optimizedBody283_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_69 optimizedBody283_97

def optimizedBody283_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_98

def optimizedBody283_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_68 optimizedBody283_99

def optimizedBody283_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_64 optimizedBody283_100

def optimizedBody283_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_101

def optimizedBody283_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_63 optimizedBody283_102

def optimizedBody283_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_59 optimizedBody283_103

def optimizedBody283_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_104

def optimizedBody283_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_58 optimizedBody283_105

def optimizedBody283_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_54 optimizedBody283_106

def optimizedBody283_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_107

def optimizedBody283_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_53 optimizedBody283_108

def optimizedBody283_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_49 optimizedBody283_109

def optimizedBody283_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_110

def optimizedBody283_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_48 optimizedBody283_111

def optimizedBody283_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_44 optimizedBody283_112

def optimizedBody283_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_43 optimizedBody283_113

def optimizedBody283_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_24 optimizedBody283_114

def optimizedBody283_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_115

def optimizedBody283_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (50, 50), (0, 0), (52, 52), (54, 6), (56, 12), (58, 58), (60, 4), (62, 8), (10, 10), (64, 64),
    (66, 66), (68, 68), (44, 44)]

def optimizedBody283_118 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 10) optimizedBody283_116 optimizedBody283_117

def optimizedBody283_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody283_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody283_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 8), (14, 6), (10, 2), (12, 4), (44, 44), (46, 46), (0, 48), (50, 50), (6, 52), (54, 54), (56, 56), (4, 58),
    (60, 60), (62, 62), (64, 64), (8, 66), (68, 68)]

def optimizedBody283_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (6, 52), (54, 54), (56, 56), (4, 58), (60, 60), (62, 62), (64, 64),
    (8, 66), (68, 68)]

def optimizedBody283_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_122 optimizedBody283_5

def optimizedBody283_124 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody283_121, 283, 22)) (some 99) ([2]) (some (2, optimizedBody283_123, 283, 23))

def optimizedBody283_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 0), (50, 50),
    (52, 6), (54, 54), (56, 56), (58, 4), (60, 60), (62, 62), (64, 64), (66, 8), (68, 68)]

def optimizedBody283_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (0, 2), (6, 6), (4, 4), (44, 44), (12, 46), (46, 48), (10, 50), (48, 52), (50, 54), (52, 56), (54, 58),
    (56, 60), (58, 62), (16, 64), (60, 66), (14, 68)]

def optimizedBody283_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (46, 48), (10, 50), (48, 52), (50, 54), (52, 56), (54, 58), (56, 60), (58, 62), (16, 64),
    (60, 66), (14, 68)]

def optimizedBody283_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_127 optimizedBody283_5

def optimizedBody283_129 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody283_126, 283, 24)) (some 120) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody283_128, 283, 25))

def optimizedBody283_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody283_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (0, 2), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (14, 50), (10, 52), (50, 54), (12, 56), (16, 58),
    (52, 60)]

def optimizedBody283_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (14, 50), (10, 52), (50, 54), (12, 56), (16, 58), (52, 60)]

def optimizedBody283_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_132 optimizedBody283_5

def optimizedBody283_134 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody283_131, 283, 26)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody283_133, 283, 27))

def optimizedBody283_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52)]

def optimizedBody283_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 6), (16, 8), (12, 4), (10, 2), (44, 44), (0, 46), (6, 48), (4, 50), (8, 52)]

def optimizedBody283_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (4, 50), (8, 52)]

def optimizedBody283_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_137 optimizedBody283_5

def optimizedBody283_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody283_136, 283, 28)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody283_138, 283, 29))

def optimizedBody283_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody283_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (4, 4), (8, 8), (6, 6), (0, 44)]

def optimizedBody283_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody283_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_142 optimizedBody283_5

def optimizedBody283_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody283_141, 283, 30)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody283_143, 283, 31))

def optimizedBody283_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody283_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody283_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_145 optimizedBody283_146

def optimizedBody283_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_147

def optimizedBody283_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_144 optimizedBody283_148

def optimizedBody283_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_140 optimizedBody283_149

def optimizedBody283_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_150

def optimizedBody283_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_139 optimizedBody283_151

def optimizedBody283_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_135 optimizedBody283_152

def optimizedBody283_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_153

def optimizedBody283_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_134 optimizedBody283_154

def optimizedBody283_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_130 optimizedBody283_155

def optimizedBody283_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_156

def optimizedBody283_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_129 optimizedBody283_157

def optimizedBody283_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_125 optimizedBody283_158

def optimizedBody283_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_159

def optimizedBody283_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_124 optimizedBody283_160

def optimizedBody283_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_120 optimizedBody283_161

def optimizedBody283_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_119 optimizedBody283_162

def optimizedBody283_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_42 optimizedBody283_163

def optimizedBody283_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_164

def optimizedBody283_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_165

def optimizedBody283_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_118 optimizedBody283_166

def optimizedBody283_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_42 optimizedBody283_167

def optimizedBody283_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_168

def optimizedBody283_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_41 optimizedBody283_169

def optimizedBody283_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_37 optimizedBody283_170

def optimizedBody283_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_36 optimizedBody283_171

def optimizedBody283_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_172

def optimizedBody283_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_35 optimizedBody283_173

def optimizedBody283_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_31 optimizedBody283_174

def optimizedBody283_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_175

def optimizedBody283_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_176

def optimizedBody283_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_30 optimizedBody283_177

def optimizedBody283_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_24 optimizedBody283_178

def optimizedBody283_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_179

def optimizedBody283_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_180

def optimizedBody283_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_23 optimizedBody283_181

def optimizedBody283_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_10 optimizedBody283_182

def optimizedBody283_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_9 optimizedBody283_183

def optimizedBody283_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_8 optimizedBody283_184

def optimizedBody283_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_7 optimizedBody283_185

def optimizedBody283_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_2 optimizedBody283_186

def optimizedBody283_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_1 optimizedBody283_187

def optimizedBody283_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody283_0 optimizedBody283_188

def optimized283 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(283, 8, optimizedBody283_189)
end InitECandidate.Proofs.StackAnalysis
