import InitECandidate.Proofs.WordStages.Optimize473
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source489
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody489_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2)]

def optimizedBody489_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody489_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody489_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody489_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_2 optimizedBody489_3

def optimizedBody489_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody489_1, 489, 2)) (some 75) ([]) (some (2, optimizedBody489_4, 489, 3))

def optimizedBody489_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody489_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 0)]

def optimizedBody489_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody489_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody489_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_9 optimizedBody489_3

def optimizedBody489_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody489_8, 489, 4)) (some 72) ([]) (some (2, optimizedBody489_10, 489, 5))

def optimizedBody489_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 280#64)

def optimizedBody489_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 0)]

def optimizedBody489_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (52, 52)]

def optimizedBody489_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52)]

def optimizedBody489_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_15 optimizedBody489_3

def optimizedBody489_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody489_14, 489, 6)) (some 74) ([2]) (some (2, optimizedBody489_16, 489, 7))

def optimizedBody489_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody489_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 280#64)

def optimizedBody489_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 2), (52, 52)]

def optimizedBody489_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody489_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody489_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_22 optimizedBody489_3

def optimizedBody489_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody489_21, 489, 8)) (some 78) ([2, 4]) (some (2, optimizedBody489_23, 489, 9))

def optimizedBody489_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1024#64)

def optimizedBody489_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (6, 48), (0, 50), (50, 52)]

def optimizedBody489_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (6, 48), (0, 50), (50, 52)]

def optimizedBody489_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_27 optimizedBody489_3

def optimizedBody489_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody489_26, 489, 10)) (some 74) ([2]) (some (2, optimizedBody489_28, 489, 11))

def optimizedBody489_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody489_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 208#64)))

def optimizedBody489_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody489_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody489_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody489_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody489_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody489_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 232#64)))

def optimizedBody489_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody489_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody489_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody489_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (6, 48), (8, 50)]

def optimizedBody489_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (8, 50)]

def optimizedBody489_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_42 optimizedBody489_3

def optimizedBody489_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody489_41, 489, 12)) (some 71) ([2]) (some (2, optimizedBody489_43, 489, 13))

def optimizedBody489_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody489_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 224#64)))

def optimizedBody489_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody489_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody489_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody489_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody489_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1024#64)

def optimizedBody489_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody489_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody489_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody489_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody489_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody489_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 120#64))

def optimizedBody489_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody489_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody489_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody489_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody489_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 120#64))

def optimizedBody489_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 6)]

def optimizedBody489_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody489_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody489_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_65 optimizedBody489_3

def optimizedBody489_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody489_64, 489, 14)) (some 485) ([2, 4]) (some (2, optimizedBody489_66, 489, 15))

def optimizedBody489_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody489_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4#64)

def optimizedBody489_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody489_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0)]

def optimizedBody489_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody489_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody489_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_73 optimizedBody489_3

def optimizedBody489_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody489_72, 489, 16)) (some 436) ([2, 4]) (some (2, optimizedBody489_74, 489, 17))

def optimizedBody489_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody489_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody489_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody489_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 112#64)))

def optimizedBody489_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody489_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody489_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody489_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody489_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody489_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_84 optimizedBody489_3

def optimizedBody489_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody489_83, 489, 18)) (some 183) ([2, 4]) (some (2, optimizedBody489_85, 489, 19))

def optimizedBody489_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody489_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 136#64)))

def optimizedBody489_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody489_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 152#64))

def optimizedBody489_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody489_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody489_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 176#64)))

def optimizedBody489_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 160#64))

def optimizedBody489_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 4)]

def optimizedBody489_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody489_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody489_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_97 optimizedBody489_3

def optimizedBody489_99 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody489_96, 489, 20)) (some 195) ([2]) (some (2, optimizedBody489_98, 489, 21))

def optimizedBody489_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 264#64)))

def optimizedBody489_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 160#64))

def optimizedBody489_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0)]

def optimizedBody489_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (0, 46)]

def optimizedBody489_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46)]

def optimizedBody489_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_104 optimizedBody489_3

def optimizedBody489_106 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody489_103, 489, 22)) (some 195) ([2]) (some (2, optimizedBody489_105, 489, 23))

def optimizedBody489_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 272#64)))

def optimizedBody489_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody489_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody489_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody489_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody489_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551352#64))

def optimizedBody489_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody489_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody489_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody489_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody489_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551352#64))

def optimizedBody489_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 216#64)))

def optimizedBody489_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody489_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody489_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_18 optimizedBody489_120

def optimizedBody489_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_36 optimizedBody489_121

def optimizedBody489_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_39 optimizedBody489_122

def optimizedBody489_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_119 optimizedBody489_123

def optimizedBody489_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_118 optimizedBody489_124

def optimizedBody489_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_125

def optimizedBody489_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_55 optimizedBody489_126

def optimizedBody489_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_54 optimizedBody489_127

def optimizedBody489_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_117 optimizedBody489_128

def optimizedBody489_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_116 optimizedBody489_129

def optimizedBody489_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_115 optimizedBody489_130

def optimizedBody489_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_131

def optimizedBody489_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_114 optimizedBody489_132

def optimizedBody489_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_113 optimizedBody489_133

def optimizedBody489_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_112 optimizedBody489_134

def optimizedBody489_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_111 optimizedBody489_135

def optimizedBody489_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_110 optimizedBody489_136

def optimizedBody489_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_109 optimizedBody489_137

def optimizedBody489_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_108 optimizedBody489_138

def optimizedBody489_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_139

def optimizedBody489_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_36 optimizedBody489_140

def optimizedBody489_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_35 optimizedBody489_141

def optimizedBody489_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_107 optimizedBody489_142

def optimizedBody489_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_143

def optimizedBody489_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_6 optimizedBody489_144

def optimizedBody489_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_106 optimizedBody489_145

def optimizedBody489_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_102 optimizedBody489_146

def optimizedBody489_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_101 optimizedBody489_147

def optimizedBody489_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_87 optimizedBody489_148

def optimizedBody489_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_33 optimizedBody489_149

def optimizedBody489_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_32 optimizedBody489_150

def optimizedBody489_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_100 optimizedBody489_151

def optimizedBody489_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_152

def optimizedBody489_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_6 optimizedBody489_153

def optimizedBody489_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_99 optimizedBody489_154

def optimizedBody489_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_95 optimizedBody489_155

def optimizedBody489_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_90 optimizedBody489_156

def optimizedBody489_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_157

def optimizedBody489_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_92 optimizedBody489_158

def optimizedBody489_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_91 optimizedBody489_159

def optimizedBody489_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_94 optimizedBody489_160

def optimizedBody489_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_161

def optimizedBody489_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_93 optimizedBody489_162

def optimizedBody489_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_87 optimizedBody489_163

def optimizedBody489_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_92 optimizedBody489_164

def optimizedBody489_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_91 optimizedBody489_165

def optimizedBody489_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_90 optimizedBody489_166

def optimizedBody489_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_167

def optimizedBody489_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_89 optimizedBody489_168

def optimizedBody489_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_87 optimizedBody489_169

def optimizedBody489_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_33 optimizedBody489_170

def optimizedBody489_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_32 optimizedBody489_171

def optimizedBody489_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_88 optimizedBody489_172

def optimizedBody489_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_87 optimizedBody489_173

def optimizedBody489_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_6 optimizedBody489_174

def optimizedBody489_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_86 optimizedBody489_175

def optimizedBody489_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_63 optimizedBody489_176

def optimizedBody489_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_82 optimizedBody489_177

def optimizedBody489_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_69 optimizedBody489_178

def optimizedBody489_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_81 optimizedBody489_179

def optimizedBody489_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_80 optimizedBody489_180

def optimizedBody489_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_79 optimizedBody489_181

def optimizedBody489_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_45 optimizedBody489_182

def optimizedBody489_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_36 optimizedBody489_183

def optimizedBody489_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_39 optimizedBody489_184

def optimizedBody489_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_78 optimizedBody489_185

def optimizedBody489_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_77 optimizedBody489_186

def optimizedBody489_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_45 optimizedBody489_187

def optimizedBody489_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_36 optimizedBody489_188

def optimizedBody489_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_35 optimizedBody489_189

def optimizedBody489_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_76 optimizedBody489_190

def optimizedBody489_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_45 optimizedBody489_191

def optimizedBody489_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_6 optimizedBody489_192

def optimizedBody489_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_75 optimizedBody489_193

def optimizedBody489_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_71 optimizedBody489_194

def optimizedBody489_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_70 optimizedBody489_195

def optimizedBody489_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_69 optimizedBody489_196

def optimizedBody489_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_36 optimizedBody489_197

def optimizedBody489_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_35 optimizedBody489_198

def optimizedBody489_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_68 optimizedBody489_199

def optimizedBody489_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_200

def optimizedBody489_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_6 optimizedBody489_201

def optimizedBody489_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_67 optimizedBody489_202

def optimizedBody489_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_63 optimizedBody489_203

def optimizedBody489_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_62 optimizedBody489_204

def optimizedBody489_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_205

def optimizedBody489_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_53 optimizedBody489_206

def optimizedBody489_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_207

def optimizedBody489_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_55 optimizedBody489_208

def optimizedBody489_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_54 optimizedBody489_209

def optimizedBody489_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_61 optimizedBody489_210

def optimizedBody489_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_211

def optimizedBody489_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_60 optimizedBody489_212

def optimizedBody489_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_45 optimizedBody489_213

def optimizedBody489_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_55 optimizedBody489_214

def optimizedBody489_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_54 optimizedBody489_215

def optimizedBody489_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_59 optimizedBody489_216

def optimizedBody489_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_217

def optimizedBody489_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_58 optimizedBody489_218

def optimizedBody489_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_45 optimizedBody489_219

def optimizedBody489_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_55 optimizedBody489_220

def optimizedBody489_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_54 optimizedBody489_221

def optimizedBody489_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_57 optimizedBody489_222

def optimizedBody489_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_223

def optimizedBody489_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_56 optimizedBody489_224

def optimizedBody489_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_45 optimizedBody489_225

def optimizedBody489_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_55 optimizedBody489_226

def optimizedBody489_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_54 optimizedBody489_227

def optimizedBody489_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_53 optimizedBody489_228

def optimizedBody489_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_229

def optimizedBody489_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_52 optimizedBody489_230

def optimizedBody489_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_45 optimizedBody489_231

def optimizedBody489_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_36 optimizedBody489_232

def optimizedBody489_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_39 optimizedBody489_233

def optimizedBody489_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_51 optimizedBody489_234

def optimizedBody489_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_50 optimizedBody489_235

def optimizedBody489_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_45 optimizedBody489_236

def optimizedBody489_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_36 optimizedBody489_237

def optimizedBody489_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_35 optimizedBody489_238

def optimizedBody489_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_49 optimizedBody489_239

def optimizedBody489_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_45 optimizedBody489_240

def optimizedBody489_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_48 optimizedBody489_241

def optimizedBody489_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_47 optimizedBody489_242

def optimizedBody489_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_46 optimizedBody489_243

def optimizedBody489_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_45 optimizedBody489_244

def optimizedBody489_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_6 optimizedBody489_245

def optimizedBody489_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_44 optimizedBody489_246

def optimizedBody489_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_40 optimizedBody489_247

def optimizedBody489_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_25 optimizedBody489_248

def optimizedBody489_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_36 optimizedBody489_249

def optimizedBody489_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_39 optimizedBody489_250

def optimizedBody489_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_38 optimizedBody489_251

def optimizedBody489_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_37 optimizedBody489_252

def optimizedBody489_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_253

def optimizedBody489_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_36 optimizedBody489_254

def optimizedBody489_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_35 optimizedBody489_255

def optimizedBody489_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_34 optimizedBody489_256

def optimizedBody489_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_257

def optimizedBody489_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_33 optimizedBody489_258

def optimizedBody489_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_32 optimizedBody489_259

def optimizedBody489_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_31 optimizedBody489_260

def optimizedBody489_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_30 optimizedBody489_261

def optimizedBody489_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_6 optimizedBody489_262

def optimizedBody489_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_29 optimizedBody489_263

def optimizedBody489_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_22 optimizedBody489_264

def optimizedBody489_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_25 optimizedBody489_265

def optimizedBody489_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_6 optimizedBody489_266

def optimizedBody489_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_24 optimizedBody489_267

def optimizedBody489_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_20 optimizedBody489_268

def optimizedBody489_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_19 optimizedBody489_269

def optimizedBody489_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_18 optimizedBody489_270

def optimizedBody489_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_6 optimizedBody489_271

def optimizedBody489_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_17 optimizedBody489_272

def optimizedBody489_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_13 optimizedBody489_273

def optimizedBody489_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_12 optimizedBody489_274

def optimizedBody489_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_6 optimizedBody489_275

def optimizedBody489_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_11 optimizedBody489_276

def optimizedBody489_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_7 optimizedBody489_277

def optimizedBody489_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_6 optimizedBody489_278

def optimizedBody489_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_5 optimizedBody489_279

def optimizedBody489_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody489_0 optimizedBody489_280

def oracle489 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 3)) 24
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
                23
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 26
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                0
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))))
              23
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 26
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))
                0
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
                22
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 2)) 24
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))
              22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 1)) 25
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                24
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
              23
              (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 26 (Flapjack.Spt.ls 24)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 (Flapjack.Spt.ls 22))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))
              22 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 24 (Flapjack.Spt.ls 23)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 25))))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22))))))))
def optimized489 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(489, 2, optimizedBody489_281)
theorem optimize489_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source489, oracle489) = optimized489 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize489_eq
end InitECandidate.Proofs.WordStages
