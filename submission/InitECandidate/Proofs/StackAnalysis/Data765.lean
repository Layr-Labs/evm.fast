import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody765_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (50, 2)]

def optimizedBody765_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody765_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody765_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody765_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_2 optimizedBody765_3

def optimizedBody765_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody765_1, 765, 2)) (some 69) ([]) (some (2, optimizedBody765_4, 765, 3))

def optimizedBody765_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody765_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2880#64)

def optimizedBody765_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (58, 0)]

def optimizedBody765_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (50, 50), (58, 58)]

def optimizedBody765_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (50, 50), (58, 58)]

def optimizedBody765_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_10 optimizedBody765_3

def optimizedBody765_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody765_9, 765, 4)) (some 68) ([2]) (some (2, optimizedBody765_11, 765, 5))

def optimizedBody765_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody765_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 576#64)))

def optimizedBody765_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1152#64)))

def optimizedBody765_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.imm 1728#64)))

def optimizedBody765_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2304#64)

def optimizedBody765_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody765_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 2), (48, 4), (50, 50), (52, 0), (54, 6), (56, 8), (58, 58), (60, 10)]

def optimizedBody765_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (48, 50), (0, 52), (52, 54), (54, 56), (56, 58), (58, 60)]

def optimizedBody765_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (48, 50), (0, 52), (52, 54), (54, 56), (56, 58), (58, 60)]

def optimizedBody765_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_21 optimizedBody765_3

def optimizedBody765_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody765_20, 765, 6)) (some 761) ([2, 4]) (some (2, optimizedBody765_22, 765, 7))

def optimizedBody765_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody765_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody765_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody765_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_26 optimizedBody765_3

def optimizedBody765_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody765_25, 765, 8)) (some 760) ([2, 4]) (some (2, optimizedBody765_27, 765, 9))

def optimizedBody765_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 6), (48, 48), (50, 4), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody765_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody765_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody765_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_31 optimizedBody765_3

def optimizedBody765_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody765_30, 765, 10)) (some 758) ([2, 4, 6]) (some (2, optimizedBody765_32, 765, 11))

def optimizedBody765_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 0), (48, 48), (50, 4), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody765_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody765_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody765_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_36 optimizedBody765_3

def optimizedBody765_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody765_35, 765, 12)) (some 762) ([2, 4]) (some (2, optimizedBody765_37, 765, 13))

def optimizedBody765_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (44, 44), (46, 4), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody765_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody765_25, 765, 14)) (some 762) ([2, 4]) (some (2, optimizedBody765_27, 765, 15))

def optimizedBody765_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (0, 58)]

def optimizedBody765_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (0, 58)]

def optimizedBody765_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_42 optimizedBody765_3

def optimizedBody765_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody765_41, 765, 16)) (some 758) ([2, 4, 6]) (some (2, optimizedBody765_43, 765, 17))

def optimizedBody765_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 4), (52, 52), (54, 54), (56, 56), (58, 0)]

def optimizedBody765_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody765_30, 765, 18)) (some 764) ([2, 4]) (some (2, optimizedBody765_32, 765, 19))

def optimizedBody765_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (4, 58)]

def optimizedBody765_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (4, 58)]

def optimizedBody765_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_48 optimizedBody765_3

def optimizedBody765_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody765_47, 765, 20)) (some 760) ([2, 4]) (some (2, optimizedBody765_49, 765, 21))

def optimizedBody765_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 6), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 4)]

def optimizedBody765_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (4, 58)]

def optimizedBody765_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (4, 58)]

def optimizedBody765_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_53 optimizedBody765_3

def optimizedBody765_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody765_52, 765, 22)) (some 758) ([2, 4, 6]) (some (2, optimizedBody765_54, 765, 23))

def optimizedBody765_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 4)]

def optimizedBody765_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (4, 58)]

def optimizedBody765_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (4, 58)]

def optimizedBody765_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_58 optimizedBody765_3

def optimizedBody765_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody765_57, 765, 24)) (some 764) ([2, 4]) (some (2, optimizedBody765_59, 765, 25))

def optimizedBody765_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 4)]

def optimizedBody765_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody765_47, 765, 26)) (some 760) ([2, 4]) (some (2, optimizedBody765_49, 765, 27))

def optimizedBody765_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (4, 58)]

def optimizedBody765_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (4, 58)]

def optimizedBody765_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_64 optimizedBody765_3

def optimizedBody765_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody765_63, 765, 28)) (some 758) ([2, 4, 6]) (some (2, optimizedBody765_65, 765, 29))

def optimizedBody765_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56), (58, 4)]

def optimizedBody765_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody765_52, 765, 30)) (some 764) ([2, 4]) (some (2, optimizedBody765_54, 765, 31))

def optimizedBody765_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody765_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (48, 48), (50, 50), (4, 52), (54, 54), (56, 56)]

def optimizedBody765_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (50, 50), (4, 52), (54, 54), (56, 56)]

def optimizedBody765_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_71 optimizedBody765_3

def optimizedBody765_73 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody765_70, 765, 32)) (some 762) ([2, 4]) (some (2, optimizedBody765_72, 765, 33))

def optimizedBody765_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 6), (48, 48), (50, 50), (52, 4), (54, 54), (56, 56)]

def optimizedBody765_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (4, 52), (0, 54), (56, 56)]

def optimizedBody765_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (4, 52), (0, 54), (56, 56)]

def optimizedBody765_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_76 optimizedBody765_3

def optimizedBody765_78 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody765_75, 765, 34)) (some 758) ([2, 4, 6]) (some (2, optimizedBody765_77, 765, 35))

def optimizedBody765_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 4), (54, 0), (56, 56)]

def optimizedBody765_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56)]

def optimizedBody765_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56)]

def optimizedBody765_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_81 optimizedBody765_3

def optimizedBody765_83 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody765_80, 765, 36)) (some 764) ([2, 4]) (some (2, optimizedBody765_82, 765, 37))

def optimizedBody765_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 4), (56, 56)]

def optimizedBody765_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (50, 50), (4, 52), (54, 54), (56, 56)]

def optimizedBody765_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (4, 52), (54, 54), (56, 56)]

def optimizedBody765_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_86 optimizedBody765_3

def optimizedBody765_88 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody765_85, 765, 38)) (some 764) ([2, 4]) (some (2, optimizedBody765_87, 765, 39))

def optimizedBody765_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0), (48, 48), (50, 50), (52, 4), (54, 54), (56, 56)]

def optimizedBody765_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody765_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody765_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_91 optimizedBody765_3

def optimizedBody765_93 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody765_90, 765, 40)) (some 762) ([2, 4]) (some (2, optimizedBody765_92, 765, 41))

def optimizedBody765_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (44, 44), (46, 4), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody765_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56)]

def optimizedBody765_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56)]

def optimizedBody765_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_96 optimizedBody765_3

def optimizedBody765_98 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody765_95, 765, 42)) (some 762) ([2, 4]) (some (2, optimizedBody765_97, 765, 43))

def optimizedBody765_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 6), (48, 48), (50, 50), (52, 52), (54, 4), (56, 56)]

def optimizedBody765_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (50, 50), (4, 52), (52, 54), (54, 56)]

def optimizedBody765_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (4, 52), (52, 54), (54, 56)]

def optimizedBody765_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_101 optimizedBody765_3

def optimizedBody765_103 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody765_100, 765, 44)) (some 758) ([2, 4, 6]) (some (2, optimizedBody765_102, 765, 45))

def optimizedBody765_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody765_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (48, 48), (50, 50), (4, 52), (54, 54)]

def optimizedBody765_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (50, 50), (4, 52), (54, 54)]

def optimizedBody765_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_106 optimizedBody765_3

def optimizedBody765_108 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody765_105, 765, 46)) (some 760) ([2, 4]) (some (2, optimizedBody765_107, 765, 47))

def optimizedBody765_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 6), (48, 48), (50, 50), (52, 4), (54, 54)]

def optimizedBody765_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (6, 50), (52, 52), (54, 54)]

def optimizedBody765_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (6, 50), (52, 52), (54, 54)]

def optimizedBody765_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_111 optimizedBody765_3

def optimizedBody765_113 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody765_110, 765, 48)) (some 758) ([2, 4, 6]) (some (2, optimizedBody765_112, 765, 49))

def optimizedBody765_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 6), (6, 6), (44, 44), (46, 0), (48, 48), (50, 6), (52, 52), (54, 54)]

def optimizedBody765_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (6, 50), (50, 52), (52, 54)]

def optimizedBody765_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (6, 50), (50, 52), (52, 54)]

def optimizedBody765_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_116 optimizedBody765_3

def optimizedBody765_118 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody765_115, 765, 50)) (some 758) ([2, 4, 6]) (some (2, optimizedBody765_117, 765, 51))

def optimizedBody765_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 4), (48, 48), (50, 50), (52, 52)]

def optimizedBody765_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (0, 48), (4, 50), (46, 52)]

def optimizedBody765_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48), (4, 50), (46, 52)]

def optimizedBody765_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_121 optimizedBody765_3

def optimizedBody765_123 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody765_120, 765, 52)) (some 758) ([2, 4, 6]) (some (2, optimizedBody765_122, 765, 53))

def optimizedBody765_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody765_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody765_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody765_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_126 optimizedBody765_3

def optimizedBody765_128 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody765_125, 765, 54)) (some 758) ([2, 4, 6]) (some (2, optimizedBody765_127, 765, 55))

def optimizedBody765_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody765_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody765_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody765_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_131 optimizedBody765_3

def optimizedBody765_133 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody765_130, 765, 56)) (some 70) ([2]) (some (2, optimizedBody765_132, 765, 57))

def optimizedBody765_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody765_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody765_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody765_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_135 optimizedBody765_136

def optimizedBody765_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_134 optimizedBody765_137

def optimizedBody765_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_138

def optimizedBody765_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_133 optimizedBody765_139

def optimizedBody765_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_129 optimizedBody765_140

def optimizedBody765_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_141

def optimizedBody765_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_128 optimizedBody765_142

def optimizedBody765_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_124 optimizedBody765_143

def optimizedBody765_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_144

def optimizedBody765_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_123 optimizedBody765_145

def optimizedBody765_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_119 optimizedBody765_146

def optimizedBody765_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_147

def optimizedBody765_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_118 optimizedBody765_148

def optimizedBody765_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_114 optimizedBody765_149

def optimizedBody765_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_150

def optimizedBody765_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_113 optimizedBody765_151

def optimizedBody765_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_109 optimizedBody765_152

def optimizedBody765_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_153

def optimizedBody765_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_108 optimizedBody765_154

def optimizedBody765_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_104 optimizedBody765_155

def optimizedBody765_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_156

def optimizedBody765_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_103 optimizedBody765_157

def optimizedBody765_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_99 optimizedBody765_158

def optimizedBody765_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_159

def optimizedBody765_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_98 optimizedBody765_160

def optimizedBody765_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_94 optimizedBody765_161

def optimizedBody765_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_162

def optimizedBody765_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_93 optimizedBody765_163

def optimizedBody765_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_89 optimizedBody765_164

def optimizedBody765_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_165

def optimizedBody765_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_88 optimizedBody765_166

def optimizedBody765_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_84 optimizedBody765_167

def optimizedBody765_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_168

def optimizedBody765_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_83 optimizedBody765_169

def optimizedBody765_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_79 optimizedBody765_170

def optimizedBody765_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_171

def optimizedBody765_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_78 optimizedBody765_172

def optimizedBody765_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_74 optimizedBody765_173

def optimizedBody765_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_174

def optimizedBody765_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_73 optimizedBody765_175

def optimizedBody765_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_69 optimizedBody765_176

def optimizedBody765_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_177

def optimizedBody765_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_68 optimizedBody765_178

def optimizedBody765_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_67 optimizedBody765_179

def optimizedBody765_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_180

def optimizedBody765_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_66 optimizedBody765_181

def optimizedBody765_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_51 optimizedBody765_182

def optimizedBody765_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_183

def optimizedBody765_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_62 optimizedBody765_184

def optimizedBody765_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_61 optimizedBody765_185

def optimizedBody765_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_186

def optimizedBody765_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_60 optimizedBody765_187

def optimizedBody765_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_56 optimizedBody765_188

def optimizedBody765_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_189

def optimizedBody765_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_55 optimizedBody765_190

def optimizedBody765_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_51 optimizedBody765_191

def optimizedBody765_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_192

def optimizedBody765_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_50 optimizedBody765_193

def optimizedBody765_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_34 optimizedBody765_194

def optimizedBody765_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_195

def optimizedBody765_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_46 optimizedBody765_196

def optimizedBody765_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_45 optimizedBody765_197

def optimizedBody765_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_198

def optimizedBody765_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_44 optimizedBody765_199

def optimizedBody765_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_29 optimizedBody765_200

def optimizedBody765_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_201

def optimizedBody765_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_40 optimizedBody765_202

def optimizedBody765_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_39 optimizedBody765_203

def optimizedBody765_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_204

def optimizedBody765_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_38 optimizedBody765_205

def optimizedBody765_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_34 optimizedBody765_206

def optimizedBody765_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_207

def optimizedBody765_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_33 optimizedBody765_208

def optimizedBody765_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_29 optimizedBody765_209

def optimizedBody765_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_210

def optimizedBody765_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_28 optimizedBody765_211

def optimizedBody765_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_24 optimizedBody765_212

def optimizedBody765_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_213

def optimizedBody765_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_23 optimizedBody765_214

def optimizedBody765_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_19 optimizedBody765_215

def optimizedBody765_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_18 optimizedBody765_216

def optimizedBody765_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_17 optimizedBody765_217

def optimizedBody765_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_13 optimizedBody765_218

def optimizedBody765_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_16 optimizedBody765_219

def optimizedBody765_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_13 optimizedBody765_220

def optimizedBody765_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_15 optimizedBody765_221

def optimizedBody765_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_13 optimizedBody765_222

def optimizedBody765_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_14 optimizedBody765_223

def optimizedBody765_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_13 optimizedBody765_224

def optimizedBody765_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_225

def optimizedBody765_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_12 optimizedBody765_226

def optimizedBody765_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_8 optimizedBody765_227

def optimizedBody765_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_7 optimizedBody765_228

def optimizedBody765_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_6 optimizedBody765_229

def optimizedBody765_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_5 optimizedBody765_230

def optimizedBody765_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody765_0 optimizedBody765_231

def optimized765 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(765, 3, optimizedBody765_232)
end InitECandidate.Proofs.StackAnalysis
