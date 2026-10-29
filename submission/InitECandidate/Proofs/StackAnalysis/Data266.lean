import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody266_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 4), (46, 2)]

def optimizedBody266_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (46, 46)]

def optimizedBody266_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46)]

def optimizedBody266_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody266_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_2 optimizedBody266_3

def optimizedBody266_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody266_1, 266, 2)) (some 69) ([]) (some (2, optimizedBody266_4, 266, 3))

def optimizedBody266_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody266_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 160#64)

def optimizedBody266_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (52, 0)]

def optimizedBody266_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (48, 48), (0, 46), (52, 52)]

def optimizedBody266_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (52, 52)]

def optimizedBody266_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_10 optimizedBody266_3

def optimizedBody266_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody266_9, 266, 4)) (some 68) ([2]) (some (2, optimizedBody266_11, 266, 5))

def optimizedBody266_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody266_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody266_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody266_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody266_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 192#64)

def optimizedBody266_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody266_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 10), (48, 48), (50, 0), (52, 52)]

def optimizedBody266_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (12, 50), (52, 52)]

def optimizedBody266_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (12, 50), (52, 52)]

def optimizedBody266_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_21 optimizedBody266_3

def optimizedBody266_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody266_20, 266, 6)) (some 265) ([2, 4, 6, 8, 10]) (some (2, optimizedBody266_22, 266, 7))

def optimizedBody266_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody266_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 16#64))

def optimizedBody266_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 24#64))

def optimizedBody266_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody266_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 76#64)

def optimizedBody266_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody266_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 0), (48, 48), (50, 12), (52, 52)]

def optimizedBody266_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody266_20, 266, 8)) (some 265) ([2, 4, 6, 8, 10]) (some (2, optimizedBody266_22, 266, 9))

def optimizedBody266_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 32#64))

def optimizedBody266_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 40#64))

def optimizedBody266_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody266_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 116#64)

def optimizedBody266_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody266_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody266_20, 266, 10)) (some 265) ([2, 4, 6, 8, 10]) (some (2, optimizedBody266_22, 266, 11))

def optimizedBody266_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 48#64))

def optimizedBody266_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 56#64))

def optimizedBody266_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody266_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 184#64)

def optimizedBody266_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody266_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (6, 50), (50, 52)]

def optimizedBody266_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (6, 50), (50, 52)]

def optimizedBody266_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_44 optimizedBody266_3

def optimizedBody266_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody266_43, 266, 12)) (some 265) ([2, 4, 6, 8, 10]) (some (2, optimizedBody266_45, 266, 13))

def optimizedBody266_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody266_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody266_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 72#64))

def optimizedBody266_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody266_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 68#64)

def optimizedBody266_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody266_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 0), (48, 48), (50, 50)]

def optimizedBody266_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (6, 48), (46, 50)]

def optimizedBody266_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (46, 50)]

def optimizedBody266_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_55 optimizedBody266_3

def optimizedBody266_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody266_54, 266, 14)) (some 265) ([2, 4, 6, 8, 10]) (some (2, optimizedBody266_56, 266, 15))

def optimizedBody266_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 0)]

def optimizedBody266_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 5#64)

def optimizedBody266_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody266_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody266_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody266_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_62 optimizedBody266_3

def optimizedBody266_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody266_61, 266, 16)) (some 240) ([2, 4, 6]) (some (2, optimizedBody266_63, 266, 17))

def optimizedBody266_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody266_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody266_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody266_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_67 optimizedBody266_3

def optimizedBody266_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody266_66, 266, 18)) (some 70) ([2]) (some (2, optimizedBody266_68, 266, 19))

def optimizedBody266_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody266_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody266_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_70 optimizedBody266_71

def optimizedBody266_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_18 optimizedBody266_72

def optimizedBody266_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_6 optimizedBody266_73

def optimizedBody266_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_69 optimizedBody266_74

def optimizedBody266_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_65 optimizedBody266_75

def optimizedBody266_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_6 optimizedBody266_76

def optimizedBody266_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_64 optimizedBody266_77

def optimizedBody266_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_60 optimizedBody266_78

def optimizedBody266_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_59 optimizedBody266_79

def optimizedBody266_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_58 optimizedBody266_80

def optimizedBody266_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_6 optimizedBody266_81

def optimizedBody266_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_57 optimizedBody266_82

def optimizedBody266_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_53 optimizedBody266_83

def optimizedBody266_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_52 optimizedBody266_84

def optimizedBody266_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_51 optimizedBody266_85

def optimizedBody266_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_50 optimizedBody266_86

def optimizedBody266_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_13 optimizedBody266_87

def optimizedBody266_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_49 optimizedBody266_88

def optimizedBody266_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_47 optimizedBody266_89

def optimizedBody266_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_48 optimizedBody266_90

def optimizedBody266_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_47 optimizedBody266_91

def optimizedBody266_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_6 optimizedBody266_92

def optimizedBody266_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_46 optimizedBody266_93

def optimizedBody266_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_30 optimizedBody266_94

def optimizedBody266_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_42 optimizedBody266_95

def optimizedBody266_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_41 optimizedBody266_96

def optimizedBody266_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_40 optimizedBody266_97

def optimizedBody266_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_13 optimizedBody266_98

def optimizedBody266_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_39 optimizedBody266_99

def optimizedBody266_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_24 optimizedBody266_100

def optimizedBody266_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_38 optimizedBody266_101

def optimizedBody266_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_24 optimizedBody266_102

def optimizedBody266_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_6 optimizedBody266_103

def optimizedBody266_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_37 optimizedBody266_104

def optimizedBody266_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_30 optimizedBody266_105

def optimizedBody266_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_36 optimizedBody266_106

def optimizedBody266_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_35 optimizedBody266_107

def optimizedBody266_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_34 optimizedBody266_108

def optimizedBody266_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_13 optimizedBody266_109

def optimizedBody266_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_33 optimizedBody266_110

def optimizedBody266_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_24 optimizedBody266_111

def optimizedBody266_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_32 optimizedBody266_112

def optimizedBody266_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_24 optimizedBody266_113

def optimizedBody266_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_6 optimizedBody266_114

def optimizedBody266_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_31 optimizedBody266_115

def optimizedBody266_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_30 optimizedBody266_116

def optimizedBody266_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_29 optimizedBody266_117

def optimizedBody266_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_28 optimizedBody266_118

def optimizedBody266_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_27 optimizedBody266_119

def optimizedBody266_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_13 optimizedBody266_120

def optimizedBody266_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_26 optimizedBody266_121

def optimizedBody266_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_24 optimizedBody266_122

def optimizedBody266_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_25 optimizedBody266_123

def optimizedBody266_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_24 optimizedBody266_124

def optimizedBody266_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_6 optimizedBody266_125

def optimizedBody266_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_23 optimizedBody266_126

def optimizedBody266_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_19 optimizedBody266_127

def optimizedBody266_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_18 optimizedBody266_128

def optimizedBody266_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_17 optimizedBody266_129

def optimizedBody266_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_16 optimizedBody266_130

def optimizedBody266_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_15 optimizedBody266_131

def optimizedBody266_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_13 optimizedBody266_132

def optimizedBody266_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_14 optimizedBody266_133

def optimizedBody266_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_13 optimizedBody266_134

def optimizedBody266_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_6 optimizedBody266_135

def optimizedBody266_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_12 optimizedBody266_136

def optimizedBody266_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_8 optimizedBody266_137

def optimizedBody266_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_7 optimizedBody266_138

def optimizedBody266_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_6 optimizedBody266_139

def optimizedBody266_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_5 optimizedBody266_140

def optimizedBody266_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody266_0 optimizedBody266_141

def optimized266 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(266, 3, optimizedBody266_142)
end InitECandidate.Proofs.StackAnalysis
