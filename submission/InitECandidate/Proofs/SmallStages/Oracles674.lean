import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source674
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles674
def optimizedBody674_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody674_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 11#64)

def optimizedBody674_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody674_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (14, 2), (12, 12)]

def optimizedBody674_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody674_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody674_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody674_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody674_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody674_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody674_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody674_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 14)))

def optimizedBody674_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody674_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 4), (14, 14)]

def optimizedBody674_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.reg 0)))

def optimizedBody674_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody674_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 52), (50, 14)]

def optimizedBody674_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody674_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 52), (50, 50)]

def optimizedBody674_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody674_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 2)]

def optimizedBody674_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 82#64)

def optimizedBody674_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 2), (48, 6), (50, 50), (52, 52), (54, 4), (56, 8)]

def optimizedBody674_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 2), (0, 6), (12, 4), (14, 8), (44, 44), (10, 46), (6, 48), (50, 50), (52, 52), (4, 54), (8, 56)]

def optimizedBody674_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (6, 48), (50, 50), (52, 52), (4, 54), (8, 56)]

def optimizedBody674_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody674_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_24 optimizedBody674_25

def optimizedBody674_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody674_23, 674, 2)) (some 672) ([2, 4, 6, 8, 10]) (some (2, optimizedBody674_26, 674, 3))

def optimizedBody674_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody674_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 18#64)

def optimizedBody674_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 16), (48, 0), (50, 50), (52, 52), (54, 12), (56, 14)]

def optimizedBody674_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 2), (18, 6), (20, 4), (22, 8), (44, 44), (10, 46), (14, 48), (6, 50), (4, 52), (12, 54), (16, 56)]

def optimizedBody674_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (14, 48), (6, 50), (4, 52), (12, 54), (16, 56)]

def optimizedBody674_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_32 optimizedBody674_25

def optimizedBody674_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody674_31, 674, 4)) (some 672) ([2, 4, 6, 8, 10]) (some (2, optimizedBody674_33, 674, 5))

def optimizedBody674_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 4 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody674_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody674_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody674_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 4), (6, 6)]

def optimizedBody674_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody674_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 52), (50, 6)]

def optimizedBody674_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 24), (48, 18), (50, 50),
    (52, 52), (54, 20), (56, 22)]

def optimizedBody674_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (8, 8), (20, 2), (6, 6), (44, 44), (10, 46), (14, 48), (0, 50), (18, 52), (12, 54), (16, 56)]

def optimizedBody674_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (14, 48), (0, 50), (18, 52), (12, 54), (16, 56)]

def optimizedBody674_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_43 optimizedBody674_25

def optimizedBody674_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody674_42, 674, 6)) (some 666) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody674_44, 674, 7))

def optimizedBody674_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody674_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 18 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody674_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody674_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody674_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (20, 20), (8, 8), (6, 6), (4, 4)]

def optimizedBody674_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody674_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody674_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody674_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody674_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody674_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody674_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody674_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 18 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody674_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody674_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody674_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (48, 18), (0, 0)]

def optimizedBody674_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody674_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody674_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (48, 48), (46, 0)]

def optimizedBody674_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody674_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (48, 48), (46, 46)]

def optimizedBody674_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody674_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48)]

def optimizedBody674_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (10, 2), (6, 6), (16, 44), (14, 46), (12, 48)]

def optimizedBody674_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (14, 46), (12, 48)]

def optimizedBody674_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_70 optimizedBody674_25

def optimizedBody674_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody674_69, 674, 8)) (some 665) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody674_71, 674, 9))

def optimizedBody674_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody674_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 14)))

def optimizedBody674_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody674_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody674_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody674_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody674_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody674_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody674_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody674_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody674_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 16), (14, 14), (12, 12)]

def optimizedBody674_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody674_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_83 optimizedBody674_84

def optimizedBody674_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_82 optimizedBody674_85

def optimizedBody674_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_81 optimizedBody674_86

def optimizedBody674_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_80 optimizedBody674_87

def optimizedBody674_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_79 optimizedBody674_88

def optimizedBody674_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_78 optimizedBody674_89

def optimizedBody674_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_77 optimizedBody674_90

def optimizedBody674_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_76 optimizedBody674_91

def optimizedBody674_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_75 optimizedBody674_92

def optimizedBody674_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_74 optimizedBody674_93

def optimizedBody674_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_10 optimizedBody674_94

def optimizedBody674_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_9 optimizedBody674_95

def optimizedBody674_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_73 optimizedBody674_96

def optimizedBody674_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_5 optimizedBody674_97

def optimizedBody674_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_2 optimizedBody674_98

def optimizedBody674_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_72 optimizedBody674_99

def optimizedBody674_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_68 optimizedBody674_100

def optimizedBody674_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_67 optimizedBody674_101

def optimizedBody674_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_66 optimizedBody674_102

def optimizedBody674_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_65 optimizedBody674_103

def optimizedBody674_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_64 optimizedBody674_104

def optimizedBody674_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_63 optimizedBody674_105

def optimizedBody674_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_62 optimizedBody674_106

def optimizedBody674_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_61 optimizedBody674_107

def optimizedBody674_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_12 optimizedBody674_108

def optimizedBody674_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_60 optimizedBody674_109

def optimizedBody674_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_48 optimizedBody674_110

def optimizedBody674_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_59 optimizedBody674_111

def optimizedBody674_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_58 optimizedBody674_112

def optimizedBody674_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_46 optimizedBody674_113

def optimizedBody674_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_57 optimizedBody674_114

def optimizedBody674_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_56 optimizedBody674_115

def optimizedBody674_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_55 optimizedBody674_116

def optimizedBody674_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_54 optimizedBody674_117

def optimizedBody674_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_53 optimizedBody674_118

def optimizedBody674_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_52 optimizedBody674_119

def optimizedBody674_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_51 optimizedBody674_120

def optimizedBody674_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_50 optimizedBody674_121

def optimizedBody674_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_49 optimizedBody674_122

def optimizedBody674_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_48 optimizedBody674_123

def optimizedBody674_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_47 optimizedBody674_124

def optimizedBody674_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_46 optimizedBody674_125

def optimizedBody674_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_2 optimizedBody674_126

def optimizedBody674_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_45 optimizedBody674_127

def optimizedBody674_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_41 optimizedBody674_128

def optimizedBody674_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_19 optimizedBody674_129

def optimizedBody674_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_18 optimizedBody674_130

def optimizedBody674_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_17 optimizedBody674_131

def optimizedBody674_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_40 optimizedBody674_132

def optimizedBody674_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_15 optimizedBody674_133

def optimizedBody674_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_39 optimizedBody674_134

def optimizedBody674_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_38 optimizedBody674_135

def optimizedBody674_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_12 optimizedBody674_136

def optimizedBody674_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_37 optimizedBody674_137

def optimizedBody674_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_36 optimizedBody674_138

def optimizedBody674_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_35 optimizedBody674_139

def optimizedBody674_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_7 optimizedBody674_140

def optimizedBody674_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_2 optimizedBody674_141

def optimizedBody674_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_34 optimizedBody674_142

def optimizedBody674_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_30 optimizedBody674_143

def optimizedBody674_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_29 optimizedBody674_144

def optimizedBody674_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_28 optimizedBody674_145

def optimizedBody674_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_2 optimizedBody674_146

def optimizedBody674_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_27 optimizedBody674_147

def optimizedBody674_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_22 optimizedBody674_148

def optimizedBody674_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_21 optimizedBody674_149

def optimizedBody674_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_20 optimizedBody674_150

def optimizedBody674_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_19 optimizedBody674_151

def optimizedBody674_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_18 optimizedBody674_152

def optimizedBody674_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_17 optimizedBody674_153

def optimizedBody674_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_16 optimizedBody674_154

def optimizedBody674_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_15 optimizedBody674_155

def optimizedBody674_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_14 optimizedBody674_156

def optimizedBody674_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_13 optimizedBody674_157

def optimizedBody674_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_12 optimizedBody674_158

def optimizedBody674_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_11 optimizedBody674_159

def optimizedBody674_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_10 optimizedBody674_160

def optimizedBody674_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_9 optimizedBody674_161

def optimizedBody674_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_8 optimizedBody674_162

def optimizedBody674_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_7 optimizedBody674_163

def optimizedBody674_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_6 optimizedBody674_164

def optimizedBody674_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_5 optimizedBody674_165

def optimizedBody674_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_2 optimizedBody674_166

def optimizedBody674_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody674_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_2 optimizedBody674_168

def optimizedBody674_170 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 12) optimizedBody674_167 optimizedBody674_169

def optimizedBody674_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (14, 14), (12, 12)]

def optimizedBody674_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_2 optimizedBody674_171

def optimizedBody674_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_170 optimizedBody674_172

def optimizedBody674_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_5 optimizedBody674_173

def optimizedBody674_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_4 optimizedBody674_174

def optimizedBody674_176 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln) optimizedBody674_175 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody674_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody674_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody674_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody674_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_178 optimizedBody674_179

def optimizedBody674_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_177 optimizedBody674_180

def optimizedBody674_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_2 optimizedBody674_181

def optimizedBody674_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_176 optimizedBody674_182

def optimizedBody674_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_3 optimizedBody674_183

def optimizedBody674_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_2 optimizedBody674_184

def optimizedBody674_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_1 optimizedBody674_185

def optimizedBody674_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody674_0 optimizedBody674_186

def oracle674 : Option (Spt Nat) :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 25 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 8)))
                0 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)) 25 Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 1)) 3 (Flapjack.Spt.ls 3)) 6
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 10)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.ls 1)) 5
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7)))
                2
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 9 (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 0)) 22
                (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
                2
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 1)) 6
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 6 (Flapjack.Spt.ls 2)) 25 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 10 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 6 Flapjack.Spt.ln))
                1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 6)))
                0 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 3 Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 3)) 2 (Flapjack.Spt.ls 2)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 3 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.ls 9))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                6
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 8 (Flapjack.Spt.ls 9)) 26
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 10)) Flapjack.Spt.ln) 6
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 12 (Flapjack.Spt.ls 2)) 4 (Flapjack.Spt.ls 8)) 7
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 26
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 (Flapjack.Spt.ls 25)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 4)) 4 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 (Flapjack.Spt.ls 4)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 3)) 26
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln) 7
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 28)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 26))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 27)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 25)))))))))
def optimized674 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(674, 2, optimizedBody674_187)
end InitECandidate.Proofs.SmallStages.Oracles674
