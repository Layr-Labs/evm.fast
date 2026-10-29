import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody259_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4)]

def optimizedBody259_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody259_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (50, 4), (46, 2), (48, 6)]

def optimizedBody259_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (46, 46), (48, 48)]

def optimizedBody259_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (46, 46), (48, 48)]

def optimizedBody259_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody259_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_4 optimizedBody259_5

def optimizedBody259_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody259_3, 259, 2)) (some 69) ([]) (some (2, optimizedBody259_6, 259, 3))

def optimizedBody259_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody259_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 608#64)

def optimizedBody259_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (46, 46), (56, 0), (48, 48)]

def optimizedBody259_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (46, 46), (56, 56), (4, 48)]

def optimizedBody259_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (46, 46), (56, 56), (4, 48)]

def optimizedBody259_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_12 optimizedBody259_5

def optimizedBody259_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody259_11, 259, 4)) (some 68) ([2]) (some (2, optimizedBody259_13, 259, 5))

def optimizedBody259_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody259_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody259_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (50, 50), (46, 46), (56, 56), (48, 2), (52, 4)]

def optimizedBody259_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 50), (46, 46), (56, 56), (0, 48), (8, 52)]

def optimizedBody259_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (46, 46), (56, 56), (0, 48), (8, 52)]

def optimizedBody259_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_19 optimizedBody259_5

def optimizedBody259_21 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_18, 259, 6)) (some 77) ([2, 4, 6]) (some (2, optimizedBody259_20, 259, 7))

def optimizedBody259_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody259_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody259_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody259_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody259_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 20#64)

def optimizedBody259_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (50, 50), (46, 46), (56, 56), (48, 0), (52, 8)]

def optimizedBody259_28 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_18, 259, 8)) (some 242) ([2, 4, 6]) (some (2, optimizedBody259_20, 259, 9))

def optimizedBody259_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody259_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 52#64)))

def optimizedBody259_31 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_18, 259, 10)) (some 77) ([2, 4, 6]) (some (2, optimizedBody259_20, 259, 11))

def optimizedBody259_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody259_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 84#64)))

def optimizedBody259_34 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_18, 259, 12)) (some 77) ([2, 4, 6]) (some (2, optimizedBody259_20, 259, 13))

def optimizedBody259_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 116#64)))

def optimizedBody259_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody259_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 256#64)

def optimizedBody259_38 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_18, 259, 14)) (some 242) ([2, 4, 6]) (some (2, optimizedBody259_20, 259, 15))

def optimizedBody259_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody259_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 372#64)))

def optimizedBody259_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 50), (46, 46), (56, 56), (0, 48), (6, 52)]

def optimizedBody259_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (46, 46), (56, 56), (0, 48), (6, 52)]

def optimizedBody259_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_42 optimizedBody259_5

def optimizedBody259_44 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_41, 259, 16)) (some 77) ([2, 4, 6]) (some (2, optimizedBody259_43, 259, 17))

def optimizedBody259_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody259_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 404#64)))

def optimizedBody259_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody259_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (50, 50), (46, 46), (56, 56), (48, 0), (52, 6)]

def optimizedBody259_49 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_41, 259, 18)) (some 244) ([2, 4]) (some (2, optimizedBody259_43, 259, 19))

def optimizedBody259_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 412#64)))

def optimizedBody259_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 224#64)))

def optimizedBody259_52 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_41, 259, 20)) (some 244) ([2, 4]) (some (2, optimizedBody259_43, 259, 21))

def optimizedBody259_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 420#64)))

def optimizedBody259_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 256#64)))

def optimizedBody259_55 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_41, 259, 22)) (some 244) ([2, 4]) (some (2, optimizedBody259_43, 259, 23))

def optimizedBody259_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 428#64)))

def optimizedBody259_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody259_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 50), (0, 46), (56, 56), (10, 48), (52, 52)]

def optimizedBody259_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (0, 46), (56, 56), (10, 48), (52, 52)]

def optimizedBody259_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_59 optimizedBody259_5

def optimizedBody259_61 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_58, 259, 24)) (some 244) ([2, 4]) (some (2, optimizedBody259_60, 259, 25))

def optimizedBody259_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody259_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody259_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody259_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 10 (Flapjack.WordRegImm.imm 320#64)))

def optimizedBody259_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody259_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (50, 50), (46, 0), (56, 56), (48, 10), (52, 52)]

def optimizedBody259_68 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_18, 259, 26)) (some 243) ([2, 4, 6, 8]) (some (2, optimizedBody259_20, 259, 27))

def optimizedBody259_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 352#64)))

def optimizedBody259_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 440#64)))

def optimizedBody259_71 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_18, 259, 28)) (some 77) ([2, 4, 6]) (some (2, optimizedBody259_20, 259, 29))

def optimizedBody259_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody259_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 472#64)))

def optimizedBody259_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (50, 50), (46, 46), (56, 56), (58, 0), (64, 8)]

def optimizedBody259_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 50), (0, 46), (56, 56), (58, 58), (64, 64)]

def optimizedBody259_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (0, 46), (56, 56), (58, 58), (64, 64)]

def optimizedBody259_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_76 optimizedBody259_5

def optimizedBody259_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody259_75, 259, 30)) (some 77) ([2, 4, 6]) (some (2, optimizedBody259_77, 259, 31))

def optimizedBody259_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody259_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody259_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 50), (48, 0), (46, 2), (54, 4), (56, 56), (58, 58), (64, 64)]

def optimizedBody259_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (50, 50), (48, 48), (0, 46), (54, 54), (56, 56), (58, 58), (64, 64)]

def optimizedBody259_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48), (0, 46), (54, 54), (56, 56), (58, 58), (64, 64)]

def optimizedBody259_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_83 optimizedBody259_5

def optimizedBody259_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody259_82, 259, 32)) (some 69) ([]) (some (2, optimizedBody259_84, 259, 33))

def optimizedBody259_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody259_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody259_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 4), (50, 50), (48, 48), (52, 0), (54, 54), (56, 56), (58, 58), (64, 64)]

def optimizedBody259_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (46, 46), (50, 50), (48, 48), (8, 52), (4, 54), (56, 56), (52, 58), (64, 64)]

def optimizedBody259_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (48, 48), (8, 52), (4, 54), (56, 56), (52, 58), (64, 64)]

def optimizedBody259_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_90 optimizedBody259_5

def optimizedBody259_92 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody259_89, 259, 34)) (some 68) ([2]) (some (2, optimizedBody259_91, 259, 35))

def optimizedBody259_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody259_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (0, 0), (46, 46), (10, 10), (50, 50), (48, 48), (8, 8), (60, 4), (56, 56), (52, 52), (64, 64)]

def optimizedBody259_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody259_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody259_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 60)]

def optimizedBody259_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody259_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody259_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (60, 6), (0, 0)]

def optimizedBody259_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody259_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody259_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 10)))

def optimizedBody259_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 46), (50, 10), (52, 50), (54, 48), (56, 8), (60, 60), (58, 56),
    (62, 52), (64, 64)]

def optimizedBody259_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (0, 46), (46, 48), (10, 50), (50, 52), (48, 54), (8, 56), (60, 60), (56, 58), (4, 62), (64, 64)]

def optimizedBody259_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (46, 48), (10, 50), (50, 52), (48, 54), (8, 56), (60, 60), (56, 58), (4, 62), (64, 64)]

def optimizedBody259_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_106 optimizedBody259_5

def optimizedBody259_108 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody259_105, 259, 36)) (some 239) ([2, 4, 6]) (some (2, optimizedBody259_107, 259, 37))

def optimizedBody259_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody259_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (0, 0), (46, 46), (10, 10), (50, 50), (48, 48), (8, 8), (60, 60), (56, 56), (52, 4), (64, 64)]

def optimizedBody259_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody259_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_110 optimizedBody259_111

def optimizedBody259_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_109 optimizedBody259_112

def optimizedBody259_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_113

def optimizedBody259_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_114

def optimizedBody259_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_108 optimizedBody259_115

def optimizedBody259_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_104 optimizedBody259_116

def optimizedBody259_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_103 optimizedBody259_117

def optimizedBody259_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_64 optimizedBody259_118

def optimizedBody259_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_102 optimizedBody259_119

def optimizedBody259_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_120

def optimizedBody259_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_101 optimizedBody259_121

def optimizedBody259_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_100 optimizedBody259_122

def optimizedBody259_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_99 optimizedBody259_123

def optimizedBody259_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_98 optimizedBody259_124

def optimizedBody259_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_97 optimizedBody259_125

def optimizedBody259_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_96 optimizedBody259_126

def optimizedBody259_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_127

def optimizedBody259_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_128

def optimizedBody259_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody259_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody259_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_130 optimizedBody259_131

def optimizedBody259_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_132

def optimizedBody259_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 8) optimizedBody259_129 optimizedBody259_133

def optimizedBody259_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (0, 0), (46, 4), (10, 10), (50, 6), (48, 12), (8, 8), (60, 14), (56, 16), (52, 18), (64, 20)]

def optimizedBody259_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_135

def optimizedBody259_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_134 optimizedBody259_136

def optimizedBody259_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_95 optimizedBody259_137

def optimizedBody259_139 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody259_138 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln)

def optimizedBody259_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 52), (6, 8), (2, 10)]

def optimizedBody259_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.imm 416#64)))

def optimizedBody259_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 6), (6, 6), (8, 8), (44, 44), (46, 46), (50, 50), (48, 48), (58, 6), (60, 60), (56, 56), (62, 0),
    (64, 64)]

def optimizedBody259_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (0, 46), (50, 50), (46, 48), (58, 58), (60, 60), (56, 56), (62, 62), (64, 64)]

def optimizedBody259_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (50, 50), (46, 48), (58, 58), (60, 60), (56, 56), (62, 62), (64, 64)]

def optimizedBody259_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_144 optimizedBody259_5

def optimizedBody259_146 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody259_143, 259, 38)) (some 238) ([2, 4, 6, 8]) (some (2, optimizedBody259_145, 259, 39))

def optimizedBody259_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (48, 0), (50, 50), (46, 46), (58, 58), (60, 60), (56, 56), (62, 62), (64, 64)]

def optimizedBody259_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (48, 48), (50, 50), (4, 46), (58, 58), (60, 60), (56, 56), (62, 62), (64, 64)]

def optimizedBody259_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (50, 50), (4, 46), (58, 58), (60, 60), (56, 56), (62, 62), (64, 64)]

def optimizedBody259_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_149 optimizedBody259_5

def optimizedBody259_151 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody259_148, 259, 40)) (some 70) ([2]) (some (2, optimizedBody259_150, 259, 41))

def optimizedBody259_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody259_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody259_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 56#64))

def optimizedBody259_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 6), (48, 48), (50, 50), (52, 0), (54, 4), (58, 58), (60, 60), (56, 56), (62, 62), (64, 64)]

def optimizedBody259_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (12, 46), (46, 48), (48, 50), (14, 52), (50, 54), (58, 58), (60, 60), (52, 56), (54, 62),
    (56, 64)]

def optimizedBody259_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (46, 48), (48, 50), (14, 52), (50, 54), (58, 58), (60, 60), (52, 56), (54, 62), (56, 64)]

def optimizedBody259_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_157 optimizedBody259_5

def optimizedBody259_159 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody259_156, 259, 42)) (some 68) ([2]) (some (2, optimizedBody259_158, 259, 43))

def optimizedBody259_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody259_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (12, 12), (8, 8), (46, 46), (10, 10), (48, 48), (14, 14), (50, 50), (58, 58), (60, 60), (52, 52), (54, 54),
    (56, 56)]

def optimizedBody259_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (8, 8)]

def optimizedBody259_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 44#64)

def optimizedBody259_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody259_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody259_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (0, 0)]

def optimizedBody259_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody259_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody259_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody259_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 12), (48, 8), (50, 46), (52, 10), (54, 48), (56, 14), (58, 50), (60, 58), (62, 60),
    (64, 52), (66, 54), (68, 56)]

def optimizedBody259_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (12, 46), (0, 48), (46, 50), (10, 52), (48, 54), (14, 56), (50, 58), (4, 60), (6, 62), (52, 64), (16, 66),
    (56, 68)]

def optimizedBody259_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (0, 48), (46, 50), (10, 52), (48, 54), (14, 56), (50, 58), (4, 60), (6, 62), (52, 64),
    (16, 66), (56, 68)]

def optimizedBody259_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_172 optimizedBody259_5

def optimizedBody259_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody259_171, 259, 44)) (some 257) ([2, 4]) (some (2, optimizedBody259_173, 259, 45))

def optimizedBody259_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody259_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (12, 12), (8, 8), (46, 46), (10, 10), (48, 48), (14, 14), (50, 50), (58, 4), (60, 6), (52, 52), (54, 16),
    (56, 56)]

def optimizedBody259_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_176 optimizedBody259_111

def optimizedBody259_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_175 optimizedBody259_177

def optimizedBody259_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_178

def optimizedBody259_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_179

def optimizedBody259_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_174 optimizedBody259_180

def optimizedBody259_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_170 optimizedBody259_181

def optimizedBody259_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_169 optimizedBody259_182

def optimizedBody259_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_64 optimizedBody259_183

def optimizedBody259_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_168 optimizedBody259_184

def optimizedBody259_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_22 optimizedBody259_185

def optimizedBody259_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_167 optimizedBody259_186

def optimizedBody259_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_166 optimizedBody259_187

def optimizedBody259_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_165 optimizedBody259_188

def optimizedBody259_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_164 optimizedBody259_189

def optimizedBody259_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_163 optimizedBody259_190

def optimizedBody259_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_22 optimizedBody259_191

def optimizedBody259_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_192

def optimizedBody259_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14)]

def optimizedBody259_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_194 optimizedBody259_131

def optimizedBody259_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_195

def optimizedBody259_197 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 14) optimizedBody259_193 optimizedBody259_196

def optimizedBody259_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (12, 12), (8, 8), (46, 2), (10, 10), (48, 4), (14, 14), (50, 6), (58, 16), (60, 18), (52, 20), (54, 22),
    (56, 24)]

def optimizedBody259_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_198

def optimizedBody259_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_197 optimizedBody259_199

def optimizedBody259_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_162 optimizedBody259_200

def optimizedBody259_202 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody259_201 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody259_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 54), (6, 14), (2, 10)]

def optimizedBody259_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.imm 448#64)))

def optimizedBody259_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 6), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 0), (56, 56)]

def optimizedBody259_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48), (48, 50), (50, 52), (52, 54), (54, 56)]

def optimizedBody259_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (48, 50), (50, 52), (52, 54), (54, 56)]

def optimizedBody259_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_207 optimizedBody259_5

def optimizedBody259_209 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_206, 259, 46)) (some 238) ([2, 4, 6, 8]) (some (2, optimizedBody259_208, 259, 47))

def optimizedBody259_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody259_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (6, 54)]

def optimizedBody259_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (6, 54)]

def optimizedBody259_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_212 optimizedBody259_5

def optimizedBody259_214 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_211, 259, 48)) (some 70) ([2]) (some (2, optimizedBody259_213, 259, 49))

def optimizedBody259_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 512#64)))

def optimizedBody259_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 480#64)))

def optimizedBody259_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 6)]

def optimizedBody259_218 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_211, 259, 50)) (some 244) ([2, 4]) (some (2, optimizedBody259_213, 259, 51))

def optimizedBody259_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 520#64)))

def optimizedBody259_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 512#64)))

def optimizedBody259_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (48, 50), (0, 52), (52, 54)]

def optimizedBody259_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (48, 50), (0, 52), (52, 54)]

def optimizedBody259_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_222 optimizedBody259_5

def optimizedBody259_224 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody259_221, 259, 52)) (some 244) ([2, 4]) (some (2, optimizedBody259_223, 259, 53))

def optimizedBody259_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 64#64))

def optimizedBody259_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 72#64))

def optimizedBody259_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 544#64)))

def optimizedBody259_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52)]

def optimizedBody259_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (4, 52)]

def optimizedBody259_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (4, 52)]

def optimizedBody259_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_230 optimizedBody259_5

def optimizedBody259_232 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody259_229, 259, 54)) (some 239) ([2, 4, 6]) (some (2, optimizedBody259_231, 259, 55))

def optimizedBody259_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 532#64)))

def optimizedBody259_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 576#64)))

def optimizedBody259_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0)]

def optimizedBody259_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (46, 48), (0, 50)]

def optimizedBody259_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (46, 48), (0, 50)]

def optimizedBody259_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_237 optimizedBody259_5

def optimizedBody259_239 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody259_236, 259, 56)) (some 244) ([2, 4]) (some (2, optimizedBody259_238, 259, 57))

def optimizedBody259_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 0)]

def optimizedBody259_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 19#64)

def optimizedBody259_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody259_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody259_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody259_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_244 optimizedBody259_5

def optimizedBody259_246 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody259_243, 259, 58)) (some 240) ([2, 4, 6]) (some (2, optimizedBody259_245, 259, 59))

def optimizedBody259_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody259_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody259_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody259_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_249 optimizedBody259_5

def optimizedBody259_251 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody259_248, 259, 60)) (some 70) ([2]) (some (2, optimizedBody259_250, 259, 61))

def optimizedBody259_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody259_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody259_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody259_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_253 optimizedBody259_254

def optimizedBody259_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_252 optimizedBody259_255

def optimizedBody259_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_256

def optimizedBody259_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_251 optimizedBody259_257

def optimizedBody259_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_247 optimizedBody259_258

def optimizedBody259_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_259

def optimizedBody259_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_246 optimizedBody259_260

def optimizedBody259_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_242 optimizedBody259_261

def optimizedBody259_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_241 optimizedBody259_262

def optimizedBody259_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_240 optimizedBody259_263

def optimizedBody259_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_264

def optimizedBody259_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_239 optimizedBody259_265

def optimizedBody259_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_235 optimizedBody259_266

def optimizedBody259_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_234 optimizedBody259_267

def optimizedBody259_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_268

def optimizedBody259_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_233 optimizedBody259_269

def optimizedBody259_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_152 optimizedBody259_270

def optimizedBody259_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_271

def optimizedBody259_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_232 optimizedBody259_272

def optimizedBody259_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_228 optimizedBody259_273

def optimizedBody259_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_227 optimizedBody259_274

def optimizedBody259_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_275

def optimizedBody259_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_226 optimizedBody259_276

def optimizedBody259_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_152 optimizedBody259_277

def optimizedBody259_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_225 optimizedBody259_278

def optimizedBody259_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_152 optimizedBody259_279

def optimizedBody259_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_280

def optimizedBody259_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_224 optimizedBody259_281

def optimizedBody259_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_217 optimizedBody259_282

def optimizedBody259_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_220 optimizedBody259_283

def optimizedBody259_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_284

def optimizedBody259_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_219 optimizedBody259_285

def optimizedBody259_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_45 optimizedBody259_286

def optimizedBody259_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_287

def optimizedBody259_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_218 optimizedBody259_288

def optimizedBody259_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_217 optimizedBody259_289

def optimizedBody259_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_216 optimizedBody259_290

def optimizedBody259_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_291

def optimizedBody259_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_215 optimizedBody259_292

def optimizedBody259_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_45 optimizedBody259_293

def optimizedBody259_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_294

def optimizedBody259_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_214 optimizedBody259_295

def optimizedBody259_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_210 optimizedBody259_296

def optimizedBody259_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_297

def optimizedBody259_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_209 optimizedBody259_298

def optimizedBody259_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_205 optimizedBody259_299

def optimizedBody259_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_204 optimizedBody259_300

def optimizedBody259_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_203 optimizedBody259_301

def optimizedBody259_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_302

def optimizedBody259_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_202 optimizedBody259_303

def optimizedBody259_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_161 optimizedBody259_304

def optimizedBody259_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_305

def optimizedBody259_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_160 optimizedBody259_306

def optimizedBody259_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_307

def optimizedBody259_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_159 optimizedBody259_308

def optimizedBody259_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_155 optimizedBody259_309

def optimizedBody259_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_87 optimizedBody259_310

def optimizedBody259_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_86 optimizedBody259_311

def optimizedBody259_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_312

def optimizedBody259_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_154 optimizedBody259_313

def optimizedBody259_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_152 optimizedBody259_314

def optimizedBody259_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_153 optimizedBody259_315

def optimizedBody259_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_152 optimizedBody259_316

def optimizedBody259_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_317

def optimizedBody259_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_151 optimizedBody259_318

def optimizedBody259_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_147 optimizedBody259_319

def optimizedBody259_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_320

def optimizedBody259_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_146 optimizedBody259_321

def optimizedBody259_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_142 optimizedBody259_322

def optimizedBody259_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_141 optimizedBody259_323

def optimizedBody259_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_140 optimizedBody259_324

def optimizedBody259_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_325

def optimizedBody259_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_139 optimizedBody259_326

def optimizedBody259_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_94 optimizedBody259_327

def optimizedBody259_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_328

def optimizedBody259_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_93 optimizedBody259_329

def optimizedBody259_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_330

def optimizedBody259_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_92 optimizedBody259_331

def optimizedBody259_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_88 optimizedBody259_332

def optimizedBody259_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_87 optimizedBody259_333

def optimizedBody259_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_86 optimizedBody259_334

def optimizedBody259_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_335

def optimizedBody259_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_336

def optimizedBody259_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_85 optimizedBody259_337

def optimizedBody259_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_81 optimizedBody259_338

def optimizedBody259_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_80 optimizedBody259_339

def optimizedBody259_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_340

def optimizedBody259_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_79 optimizedBody259_341

def optimizedBody259_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_342

def optimizedBody259_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_343

def optimizedBody259_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_78 optimizedBody259_344

def optimizedBody259_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_74 optimizedBody259_345

def optimizedBody259_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_16 optimizedBody259_346

def optimizedBody259_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_73 optimizedBody259_347

def optimizedBody259_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_22 optimizedBody259_348

def optimizedBody259_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_72 optimizedBody259_349

def optimizedBody259_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_350

def optimizedBody259_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_351

def optimizedBody259_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_71 optimizedBody259_352

def optimizedBody259_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_27 optimizedBody259_353

def optimizedBody259_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_16 optimizedBody259_354

def optimizedBody259_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_70 optimizedBody259_355

def optimizedBody259_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_22 optimizedBody259_356

def optimizedBody259_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_69 optimizedBody259_357

def optimizedBody259_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_358

def optimizedBody259_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_359

def optimizedBody259_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_68 optimizedBody259_360

def optimizedBody259_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_67 optimizedBody259_361

def optimizedBody259_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_66 optimizedBody259_362

def optimizedBody259_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_65 optimizedBody259_363

def optimizedBody259_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_64 optimizedBody259_364

def optimizedBody259_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_63 optimizedBody259_365

def optimizedBody259_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_366

def optimizedBody259_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_62 optimizedBody259_367

def optimizedBody259_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_368

def optimizedBody259_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_369

def optimizedBody259_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_61 optimizedBody259_370

def optimizedBody259_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_48 optimizedBody259_371

def optimizedBody259_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_57 optimizedBody259_372

def optimizedBody259_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_373

def optimizedBody259_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_56 optimizedBody259_374

def optimizedBody259_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_45 optimizedBody259_375

def optimizedBody259_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_376

def optimizedBody259_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_55 optimizedBody259_377

def optimizedBody259_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_48 optimizedBody259_378

def optimizedBody259_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_54 optimizedBody259_379

def optimizedBody259_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_380

def optimizedBody259_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_53 optimizedBody259_381

def optimizedBody259_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_45 optimizedBody259_382

def optimizedBody259_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_383

def optimizedBody259_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_52 optimizedBody259_384

def optimizedBody259_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_48 optimizedBody259_385

def optimizedBody259_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_51 optimizedBody259_386

def optimizedBody259_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_387

def optimizedBody259_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_50 optimizedBody259_388

def optimizedBody259_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_45 optimizedBody259_389

def optimizedBody259_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_390

def optimizedBody259_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_49 optimizedBody259_391

def optimizedBody259_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_48 optimizedBody259_392

def optimizedBody259_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_47 optimizedBody259_393

def optimizedBody259_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_394

def optimizedBody259_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_46 optimizedBody259_395

def optimizedBody259_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_45 optimizedBody259_396

def optimizedBody259_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_397

def optimizedBody259_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_44 optimizedBody259_398

def optimizedBody259_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_27 optimizedBody259_399

def optimizedBody259_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_16 optimizedBody259_400

def optimizedBody259_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_40 optimizedBody259_401

def optimizedBody259_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_22 optimizedBody259_402

def optimizedBody259_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_39 optimizedBody259_403

def optimizedBody259_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_404

def optimizedBody259_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_405

def optimizedBody259_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_38 optimizedBody259_406

def optimizedBody259_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_27 optimizedBody259_407

def optimizedBody259_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_37 optimizedBody259_408

def optimizedBody259_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_36 optimizedBody259_409

def optimizedBody259_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_410

def optimizedBody259_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_35 optimizedBody259_411

def optimizedBody259_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_22 optimizedBody259_412

def optimizedBody259_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_413

def optimizedBody259_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_34 optimizedBody259_414

def optimizedBody259_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_27 optimizedBody259_415

def optimizedBody259_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_16 optimizedBody259_416

def optimizedBody259_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_33 optimizedBody259_417

def optimizedBody259_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_22 optimizedBody259_418

def optimizedBody259_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_32 optimizedBody259_419

def optimizedBody259_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_420

def optimizedBody259_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_421

def optimizedBody259_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_31 optimizedBody259_422

def optimizedBody259_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_27 optimizedBody259_423

def optimizedBody259_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_16 optimizedBody259_424

def optimizedBody259_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_30 optimizedBody259_425

def optimizedBody259_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_22 optimizedBody259_426

def optimizedBody259_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_29 optimizedBody259_427

def optimizedBody259_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_428

def optimizedBody259_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_429

def optimizedBody259_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_28 optimizedBody259_430

def optimizedBody259_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_27 optimizedBody259_431

def optimizedBody259_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_26 optimizedBody259_432

def optimizedBody259_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_25 optimizedBody259_433

def optimizedBody259_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_24 optimizedBody259_434

def optimizedBody259_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_23 optimizedBody259_435

def optimizedBody259_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_22 optimizedBody259_436

def optimizedBody259_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_437

def optimizedBody259_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_21 optimizedBody259_438

def optimizedBody259_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_17 optimizedBody259_439

def optimizedBody259_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_16 optimizedBody259_440

def optimizedBody259_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_15 optimizedBody259_441

def optimizedBody259_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_442

def optimizedBody259_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_14 optimizedBody259_443

def optimizedBody259_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_10 optimizedBody259_444

def optimizedBody259_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_9 optimizedBody259_445

def optimizedBody259_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_8 optimizedBody259_446

def optimizedBody259_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_7 optimizedBody259_447

def optimizedBody259_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_2 optimizedBody259_448

def optimizedBody259_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_1 optimizedBody259_449

def optimizedBody259_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody259_0 optimizedBody259_450

def optimized259 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(259, 3, optimizedBody259_451)
end InitECandidate.Proofs.StackAnalysis
