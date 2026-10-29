import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source846
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles846
def optimizedBody846_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody846_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody846_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody846_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody846_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody846_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody846_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody846_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 12 96#64))

def optimizedBody846_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody846_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 213#64)

def optimizedBody846_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody846_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody846_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody846_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody846_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody846_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody846_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody846_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_15 optimizedBody846_16

def optimizedBody846_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_14 optimizedBody846_17

def optimizedBody846_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_13 optimizedBody846_18

def optimizedBody846_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_12 optimizedBody846_19

def optimizedBody846_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_11 optimizedBody846_20

def optimizedBody846_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_21

def optimizedBody846_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody846_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 2) optimizedBody846_22 optimizedBody846_23

def optimizedBody846_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 88#64))

def optimizedBody846_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody846_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody846_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody846_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody846_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody846_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody846_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody846_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody846_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody846_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody846_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody846_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody846_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody846_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody846_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody846_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody846_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 212#64)))

def optimizedBody846_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 0), (44, 6), (52, 12), (54, 2), (56, 4), (58, 14)]

def optimizedBody846_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 44), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody846_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody846_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_45 optimizedBody846_16

def optimizedBody846_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody846_44, 846, 2)) (some 472) ([2]) (some (2, optimizedBody846_46, 846, 3))

def optimizedBody846_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody846_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody846_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody846_22 optimizedBody846_23

def optimizedBody846_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody846_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 0), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody846_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (44, 44), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody846_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody846_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_54 optimizedBody846_16

def optimizedBody846_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody846_53, 846, 4)) (some 68) ([2]) (some (2, optimizedBody846_55, 846, 5))

def optimizedBody846_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (44, 44), (48, 0), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody846_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (44, 44), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody846_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody846_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_59 optimizedBody846_16

def optimizedBody846_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody846_58, 846, 6)) (some 69) ([]) (some (2, optimizedBody846_60, 846, 7))

def optimizedBody846_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58), (62, 0)]

def optimizedBody846_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (44, 44), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62)]

def optimizedBody846_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62)]

def optimizedBody846_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_64 optimizedBody846_16

def optimizedBody846_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody846_63, 846, 8)) (some 68) ([2]) (some (2, optimizedBody846_65, 846, 9))

def optimizedBody846_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody846_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62)]

def optimizedBody846_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (46, 46), (22, 44), (44, 48), (0, 50), (52, 52), (20, 54), (4, 56), (56, 58), (62, 62)]

def optimizedBody846_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (22, 44), (44, 48), (0, 50), (52, 52), (20, 54), (4, 56), (56, 58), (62, 62)]

def optimizedBody846_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_70 optimizedBody846_16

def optimizedBody846_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody846_69, 846, 10)) (some 68) ([2]) (some (2, optimizedBody846_71, 846, 11))

def optimizedBody846_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody846_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (22, 22), (44, 44), (14, 14), (0, 0), (52, 52), (20, 20), (4, 4), (18, 18), (56, 56), (62, 62)]

def optimizedBody846_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 14 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody846_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody846_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2), (14, 14)]

def optimizedBody846_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody846_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 28 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody846_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody846_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28), (4, 4), (14, 14)]

def optimizedBody846_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 28 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody846_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody846_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 28 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody846_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody846_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 28 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody846_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody846_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 28 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody846_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody846_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24 28 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody846_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 24 (Flapjack.WordLangAddr.addr 24 0#64))

def optimizedBody846_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 28 (Flapjack.WordRegImm.imm 10#64)))

def optimizedBody846_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 26 (Flapjack.WordLangAddr.addr 26 0#64))

def optimizedBody846_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 28 (Flapjack.WordRegImm.imm 11#64)))

def optimizedBody846_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 28 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody846_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28)]

def optimizedBody846_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 28 28 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody846_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26)]

def optimizedBody846_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 26 26 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody846_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 26 28 (Flapjack.WordRegImm.reg 26)))

def optimizedBody846_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody846_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24 24 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody846_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 24 26 (Flapjack.WordRegImm.reg 24)))

def optimizedBody846_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody846_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 24 (Flapjack.WordRegImm.reg 10)))

def optimizedBody846_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody846_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody846_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody846_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody846_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 8 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody846_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody846_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (2, 2)]

def optimizedBody846_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody846_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody846_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (0, 0), (4, 4)]

def optimizedBody846_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody846_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_115 optimizedBody846_116

def optimizedBody846_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_114 optimizedBody846_117

def optimizedBody846_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_118

def optimizedBody846_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_113 optimizedBody846_119

def optimizedBody846_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_112 optimizedBody846_120

def optimizedBody846_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_111 optimizedBody846_121

def optimizedBody846_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_122

def optimizedBody846_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_108 optimizedBody846_123

def optimizedBody846_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_110 optimizedBody846_124

def optimizedBody846_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_109 optimizedBody846_125

def optimizedBody846_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_108 optimizedBody846_126

def optimizedBody846_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_38 optimizedBody846_127

def optimizedBody846_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_37 optimizedBody846_128

def optimizedBody846_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_107 optimizedBody846_129

def optimizedBody846_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_40 optimizedBody846_130

def optimizedBody846_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_12 optimizedBody846_131

def optimizedBody846_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_106 optimizedBody846_132

def optimizedBody846_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_105 optimizedBody846_133

def optimizedBody846_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_104 optimizedBody846_134

def optimizedBody846_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_103 optimizedBody846_135

def optimizedBody846_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_102 optimizedBody846_136

def optimizedBody846_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_101 optimizedBody846_137

def optimizedBody846_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_100 optimizedBody846_138

def optimizedBody846_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_99 optimizedBody846_139

def optimizedBody846_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_98 optimizedBody846_140

def optimizedBody846_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_97 optimizedBody846_141

def optimizedBody846_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_96 optimizedBody846_142

def optimizedBody846_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_95 optimizedBody846_143

def optimizedBody846_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_94 optimizedBody846_144

def optimizedBody846_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_81 optimizedBody846_145

def optimizedBody846_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_93 optimizedBody846_146

def optimizedBody846_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_92 optimizedBody846_147

def optimizedBody846_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_81 optimizedBody846_148

def optimizedBody846_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_91 optimizedBody846_149

def optimizedBody846_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_90 optimizedBody846_150

def optimizedBody846_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_81 optimizedBody846_151

def optimizedBody846_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_89 optimizedBody846_152

def optimizedBody846_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_88 optimizedBody846_153

def optimizedBody846_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_81 optimizedBody846_154

def optimizedBody846_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_87 optimizedBody846_155

def optimizedBody846_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_86 optimizedBody846_156

def optimizedBody846_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_81 optimizedBody846_157

def optimizedBody846_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_85 optimizedBody846_158

def optimizedBody846_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_84 optimizedBody846_159

def optimizedBody846_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_81 optimizedBody846_160

def optimizedBody846_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_83 optimizedBody846_161

def optimizedBody846_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_82 optimizedBody846_162

def optimizedBody846_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_81 optimizedBody846_163

def optimizedBody846_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_80 optimizedBody846_164

def optimizedBody846_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_79 optimizedBody846_165

def optimizedBody846_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_78 optimizedBody846_166

def optimizedBody846_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_77 optimizedBody846_167

def optimizedBody846_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_76 optimizedBody846_168

def optimizedBody846_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_49 optimizedBody846_169

def optimizedBody846_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_75 optimizedBody846_170

def optimizedBody846_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_171

def optimizedBody846_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_172

def optimizedBody846_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody846_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_174

def optimizedBody846_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 2) optimizedBody846_173 optimizedBody846_175

def optimizedBody846_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_115

def optimizedBody846_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_176 optimizedBody846_177

def optimizedBody846_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_14 optimizedBody846_178

def optimizedBody846_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_179

def optimizedBody846_181 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody846_180 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody846_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (22, 22), (44, 44), (14, 14), (24, 0), (52, 52), (20, 20), (4, 4), (6, 18), (56, 56), (62, 62)]

def optimizedBody846_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 16#64)

def optimizedBody846_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 14 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody846_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 6)]

def optimizedBody846_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 0 (Flapjack.WordRegImm.reg 16)))

def optimizedBody846_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0), (14, 14)]

def optimizedBody846_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody846_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 28 (Flapjack.WordRegImm.imm 68#64)))

def optimizedBody846_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody846_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 28 (Flapjack.WordRegImm.imm 69#64)))

def optimizedBody846_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody846_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 28 (Flapjack.WordRegImm.imm 70#64)))

def optimizedBody846_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody846_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 28 (Flapjack.WordRegImm.imm 71#64)))

def optimizedBody846_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody846_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 28 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody846_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 28 (Flapjack.WordRegImm.imm 73#64)))

def optimizedBody846_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody846_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 28 (Flapjack.WordRegImm.imm 74#64)))

def optimizedBody846_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 28 (Flapjack.WordRegImm.imm 75#64)))

def optimizedBody846_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody846_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18 18 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody846_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 18 26 (Flapjack.WordRegImm.reg 18)))

def optimizedBody846_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 18 (Flapjack.WordRegImm.reg 10)))

def optimizedBody846_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody846_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 10 (Flapjack.WordRegImm.reg 0)))

def optimizedBody846_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody846_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody846_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody846_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody846_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (0, 0)]

def optimizedBody846_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody846_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (4, 4), (6, 16)]

def optimizedBody846_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_214 optimizedBody846_116

def optimizedBody846_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_114 optimizedBody846_215

def optimizedBody846_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_216

def optimizedBody846_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_213 optimizedBody846_217

def optimizedBody846_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_212 optimizedBody846_218

def optimizedBody846_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_211 optimizedBody846_219

def optimizedBody846_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_109 optimizedBody846_220

def optimizedBody846_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_209 optimizedBody846_221

def optimizedBody846_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_210 optimizedBody846_222

def optimizedBody846_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_37 optimizedBody846_223

def optimizedBody846_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_209 optimizedBody846_224

def optimizedBody846_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_208 optimizedBody846_225

def optimizedBody846_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_12 optimizedBody846_226

def optimizedBody846_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_207 optimizedBody846_227

def optimizedBody846_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_206 optimizedBody846_228

def optimizedBody846_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_49 optimizedBody846_229

def optimizedBody846_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_106 optimizedBody846_230

def optimizedBody846_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_205 optimizedBody846_231

def optimizedBody846_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_104 optimizedBody846_232

def optimizedBody846_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_204 optimizedBody846_233

def optimizedBody846_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_203 optimizedBody846_234

def optimizedBody846_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_202 optimizedBody846_235

def optimizedBody846_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_100 optimizedBody846_236

def optimizedBody846_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_99 optimizedBody846_237

def optimizedBody846_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_98 optimizedBody846_238

def optimizedBody846_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_97 optimizedBody846_239

def optimizedBody846_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_96 optimizedBody846_240

def optimizedBody846_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_95 optimizedBody846_241

def optimizedBody846_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_201 optimizedBody846_242

def optimizedBody846_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_81 optimizedBody846_243

def optimizedBody846_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_93 optimizedBody846_244

def optimizedBody846_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_200 optimizedBody846_245

def optimizedBody846_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_81 optimizedBody846_246

def optimizedBody846_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_199 optimizedBody846_247

def optimizedBody846_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_198 optimizedBody846_248

def optimizedBody846_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_81 optimizedBody846_249

def optimizedBody846_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_89 optimizedBody846_250

def optimizedBody846_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_197 optimizedBody846_251

def optimizedBody846_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_81 optimizedBody846_252

def optimizedBody846_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_196 optimizedBody846_253

def optimizedBody846_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_195 optimizedBody846_254

def optimizedBody846_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_81 optimizedBody846_255

def optimizedBody846_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_194 optimizedBody846_256

def optimizedBody846_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_193 optimizedBody846_257

def optimizedBody846_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_81 optimizedBody846_258

def optimizedBody846_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_192 optimizedBody846_259

def optimizedBody846_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_191 optimizedBody846_260

def optimizedBody846_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_81 optimizedBody846_261

def optimizedBody846_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_190 optimizedBody846_262

def optimizedBody846_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_189 optimizedBody846_263

def optimizedBody846_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_188 optimizedBody846_264

def optimizedBody846_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_187 optimizedBody846_265

def optimizedBody846_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_186 optimizedBody846_266

def optimizedBody846_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_185 optimizedBody846_267

def optimizedBody846_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_184 optimizedBody846_268

def optimizedBody846_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_269

def optimizedBody846_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_270

def optimizedBody846_272 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 0) optimizedBody846_271 optimizedBody846_175

def optimizedBody846_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (4, 4), (6, 6)]

def optimizedBody846_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_273

def optimizedBody846_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_272 optimizedBody846_274

def optimizedBody846_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_183 optimizedBody846_275

def optimizedBody846_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_276

def optimizedBody846_278 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)))
  Flapjack.Spt.ln) optimizedBody846_277 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)))
  Flapjack.Spt.ln)

def optimizedBody846_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 4)]

def optimizedBody846_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.imm 196#64)))

def optimizedBody846_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody846_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.imm 197#64)))

def optimizedBody846_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 198#64)))

def optimizedBody846_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody846_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 199#64)))

def optimizedBody846_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 200#64)))

def optimizedBody846_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody846_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 201#64)))

def optimizedBody846_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody846_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 202#64)))

def optimizedBody846_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody846_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 203#64)))

def optimizedBody846_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody846_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 12 (Flapjack.WordRegImm.imm 204#64)))

def optimizedBody846_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 12 (Flapjack.WordRegImm.imm 205#64)))

def optimizedBody846_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 40 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody846_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 12 (Flapjack.WordRegImm.imm 206#64)))

def optimizedBody846_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 38 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody846_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 12 (Flapjack.WordRegImm.imm 207#64)))

def optimizedBody846_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 36 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody846_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 12 (Flapjack.WordRegImm.imm 208#64)))

def optimizedBody846_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 34 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody846_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 12 (Flapjack.WordRegImm.imm 209#64)))

def optimizedBody846_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 32 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody846_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 12 (Flapjack.WordRegImm.imm 210#64)))

def optimizedBody846_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 30 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody846_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 12 (Flapjack.WordRegImm.imm 211#64)))

def optimizedBody846_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 4), (6, 6), (4, 24), (20, 20)]

def optimizedBody846_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24 24 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody846_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody846_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody846_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody846_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 8 (Flapjack.WordRegImm.reg 14)))

def optimizedBody846_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody846_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody846_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody846_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 16 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody846_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody846_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody846_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody846_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 0 (Flapjack.WordRegImm.reg 18)))

def optimizedBody846_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 28 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody846_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 30)]

def optimizedBody846_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 30 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody846_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 32)]

def optimizedBody846_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 32 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody846_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34)]

def optimizedBody846_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 34)))

def optimizedBody846_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody846_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36)]

def optimizedBody846_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 36 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody846_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 38)]

def optimizedBody846_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 38 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody846_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 40)]

def optimizedBody846_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 40 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody846_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 0 (Flapjack.WordRegImm.reg 26)))

def optimizedBody846_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 20), (4, 4), (6, 6), (8, 8), (10, 10), (12, 22), (46, 46), (54, 22), (44, 44), (48, 4), (52, 52), (60, 20),
    (50, 12), (58, 6), (56, 56), (62, 62)]

def optimizedBody846_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (54, 54), (6, 44), (0, 48), (52, 52), (60, 60), (50, 50), (58, 58), (56, 56), (44, 62)]

def optimizedBody846_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (54, 54), (6, 44), (0, 48), (52, 52), (60, 60), (50, 50), (58, 58), (56, 56), (44, 62)]

def optimizedBody846_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_339 optimizedBody846_16

def optimizedBody846_341 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody846_338, 846, 12)) (some 635) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody846_340, 846, 13))

def optimizedBody846_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody846_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (54, 54), (48, 6), (4, 4), (0, 0), (52, 52), (60, 60), (50, 50), (58, 58), (56, 56), (44, 44)]

def optimizedBody846_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody846_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 48)]

def optimizedBody846_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody846_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6), (48, 4)]

def optimizedBody846_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody846_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody846_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (46, 46), (54, 54), (48, 8), (44, 48), (50, 0), (52, 52), (60, 60), (56, 50), (58, 58), (62, 56),
    (64, 44)]

def optimizedBody846_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (6, 54), (48, 48), (4, 44), (0, 50), (8, 52), (10, 60), (12, 56), (14, 58), (16, 62), (18, 64)]

def optimizedBody846_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (6, 54), (48, 48), (4, 44), (0, 50), (8, 52), (10, 60), (12, 56), (14, 58), (16, 62), (18, 64)]

def optimizedBody846_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_352 optimizedBody846_16

def optimizedBody846_354 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody846_351, 846, 14)) (some 87) ([2, 4]) (some (2, optimizedBody846_353, 846, 15))

def optimizedBody846_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody846_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (54, 6), (48, 48), (4, 4), (0, 0), (52, 8), (60, 10), (50, 12), (58, 14), (56, 16), (44, 18)]

def optimizedBody846_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_356 optimizedBody846_116

def optimizedBody846_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_355 optimizedBody846_357

def optimizedBody846_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_26 optimizedBody846_358

def optimizedBody846_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_359

def optimizedBody846_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_354 optimizedBody846_360

def optimizedBody846_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_350 optimizedBody846_361

def optimizedBody846_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_349 optimizedBody846_362

def optimizedBody846_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_348 optimizedBody846_363

def optimizedBody846_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_347 optimizedBody846_364

def optimizedBody846_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_346 optimizedBody846_365

def optimizedBody846_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_345 optimizedBody846_366

def optimizedBody846_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_344 optimizedBody846_367

def optimizedBody846_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_26 optimizedBody846_368

def optimizedBody846_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_369

def optimizedBody846_371 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 2) optimizedBody846_370 optimizedBody846_175

def optimizedBody846_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 2), (54, 6), (48, 8), (4, 4), (0, 0), (52, 10), (60, 12), (50, 14), (58, 16), (56, 18), (44, 20)]

def optimizedBody846_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_372

def optimizedBody846_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_371 optimizedBody846_373

def optimizedBody846_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_14 optimizedBody846_374

def optimizedBody846_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_26 optimizedBody846_375

def optimizedBody846_377 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody846_376 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody846_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (44, 46), (46, 48)]

def optimizedBody846_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46)]

def optimizedBody846_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody846_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_380 optimizedBody846_16

def optimizedBody846_382 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody846_379, 846, 16)) (some 70) ([2]) (some (2, optimizedBody846_381, 846, 17))

def optimizedBody846_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody846_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody846_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody846_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody846_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody846_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody846_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody846_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody846_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody846_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody846_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody846_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody846_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_12 optimizedBody846_394

def optimizedBody846_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_393 optimizedBody846_395

def optimizedBody846_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_392 optimizedBody846_396

def optimizedBody846_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_49 optimizedBody846_397

def optimizedBody846_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_51 optimizedBody846_398

def optimizedBody846_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_391 optimizedBody846_399

def optimizedBody846_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_390 optimizedBody846_400

def optimizedBody846_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_0 optimizedBody846_401

def optimizedBody846_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_389 optimizedBody846_402

def optimizedBody846_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_388 optimizedBody846_403

def optimizedBody846_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_387 optimizedBody846_404

def optimizedBody846_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_386 optimizedBody846_405

def optimizedBody846_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_385 optimizedBody846_406

def optimizedBody846_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_384 optimizedBody846_407

def optimizedBody846_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_383 optimizedBody846_408

def optimizedBody846_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_409

def optimizedBody846_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_382 optimizedBody846_410

def optimizedBody846_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_378 optimizedBody846_411

def optimizedBody846_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_412

def optimizedBody846_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_377 optimizedBody846_413

def optimizedBody846_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_343 optimizedBody846_414

def optimizedBody846_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_415

def optimizedBody846_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_342 optimizedBody846_416

def optimizedBody846_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_417

def optimizedBody846_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_341 optimizedBody846_418

def optimizedBody846_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_337 optimizedBody846_419

def optimizedBody846_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_336 optimizedBody846_420

def optimizedBody846_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_98 optimizedBody846_421

def optimizedBody846_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_209 optimizedBody846_422

def optimizedBody846_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_335 optimizedBody846_423

def optimizedBody846_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_334 optimizedBody846_424

def optimizedBody846_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_209 optimizedBody846_425

def optimizedBody846_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_333 optimizedBody846_426

def optimizedBody846_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_332 optimizedBody846_427

def optimizedBody846_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_209 optimizedBody846_428

def optimizedBody846_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_331 optimizedBody846_429

def optimizedBody846_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_330 optimizedBody846_430

def optimizedBody846_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_329 optimizedBody846_431

def optimizedBody846_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_328 optimizedBody846_432

def optimizedBody846_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_327 optimizedBody846_433

def optimizedBody846_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_209 optimizedBody846_434

def optimizedBody846_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_326 optimizedBody846_435

def optimizedBody846_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_325 optimizedBody846_436

def optimizedBody846_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_209 optimizedBody846_437

def optimizedBody846_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_324 optimizedBody846_438

def optimizedBody846_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_323 optimizedBody846_439

def optimizedBody846_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_322 optimizedBody846_440

def optimizedBody846_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_96 optimizedBody846_441

def optimizedBody846_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_321 optimizedBody846_442

def optimizedBody846_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_202 optimizedBody846_443

def optimizedBody846_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_320 optimizedBody846_444

def optimizedBody846_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_319 optimizedBody846_445

def optimizedBody846_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_49 optimizedBody846_446

def optimizedBody846_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_318 optimizedBody846_447

def optimizedBody846_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_317 optimizedBody846_448

def optimizedBody846_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_316 optimizedBody846_449

def optimizedBody846_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_315 optimizedBody846_450

def optimizedBody846_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_40 optimizedBody846_451

def optimizedBody846_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_12 optimizedBody846_452

def optimizedBody846_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_314 optimizedBody846_453

def optimizedBody846_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_313 optimizedBody846_454

def optimizedBody846_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_455

def optimizedBody846_457 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_312 optimizedBody846_456

def optimizedBody846_458 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_311 optimizedBody846_457

def optimizedBody846_459 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_109 optimizedBody846_458

def optimizedBody846_460 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_105 optimizedBody846_459

def optimizedBody846_461 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_310 optimizedBody846_460

def optimizedBody846_462 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_104 optimizedBody846_461

def optimizedBody846_463 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_309 optimizedBody846_462

def optimizedBody846_464 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_308 optimizedBody846_463

def optimizedBody846_465 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_95 optimizedBody846_464

def optimizedBody846_466 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_307 optimizedBody846_465

def optimizedBody846_467 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_466

def optimizedBody846_468 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_306 optimizedBody846_467

def optimizedBody846_469 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_305 optimizedBody846_468

def optimizedBody846_470 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_469

def optimizedBody846_471 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_304 optimizedBody846_470

def optimizedBody846_472 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_303 optimizedBody846_471

def optimizedBody846_473 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_472

def optimizedBody846_474 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_302 optimizedBody846_473

def optimizedBody846_475 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_301 optimizedBody846_474

def optimizedBody846_476 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_475

def optimizedBody846_477 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_300 optimizedBody846_476

def optimizedBody846_478 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_299 optimizedBody846_477

def optimizedBody846_479 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_478

def optimizedBody846_480 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_298 optimizedBody846_479

def optimizedBody846_481 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_297 optimizedBody846_480

def optimizedBody846_482 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_481

def optimizedBody846_483 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_296 optimizedBody846_482

def optimizedBody846_484 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_295 optimizedBody846_483

def optimizedBody846_485 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_484

def optimizedBody846_486 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_93 optimizedBody846_485

def optimizedBody846_487 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_294 optimizedBody846_486

def optimizedBody846_488 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_487

def optimizedBody846_489 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_293 optimizedBody846_488

def optimizedBody846_490 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_292 optimizedBody846_489

def optimizedBody846_491 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_490

def optimizedBody846_492 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_291 optimizedBody846_491

def optimizedBody846_493 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_290 optimizedBody846_492

def optimizedBody846_494 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_493

def optimizedBody846_495 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_289 optimizedBody846_494

def optimizedBody846_496 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_288 optimizedBody846_495

def optimizedBody846_497 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_496

def optimizedBody846_498 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_287 optimizedBody846_497

def optimizedBody846_499 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_286 optimizedBody846_498

def optimizedBody846_500 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_499

def optimizedBody846_501 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_87 optimizedBody846_500

def optimizedBody846_502 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_285 optimizedBody846_501

def optimizedBody846_503 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_502

def optimizedBody846_504 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_284 optimizedBody846_503

def optimizedBody846_505 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_283 optimizedBody846_504

def optimizedBody846_506 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_505

def optimizedBody846_507 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_196 optimizedBody846_506

def optimizedBody846_508 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_282 optimizedBody846_507

def optimizedBody846_509 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_508

def optimizedBody846_510 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_281 optimizedBody846_509

def optimizedBody846_511 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_280 optimizedBody846_510

def optimizedBody846_512 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_279 optimizedBody846_511

def optimizedBody846_513 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_512

def optimizedBody846_514 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_278 optimizedBody846_513

def optimizedBody846_515 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_182 optimizedBody846_514

def optimizedBody846_516 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_515

def optimizedBody846_517 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_73 optimizedBody846_516

def optimizedBody846_518 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_517

def optimizedBody846_519 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_181 optimizedBody846_518

def optimizedBody846_520 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_74 optimizedBody846_519

def optimizedBody846_521 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_520

def optimizedBody846_522 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_73 optimizedBody846_521

def optimizedBody846_523 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_522

def optimizedBody846_524 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_72 optimizedBody846_523

def optimizedBody846_525 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_68 optimizedBody846_524

def optimizedBody846_526 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_67 optimizedBody846_525

def optimizedBody846_527 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_526

def optimizedBody846_528 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_66 optimizedBody846_527

def optimizedBody846_529 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_62 optimizedBody846_528

def optimizedBody846_530 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_51 optimizedBody846_529

def optimizedBody846_531 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_530

def optimizedBody846_532 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_61 optimizedBody846_531

def optimizedBody846_533 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_57 optimizedBody846_532

def optimizedBody846_534 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_533

def optimizedBody846_535 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_56 optimizedBody846_534

def optimizedBody846_536 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_52 optimizedBody846_535

def optimizedBody846_537 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_51 optimizedBody846_536

def optimizedBody846_538 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_537

def optimizedBody846_539 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_538

def optimizedBody846_540 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_50 optimizedBody846_539

def optimizedBody846_541 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_49 optimizedBody846_540

def optimizedBody846_542 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_48 optimizedBody846_541

def optimizedBody846_543 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_542

def optimizedBody846_544 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_47 optimizedBody846_543

def optimizedBody846_545 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_43 optimizedBody846_544

def optimizedBody846_546 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_29 optimizedBody846_545

def optimizedBody846_547 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_42 optimizedBody846_546

def optimizedBody846_548 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_26 optimizedBody846_547

def optimizedBody846_549 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_41 optimizedBody846_548

def optimizedBody846_550 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_40 optimizedBody846_549

def optimizedBody846_551 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_12 optimizedBody846_550

def optimizedBody846_552 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_39 optimizedBody846_551

def optimizedBody846_553 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_38 optimizedBody846_552

def optimizedBody846_554 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_37 optimizedBody846_553

def optimizedBody846_555 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_36 optimizedBody846_554

def optimizedBody846_556 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_35 optimizedBody846_555

def optimizedBody846_557 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_34 optimizedBody846_556

def optimizedBody846_558 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_33 optimizedBody846_557

def optimizedBody846_559 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_32 optimizedBody846_558

def optimizedBody846_560 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_26 optimizedBody846_559

def optimizedBody846_561 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_31 optimizedBody846_560

def optimizedBody846_562 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_30 optimizedBody846_561

def optimizedBody846_563 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_26 optimizedBody846_562

def optimizedBody846_564 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_29 optimizedBody846_563

def optimizedBody846_565 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_28 optimizedBody846_564

def optimizedBody846_566 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_26 optimizedBody846_565

def optimizedBody846_567 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_27 optimizedBody846_566

def optimizedBody846_568 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_26 optimizedBody846_567

def optimizedBody846_569 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_25 optimizedBody846_568

def optimizedBody846_570 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_569

def optimizedBody846_571 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_570

def optimizedBody846_572 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_571

def optimizedBody846_573 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_24 optimizedBody846_572

def optimizedBody846_574 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_9 optimizedBody846_573

def optimizedBody846_575 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_574

def optimizedBody846_576 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_7 optimizedBody846_575

def optimizedBody846_577 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_6 optimizedBody846_576

def optimizedBody846_578 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_5 optimizedBody846_577

def optimizedBody846_579 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_4 optimizedBody846_578

def optimizedBody846_580 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_3 optimizedBody846_579

def optimizedBody846_581 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_2 optimizedBody846_580

def optimizedBody846_582 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_1 optimizedBody846_581

def optimizedBody846_583 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_0 optimizedBody846_582

def oracle846 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 3)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.ls 14))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 12 (Flapjack.Spt.ls 14)) 27
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.ls 12)))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8))) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 22))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 9 (Flapjack.Spt.ls 0)))
                  5
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 15) (Flapjack.Spt.ls 14))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 27)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 19) 11 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 24))))
                  3
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 5)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))
                7
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))))
                  2
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 30))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 28 (Flapjack.Spt.ls 3)))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 9)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 28 (Flapjack.Spt.ls 12)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 29)))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 2))) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 11 (Flapjack.Spt.ls 22)))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 10))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 29))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 13 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 1))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.ls 31)))
                  4
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 23)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.ls 14))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 7 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 5))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  4
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.ls 14))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                6
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                  6
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 0))) 29
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 10 (Flapjack.Spt.ls 10)))
                  4
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))) 29
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 7))) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.ls 13))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 0)) 23
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 4))))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 28)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 14 (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 1))) 26
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.ls 7)))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 9))) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 28))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 13 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 7)))
                  4
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 14 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 4))) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 27)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 15) (Flapjack.Spt.ls 13))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 1 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 23)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3))))
                  3
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 5)) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                6
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0))))
                  2
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 1 (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 26))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 19) (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 2)))
                  5
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 14 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 9 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8))) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 27 (Flapjack.Spt.ls 12)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2))))
                  3
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 14 (Flapjack.Spt.ls 7)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 25)))))
                7
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 17) (Flapjack.Spt.ls 14)) 23
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 2))))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 8 (Flapjack.Spt.ls 2)) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 25))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 14 (Flapjack.Spt.ls 9))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 31 (Flapjack.Spt.ls 28)))
                  4
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2)))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 1 (Flapjack.Spt.ls 2)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 31 (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 29 (Flapjack.Spt.ls 12))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.ls 5))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 20) Flapjack.Spt.ln))
                  5
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 14 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 12 (Flapjack.Spt.ls 13)) 28
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 26 (Flapjack.Spt.ls 26)))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 14 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 7))) 28
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 9))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 10 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6))) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 24 (Flapjack.Spt.ls 13)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 31)) (Flapjack.Spt.ls 29)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 29 Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 28)) (Flapjack.Spt.ls 27)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 29)) (Flapjack.Spt.ls 28)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 28 Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 26)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))))))))
def optimized846 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(846, 1, optimizedBody846_583)
end InitECandidate.Proofs.SmallStages.Oracles846
