import InitECandidate.Proofs.WordStages.Optimize568
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source584
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody584_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody584_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody584_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody584_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody584_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_2 optimizedBody584_3

def optimizedBody584_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_1, 584, 2)) (some 69) ([]) (some (2, optimizedBody584_4, 584, 3))

def optimizedBody584_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody584_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 40#64)

def optimizedBody584_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0)]

def optimizedBody584_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46)]

def optimizedBody584_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody584_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_10 optimizedBody584_3

def optimizedBody584_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_9, 584, 4)) (some 68) ([2]) (some (2, optimizedBody584_11, 584, 5))

def optimizedBody584_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody584_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 84#64)

def optimizedBody584_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody584_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody584_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 114#64)

def optimizedBody584_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody584_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody584_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 97#64)

def optimizedBody584_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody584_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 110#64)

def optimizedBody584_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody584_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 115#64)

def optimizedBody584_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody584_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 102#64)

def optimizedBody584_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody584_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 101#64)

def optimizedBody584_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody584_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody584_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody584_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 10#64)))

def optimizedBody584_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 100#64)

def optimizedBody584_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 11#64)))

def optimizedBody584_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody584_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 13#64)))

def optimizedBody584_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 14#64)))

def optimizedBody584_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody584_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody584_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 44#64)

def optimizedBody584_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 17#64)))

def optimizedBody584_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 18#64)))

def optimizedBody584_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 19#64)))

def optimizedBody584_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 20#64)))

def optimizedBody584_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 21#64)))

def optimizedBody584_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 22#64)))

def optimizedBody584_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 23#64)))

def optimizedBody584_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody584_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 25#64)))

def optimizedBody584_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 117#64)

def optimizedBody584_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 26#64)))

def optimizedBody584_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 105#64)

def optimizedBody584_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 27#64)))

def optimizedBody584_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 28#64)))

def optimizedBody584_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 116#64)

def optimizedBody584_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 29#64)))

def optimizedBody584_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 50#64)

def optimizedBody584_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 30#64)))

def optimizedBody584_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 53#64)

def optimizedBody584_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 31#64)))

def optimizedBody584_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 54#64)

def optimizedBody584_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody584_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 41#64)

def optimizedBody584_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 44), (46, 0), (48, 4)]

def optimizedBody584_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48)]

def optimizedBody584_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody584_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_66 optimizedBody584_3

def optimizedBody584_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_65, 584, 6)) (some 70) ([2]) (some (2, optimizedBody584_67, 584, 7))

def optimizedBody584_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody584_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (48, 48)]

def optimizedBody584_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48)]

def optimizedBody584_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_71 optimizedBody584_3

def optimizedBody584_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_70, 584, 8)) (some 68) ([2]) (some (2, optimizedBody584_72, 584, 9))

def optimizedBody584_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody584_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody584_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody584_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 18446744073709551320#64)))

def optimizedBody584_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody584_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody584_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody584_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551320#64))

def optimizedBody584_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 33#64)

def optimizedBody584_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48)]

def optimizedBody584_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_65, 584, 10)) (some 158) ([2, 4, 6]) (some (2, optimizedBody584_67, 584, 11))

def optimizedBody584_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody584_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody584_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody584_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_87 optimizedBody584_3

def optimizedBody584_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_86, 584, 12)) (some 68) ([2]) (some (2, optimizedBody584_88, 584, 13))

def optimizedBody584_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551312#64)))

def optimizedBody584_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody584_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody584_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody584_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (2, 2), (4, 4), (0, 0)]

def optimizedBody584_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody584_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody584_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 6 Flapjack.WordStore.heapLength

def optimizedBody584_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody584_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6 6

def optimizedBody584_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 18446744073709551312#64))

def optimizedBody584_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody584_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 255#64)

def optimizedBody584_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody584_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody584_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody584_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody584_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_105 optimizedBody584_106

def optimizedBody584_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_104 optimizedBody584_107

def optimizedBody584_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_95 optimizedBody584_108

def optimizedBody584_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_103 optimizedBody584_109

def optimizedBody584_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_102 optimizedBody584_110

def optimizedBody584_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_101 optimizedBody584_111

def optimizedBody584_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_100 optimizedBody584_112

def optimizedBody584_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_99 optimizedBody584_113

def optimizedBody584_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_98 optimizedBody584_114

def optimizedBody584_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_97 optimizedBody584_115

def optimizedBody584_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_95 optimizedBody584_116

def optimizedBody584_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_117

def optimizedBody584_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody584_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_119

def optimizedBody584_121 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 6) optimizedBody584_118 optimizedBody584_120

def optimizedBody584_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_105

def optimizedBody584_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_121 optimizedBody584_122

def optimizedBody584_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_96 optimizedBody584_123

def optimizedBody584_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_95 optimizedBody584_124

def optimizedBody584_126 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody584_125 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody584_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody584_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody584_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody584_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551312#64))

def optimizedBody584_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 19#64)))

def optimizedBody584_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 254#64)

def optimizedBody584_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody584_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody584_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_134, 584, 14)) (some 68) ([2]) (some (2, optimizedBody584_4, 584, 15))

def optimizedBody584_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551304#64)))

def optimizedBody584_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody584_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody584_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody584_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551304#64))

def optimizedBody584_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 24#64)

def optimizedBody584_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody584_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody584_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_143, 584, 16)) (some 78) ([2, 4]) (some (2, optimizedBody584_4, 584, 17))

def optimizedBody584_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody584_146 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_134, 584, 18)) (some 68) ([2]) (some (2, optimizedBody584_4, 584, 19))

def optimizedBody584_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551352#64)))

def optimizedBody584_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551352#64))

def optimizedBody584_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8#64)

def optimizedBody584_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_143, 584, 20)) (some 78) ([2, 4]) (some (2, optimizedBody584_4, 584, 21))

def optimizedBody584_151 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_1, 584, 22)) (some 68) ([2]) (some (2, optimizedBody584_4, 584, 23))

def optimizedBody584_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551336#64)))

def optimizedBody584_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody584_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody584_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody584_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody584_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody584_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_157 optimizedBody584_3

def optimizedBody584_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody584_156, 584, 24)) (some 68) ([2]) (some (2, optimizedBody584_158, 584, 25))

def optimizedBody584_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551344#64)))

def optimizedBody584_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody584_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_95 optimizedBody584_161

def optimizedBody584_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_93 optimizedBody584_162

def optimizedBody584_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_154 optimizedBody584_163

def optimizedBody584_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_153 optimizedBody584_164

def optimizedBody584_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_160 optimizedBody584_165

def optimizedBody584_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_76 optimizedBody584_166

def optimizedBody584_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_75 optimizedBody584_167

def optimizedBody584_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_74 optimizedBody584_168

def optimizedBody584_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_169

def optimizedBody584_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_159 optimizedBody584_170

def optimizedBody584_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_2 optimizedBody584_171

def optimizedBody584_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_155 optimizedBody584_172

def optimizedBody584_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_154 optimizedBody584_173

def optimizedBody584_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_153 optimizedBody584_174

def optimizedBody584_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_152 optimizedBody584_175

def optimizedBody584_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_76 optimizedBody584_176

def optimizedBody584_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_75 optimizedBody584_177

def optimizedBody584_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_74 optimizedBody584_178

def optimizedBody584_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_179

def optimizedBody584_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_151 optimizedBody584_180

def optimizedBody584_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_2 optimizedBody584_181

def optimizedBody584_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_69 optimizedBody584_182

def optimizedBody584_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_183

def optimizedBody584_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_150 optimizedBody584_184

def optimizedBody584_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_142 optimizedBody584_185

def optimizedBody584_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_149 optimizedBody584_186

def optimizedBody584_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_148 optimizedBody584_187

def optimizedBody584_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_139 optimizedBody584_188

def optimizedBody584_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_138 optimizedBody584_189

def optimizedBody584_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_137 optimizedBody584_190

def optimizedBody584_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_147 optimizedBody584_191

def optimizedBody584_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_129 optimizedBody584_192

def optimizedBody584_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_128 optimizedBody584_193

def optimizedBody584_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_127 optimizedBody584_194

def optimizedBody584_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_195

def optimizedBody584_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_146 optimizedBody584_196

def optimizedBody584_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_2 optimizedBody584_197

def optimizedBody584_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_145 optimizedBody584_198

def optimizedBody584_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_199

def optimizedBody584_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_144 optimizedBody584_200

def optimizedBody584_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_142 optimizedBody584_201

def optimizedBody584_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_141 optimizedBody584_202

def optimizedBody584_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_140 optimizedBody584_203

def optimizedBody584_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_139 optimizedBody584_204

def optimizedBody584_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_138 optimizedBody584_205

def optimizedBody584_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_137 optimizedBody584_206

def optimizedBody584_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_136 optimizedBody584_207

def optimizedBody584_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_129 optimizedBody584_208

def optimizedBody584_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_128 optimizedBody584_209

def optimizedBody584_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_127 optimizedBody584_210

def optimizedBody584_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_211

def optimizedBody584_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_135 optimizedBody584_212

def optimizedBody584_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_2 optimizedBody584_213

def optimizedBody584_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_85 optimizedBody584_214

def optimizedBody584_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_133 optimizedBody584_215

def optimizedBody584_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_132 optimizedBody584_216

def optimizedBody584_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_131 optimizedBody584_217

def optimizedBody584_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_130 optimizedBody584_218

def optimizedBody584_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_129 optimizedBody584_219

def optimizedBody584_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_128 optimizedBody584_220

def optimizedBody584_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_127 optimizedBody584_221

def optimizedBody584_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_222

def optimizedBody584_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_126 optimizedBody584_223

def optimizedBody584_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_94 optimizedBody584_224

def optimizedBody584_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_225

def optimizedBody584_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_93 optimizedBody584_226

def optimizedBody584_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_92 optimizedBody584_227

def optimizedBody584_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_91 optimizedBody584_228

def optimizedBody584_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_90 optimizedBody584_229

def optimizedBody584_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_76 optimizedBody584_230

def optimizedBody584_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_75 optimizedBody584_231

def optimizedBody584_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_74 optimizedBody584_232

def optimizedBody584_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_233

def optimizedBody584_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_89 optimizedBody584_234

def optimizedBody584_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_66 optimizedBody584_235

def optimizedBody584_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_85 optimizedBody584_236

def optimizedBody584_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_237

def optimizedBody584_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_84 optimizedBody584_238

def optimizedBody584_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_83 optimizedBody584_239

def optimizedBody584_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_82 optimizedBody584_240

def optimizedBody584_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_81 optimizedBody584_241

def optimizedBody584_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_80 optimizedBody584_242

def optimizedBody584_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_79 optimizedBody584_243

def optimizedBody584_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_78 optimizedBody584_244

def optimizedBody584_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_77 optimizedBody584_245

def optimizedBody584_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_76 optimizedBody584_246

def optimizedBody584_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_75 optimizedBody584_247

def optimizedBody584_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_74 optimizedBody584_248

def optimizedBody584_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_249

def optimizedBody584_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_73 optimizedBody584_250

def optimizedBody584_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_66 optimizedBody584_251

def optimizedBody584_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_69 optimizedBody584_252

def optimizedBody584_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_253

def optimizedBody584_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_68 optimizedBody584_254

def optimizedBody584_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_64 optimizedBody584_255

def optimizedBody584_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_256

def optimizedBody584_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_63 optimizedBody584_257

def optimizedBody584_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_62 optimizedBody584_258

def optimizedBody584_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_259

def optimizedBody584_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_260

def optimizedBody584_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_61 optimizedBody584_261

def optimizedBody584_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_60 optimizedBody584_262

def optimizedBody584_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_263

def optimizedBody584_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_264

def optimizedBody584_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_59 optimizedBody584_265

def optimizedBody584_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_58 optimizedBody584_266

def optimizedBody584_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_267

def optimizedBody584_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_268

def optimizedBody584_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_57 optimizedBody584_269

def optimizedBody584_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_56 optimizedBody584_270

def optimizedBody584_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_271

def optimizedBody584_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_272

def optimizedBody584_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_55 optimizedBody584_273

def optimizedBody584_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_54 optimizedBody584_274

def optimizedBody584_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_275

def optimizedBody584_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_276

def optimizedBody584_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_22 optimizedBody584_277

def optimizedBody584_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_53 optimizedBody584_278

def optimizedBody584_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_279

def optimizedBody584_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_280

def optimizedBody584_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_52 optimizedBody584_281

def optimizedBody584_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_51 optimizedBody584_282

def optimizedBody584_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_283

def optimizedBody584_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_284

def optimizedBody584_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_50 optimizedBody584_285

def optimizedBody584_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_49 optimizedBody584_286

def optimizedBody584_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_287

def optimizedBody584_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_288

def optimizedBody584_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_40 optimizedBody584_289

def optimizedBody584_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_48 optimizedBody584_290

def optimizedBody584_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_291

def optimizedBody584_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_292

def optimizedBody584_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_24 optimizedBody584_293

def optimizedBody584_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_47 optimizedBody584_294

def optimizedBody584_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_295

def optimizedBody584_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_296

def optimizedBody584_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_24 optimizedBody584_297

def optimizedBody584_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_46 optimizedBody584_298

def optimizedBody584_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_299

def optimizedBody584_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_300

def optimizedBody584_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_28 optimizedBody584_301

def optimizedBody584_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_45 optimizedBody584_302

def optimizedBody584_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_303

def optimizedBody584_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_304

def optimizedBody584_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_17 optimizedBody584_305

def optimizedBody584_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_44 optimizedBody584_306

def optimizedBody584_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_307

def optimizedBody584_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_308

def optimizedBody584_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_33 optimizedBody584_309

def optimizedBody584_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_43 optimizedBody584_310

def optimizedBody584_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_311

def optimizedBody584_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_312

def optimizedBody584_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_33 optimizedBody584_313

def optimizedBody584_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_42 optimizedBody584_314

def optimizedBody584_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_315

def optimizedBody584_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_316

def optimizedBody584_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_20 optimizedBody584_317

def optimizedBody584_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_41 optimizedBody584_318

def optimizedBody584_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_319

def optimizedBody584_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_320

def optimizedBody584_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_40 optimizedBody584_321

def optimizedBody584_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_39 optimizedBody584_322

def optimizedBody584_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_323

def optimizedBody584_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_324

def optimizedBody584_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_24 optimizedBody584_325

def optimizedBody584_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_38 optimizedBody584_326

def optimizedBody584_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_327

def optimizedBody584_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_328

def optimizedBody584_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_24 optimizedBody584_329

def optimizedBody584_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_37 optimizedBody584_330

def optimizedBody584_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_331

def optimizedBody584_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_332

def optimizedBody584_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_28 optimizedBody584_333

def optimizedBody584_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_36 optimizedBody584_334

def optimizedBody584_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_335

def optimizedBody584_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_336

def optimizedBody584_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_17 optimizedBody584_337

def optimizedBody584_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_35 optimizedBody584_338

def optimizedBody584_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_339

def optimizedBody584_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_340

def optimizedBody584_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_33 optimizedBody584_341

def optimizedBody584_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_34 optimizedBody584_342

def optimizedBody584_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_343

def optimizedBody584_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_344

def optimizedBody584_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_33 optimizedBody584_345

def optimizedBody584_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_32 optimizedBody584_346

def optimizedBody584_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_347

def optimizedBody584_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_348

def optimizedBody584_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_20 optimizedBody584_349

def optimizedBody584_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_31 optimizedBody584_350

def optimizedBody584_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_351

def optimizedBody584_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_352

def optimizedBody584_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_7 optimizedBody584_353

def optimizedBody584_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_30 optimizedBody584_354

def optimizedBody584_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_355

def optimizedBody584_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_356

def optimizedBody584_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_17 optimizedBody584_357

def optimizedBody584_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_29 optimizedBody584_358

def optimizedBody584_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_359

def optimizedBody584_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_360

def optimizedBody584_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_28 optimizedBody584_361

def optimizedBody584_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_27 optimizedBody584_362

def optimizedBody584_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_363

def optimizedBody584_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_364

def optimizedBody584_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_26 optimizedBody584_365

def optimizedBody584_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_25 optimizedBody584_366

def optimizedBody584_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_367

def optimizedBody584_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_368

def optimizedBody584_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_24 optimizedBody584_369

def optimizedBody584_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_23 optimizedBody584_370

def optimizedBody584_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_371

def optimizedBody584_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_372

def optimizedBody584_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_22 optimizedBody584_373

def optimizedBody584_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_21 optimizedBody584_374

def optimizedBody584_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_375

def optimizedBody584_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_376

def optimizedBody584_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_20 optimizedBody584_377

def optimizedBody584_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_19 optimizedBody584_378

def optimizedBody584_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_379

def optimizedBody584_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_18 optimizedBody584_380

def optimizedBody584_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_17 optimizedBody584_381

def optimizedBody584_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_16 optimizedBody584_382

def optimizedBody584_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_383

def optimizedBody584_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_15 optimizedBody584_384

def optimizedBody584_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_14 optimizedBody584_385

def optimizedBody584_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_13 optimizedBody584_386

def optimizedBody584_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_387

def optimizedBody584_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_12 optimizedBody584_388

def optimizedBody584_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_8 optimizedBody584_389

def optimizedBody584_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_7 optimizedBody584_390

def optimizedBody584_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_6 optimizedBody584_391

def optimizedBody584_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_5 optimizedBody584_392

def optimizedBody584_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody584_0 optimizedBody584_393

def oracle584 : Option (Spt Nat) :=
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
def optimized584 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(584, 1, optimizedBody584_394)
theorem optimize584_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source584, oracle584) = optimized584 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize584_eq
end InitECandidate.Proofs.WordStages
