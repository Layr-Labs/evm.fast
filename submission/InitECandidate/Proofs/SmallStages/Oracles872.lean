import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source872
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles872
def optimizedBody872_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (48, 2), (56, 6)]

def optimizedBody872_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (56, 56)]

def optimizedBody872_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (56, 56)]

def optimizedBody872_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody872_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_2 optimizedBody872_3

def optimizedBody872_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody872_1, 872, 2)) (some 389) ([]) (some (2, optimizedBody872_4, 872, 3))

def optimizedBody872_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody872_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (50, 0), (56, 56)]

def optimizedBody872_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (46, 46), (50, 50), (56, 56)]

def optimizedBody872_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (56, 56)]

def optimizedBody872_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_9 optimizedBody872_3

def optimizedBody872_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody872_8, 872, 4)) (some 567) ([2]) (some (2, optimizedBody872_10, 872, 5))

def optimizedBody872_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 0), (50, 50), (54, 4), (56, 56)]

def optimizedBody872_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (12, 50), (54, 54), (56, 56)]

def optimizedBody872_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (12, 50), (54, 54), (56, 56)]

def optimizedBody872_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_14 optimizedBody872_3

def optimizedBody872_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody872_13, 872, 6)) (some 871) ([]) (some (2, optimizedBody872_15, 872, 7))

def optimizedBody872_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody872_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody872_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody872_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody872_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551312#64))

def optimizedBody872_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody872_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody872_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody872_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody872_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody872_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody872_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody872_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551000#64))

def optimizedBody872_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 48#64))

def optimizedBody872_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 56#64))

def optimizedBody872_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 64#64))

def optimizedBody872_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody872_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody872_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody872_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody872_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody872_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody872_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody872_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody872_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody872_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody872_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 30000000#64)

def optimizedBody872_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody872_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody872_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody872_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1566720#64)

def optimizedBody872_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 12), (52, 0), (54, 54), (56, 56)]

def optimizedBody872_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (10, 46), (12, 48), (4, 50), (14, 52), (0, 54), (8, 56)]

def optimizedBody872_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (12, 48), (4, 50), (14, 52), (0, 54), (8, 56)]

def optimizedBody872_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_50 optimizedBody872_3

def optimizedBody872_52 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody872_49, 872, 8)) (some 489) ([]) (some (2, optimizedBody872_51, 872, 9))

def optimizedBody872_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody872_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 18446744073709551000#64))

def optimizedBody872_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (16, 16)]

def optimizedBody872_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody872_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody872_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody872_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody872_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 6 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody872_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551312#64))

def optimizedBody872_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (2, 2)]

def optimizedBody872_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody872_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody872_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody872_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody872_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody872_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 30000000#64)

def optimizedBody872_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody872_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody872_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 1566720#64)

def optimizedBody872_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody872_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody872_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody872_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody872_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody872_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody872_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody872_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 112#64)))

def optimizedBody872_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody872_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody872_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody872_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody872_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody872_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8#64)

def optimizedBody872_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody872_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 6)]

def optimizedBody872_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody872_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody872_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_89 optimizedBody872_3

def optimizedBody872_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody872_88, 872, 10)) (some 182) ([2, 4]) (some (2, optimizedBody872_90, 872, 11))

def optimizedBody872_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 152#64)))

def optimizedBody872_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 52#64)

def optimizedBody872_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0)]

def optimizedBody872_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46)]

def optimizedBody872_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody872_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_96 optimizedBody872_3

def optimizedBody872_98 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody872_95, 872, 12)) (some 182) ([2, 4]) (some (2, optimizedBody872_97, 872, 13))

def optimizedBody872_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody872_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody872_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody872_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody872_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody872_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody872_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_103 optimizedBody872_3

def optimizedBody872_106 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody872_104, 872, 14)) (some 627) ([2]) (some (2, optimizedBody872_105, 872, 15))

def optimizedBody872_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 0)]

def optimizedBody872_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46)]

def optimizedBody872_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody872_108, 872, 16)) (some 457) ([]) (some (2, optimizedBody872_97, 872, 17))

def optimizedBody872_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody872_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 80#64))

def optimizedBody872_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody872_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody872_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody872_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 6), (50, 0)]

def optimizedBody872_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (6, 48), (50, 50)]

def optimizedBody872_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (50, 50)]

def optimizedBody872_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_117 optimizedBody872_3

def optimizedBody872_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody872_116, 872, 18)) (some 68) ([2]) (some (2, optimizedBody872_118, 872, 19))

def optimizedBody872_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody872_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody872_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 2), (50, 50)]

def optimizedBody872_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48), (0, 50)]

def optimizedBody872_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (0, 50)]

def optimizedBody872_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_124 optimizedBody872_3

def optimizedBody872_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody872_123, 872, 20)) (some 77) ([2, 4, 6]) (some (2, optimizedBody872_125, 872, 21))

def optimizedBody872_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody872_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody872_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody872_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 4), (0, 0)]

def optimizedBody872_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_129 optimizedBody872_130

def optimizedBody872_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_128 optimizedBody872_131

def optimizedBody872_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_127 optimizedBody872_132

def optimizedBody872_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_110 optimizedBody872_133

def optimizedBody872_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_134

def optimizedBody872_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_126 optimizedBody872_135

def optimizedBody872_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_122 optimizedBody872_136

def optimizedBody872_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_121 optimizedBody872_137

def optimizedBody872_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_120 optimizedBody872_138

def optimizedBody872_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_139

def optimizedBody872_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_119 optimizedBody872_140

def optimizedBody872_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_115 optimizedBody872_141

def optimizedBody872_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_114 optimizedBody872_142

def optimizedBody872_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_53 optimizedBody872_143

def optimizedBody872_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_144

def optimizedBody872_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_130

def optimizedBody872_147 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody872_145 optimizedBody872_146

def optimizedBody872_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody872_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody872_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody872_149, 872, 22)) (some 76) ([2]) (some (2, optimizedBody872_90, 872, 23))

def optimizedBody872_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody872_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0)]

def optimizedBody872_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody872_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody872_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_154 optimizedBody872_3

def optimizedBody872_156 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody872_153, 872, 24)) (some 73) ([2]) (some (2, optimizedBody872_155, 872, 25))

def optimizedBody872_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody872_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_157

def optimizedBody872_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_156 optimizedBody872_158

def optimizedBody872_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_152 optimizedBody872_159

def optimizedBody872_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_151 optimizedBody872_160

def optimizedBody872_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_17 optimizedBody872_161

def optimizedBody872_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_162

def optimizedBody872_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_150 optimizedBody872_163

def optimizedBody872_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_148 optimizedBody872_164

def optimizedBody872_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_165

def optimizedBody872_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_147 optimizedBody872_166

def optimizedBody872_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_53 optimizedBody872_167

def optimizedBody872_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_112 optimizedBody872_168

def optimizedBody872_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_113 optimizedBody872_169

def optimizedBody872_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_110 optimizedBody872_170

def optimizedBody872_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_171

def optimizedBody872_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 4)]

def optimizedBody872_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_173

def optimizedBody872_175 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody872_172 optimizedBody872_174

def optimizedBody872_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody872_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_99 optimizedBody872_176

def optimizedBody872_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_177

def optimizedBody872_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_175 optimizedBody872_178

def optimizedBody872_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_112 optimizedBody872_179

def optimizedBody872_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_17 optimizedBody872_180

def optimizedBody872_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_111 optimizedBody872_181

def optimizedBody872_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_110 optimizedBody872_182

def optimizedBody872_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_183

def optimizedBody872_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_109 optimizedBody872_184

def optimizedBody872_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_107 optimizedBody872_185

def optimizedBody872_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_186

def optimizedBody872_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_106 optimizedBody872_187

def optimizedBody872_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_103 optimizedBody872_188

def optimizedBody872_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_102 optimizedBody872_189

def optimizedBody872_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_101 optimizedBody872_190

def optimizedBody872_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_100 optimizedBody872_191

def optimizedBody872_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_99 optimizedBody872_192

def optimizedBody872_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_193

def optimizedBody872_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_98 optimizedBody872_194

def optimizedBody872_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_94 optimizedBody872_195

def optimizedBody872_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_93 optimizedBody872_196

def optimizedBody872_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_85 optimizedBody872_197

def optimizedBody872_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_45 optimizedBody872_198

def optimizedBody872_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_65 optimizedBody872_199

def optimizedBody872_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_92 optimizedBody872_200

def optimizedBody872_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_17 optimizedBody872_201

def optimizedBody872_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_202

def optimizedBody872_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_91 optimizedBody872_203

def optimizedBody872_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_87 optimizedBody872_204

def optimizedBody872_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_86 optimizedBody872_205

def optimizedBody872_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_85 optimizedBody872_206

def optimizedBody872_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_84 optimizedBody872_207

def optimizedBody872_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_83 optimizedBody872_208

def optimizedBody872_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_82 optimizedBody872_209

def optimizedBody872_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_53 optimizedBody872_210

def optimizedBody872_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_81 optimizedBody872_211

def optimizedBody872_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_80 optimizedBody872_212

def optimizedBody872_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_79 optimizedBody872_213

def optimizedBody872_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_53 optimizedBody872_214

def optimizedBody872_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_45 optimizedBody872_215

def optimizedBody872_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_65 optimizedBody872_216

def optimizedBody872_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_78 optimizedBody872_217

def optimizedBody872_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_53 optimizedBody872_218

def optimizedBody872_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_77 optimizedBody872_219

def optimizedBody872_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_76 optimizedBody872_220

def optimizedBody872_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_75 optimizedBody872_221

def optimizedBody872_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_53 optimizedBody872_222

def optimizedBody872_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_74 optimizedBody872_223

def optimizedBody872_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_73 optimizedBody872_224

def optimizedBody872_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_72 optimizedBody872_225

def optimizedBody872_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_53 optimizedBody872_226

def optimizedBody872_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_69 optimizedBody872_227

def optimizedBody872_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_44 optimizedBody872_228

def optimizedBody872_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_71 optimizedBody872_229

def optimizedBody872_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_70 optimizedBody872_230

def optimizedBody872_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_53 optimizedBody872_231

def optimizedBody872_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_69 optimizedBody872_232

def optimizedBody872_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_44 optimizedBody872_233

def optimizedBody872_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_68 optimizedBody872_234

def optimizedBody872_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_67 optimizedBody872_235

def optimizedBody872_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_53 optimizedBody872_236

def optimizedBody872_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_45 optimizedBody872_237

def optimizedBody872_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_65 optimizedBody872_238

def optimizedBody872_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_66 optimizedBody872_239

def optimizedBody872_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_53 optimizedBody872_240

def optimizedBody872_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_45 optimizedBody872_241

def optimizedBody872_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_65 optimizedBody872_242

def optimizedBody872_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_64 optimizedBody872_243

def optimizedBody872_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_53 optimizedBody872_244

def optimizedBody872_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_63 optimizedBody872_245

def optimizedBody872_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_62 optimizedBody872_246

def optimizedBody872_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_61 optimizedBody872_247

def optimizedBody872_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_28 optimizedBody872_248

def optimizedBody872_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_60 optimizedBody872_249

def optimizedBody872_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_53 optimizedBody872_250

def optimizedBody872_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_59 optimizedBody872_251

def optimizedBody872_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_58 optimizedBody872_252

def optimizedBody872_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_57 optimizedBody872_253

def optimizedBody872_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_53 optimizedBody872_254

def optimizedBody872_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_56 optimizedBody872_255

def optimizedBody872_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_55 optimizedBody872_256

def optimizedBody872_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_54 optimizedBody872_257

def optimizedBody872_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_20 optimizedBody872_258

def optimizedBody872_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_19 optimizedBody872_259

def optimizedBody872_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_18 optimizedBody872_260

def optimizedBody872_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_53 optimizedBody872_261

def optimizedBody872_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_262

def optimizedBody872_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_52 optimizedBody872_263

def optimizedBody872_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_48 optimizedBody872_264

def optimizedBody872_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_45 optimizedBody872_265

def optimizedBody872_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_44 optimizedBody872_266

def optimizedBody872_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_47 optimizedBody872_267

def optimizedBody872_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_46 optimizedBody872_268

def optimizedBody872_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_17 optimizedBody872_269

def optimizedBody872_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_45 optimizedBody872_270

def optimizedBody872_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_44 optimizedBody872_271

def optimizedBody872_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_43 optimizedBody872_272

def optimizedBody872_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_42 optimizedBody872_273

def optimizedBody872_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_17 optimizedBody872_274

def optimizedBody872_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_41 optimizedBody872_275

def optimizedBody872_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_40 optimizedBody872_276

def optimizedBody872_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_39 optimizedBody872_277

def optimizedBody872_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_38 optimizedBody872_278

def optimizedBody872_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_37 optimizedBody872_279

def optimizedBody872_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_36 optimizedBody872_280

def optimizedBody872_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_35 optimizedBody872_281

def optimizedBody872_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_34 optimizedBody872_282

def optimizedBody872_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_33 optimizedBody872_283

def optimizedBody872_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_28 optimizedBody872_284

def optimizedBody872_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_32 optimizedBody872_285

def optimizedBody872_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_28 optimizedBody872_286

def optimizedBody872_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_31 optimizedBody872_287

def optimizedBody872_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_28 optimizedBody872_288

def optimizedBody872_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_30 optimizedBody872_289

def optimizedBody872_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_29 optimizedBody872_290

def optimizedBody872_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_28 optimizedBody872_291

def optimizedBody872_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_27 optimizedBody872_292

def optimizedBody872_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_17 optimizedBody872_293

def optimizedBody872_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_26 optimizedBody872_294

def optimizedBody872_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_25 optimizedBody872_295

def optimizedBody872_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_24 optimizedBody872_296

def optimizedBody872_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_17 optimizedBody872_297

def optimizedBody872_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_23 optimizedBody872_298

def optimizedBody872_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_22 optimizedBody872_299

def optimizedBody872_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_21 optimizedBody872_300

def optimizedBody872_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_20 optimizedBody872_301

def optimizedBody872_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_19 optimizedBody872_302

def optimizedBody872_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_18 optimizedBody872_303

def optimizedBody872_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_17 optimizedBody872_304

def optimizedBody872_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_305

def optimizedBody872_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_16 optimizedBody872_306

def optimizedBody872_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_12 optimizedBody872_307

def optimizedBody872_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_308

def optimizedBody872_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_11 optimizedBody872_309

def optimizedBody872_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_7 optimizedBody872_310

def optimizedBody872_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_6 optimizedBody872_311

def optimizedBody872_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_5 optimizedBody872_312

def optimizedBody872_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody872_0 optimizedBody872_313

def oracle872 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                  2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
                23
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 7)) 28
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 5
                    (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 27
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2))))
                28
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 25)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 8)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 8))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 4)) 23
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))
                22
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln) 25
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 6
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 3)) 22
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 27)) 23
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln) Flapjack.Spt.ln) 28
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)) 22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln) 28 Flapjack.Spt.ln) 24
                Flapjack.Spt.ln)))))))
def optimized872 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(872, 4, optimizedBody872_314)
end InitECandidate.Proofs.SmallStages.Oracles872
