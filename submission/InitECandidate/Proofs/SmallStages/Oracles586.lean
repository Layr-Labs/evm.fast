import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source586
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles586
def optimizedBody586_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody586_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody586_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody586_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody586_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_2 optimizedBody586_3

def optimizedBody586_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_1, 586, 2)) (some 69) ([]) (some (2, optimizedBody586_4, 586, 3))

def optimizedBody586_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody586_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 40#64)

def optimizedBody586_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0)]

def optimizedBody586_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46)]

def optimizedBody586_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody586_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_10 optimizedBody586_3

def optimizedBody586_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_9, 586, 4)) (some 68) ([2]) (some (2, optimizedBody586_11, 586, 5))

def optimizedBody586_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody586_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 84#64)

def optimizedBody586_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody586_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody586_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 114#64)

def optimizedBody586_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody586_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody586_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 97#64)

def optimizedBody586_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody586_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 110#64)

def optimizedBody586_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody586_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 115#64)

def optimizedBody586_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody586_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 102#64)

def optimizedBody586_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody586_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 101#64)

def optimizedBody586_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody586_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody586_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody586_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 10#64)))

def optimizedBody586_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 100#64)

def optimizedBody586_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 11#64)))

def optimizedBody586_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody586_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 13#64)))

def optimizedBody586_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 14#64)))

def optimizedBody586_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody586_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody586_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 44#64)

def optimizedBody586_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 17#64)))

def optimizedBody586_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 18#64)))

def optimizedBody586_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 19#64)))

def optimizedBody586_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 20#64)))

def optimizedBody586_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 21#64)))

def optimizedBody586_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 22#64)))

def optimizedBody586_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 23#64)))

def optimizedBody586_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody586_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 25#64)))

def optimizedBody586_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 117#64)

def optimizedBody586_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 26#64)))

def optimizedBody586_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 105#64)

def optimizedBody586_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 27#64)))

def optimizedBody586_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 28#64)))

def optimizedBody586_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 116#64)

def optimizedBody586_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 29#64)))

def optimizedBody586_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 50#64)

def optimizedBody586_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 30#64)))

def optimizedBody586_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 53#64)

def optimizedBody586_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 31#64)))

def optimizedBody586_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 54#64)

def optimizedBody586_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody586_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 41#64)

def optimizedBody586_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 44), (46, 0), (48, 4)]

def optimizedBody586_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48)]

def optimizedBody586_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody586_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_66 optimizedBody586_3

def optimizedBody586_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_65, 586, 6)) (some 70) ([2]) (some (2, optimizedBody586_67, 586, 7))

def optimizedBody586_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody586_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (48, 48)]

def optimizedBody586_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48)]

def optimizedBody586_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_71 optimizedBody586_3

def optimizedBody586_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_70, 586, 8)) (some 68) ([2]) (some (2, optimizedBody586_72, 586, 9))

def optimizedBody586_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody586_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody586_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody586_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 18446744073709551320#64)))

def optimizedBody586_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody586_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody586_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody586_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551320#64))

def optimizedBody586_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 33#64)

def optimizedBody586_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48)]

def optimizedBody586_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_65, 586, 10)) (some 158) ([2, 4, 6]) (some (2, optimizedBody586_67, 586, 11))

def optimizedBody586_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody586_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody586_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody586_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_87 optimizedBody586_3

def optimizedBody586_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_86, 586, 12)) (some 68) ([2]) (some (2, optimizedBody586_88, 586, 13))

def optimizedBody586_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551312#64)))

def optimizedBody586_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody586_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody586_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody586_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (2, 2), (4, 4), (0, 0)]

def optimizedBody586_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody586_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody586_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 6 Flapjack.WordStore.heapLength

def optimizedBody586_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody586_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6 6

def optimizedBody586_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 18446744073709551312#64))

def optimizedBody586_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody586_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 255#64)

def optimizedBody586_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody586_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody586_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody586_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody586_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_105 optimizedBody586_106

def optimizedBody586_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_104 optimizedBody586_107

def optimizedBody586_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_95 optimizedBody586_108

def optimizedBody586_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_103 optimizedBody586_109

def optimizedBody586_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_102 optimizedBody586_110

def optimizedBody586_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_101 optimizedBody586_111

def optimizedBody586_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_100 optimizedBody586_112

def optimizedBody586_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_99 optimizedBody586_113

def optimizedBody586_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_98 optimizedBody586_114

def optimizedBody586_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_97 optimizedBody586_115

def optimizedBody586_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_95 optimizedBody586_116

def optimizedBody586_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_117

def optimizedBody586_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody586_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_119

def optimizedBody586_121 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 6) optimizedBody586_118 optimizedBody586_120

def optimizedBody586_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_105

def optimizedBody586_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_121 optimizedBody586_122

def optimizedBody586_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_96 optimizedBody586_123

def optimizedBody586_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_95 optimizedBody586_124

def optimizedBody586_126 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody586_125 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody586_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody586_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody586_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody586_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551312#64))

def optimizedBody586_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 19#64)))

def optimizedBody586_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 254#64)

def optimizedBody586_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody586_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody586_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_134, 586, 14)) (some 68) ([2]) (some (2, optimizedBody586_4, 586, 15))

def optimizedBody586_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551304#64)))

def optimizedBody586_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody586_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody586_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody586_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551304#64))

def optimizedBody586_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 24#64)

def optimizedBody586_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody586_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody586_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_143, 586, 16)) (some 78) ([2, 4]) (some (2, optimizedBody586_4, 586, 17))

def optimizedBody586_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody586_146 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_134, 586, 18)) (some 68) ([2]) (some (2, optimizedBody586_4, 586, 19))

def optimizedBody586_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551352#64)))

def optimizedBody586_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551352#64))

def optimizedBody586_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8#64)

def optimizedBody586_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_143, 586, 20)) (some 78) ([2, 4]) (some (2, optimizedBody586_4, 586, 21))

def optimizedBody586_151 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_1, 586, 22)) (some 68) ([2]) (some (2, optimizedBody586_4, 586, 23))

def optimizedBody586_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551336#64)))

def optimizedBody586_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody586_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody586_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody586_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody586_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody586_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_157 optimizedBody586_3

def optimizedBody586_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_156, 586, 24)) (some 68) ([2]) (some (2, optimizedBody586_158, 586, 25))

def optimizedBody586_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551344#64)))

def optimizedBody586_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody586_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_95 optimizedBody586_161

def optimizedBody586_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_93 optimizedBody586_162

def optimizedBody586_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_154 optimizedBody586_163

def optimizedBody586_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_153 optimizedBody586_164

def optimizedBody586_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_160 optimizedBody586_165

def optimizedBody586_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_76 optimizedBody586_166

def optimizedBody586_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_75 optimizedBody586_167

def optimizedBody586_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_74 optimizedBody586_168

def optimizedBody586_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_169

def optimizedBody586_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_159 optimizedBody586_170

def optimizedBody586_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_2 optimizedBody586_171

def optimizedBody586_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_155 optimizedBody586_172

def optimizedBody586_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_154 optimizedBody586_173

def optimizedBody586_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_153 optimizedBody586_174

def optimizedBody586_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_152 optimizedBody586_175

def optimizedBody586_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_76 optimizedBody586_176

def optimizedBody586_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_75 optimizedBody586_177

def optimizedBody586_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_74 optimizedBody586_178

def optimizedBody586_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_179

def optimizedBody586_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_151 optimizedBody586_180

def optimizedBody586_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_2 optimizedBody586_181

def optimizedBody586_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_69 optimizedBody586_182

def optimizedBody586_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_183

def optimizedBody586_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_150 optimizedBody586_184

def optimizedBody586_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_142 optimizedBody586_185

def optimizedBody586_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_149 optimizedBody586_186

def optimizedBody586_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_148 optimizedBody586_187

def optimizedBody586_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_139 optimizedBody586_188

def optimizedBody586_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_138 optimizedBody586_189

def optimizedBody586_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_137 optimizedBody586_190

def optimizedBody586_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_147 optimizedBody586_191

def optimizedBody586_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_129 optimizedBody586_192

def optimizedBody586_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_128 optimizedBody586_193

def optimizedBody586_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_127 optimizedBody586_194

def optimizedBody586_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_195

def optimizedBody586_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_146 optimizedBody586_196

def optimizedBody586_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_2 optimizedBody586_197

def optimizedBody586_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_145 optimizedBody586_198

def optimizedBody586_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_199

def optimizedBody586_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_144 optimizedBody586_200

def optimizedBody586_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_142 optimizedBody586_201

def optimizedBody586_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_141 optimizedBody586_202

def optimizedBody586_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_140 optimizedBody586_203

def optimizedBody586_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_139 optimizedBody586_204

def optimizedBody586_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_138 optimizedBody586_205

def optimizedBody586_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_137 optimizedBody586_206

def optimizedBody586_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_136 optimizedBody586_207

def optimizedBody586_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_129 optimizedBody586_208

def optimizedBody586_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_128 optimizedBody586_209

def optimizedBody586_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_127 optimizedBody586_210

def optimizedBody586_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_211

def optimizedBody586_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_135 optimizedBody586_212

def optimizedBody586_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_2 optimizedBody586_213

def optimizedBody586_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_85 optimizedBody586_214

def optimizedBody586_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_133 optimizedBody586_215

def optimizedBody586_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_132 optimizedBody586_216

def optimizedBody586_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_131 optimizedBody586_217

def optimizedBody586_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_130 optimizedBody586_218

def optimizedBody586_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_129 optimizedBody586_219

def optimizedBody586_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_128 optimizedBody586_220

def optimizedBody586_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_127 optimizedBody586_221

def optimizedBody586_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_222

def optimizedBody586_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_126 optimizedBody586_223

def optimizedBody586_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_94 optimizedBody586_224

def optimizedBody586_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_225

def optimizedBody586_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_93 optimizedBody586_226

def optimizedBody586_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_92 optimizedBody586_227

def optimizedBody586_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_91 optimizedBody586_228

def optimizedBody586_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_90 optimizedBody586_229

def optimizedBody586_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_76 optimizedBody586_230

def optimizedBody586_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_75 optimizedBody586_231

def optimizedBody586_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_74 optimizedBody586_232

def optimizedBody586_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_233

def optimizedBody586_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_89 optimizedBody586_234

def optimizedBody586_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_66 optimizedBody586_235

def optimizedBody586_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_85 optimizedBody586_236

def optimizedBody586_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_237

def optimizedBody586_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_84 optimizedBody586_238

def optimizedBody586_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_83 optimizedBody586_239

def optimizedBody586_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_82 optimizedBody586_240

def optimizedBody586_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_81 optimizedBody586_241

def optimizedBody586_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_80 optimizedBody586_242

def optimizedBody586_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_79 optimizedBody586_243

def optimizedBody586_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_78 optimizedBody586_244

def optimizedBody586_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_77 optimizedBody586_245

def optimizedBody586_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_76 optimizedBody586_246

def optimizedBody586_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_75 optimizedBody586_247

def optimizedBody586_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_74 optimizedBody586_248

def optimizedBody586_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_249

def optimizedBody586_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_73 optimizedBody586_250

def optimizedBody586_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_66 optimizedBody586_251

def optimizedBody586_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_69 optimizedBody586_252

def optimizedBody586_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_253

def optimizedBody586_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_68 optimizedBody586_254

def optimizedBody586_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_64 optimizedBody586_255

def optimizedBody586_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_256

def optimizedBody586_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_63 optimizedBody586_257

def optimizedBody586_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_62 optimizedBody586_258

def optimizedBody586_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_259

def optimizedBody586_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_260

def optimizedBody586_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_61 optimizedBody586_261

def optimizedBody586_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_60 optimizedBody586_262

def optimizedBody586_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_263

def optimizedBody586_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_264

def optimizedBody586_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_59 optimizedBody586_265

def optimizedBody586_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_58 optimizedBody586_266

def optimizedBody586_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_267

def optimizedBody586_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_268

def optimizedBody586_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_57 optimizedBody586_269

def optimizedBody586_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_56 optimizedBody586_270

def optimizedBody586_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_271

def optimizedBody586_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_272

def optimizedBody586_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_55 optimizedBody586_273

def optimizedBody586_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_54 optimizedBody586_274

def optimizedBody586_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_275

def optimizedBody586_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_276

def optimizedBody586_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_22 optimizedBody586_277

def optimizedBody586_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_53 optimizedBody586_278

def optimizedBody586_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_279

def optimizedBody586_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_280

def optimizedBody586_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_52 optimizedBody586_281

def optimizedBody586_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_51 optimizedBody586_282

def optimizedBody586_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_283

def optimizedBody586_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_284

def optimizedBody586_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_50 optimizedBody586_285

def optimizedBody586_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_49 optimizedBody586_286

def optimizedBody586_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_287

def optimizedBody586_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_288

def optimizedBody586_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_40 optimizedBody586_289

def optimizedBody586_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_48 optimizedBody586_290

def optimizedBody586_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_291

def optimizedBody586_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_292

def optimizedBody586_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_24 optimizedBody586_293

def optimizedBody586_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_47 optimizedBody586_294

def optimizedBody586_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_295

def optimizedBody586_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_296

def optimizedBody586_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_24 optimizedBody586_297

def optimizedBody586_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_46 optimizedBody586_298

def optimizedBody586_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_299

def optimizedBody586_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_300

def optimizedBody586_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_28 optimizedBody586_301

def optimizedBody586_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_45 optimizedBody586_302

def optimizedBody586_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_303

def optimizedBody586_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_304

def optimizedBody586_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_17 optimizedBody586_305

def optimizedBody586_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_44 optimizedBody586_306

def optimizedBody586_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_307

def optimizedBody586_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_308

def optimizedBody586_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_33 optimizedBody586_309

def optimizedBody586_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_43 optimizedBody586_310

def optimizedBody586_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_311

def optimizedBody586_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_312

def optimizedBody586_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_33 optimizedBody586_313

def optimizedBody586_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_42 optimizedBody586_314

def optimizedBody586_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_315

def optimizedBody586_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_316

def optimizedBody586_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_20 optimizedBody586_317

def optimizedBody586_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_41 optimizedBody586_318

def optimizedBody586_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_319

def optimizedBody586_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_320

def optimizedBody586_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_40 optimizedBody586_321

def optimizedBody586_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_39 optimizedBody586_322

def optimizedBody586_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_323

def optimizedBody586_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_324

def optimizedBody586_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_24 optimizedBody586_325

def optimizedBody586_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_38 optimizedBody586_326

def optimizedBody586_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_327

def optimizedBody586_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_328

def optimizedBody586_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_24 optimizedBody586_329

def optimizedBody586_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_37 optimizedBody586_330

def optimizedBody586_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_331

def optimizedBody586_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_332

def optimizedBody586_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_28 optimizedBody586_333

def optimizedBody586_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_36 optimizedBody586_334

def optimizedBody586_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_335

def optimizedBody586_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_336

def optimizedBody586_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_17 optimizedBody586_337

def optimizedBody586_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_35 optimizedBody586_338

def optimizedBody586_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_339

def optimizedBody586_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_340

def optimizedBody586_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_33 optimizedBody586_341

def optimizedBody586_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_34 optimizedBody586_342

def optimizedBody586_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_343

def optimizedBody586_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_344

def optimizedBody586_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_33 optimizedBody586_345

def optimizedBody586_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_32 optimizedBody586_346

def optimizedBody586_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_347

def optimizedBody586_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_348

def optimizedBody586_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_20 optimizedBody586_349

def optimizedBody586_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_31 optimizedBody586_350

def optimizedBody586_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_351

def optimizedBody586_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_352

def optimizedBody586_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_7 optimizedBody586_353

def optimizedBody586_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_30 optimizedBody586_354

def optimizedBody586_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_355

def optimizedBody586_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_356

def optimizedBody586_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_17 optimizedBody586_357

def optimizedBody586_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_29 optimizedBody586_358

def optimizedBody586_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_359

def optimizedBody586_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_360

def optimizedBody586_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_28 optimizedBody586_361

def optimizedBody586_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_27 optimizedBody586_362

def optimizedBody586_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_363

def optimizedBody586_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_364

def optimizedBody586_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_26 optimizedBody586_365

def optimizedBody586_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_25 optimizedBody586_366

def optimizedBody586_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_367

def optimizedBody586_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_368

def optimizedBody586_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_24 optimizedBody586_369

def optimizedBody586_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_23 optimizedBody586_370

def optimizedBody586_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_371

def optimizedBody586_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_372

def optimizedBody586_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_22 optimizedBody586_373

def optimizedBody586_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_21 optimizedBody586_374

def optimizedBody586_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_375

def optimizedBody586_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_376

def optimizedBody586_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_20 optimizedBody586_377

def optimizedBody586_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_19 optimizedBody586_378

def optimizedBody586_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_379

def optimizedBody586_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_18 optimizedBody586_380

def optimizedBody586_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_17 optimizedBody586_381

def optimizedBody586_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_16 optimizedBody586_382

def optimizedBody586_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_383

def optimizedBody586_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_15 optimizedBody586_384

def optimizedBody586_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_14 optimizedBody586_385

def optimizedBody586_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_13 optimizedBody586_386

def optimizedBody586_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_387

def optimizedBody586_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_12 optimizedBody586_388

def optimizedBody586_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_8 optimizedBody586_389

def optimizedBody586_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_7 optimizedBody586_390

def optimizedBody586_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_391

def optimizedBody586_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_5 optimizedBody586_392

def optimizedBody586_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_0 optimizedBody586_393

def oracle586 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.ls 1)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 22))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 1
                  (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1))) 3
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))
                3
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 Flapjack.Spt.ln)))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 2)) 3
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))
                2 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))) 3
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 24)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1)))
                3 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.ls 24))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 22))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 2)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 23))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            22
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                23
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                22 Flapjack.Spt.ln)))))))
def optimized586 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(586, 1, optimizedBody586_394)
end InitECandidate.Proofs.SmallStages.Oracles586
