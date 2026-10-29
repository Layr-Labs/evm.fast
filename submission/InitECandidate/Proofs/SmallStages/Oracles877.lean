import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source877
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles877
def optimizedBody877_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2)]

def optimizedBody877_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody877_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody877_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody877_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_2 optimizedBody877_3

def optimizedBody877_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody877_1, 877, 2)) (some 389) ([]) (some (2, optimizedBody877_4, 877, 3))

def optimizedBody877_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody877_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody877_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody877_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody877_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody877_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (24, 24), (18, 18), (46, 0), (20, 20)]

def optimizedBody877_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (18, 18)]

def optimizedBody877_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody877_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 44#64)

def optimizedBody877_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 18), (4, 4)]

def optimizedBody877_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody877_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20), (0, 0)]

def optimizedBody877_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 0 (Flapjack.WordRegImm.reg 20)))

def optimizedBody877_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody877_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 22 (Flapjack.WordRegImm.imm 36#64)))

def optimizedBody877_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody877_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 22 (Flapjack.WordRegImm.imm 37#64)))

def optimizedBody877_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody877_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 22 (Flapjack.WordRegImm.imm 38#64)))

def optimizedBody877_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody877_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 22 (Flapjack.WordRegImm.imm 39#64)))

def optimizedBody877_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody877_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 22 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody877_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody877_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 22 (Flapjack.WordRegImm.imm 41#64)))

def optimizedBody877_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody877_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 22 (Flapjack.WordRegImm.imm 42#64)))

def optimizedBody877_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody877_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 22 (Flapjack.WordRegImm.imm 43#64)))

def optimizedBody877_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody877_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody877_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody877_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody877_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 12 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody877_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 12 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody877_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody877_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody877_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody877_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody877_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody877_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody877_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody877_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody877_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody877_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody877_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody877_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody877_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody877_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody877_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody877_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody877_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody877_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody877_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody877_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1000000000#64)

def optimizedBody877_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody877_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody877_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody877_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 22), (48, 24), (50, 18),
    (52, 46), (54, 20)]

def optimizedBody877_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (8, 6), (10, 8), (6, 4), (44, 44), (0, 46), (46, 48), (48, 50), (50, 52), (52, 54)]

def optimizedBody877_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (48, 50), (50, 52), (52, 54)]

def optimizedBody877_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_66 optimizedBody877_3

def optimizedBody877_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody877_65, 877, 4)) (some 120) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody877_67, 877, 5))

def optimizedBody877_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody877_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody877_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (24, 46), (0, 48), (4, 50), (20, 52)]

def optimizedBody877_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (24, 46), (0, 48), (4, 50), (20, 52)]

def optimizedBody877_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_72 optimizedBody877_3

def optimizedBody877_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody877_71, 877, 6)) (some 430) ([2, 4, 6, 8, 10]) (some (2, optimizedBody877_73, 877, 7))

def optimizedBody877_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody877_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody877_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody877_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551600#64)))

def optimizedBody877_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody877_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody877_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (24, 24), (18, 18), (46, 4), (20, 20)]

def optimizedBody877_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody877_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_81 optimizedBody877_82

def optimizedBody877_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_80 optimizedBody877_83

def optimizedBody877_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_7 optimizedBody877_84

def optimizedBody877_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_79 optimizedBody877_85

def optimizedBody877_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_53 optimizedBody877_86

def optimizedBody877_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_62 optimizedBody877_87

def optimizedBody877_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_78 optimizedBody877_88

def optimizedBody877_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_77 optimizedBody877_89

def optimizedBody877_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_76 optimizedBody877_90

def optimizedBody877_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_75 optimizedBody877_91

def optimizedBody877_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_6 optimizedBody877_92

def optimizedBody877_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_74 optimizedBody877_93

def optimizedBody877_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_70 optimizedBody877_94

def optimizedBody877_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_69 optimizedBody877_95

def optimizedBody877_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_7 optimizedBody877_96

def optimizedBody877_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_6 optimizedBody877_97

def optimizedBody877_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_68 optimizedBody877_98

def optimizedBody877_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_64 optimizedBody877_99

def optimizedBody877_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_63 optimizedBody877_100

def optimizedBody877_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_62 optimizedBody877_101

def optimizedBody877_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_61 optimizedBody877_102

def optimizedBody877_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_60 optimizedBody877_103

def optimizedBody877_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_59 optimizedBody877_104

def optimizedBody877_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_58 optimizedBody877_105

def optimizedBody877_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_57 optimizedBody877_106

def optimizedBody877_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_53 optimizedBody877_107

def optimizedBody877_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_56 optimizedBody877_108

def optimizedBody877_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_7 optimizedBody877_109

def optimizedBody877_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_55 optimizedBody877_110

def optimizedBody877_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_54 optimizedBody877_111

def optimizedBody877_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_53 optimizedBody877_112

def optimizedBody877_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_52 optimizedBody877_113

def optimizedBody877_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_51 optimizedBody877_114

def optimizedBody877_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_50 optimizedBody877_115

def optimizedBody877_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_49 optimizedBody877_116

def optimizedBody877_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_48 optimizedBody877_117

def optimizedBody877_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_47 optimizedBody877_118

def optimizedBody877_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_46 optimizedBody877_119

def optimizedBody877_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_45 optimizedBody877_120

def optimizedBody877_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_44 optimizedBody877_121

def optimizedBody877_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_43 optimizedBody877_122

def optimizedBody877_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_42 optimizedBody877_123

def optimizedBody877_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_41 optimizedBody877_124

def optimizedBody877_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_40 optimizedBody877_125

def optimizedBody877_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_39 optimizedBody877_126

def optimizedBody877_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_38 optimizedBody877_127

def optimizedBody877_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_37 optimizedBody877_128

def optimizedBody877_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_36 optimizedBody877_129

def optimizedBody877_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_35 optimizedBody877_130

def optimizedBody877_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_34 optimizedBody877_131

def optimizedBody877_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_19 optimizedBody877_132

def optimizedBody877_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_33 optimizedBody877_133

def optimizedBody877_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_32 optimizedBody877_134

def optimizedBody877_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_19 optimizedBody877_135

def optimizedBody877_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_31 optimizedBody877_136

def optimizedBody877_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_30 optimizedBody877_137

def optimizedBody877_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_19 optimizedBody877_138

def optimizedBody877_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_29 optimizedBody877_139

def optimizedBody877_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_28 optimizedBody877_140

def optimizedBody877_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_19 optimizedBody877_141

def optimizedBody877_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_27 optimizedBody877_142

def optimizedBody877_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_26 optimizedBody877_143

def optimizedBody877_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_19 optimizedBody877_144

def optimizedBody877_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_25 optimizedBody877_145

def optimizedBody877_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_24 optimizedBody877_146

def optimizedBody877_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_19 optimizedBody877_147

def optimizedBody877_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_23 optimizedBody877_148

def optimizedBody877_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_22 optimizedBody877_149

def optimizedBody877_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_19 optimizedBody877_150

def optimizedBody877_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_21 optimizedBody877_151

def optimizedBody877_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_20 optimizedBody877_152

def optimizedBody877_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_19 optimizedBody877_153

def optimizedBody877_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_18 optimizedBody877_154

def optimizedBody877_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_17 optimizedBody877_155

def optimizedBody877_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_16 optimizedBody877_156

def optimizedBody877_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_15 optimizedBody877_157

def optimizedBody877_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_14 optimizedBody877_158

def optimizedBody877_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_13 optimizedBody877_159

def optimizedBody877_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_6 optimizedBody877_160

def optimizedBody877_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody877_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_6 optimizedBody877_162

def optimizedBody877_164 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 18 (Flapjack.WordRegImm.reg 24) optimizedBody877_161 optimizedBody877_163

def optimizedBody877_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (24, 24), (18, 18), (46, 2), (20, 20)]

def optimizedBody877_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_6 optimizedBody877_165

def optimizedBody877_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_164 optimizedBody877_166

def optimizedBody877_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_12 optimizedBody877_167

def optimizedBody877_169 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
  Flapjack.Spt.ln) optimizedBody877_168 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody877_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody877_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody877_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody877_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_172 optimizedBody877_3

def optimizedBody877_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody877_171, 877, 8)) (some 457) ([]) (some (2, optimizedBody877_173, 877, 9))

def optimizedBody877_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody877_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody877_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_53 optimizedBody877_176

def optimizedBody877_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_175 optimizedBody877_177

def optimizedBody877_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_6 optimizedBody877_178

def optimizedBody877_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_174 optimizedBody877_179

def optimizedBody877_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_170 optimizedBody877_180

def optimizedBody877_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_6 optimizedBody877_181

def optimizedBody877_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_169 optimizedBody877_182

def optimizedBody877_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_11 optimizedBody877_183

def optimizedBody877_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_6 optimizedBody877_184

def optimizedBody877_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_10 optimizedBody877_185

def optimizedBody877_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_9 optimizedBody877_186

def optimizedBody877_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_7 optimizedBody877_187

def optimizedBody877_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_8 optimizedBody877_188

def optimizedBody877_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_7 optimizedBody877_189

def optimizedBody877_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_6 optimizedBody877_190

def optimizedBody877_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_5 optimizedBody877_191

def optimizedBody877_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody877_0 optimizedBody877_192

def oracle877 : Option (Spt Nat) :=
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
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))) 10
                (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 11 (Flapjack.Spt.ls 2)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 12 (Flapjack.Spt.ls 7))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 12)) 0 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 11 (Flapjack.Spt.ls 25))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))) 12
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 10 (Flapjack.Spt.ls 6))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 7)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 1)) 11 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 23)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
                0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 3)) 22
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 9 (Flapjack.Spt.ls 11))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 9
                  (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 9)) 0 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 12 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 24))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 12))) 0
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) 11 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 23
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 11
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 0))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.ls 23))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))))
def optimized877 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(877, 2, optimizedBody877_193)
end InitECandidate.Proofs.SmallStages.Oracles877
