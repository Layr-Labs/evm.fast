import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source856
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles856
def optimizedBody856_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody856_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody856_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 2)]

def optimizedBody856_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody856_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody856_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody856_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody856_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody856_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 16 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody856_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody856_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 16 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody856_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody856_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 16 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody856_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody856_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 16 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody856_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody856_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 16 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody856_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody856_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody856_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody856_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody856_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 12 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody856_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 12 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody856_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody856_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody856_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody856_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody856_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 10 (Flapjack.WordRegImm.reg 18)))

def optimizedBody856_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody856_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody856_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody856_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody856_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody856_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody856_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody856_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody856_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody856_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody856_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody856_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody856_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 16)]

def optimizedBody856_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 2), (44, 44), (16, 46)]

def optimizedBody856_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 46)]

def optimizedBody856_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody856_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_42 optimizedBody856_43

def optimizedBody856_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody856_41, 856, 2)) (some 181) ([2]) (some (2, optimizedBody856_44, 856, 3))

def optimizedBody856_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody856_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 16 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody856_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody856_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 16 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody856_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody856_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 16 (Flapjack.WordRegImm.imm 10#64)))

def optimizedBody856_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody856_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 16 (Flapjack.WordRegImm.imm 11#64)))

def optimizedBody856_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody856_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 16 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody856_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 16 (Flapjack.WordRegImm.imm 13#64)))

def optimizedBody856_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 16 (Flapjack.WordRegImm.imm 14#64)))

def optimizedBody856_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 16 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody856_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody856_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody856_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody856_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody856_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody856_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody856_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody856_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody856_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody856_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 16), (48, 18)]

def optimizedBody856_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 2), (44, 44), (14, 46), (46, 48)]

def optimizedBody856_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (46, 48)]

def optimizedBody856_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_70 optimizedBody856_43

def optimizedBody856_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody856_69, 856, 4)) (some 181) ([2]) (some (2, optimizedBody856_71, 856, 5))

def optimizedBody856_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.imm 36#64)))

def optimizedBody856_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody856_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.imm 37#64)))

def optimizedBody856_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.imm 38#64)))

def optimizedBody856_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 14 (Flapjack.WordRegImm.imm 39#64)))

def optimizedBody856_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 14 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody856_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 14 (Flapjack.WordRegImm.imm 41#64)))

def optimizedBody856_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 14 (Flapjack.WordRegImm.imm 42#64)))

def optimizedBody856_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 43#64)))

def optimizedBody856_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody856_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody856_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody856_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody856_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody856_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 16)]

def optimizedBody856_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody856_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody856_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_89 optimizedBody856_43

def optimizedBody856_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody856_88, 856, 6)) (some 181) ([2]) (some (2, optimizedBody856_90, 856, 7))

def optimizedBody856_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody856_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody856_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody856_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 21#64)))

def optimizedBody856_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 2)]

def optimizedBody856_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody856_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody856_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_98 optimizedBody856_43

def optimizedBody856_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody856_97, 856, 8)) (some 180) ([2]) (some (2, optimizedBody856_99, 856, 9))

def optimizedBody856_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody856_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody856_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody856_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_32 optimizedBody856_103

def optimizedBody856_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_102 optimizedBody856_104

def optimizedBody856_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_101 optimizedBody856_105

def optimizedBody856_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_46 optimizedBody856_106

def optimizedBody856_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_100 optimizedBody856_107

def optimizedBody856_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_96 optimizedBody856_108

def optimizedBody856_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_95 optimizedBody856_109

def optimizedBody856_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_94 optimizedBody856_110

def optimizedBody856_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_64 optimizedBody856_111

def optimizedBody856_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_93 optimizedBody856_112

def optimizedBody856_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_92 optimizedBody856_113

def optimizedBody856_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_46 optimizedBody856_114

def optimizedBody856_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_91 optimizedBody856_115

def optimizedBody856_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_87 optimizedBody856_116

def optimizedBody856_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_86 optimizedBody856_117

def optimizedBody856_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_35 optimizedBody856_118

def optimizedBody856_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_85 optimizedBody856_119

def optimizedBody856_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_84 optimizedBody856_120

def optimizedBody856_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_32 optimizedBody856_121

def optimizedBody856_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_83 optimizedBody856_122

def optimizedBody856_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_82 optimizedBody856_123

def optimizedBody856_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_64 optimizedBody856_124

def optimizedBody856_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_61 optimizedBody856_125

def optimizedBody856_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_60 optimizedBody856_126

def optimizedBody856_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_38 optimizedBody856_127

def optimizedBody856_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_59 optimizedBody856_128

def optimizedBody856_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_31 optimizedBody856_129

def optimizedBody856_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_29 optimizedBody856_130

def optimizedBody856_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_25 optimizedBody856_131

def optimizedBody856_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_24 optimizedBody856_132

def optimizedBody856_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_23 optimizedBody856_133

def optimizedBody856_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_22 optimizedBody856_134

def optimizedBody856_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_21 optimizedBody856_135

def optimizedBody856_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_20 optimizedBody856_136

def optimizedBody856_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_19 optimizedBody856_137

def optimizedBody856_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_18 optimizedBody856_138

def optimizedBody856_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_17 optimizedBody856_139

def optimizedBody856_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_81 optimizedBody856_140

def optimizedBody856_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_18 optimizedBody856_141

def optimizedBody856_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_15 optimizedBody856_142

def optimizedBody856_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_80 optimizedBody856_143

def optimizedBody856_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_18 optimizedBody856_144

def optimizedBody856_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_13 optimizedBody856_145

def optimizedBody856_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_79 optimizedBody856_146

def optimizedBody856_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_18 optimizedBody856_147

def optimizedBody856_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_9 optimizedBody856_148

def optimizedBody856_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_78 optimizedBody856_149

def optimizedBody856_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_18 optimizedBody856_150

def optimizedBody856_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_54 optimizedBody856_151

def optimizedBody856_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_77 optimizedBody856_152

def optimizedBody856_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_18 optimizedBody856_153

def optimizedBody856_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_50 optimizedBody856_154

def optimizedBody856_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_76 optimizedBody856_155

def optimizedBody856_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_18 optimizedBody856_156

def optimizedBody856_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_48 optimizedBody856_157

def optimizedBody856_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_75 optimizedBody856_158

def optimizedBody856_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_18 optimizedBody856_159

def optimizedBody856_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_74 optimizedBody856_160

def optimizedBody856_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_73 optimizedBody856_161

def optimizedBody856_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_18 optimizedBody856_162

def optimizedBody856_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_46 optimizedBody856_163

def optimizedBody856_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_72 optimizedBody856_164

def optimizedBody856_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_68 optimizedBody856_165

def optimizedBody856_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_67 optimizedBody856_166

def optimizedBody856_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_32 optimizedBody856_167

def optimizedBody856_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_66 optimizedBody856_168

def optimizedBody856_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_65 optimizedBody856_169

def optimizedBody856_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_64 optimizedBody856_170

def optimizedBody856_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_63 optimizedBody856_171

def optimizedBody856_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_62 optimizedBody856_172

def optimizedBody856_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_35 optimizedBody856_173

def optimizedBody856_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_61 optimizedBody856_174

def optimizedBody856_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_60 optimizedBody856_175

def optimizedBody856_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_38 optimizedBody856_176

def optimizedBody856_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_59 optimizedBody856_177

def optimizedBody856_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_31 optimizedBody856_178

def optimizedBody856_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_29 optimizedBody856_179

def optimizedBody856_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_25 optimizedBody856_180

def optimizedBody856_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_24 optimizedBody856_181

def optimizedBody856_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_23 optimizedBody856_182

def optimizedBody856_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_22 optimizedBody856_183

def optimizedBody856_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_21 optimizedBody856_184

def optimizedBody856_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_20 optimizedBody856_185

def optimizedBody856_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_19 optimizedBody856_186

def optimizedBody856_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_18 optimizedBody856_187

def optimizedBody856_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_17 optimizedBody856_188

def optimizedBody856_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_58 optimizedBody856_189

def optimizedBody856_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_5 optimizedBody856_190

def optimizedBody856_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_15 optimizedBody856_191

def optimizedBody856_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_57 optimizedBody856_192

def optimizedBody856_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_5 optimizedBody856_193

def optimizedBody856_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_13 optimizedBody856_194

def optimizedBody856_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_56 optimizedBody856_195

def optimizedBody856_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_5 optimizedBody856_196

def optimizedBody856_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_9 optimizedBody856_197

def optimizedBody856_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_55 optimizedBody856_198

def optimizedBody856_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_5 optimizedBody856_199

def optimizedBody856_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_54 optimizedBody856_200

def optimizedBody856_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_53 optimizedBody856_201

def optimizedBody856_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_5 optimizedBody856_202

def optimizedBody856_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_52 optimizedBody856_203

def optimizedBody856_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_51 optimizedBody856_204

def optimizedBody856_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_5 optimizedBody856_205

def optimizedBody856_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_50 optimizedBody856_206

def optimizedBody856_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_49 optimizedBody856_207

def optimizedBody856_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_5 optimizedBody856_208

def optimizedBody856_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_48 optimizedBody856_209

def optimizedBody856_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_47 optimizedBody856_210

def optimizedBody856_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_5 optimizedBody856_211

def optimizedBody856_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_46 optimizedBody856_212

def optimizedBody856_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_45 optimizedBody856_213

def optimizedBody856_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_40 optimizedBody856_214

def optimizedBody856_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_39 optimizedBody856_215

def optimizedBody856_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_38 optimizedBody856_216

def optimizedBody856_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_37 optimizedBody856_217

def optimizedBody856_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_36 optimizedBody856_218

def optimizedBody856_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_35 optimizedBody856_219

def optimizedBody856_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_34 optimizedBody856_220

def optimizedBody856_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_33 optimizedBody856_221

def optimizedBody856_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_32 optimizedBody856_222

def optimizedBody856_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_31 optimizedBody856_223

def optimizedBody856_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_30 optimizedBody856_224

def optimizedBody856_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_29 optimizedBody856_225

def optimizedBody856_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_28 optimizedBody856_226

def optimizedBody856_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_27 optimizedBody856_227

def optimizedBody856_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_26 optimizedBody856_228

def optimizedBody856_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_25 optimizedBody856_229

def optimizedBody856_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_24 optimizedBody856_230

def optimizedBody856_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_23 optimizedBody856_231

def optimizedBody856_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_22 optimizedBody856_232

def optimizedBody856_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_21 optimizedBody856_233

def optimizedBody856_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_20 optimizedBody856_234

def optimizedBody856_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_19 optimizedBody856_235

def optimizedBody856_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_18 optimizedBody856_236

def optimizedBody856_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_17 optimizedBody856_237

def optimizedBody856_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_16 optimizedBody856_238

def optimizedBody856_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_5 optimizedBody856_239

def optimizedBody856_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_15 optimizedBody856_240

def optimizedBody856_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_14 optimizedBody856_241

def optimizedBody856_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_5 optimizedBody856_242

def optimizedBody856_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_13 optimizedBody856_243

def optimizedBody856_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_12 optimizedBody856_244

def optimizedBody856_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_5 optimizedBody856_245

def optimizedBody856_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_11 optimizedBody856_246

def optimizedBody856_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_10 optimizedBody856_247

def optimizedBody856_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_5 optimizedBody856_248

def optimizedBody856_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_9 optimizedBody856_249

def optimizedBody856_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_8 optimizedBody856_250

def optimizedBody856_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_5 optimizedBody856_251

def optimizedBody856_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_7 optimizedBody856_252

def optimizedBody856_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_6 optimizedBody856_253

def optimizedBody856_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_5 optimizedBody856_254

def optimizedBody856_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_4 optimizedBody856_255

def optimizedBody856_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_3 optimizedBody856_256

def optimizedBody856_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_2 optimizedBody856_257

def optimizedBody856_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_1 optimizedBody856_258

def optimizedBody856_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody856_0 optimizedBody856_259

def oracle856 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 9 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0))) 7
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 7))))
              8
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5)))
                9 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 8 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 4))) 8
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)) 5
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 7))))
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 6)))
                4
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 8 (Flapjack.Spt.ls 3))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3)))
                6
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 4
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 6))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3
                  (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 6)))
                8
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 6
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 7)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 4))) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 9 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 5))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)) 7
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3))) 8
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5)))
                5
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 5
                  (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 4)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 4))) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 7)))
                8
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 7
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 7))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 3)))
                6
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 4
                  (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 6))))
              8
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 6)))
                4
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5)))
                8 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)) 7
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 8 (Flapjack.Spt.ls 0))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)))))))
def optimized856 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(856, 2, optimizedBody856_260)
end InitECandidate.Proofs.SmallStages.Oracles856
