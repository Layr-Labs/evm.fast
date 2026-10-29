import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody614_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 4), (46, 2), (52, 6)]

def optimizedBody614_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (46, 46), (52, 52)]

def optimizedBody614_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (52, 52)]

def optimizedBody614_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody614_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_2 optimizedBody614_3

def optimizedBody614_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody614_1, 614, 2)) (some 69) ([]) (some (2, optimizedBody614_4, 614, 3))

def optimizedBody614_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody614_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody614_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (50, 0), (52, 52)]

def optimizedBody614_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (4, 46), (50, 50), (52, 52)]

def optimizedBody614_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (4, 46), (50, 50), (52, 52)]

def optimizedBody614_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_10 optimizedBody614_3

def optimizedBody614_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody614_9, 614, 4)) (some 68) ([2]) (some (2, optimizedBody614_11, 614, 5))

def optimizedBody614_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody614_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody614_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody614_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody614_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 2), (48, 48), (50, 50), (52, 52), (54, 0)]

def optimizedBody614_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48), (50, 50), (52, 52), (48, 54)]

def optimizedBody614_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (50, 50), (52, 52), (48, 54)]

def optimizedBody614_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_19 optimizedBody614_3

def optimizedBody614_21 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody614_18, 614, 6)) (some 176) ([2, 4, 6]) (some (2, optimizedBody614_20, 614, 7))

def optimizedBody614_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody614_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody614_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2), (50, 50), (52, 52), (48, 48)]

def optimizedBody614_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (6, 46), (50, 50), (52, 52), (0, 48)]

def optimizedBody614_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (50, 50), (52, 52), (0, 48)]

def optimizedBody614_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_26 optimizedBody614_3

def optimizedBody614_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody614_25, 614, 8)) (some 177) ([2, 4]) (some (2, optimizedBody614_27, 614, 9))

def optimizedBody614_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody614_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody614_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody614_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody614_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody614_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 2), (50, 50), (52, 52), (48, 0)]

def optimizedBody614_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (50, 50), (52, 52), (6, 48)]

def optimizedBody614_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (50, 50), (52, 52), (6, 48)]

def optimizedBody614_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_36 optimizedBody614_3

def optimizedBody614_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody614_35, 614, 10)) (some 180) ([2]) (some (2, optimizedBody614_37, 614, 11))

def optimizedBody614_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody614_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody614_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody614_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4), (48, 0), (50, 50), (52, 52), (54, 6)]

def optimizedBody614_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody614_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody614_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_44 optimizedBody614_3

def optimizedBody614_46 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody614_43, 614, 12)) (some 178) ([2, 4]) (some (2, optimizedBody614_45, 614, 13))

def optimizedBody614_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody614_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48), (46, 50), (48, 52), (8, 54)]

def optimizedBody614_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (46, 50), (48, 52), (8, 54)]

def optimizedBody614_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_49 optimizedBody614_3

def optimizedBody614_51 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody614_48, 614, 14)) (some 68) ([2]) (some (2, optimizedBody614_50, 614, 15))

def optimizedBody614_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody614_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody614_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody614_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody614_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 6)]

def optimizedBody614_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody614_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody614_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_58 optimizedBody614_3

def optimizedBody614_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody614_57, 614, 16)) (some 158) ([2, 4, 6]) (some (2, optimizedBody614_59, 614, 17))

def optimizedBody614_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody614_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody614_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody614_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody614_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody614_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_65 optimizedBody614_3

def optimizedBody614_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody614_64, 614, 18)) (some 77) ([2, 4, 6]) (some (2, optimizedBody614_66, 614, 19))

def optimizedBody614_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody614_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody614_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody614_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_70 optimizedBody614_3

def optimizedBody614_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody614_69, 614, 20)) (some 70) ([2]) (some (2, optimizedBody614_71, 614, 21))

def optimizedBody614_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody614_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody614_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody614_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_74 optimizedBody614_75

def optimizedBody614_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_73 optimizedBody614_76

def optimizedBody614_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_6 optimizedBody614_77

def optimizedBody614_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_72 optimizedBody614_78

def optimizedBody614_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_68 optimizedBody614_79

def optimizedBody614_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_6 optimizedBody614_80

def optimizedBody614_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_67 optimizedBody614_81

def optimizedBody614_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_63 optimizedBody614_82

def optimizedBody614_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_16 optimizedBody614_83

def optimizedBody614_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_62 optimizedBody614_84

def optimizedBody614_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_61 optimizedBody614_85

def optimizedBody614_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_6 optimizedBody614_86

def optimizedBody614_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_60 optimizedBody614_87

def optimizedBody614_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_56 optimizedBody614_88

def optimizedBody614_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_55 optimizedBody614_89

def optimizedBody614_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_54 optimizedBody614_90

def optimizedBody614_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_41 optimizedBody614_91

def optimizedBody614_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_13 optimizedBody614_92

def optimizedBody614_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_53 optimizedBody614_93

def optimizedBody614_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_52 optimizedBody614_94

def optimizedBody614_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_6 optimizedBody614_95

def optimizedBody614_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_51 optimizedBody614_96

def optimizedBody614_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_44 optimizedBody614_97

def optimizedBody614_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_47 optimizedBody614_98

def optimizedBody614_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_6 optimizedBody614_99

def optimizedBody614_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_46 optimizedBody614_100

def optimizedBody614_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_42 optimizedBody614_101

def optimizedBody614_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_41 optimizedBody614_102

def optimizedBody614_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_13 optimizedBody614_103

def optimizedBody614_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_40 optimizedBody614_104

def optimizedBody614_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_39 optimizedBody614_105

def optimizedBody614_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_6 optimizedBody614_106

def optimizedBody614_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_38 optimizedBody614_107

def optimizedBody614_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_34 optimizedBody614_108

def optimizedBody614_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_33 optimizedBody614_109

def optimizedBody614_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_32 optimizedBody614_110

def optimizedBody614_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_31 optimizedBody614_111

def optimizedBody614_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_30 optimizedBody614_112

def optimizedBody614_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_29 optimizedBody614_113

def optimizedBody614_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_6 optimizedBody614_114

def optimizedBody614_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_28 optimizedBody614_115

def optimizedBody614_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_24 optimizedBody614_116

def optimizedBody614_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_23 optimizedBody614_117

def optimizedBody614_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_22 optimizedBody614_118

def optimizedBody614_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_6 optimizedBody614_119

def optimizedBody614_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_21 optimizedBody614_120

def optimizedBody614_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_17 optimizedBody614_121

def optimizedBody614_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_16 optimizedBody614_122

def optimizedBody614_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_15 optimizedBody614_123

def optimizedBody614_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_14 optimizedBody614_124

def optimizedBody614_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_13 optimizedBody614_125

def optimizedBody614_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_6 optimizedBody614_126

def optimizedBody614_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_12 optimizedBody614_127

def optimizedBody614_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_8 optimizedBody614_128

def optimizedBody614_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_7 optimizedBody614_129

def optimizedBody614_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_6 optimizedBody614_130

def optimizedBody614_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_5 optimizedBody614_131

def optimizedBody614_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody614_0 optimizedBody614_132

def optimized614 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(614, 4, optimizedBody614_133)
end InitECandidate.Proofs.StackAnalysis
