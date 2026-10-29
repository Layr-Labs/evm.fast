import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody523_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody523_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (8, 8), (0, 2), (44, 44)]

def optimizedBody523_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody523_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody523_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_2 optimizedBody523_3

def optimizedBody523_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody523_1, 523, 2)) (some 475) ([]) (some (2, optimizedBody523_4, 523, 3))

def optimizedBody523_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody523_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 6), (48, 4), (52, 8), (58, 0)]

def optimizedBody523_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 2), (4, 4), (8, 8), (44, 44), (46, 46), (48, 48), (52, 52), (58, 58)]

def optimizedBody523_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (58, 58)]

def optimizedBody523_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_9 optimizedBody523_3

def optimizedBody523_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody523_8, 523, 4)) (some 475) ([]) (some (2, optimizedBody523_10, 523, 5))

def optimizedBody523_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 6), (52, 52), (56, 0), (58, 58), (60, 4), (62, 8)]

def optimizedBody523_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody523_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody523_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_14 optimizedBody523_3

def optimizedBody523_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody523_13, 523, 6)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody523_15, 523, 7))

def optimizedBody523_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 0), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody523_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (6, 46), (4, 48), (14, 50), (8, 52), (54, 54), (10, 56), (0, 58), (12, 60), (16, 62)]

def optimizedBody523_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (4, 48), (14, 50), (8, 52), (54, 54), (10, 56), (0, 58), (12, 60), (16, 62)]

def optimizedBody523_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_19 optimizedBody523_3

def optimizedBody523_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody523_18, 523, 8)) (some 465) ([2]) (some (2, optimizedBody523_20, 523, 9))

def optimizedBody523_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 6), (48, 4), (50, 18),
    (52, 8), (54, 54), (56, 0)]

def optimizedBody523_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (10, 4), (44, 44), (46, 46), (48, 48), (0, 50), (50, 52), (52, 54), (56, 56)]

def optimizedBody523_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (50, 52), (52, 54), (56, 56)]

def optimizedBody523_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_24 optimizedBody523_3

def optimizedBody523_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody523_23, 523, 10)) (some 480) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody523_25, 523, 11))

def optimizedBody523_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody523_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 6#64)

def optimizedBody523_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody523_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody523_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody523_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 30#64)))

def optimizedBody523_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 10), (56, 56)]

def optimizedBody523_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody523_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody523_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_35 optimizedBody523_3

def optimizedBody523_37 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody523_34, 523, 12)) (some 463) ([2, 4]) (some (2, optimizedBody523_36, 523, 13))

def optimizedBody523_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody523_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56)]

def optimizedBody523_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56)]

def optimizedBody523_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_40 optimizedBody523_3

def optimizedBody523_42 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody523_39, 523, 14)) (some 470) ([2]) (some (2, optimizedBody523_41, 523, 15))

def optimizedBody523_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56)]

def optimizedBody523_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56)]

def optimizedBody523_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56)]

def optimizedBody523_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_45 optimizedBody523_3

def optimizedBody523_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody523_44, 523, 16)) (some 482) ([2]) (some (2, optimizedBody523_46, 523, 17))

def optimizedBody523_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56)]

def optimizedBody523_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody523_48, 523, 18)) (some 69) ([]) (some (2, optimizedBody523_46, 523, 19))

def optimizedBody523_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody523_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 0), (56, 56)]

def optimizedBody523_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (6, 46), (4, 48), (8, 50), (48, 52), (50, 54), (0, 56)]

def optimizedBody523_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (8, 50), (48, 52), (50, 54), (0, 56)]

def optimizedBody523_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_53 optimizedBody523_3

def optimizedBody523_55 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody523_52, 523, 20)) (some 68) ([2]) (some (2, optimizedBody523_54, 523, 21))

def optimizedBody523_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 10), (48, 48), (50, 50)]

def optimizedBody523_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48), (48, 50)]

def optimizedBody523_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (48, 50)]

def optimizedBody523_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_58 optimizedBody523_3

def optimizedBody523_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody523_57, 523, 22)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody523_59, 523, 23))

def optimizedBody523_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody523_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody523_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody523_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody523_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody523_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody523_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6), (48, 48)]

def optimizedBody523_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48)]

def optimizedBody523_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48)]

def optimizedBody523_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_69 optimizedBody523_3

def optimizedBody523_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody523_68, 523, 24)) (some 158) ([2, 4, 6]) (some (2, optimizedBody523_70, 523, 25))

def optimizedBody523_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody523_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody523_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46)]

def optimizedBody523_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (8, 8), (6, 6), (4, 4), (44, 44), (0, 46)]

def optimizedBody523_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody523_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_76 optimizedBody523_3

def optimizedBody523_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody523_75, 523, 26)) (some 146) ([2, 4]) (some (2, optimizedBody523_77, 523, 27))

def optimizedBody523_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 10), (48, 8), (50, 6), (52, 4)]

def optimizedBody523_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (8, 48), (6, 50), (4, 52)]

def optimizedBody523_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (6, 50), (4, 52)]

def optimizedBody523_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_81 optimizedBody523_3

def optimizedBody523_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody523_80, 523, 28)) (some 70) ([2]) (some (2, optimizedBody523_82, 523, 29))

def optimizedBody523_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody523_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody523_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody523_85, 523, 30)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody523_4, 523, 31))

def optimizedBody523_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody523_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody523_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody523_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_89 optimizedBody523_3

def optimizedBody523_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody523_88, 523, 32)) (some 490) ([2]) (some (2, optimizedBody523_90, 523, 33))

def optimizedBody523_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody523_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody523_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody523_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_93 optimizedBody523_94

def optimizedBody523_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_92 optimizedBody523_95

def optimizedBody523_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_96

def optimizedBody523_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_91 optimizedBody523_97

def optimizedBody523_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_2 optimizedBody523_98

def optimizedBody523_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_87 optimizedBody523_99

def optimizedBody523_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_100

def optimizedBody523_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_86 optimizedBody523_101

def optimizedBody523_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_84 optimizedBody523_102

def optimizedBody523_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_103

def optimizedBody523_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_83 optimizedBody523_104

def optimizedBody523_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_79 optimizedBody523_105

def optimizedBody523_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_106

def optimizedBody523_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_78 optimizedBody523_107

def optimizedBody523_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_74 optimizedBody523_108

def optimizedBody523_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_73 optimizedBody523_109

def optimizedBody523_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_72 optimizedBody523_110

def optimizedBody523_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_111

def optimizedBody523_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_71 optimizedBody523_112

def optimizedBody523_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_67 optimizedBody523_113

def optimizedBody523_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_66 optimizedBody523_114

def optimizedBody523_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_65 optimizedBody523_115

def optimizedBody523_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_64 optimizedBody523_116

def optimizedBody523_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_63 optimizedBody523_117

def optimizedBody523_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_62 optimizedBody523_118

def optimizedBody523_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_61 optimizedBody523_119

def optimizedBody523_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_27 optimizedBody523_120

def optimizedBody523_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_121

def optimizedBody523_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_60 optimizedBody523_122

def optimizedBody523_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_56 optimizedBody523_123

def optimizedBody523_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_124

def optimizedBody523_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_55 optimizedBody523_125

def optimizedBody523_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_51 optimizedBody523_126

def optimizedBody523_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_50 optimizedBody523_127

def optimizedBody523_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_128

def optimizedBody523_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_49 optimizedBody523_129

def optimizedBody523_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_44 optimizedBody523_130

def optimizedBody523_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_131

def optimizedBody523_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_47 optimizedBody523_132

def optimizedBody523_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_43 optimizedBody523_133

def optimizedBody523_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_134

def optimizedBody523_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_42 optimizedBody523_135

def optimizedBody523_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_38 optimizedBody523_136

def optimizedBody523_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_137

def optimizedBody523_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_37 optimizedBody523_138

def optimizedBody523_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_33 optimizedBody523_139

def optimizedBody523_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_32 optimizedBody523_140

def optimizedBody523_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_31 optimizedBody523_141

def optimizedBody523_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_30 optimizedBody523_142

def optimizedBody523_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_29 optimizedBody523_143

def optimizedBody523_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_28 optimizedBody523_144

def optimizedBody523_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_27 optimizedBody523_145

def optimizedBody523_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_146

def optimizedBody523_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_26 optimizedBody523_147

def optimizedBody523_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_22 optimizedBody523_148

def optimizedBody523_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_149

def optimizedBody523_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_21 optimizedBody523_150

def optimizedBody523_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_17 optimizedBody523_151

def optimizedBody523_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_152

def optimizedBody523_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_16 optimizedBody523_153

def optimizedBody523_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_12 optimizedBody523_154

def optimizedBody523_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_155

def optimizedBody523_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_11 optimizedBody523_156

def optimizedBody523_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_7 optimizedBody523_157

def optimizedBody523_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_6 optimizedBody523_158

def optimizedBody523_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_5 optimizedBody523_159

def optimizedBody523_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody523_0 optimizedBody523_160

def optimized523 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(523, 1, optimizedBody523_161)
end InitECandidate.Proofs.StackAnalysis
