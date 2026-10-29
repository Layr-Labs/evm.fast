import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source857
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles857
def optimizedBody857_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody857_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody857_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody857_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 2), (44, 44), (18, 46)]

def optimizedBody857_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (18, 46)]

def optimizedBody857_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody857_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_4 optimizedBody857_5

def optimizedBody857_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody857_3, 857, 2)) (some 68) ([2]) (some (2, optimizedBody857_6, 857, 3))

def optimizedBody857_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody857_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody857_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 20 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody857_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody857_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody857_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 18 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody857_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody857_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 18 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody857_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody857_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 18 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody857_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody857_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 18 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody857_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody857_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 18 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody857_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody857_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 18 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody857_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody857_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 18 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody857_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody857_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (2, 2)]

def optimizedBody857_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16 16 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody857_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody857_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody857_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 14 16 (Flapjack.WordRegImm.reg 14)))

def optimizedBody857_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody857_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 12 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody857_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 12 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody857_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody857_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody857_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody857_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody857_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody857_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody857_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody857_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody857_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 8 (Flapjack.WordRegImm.reg 0)))

def optimizedBody857_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody857_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody857_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody857_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody857_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody857_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2), (48, 18), (50, 20)]

def optimizedBody857_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (18, 48), (50, 50)]

def optimizedBody857_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (18, 48), (50, 50)]

def optimizedBody857_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_51 optimizedBody857_5

def optimizedBody857_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody857_50, 857, 4)) (some 177) ([2, 4]) (some (2, optimizedBody857_52, 857, 5))

def optimizedBody857_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody857_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody857_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (2, 2)]

def optimizedBody857_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 18 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody857_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody857_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 18 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody857_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 18 (Flapjack.WordRegImm.imm 10#64)))

def optimizedBody857_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody857_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 18 (Flapjack.WordRegImm.imm 11#64)))

def optimizedBody857_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 18 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody857_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody857_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 18 (Flapjack.WordRegImm.imm 13#64)))

def optimizedBody857_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 18 (Flapjack.WordRegImm.imm 14#64)))

def optimizedBody857_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 18 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody857_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (2, 2)]

def optimizedBody857_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody857_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 12 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody857_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody857_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody857_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 10 (Flapjack.WordRegImm.reg 16)))

def optimizedBody857_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody857_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody857_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody857_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody857_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2), (48, 18), (50, 50)]

def optimizedBody857_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (6, 46), (0, 48), (50, 50)]

def optimizedBody857_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48), (50, 50)]

def optimizedBody857_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_80 optimizedBody857_5

def optimizedBody857_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody857_79, 857, 6)) (some 177) ([2, 4]) (some (2, optimizedBody857_81, 857, 7))

def optimizedBody857_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody857_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody857_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody857_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody857_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody857_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 2), (48, 0), (50, 50)]

def optimizedBody857_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (14, 48), (48, 50)]

def optimizedBody857_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (14, 48), (48, 50)]

def optimizedBody857_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_90 optimizedBody857_5

def optimizedBody857_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody857_89, 857, 8)) (some 176) ([2, 4, 6]) (some (2, optimizedBody857_91, 857, 9))

def optimizedBody857_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.imm 36#64)))

def optimizedBody857_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 14 (Flapjack.WordRegImm.imm 37#64)))

def optimizedBody857_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 14 (Flapjack.WordRegImm.imm 38#64)))

def optimizedBody857_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody857_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 14 (Flapjack.WordRegImm.imm 39#64)))

def optimizedBody857_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 14 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody857_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 14 (Flapjack.WordRegImm.imm 41#64)))

def optimizedBody857_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 14 (Flapjack.WordRegImm.imm 42#64)))

def optimizedBody857_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 43#64)))

def optimizedBody857_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody857_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody857_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody857_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody857_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2), (48, 48)]

def optimizedBody857_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody857_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody857_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_108 optimizedBody857_5

def optimizedBody857_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody857_107, 857, 10)) (some 177) ([2, 4]) (some (2, optimizedBody857_109, 857, 11))

def optimizedBody857_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody857_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 6)]

def optimizedBody857_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44), (6, 46)]

def optimizedBody857_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46)]

def optimizedBody857_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_114 optimizedBody857_5

def optimizedBody857_116 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody857_113, 857, 12)) (some 852) ([2, 4]) (some (2, optimizedBody857_115, 857, 13))

def optimizedBody857_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6), (4, 4)]

def optimizedBody857_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4]

def optimizedBody857_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_117 optimizedBody857_118

def optimizedBody857_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_8 optimizedBody857_119

def optimizedBody857_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_116 optimizedBody857_120

def optimizedBody857_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_112 optimizedBody857_121

def optimizedBody857_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_111 optimizedBody857_122

def optimizedBody857_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_54 optimizedBody857_123

def optimizedBody857_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_8 optimizedBody857_124

def optimizedBody857_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_110 optimizedBody857_125

def optimizedBody857_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_106 optimizedBody857_126

def optimizedBody857_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_105 optimizedBody857_127

def optimizedBody857_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_41 optimizedBody857_128

def optimizedBody857_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_104 optimizedBody857_129

def optimizedBody857_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_45 optimizedBody857_130

def optimizedBody857_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_44 optimizedBody857_131

def optimizedBody857_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_103 optimizedBody857_132

def optimizedBody857_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_102 optimizedBody857_133

def optimizedBody857_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_47 optimizedBody857_134

def optimizedBody857_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_40 optimizedBody857_135

def optimizedBody857_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_39 optimizedBody857_136

def optimizedBody857_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_38 optimizedBody857_137

def optimizedBody857_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_37 optimizedBody857_138

def optimizedBody857_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_73 optimizedBody857_139

def optimizedBody857_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_72 optimizedBody857_140

def optimizedBody857_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_36 optimizedBody857_141

def optimizedBody857_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_71 optimizedBody857_142

def optimizedBody857_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_35 optimizedBody857_143

def optimizedBody857_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_34 optimizedBody857_144

def optimizedBody857_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_70 optimizedBody857_145

def optimizedBody857_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_32 optimizedBody857_146

def optimizedBody857_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_69 optimizedBody857_147

def optimizedBody857_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_68 optimizedBody857_148

def optimizedBody857_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_24 optimizedBody857_149

def optimizedBody857_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_101 optimizedBody857_150

def optimizedBody857_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_29 optimizedBody857_151

def optimizedBody857_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_22 optimizedBody857_152

def optimizedBody857_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_100 optimizedBody857_153

def optimizedBody857_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_29 optimizedBody857_154

def optimizedBody857_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_20 optimizedBody857_155

def optimizedBody857_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_99 optimizedBody857_156

def optimizedBody857_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_29 optimizedBody857_157

def optimizedBody857_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_64 optimizedBody857_158

def optimizedBody857_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_98 optimizedBody857_159

def optimizedBody857_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_29 optimizedBody857_160

def optimizedBody857_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_18 optimizedBody857_161

def optimizedBody857_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_97 optimizedBody857_162

def optimizedBody857_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_29 optimizedBody857_163

def optimizedBody857_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_96 optimizedBody857_164

def optimizedBody857_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_95 optimizedBody857_165

def optimizedBody857_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_29 optimizedBody857_166

def optimizedBody857_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_61 optimizedBody857_167

def optimizedBody857_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_94 optimizedBody857_168

def optimizedBody857_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_29 optimizedBody857_169

def optimizedBody857_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_16 optimizedBody857_170

def optimizedBody857_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_93 optimizedBody857_171

def optimizedBody857_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_68 optimizedBody857_172

def optimizedBody857_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_55 optimizedBody857_173

def optimizedBody857_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_54 optimizedBody857_174

def optimizedBody857_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_8 optimizedBody857_175

def optimizedBody857_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_92 optimizedBody857_176

def optimizedBody857_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_88 optimizedBody857_177

def optimizedBody857_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_87 optimizedBody857_178

def optimizedBody857_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_86 optimizedBody857_179

def optimizedBody857_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_85 optimizedBody857_180

def optimizedBody857_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_84 optimizedBody857_181

def optimizedBody857_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_83 optimizedBody857_182

def optimizedBody857_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_8 optimizedBody857_183

def optimizedBody857_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_82 optimizedBody857_184

def optimizedBody857_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_78 optimizedBody857_185

def optimizedBody857_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_48 optimizedBody857_186

def optimizedBody857_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_47 optimizedBody857_187

def optimizedBody857_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_77 optimizedBody857_188

def optimizedBody857_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_76 optimizedBody857_189

def optimizedBody857_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_41 optimizedBody857_190

def optimizedBody857_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_75 optimizedBody857_191

def optimizedBody857_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_74 optimizedBody857_192

def optimizedBody857_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_44 optimizedBody857_193

def optimizedBody857_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_40 optimizedBody857_194

def optimizedBody857_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_39 optimizedBody857_195

def optimizedBody857_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_38 optimizedBody857_196

def optimizedBody857_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_37 optimizedBody857_197

def optimizedBody857_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_73 optimizedBody857_198

def optimizedBody857_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_72 optimizedBody857_199

def optimizedBody857_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_36 optimizedBody857_200

def optimizedBody857_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_71 optimizedBody857_201

def optimizedBody857_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_35 optimizedBody857_202

def optimizedBody857_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_34 optimizedBody857_203

def optimizedBody857_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_70 optimizedBody857_204

def optimizedBody857_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_32 optimizedBody857_205

def optimizedBody857_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_69 optimizedBody857_206

def optimizedBody857_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_68 optimizedBody857_207

def optimizedBody857_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_24 optimizedBody857_208

def optimizedBody857_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_67 optimizedBody857_209

def optimizedBody857_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_210

def optimizedBody857_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_22 optimizedBody857_211

def optimizedBody857_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_66 optimizedBody857_212

def optimizedBody857_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_213

def optimizedBody857_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_20 optimizedBody857_214

def optimizedBody857_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_65 optimizedBody857_215

def optimizedBody857_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_216

def optimizedBody857_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_64 optimizedBody857_217

def optimizedBody857_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_63 optimizedBody857_218

def optimizedBody857_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_219

def optimizedBody857_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_18 optimizedBody857_220

def optimizedBody857_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_62 optimizedBody857_221

def optimizedBody857_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_222

def optimizedBody857_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_61 optimizedBody857_223

def optimizedBody857_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_60 optimizedBody857_224

def optimizedBody857_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_225

def optimizedBody857_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_16 optimizedBody857_226

def optimizedBody857_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_59 optimizedBody857_227

def optimizedBody857_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_228

def optimizedBody857_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_58 optimizedBody857_229

def optimizedBody857_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_57 optimizedBody857_230

def optimizedBody857_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_56 optimizedBody857_231

def optimizedBody857_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_55 optimizedBody857_232

def optimizedBody857_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_54 optimizedBody857_233

def optimizedBody857_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_8 optimizedBody857_234

def optimizedBody857_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_53 optimizedBody857_235

def optimizedBody857_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_49 optimizedBody857_236

def optimizedBody857_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_48 optimizedBody857_237

def optimizedBody857_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_47 optimizedBody857_238

def optimizedBody857_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_46 optimizedBody857_239

def optimizedBody857_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_45 optimizedBody857_240

def optimizedBody857_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_44 optimizedBody857_241

def optimizedBody857_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_43 optimizedBody857_242

def optimizedBody857_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_42 optimizedBody857_243

def optimizedBody857_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_41 optimizedBody857_244

def optimizedBody857_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_40 optimizedBody857_245

def optimizedBody857_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_39 optimizedBody857_246

def optimizedBody857_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_38 optimizedBody857_247

def optimizedBody857_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_37 optimizedBody857_248

def optimizedBody857_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_36 optimizedBody857_249

def optimizedBody857_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_35 optimizedBody857_250

def optimizedBody857_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_34 optimizedBody857_251

def optimizedBody857_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_33 optimizedBody857_252

def optimizedBody857_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_32 optimizedBody857_253

def optimizedBody857_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_31 optimizedBody857_254

def optimizedBody857_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_30 optimizedBody857_255

def optimizedBody857_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_29 optimizedBody857_256

def optimizedBody857_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_28 optimizedBody857_257

def optimizedBody857_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_27 optimizedBody857_258

def optimizedBody857_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_26 optimizedBody857_259

def optimizedBody857_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_25 optimizedBody857_260

def optimizedBody857_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_261

def optimizedBody857_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_24 optimizedBody857_262

def optimizedBody857_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_23 optimizedBody857_263

def optimizedBody857_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_264

def optimizedBody857_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_22 optimizedBody857_265

def optimizedBody857_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_21 optimizedBody857_266

def optimizedBody857_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_267

def optimizedBody857_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_20 optimizedBody857_268

def optimizedBody857_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_19 optimizedBody857_269

def optimizedBody857_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_270

def optimizedBody857_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_18 optimizedBody857_271

def optimizedBody857_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_17 optimizedBody857_272

def optimizedBody857_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_273

def optimizedBody857_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_16 optimizedBody857_274

def optimizedBody857_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_15 optimizedBody857_275

def optimizedBody857_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_276

def optimizedBody857_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_14 optimizedBody857_277

def optimizedBody857_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_13 optimizedBody857_278

def optimizedBody857_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_279

def optimizedBody857_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_12 optimizedBody857_280

def optimizedBody857_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_281

def optimizedBody857_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_10 optimizedBody857_282

def optimizedBody857_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_9 optimizedBody857_283

def optimizedBody857_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_8 optimizedBody857_284

def optimizedBody857_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_7 optimizedBody857_285

def optimizedBody857_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_2 optimizedBody857_286

def optimizedBody857_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_1 optimizedBody857_287

def optimizedBody857_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_0 optimizedBody857_288

def oracle857 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 9 Flapjack.Spt.ln))
                9
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.ls 7)) 8
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)))
              22
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 4)) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 0)))
                9
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 Flapjack.Spt.ln) 6
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7)) 4 (Flapjack.Spt.ls 0)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 1)) 9
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 (Flapjack.Spt.ls 3))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 3)) 7
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.ls 3)))
                10
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 24)) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 3))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5)) 0 (Flapjack.Spt.ls 2)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0)) 8
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 25 (Flapjack.Spt.ls 25))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln))
                10 (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 9 (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 5)) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 9 Flapjack.Spt.ln))
                9
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)) 7
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)) 7
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.ls 2)) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 (Flapjack.Spt.ls 0)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)) 0 (Flapjack.Spt.ls 2)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 9 (Flapjack.Spt.ls 1)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.ls 0)) 6
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8)) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 3)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)) 7
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 22 (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 7)) 7
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 7)) 9
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5)) 4 (Flapjack.Spt.ls 9)) 9
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 7)) 8
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 9 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.ls 3)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 8 Flapjack.Spt.ln) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 2)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7)) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 2)))
                3
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 9 (Flapjack.Spt.ls 0)) 9
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 7 (Flapjack.Spt.ls 2)) 8
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.ls 2)))
                9
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 22)) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 0))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
              22 Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))
              23
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24))))
              Flapjack.Spt.ln))))))
def optimized857 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(857, 2, optimizedBody857_289)
end InitECandidate.Proofs.SmallStages.Oracles857
