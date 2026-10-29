import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody761_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (52, 2)]

def optimizedBody761_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (52, 52)]

def optimizedBody761_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (52, 52)]

def optimizedBody761_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody761_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_2 optimizedBody761_3

def optimizedBody761_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody761_1, 761, 2)) (some 69) ([]) (some (2, optimizedBody761_4, 761, 3))

def optimizedBody761_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody761_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 864#64)

def optimizedBody761_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (52, 52), (54, 0)]

def optimizedBody761_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (52, 52), (54, 54)]

def optimizedBody761_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (52, 52), (54, 54)]

def optimizedBody761_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_10 optimizedBody761_3

def optimizedBody761_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody761_9, 761, 4)) (some 68) ([2]) (some (2, optimizedBody761_11, 761, 5))

def optimizedBody761_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody761_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody761_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody761_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 576#64)))

def optimizedBody761_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 6), (6, 6), (44, 44), (46, 2), (48, 6), (50, 0), (52, 52), (54, 54), (56, 4)]

def optimizedBody761_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (4, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody761_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody761_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_19 optimizedBody761_3

def optimizedBody761_21 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody761_18, 761, 6)) (some 752) ([2, 4, 6]) (some (2, optimizedBody761_20, 761, 7))

def optimizedBody761_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody761_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody761_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 6), (6, 6), (44, 44), (46, 46), (48, 0), (50, 2), (52, 52), (54, 54), (56, 56)]

def optimizedBody761_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody761_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody761_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_26 optimizedBody761_3

def optimizedBody761_28 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody761_25, 761, 8)) (some 752) ([2, 4, 6]) (some (2, optimizedBody761_27, 761, 9))

def optimizedBody761_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (44, 44), (46, 46), (48, 48), (50, 4), (52, 52), (54, 54), (56, 56)]

def optimizedBody761_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (6, 50), (48, 52), (50, 54), (0, 56)]

def optimizedBody761_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (6, 50), (48, 52), (50, 54), (0, 56)]

def optimizedBody761_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_31 optimizedBody761_3

def optimizedBody761_33 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody761_30, 761, 10)) (some 753) ([2, 4]) (some (2, optimizedBody761_32, 761, 11))

def optimizedBody761_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0)]

def optimizedBody761_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (4, 52)]

def optimizedBody761_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (4, 52)]

def optimizedBody761_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_36 optimizedBody761_3

def optimizedBody761_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody761_35, 761, 12)) (some 750) ([2, 4, 6]) (some (2, optimizedBody761_37, 761, 13))

def optimizedBody761_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 4)]

def optimizedBody761_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (50, 50), (6, 52)]

def optimizedBody761_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (50, 50), (6, 52)]

def optimizedBody761_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_41 optimizedBody761_3

def optimizedBody761_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody761_40, 761, 14)) (some 754) ([2, 4]) (some (2, optimizedBody761_42, 761, 15))

def optimizedBody761_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 4), (48, 0), (50, 50), (52, 6)]

def optimizedBody761_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (48, 50), (6, 52)]

def optimizedBody761_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (48, 50), (6, 52)]

def optimizedBody761_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_46 optimizedBody761_3

def optimizedBody761_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody761_45, 761, 16)) (some 752) ([2, 4, 6]) (some (2, optimizedBody761_47, 761, 17))

def optimizedBody761_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody761_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody761_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody761_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody761_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48)]

def optimizedBody761_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48)]

def optimizedBody761_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48)]

def optimizedBody761_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_55 optimizedBody761_3

def optimizedBody761_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody761_54, 761, 18)) (some 752) ([2, 4, 6]) (some (2, optimizedBody761_56, 761, 19))

def optimizedBody761_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody761_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (44, 44), (46, 46)]

def optimizedBody761_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody761_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody761_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_61 optimizedBody761_3

def optimizedBody761_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody761_60, 761, 20)) (some 751) ([2, 4]) (some (2, optimizedBody761_62, 761, 21))

def optimizedBody761_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody761_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody761_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody761_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_66 optimizedBody761_3

def optimizedBody761_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody761_65, 761, 22)) (some 70) ([2]) (some (2, optimizedBody761_67, 761, 23))

def optimizedBody761_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody761_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody761_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_15 optimizedBody761_70

def optimizedBody761_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_69 optimizedBody761_71

def optimizedBody761_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_6 optimizedBody761_72

def optimizedBody761_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_68 optimizedBody761_73

def optimizedBody761_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_64 optimizedBody761_74

def optimizedBody761_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_6 optimizedBody761_75

def optimizedBody761_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_63 optimizedBody761_76

def optimizedBody761_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_59 optimizedBody761_77

def optimizedBody761_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_58 optimizedBody761_78

def optimizedBody761_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_49 optimizedBody761_79

def optimizedBody761_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_6 optimizedBody761_80

def optimizedBody761_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_57 optimizedBody761_81

def optimizedBody761_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_53 optimizedBody761_82

def optimizedBody761_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_52 optimizedBody761_83

def optimizedBody761_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_51 optimizedBody761_84

def optimizedBody761_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_50 optimizedBody761_85

def optimizedBody761_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_49 optimizedBody761_86

def optimizedBody761_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_6 optimizedBody761_87

def optimizedBody761_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_48 optimizedBody761_88

def optimizedBody761_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_44 optimizedBody761_89

def optimizedBody761_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_6 optimizedBody761_90

def optimizedBody761_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_43 optimizedBody761_91

def optimizedBody761_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_39 optimizedBody761_92

def optimizedBody761_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_6 optimizedBody761_93

def optimizedBody761_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_38 optimizedBody761_94

def optimizedBody761_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_34 optimizedBody761_95

def optimizedBody761_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_6 optimizedBody761_96

def optimizedBody761_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_33 optimizedBody761_97

def optimizedBody761_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_29 optimizedBody761_98

def optimizedBody761_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_6 optimizedBody761_99

def optimizedBody761_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_28 optimizedBody761_100

def optimizedBody761_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_24 optimizedBody761_101

def optimizedBody761_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_23 optimizedBody761_102

def optimizedBody761_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_22 optimizedBody761_103

def optimizedBody761_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_6 optimizedBody761_104

def optimizedBody761_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_21 optimizedBody761_105

def optimizedBody761_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_17 optimizedBody761_106

def optimizedBody761_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_16 optimizedBody761_107

def optimizedBody761_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_15 optimizedBody761_108

def optimizedBody761_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_14 optimizedBody761_109

def optimizedBody761_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_13 optimizedBody761_110

def optimizedBody761_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_6 optimizedBody761_111

def optimizedBody761_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_12 optimizedBody761_112

def optimizedBody761_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_8 optimizedBody761_113

def optimizedBody761_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_7 optimizedBody761_114

def optimizedBody761_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_6 optimizedBody761_115

def optimizedBody761_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_5 optimizedBody761_116

def optimizedBody761_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_0 optimizedBody761_117

def optimized761 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(761, 3, optimizedBody761_118)
end InitECandidate.Proofs.StackAnalysis
