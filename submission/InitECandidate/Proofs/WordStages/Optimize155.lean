import InitECandidate.Proofs.WordStages.Optimize139
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source155
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody155_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody155_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 192#64)

def optimizedBody155_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody155_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody155_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody155_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody155_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_4 optimizedBody155_5

def optimizedBody155_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody155_3, 155, 2)) (some 68) ([2]) (some (2, optimizedBody155_6, 155, 3))

def optimizedBody155_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody155_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody155_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody155_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody155_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551552#64)))

def optimizedBody155_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody155_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody155_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 200#64)

def optimizedBody155_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody155_3, 155, 4)) (some 68) ([2]) (some (2, optimizedBody155_6, 155, 5))

def optimizedBody155_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551544#64)))

def optimizedBody155_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 136#64)

def optimizedBody155_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 44)]

def optimizedBody155_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody155_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_20 optimizedBody155_5

def optimizedBody155_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody155_19, 155, 6)) (some 68) ([2]) (some (2, optimizedBody155_21, 155, 7))

def optimizedBody155_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody155_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody155_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody155_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551536#64)))

def optimizedBody155_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody155_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody155_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551552#64))

def optimizedBody155_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody155_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody155_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody155_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32898#64)

def optimizedBody155_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody155_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9223372036854808714#64)

def optimizedBody155_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody155_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9223372039002292224#64)

def optimizedBody155_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody155_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32907#64)

def optimizedBody155_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody155_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2147483649#64)

def optimizedBody155_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody155_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9223372039002292353#64)

def optimizedBody155_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody155_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9223372036854808585#64)

def optimizedBody155_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody155_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 138#64)

def optimizedBody155_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody155_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 136#64)

def optimizedBody155_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody155_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2147516425#64)

def optimizedBody155_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody155_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2147483658#64)

def optimizedBody155_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody155_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2147516555#64)

def optimizedBody155_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody155_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9223372036854775947#64)

def optimizedBody155_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 112#64)))

def optimizedBody155_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9223372036854808713#64)

def optimizedBody155_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody155_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9223372036854808579#64)

def optimizedBody155_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody155_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9223372036854808578#64)

def optimizedBody155_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 136#64)))

def optimizedBody155_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9223372036854775936#64)

def optimizedBody155_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody155_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32778#64)

def optimizedBody155_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 152#64)))

def optimizedBody155_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9223372039002259466#64)

def optimizedBody155_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody155_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody155_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9223372036854808704#64)

def optimizedBody155_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 176#64)))

def optimizedBody155_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551552#64))

def optimizedBody155_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 184#64)))

def optimizedBody155_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 9223372039002292232#64)

def optimizedBody155_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody155_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody155_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody155_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody155_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_80

def optimizedBody155_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_79 optimizedBody155_81

def optimizedBody155_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_78 optimizedBody155_82

def optimizedBody155_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_77 optimizedBody155_83

def optimizedBody155_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_76 optimizedBody155_84

def optimizedBody155_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_75 optimizedBody155_85

def optimizedBody155_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_74 optimizedBody155_86

def optimizedBody155_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_87

def optimizedBody155_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_88

def optimizedBody155_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_89

def optimizedBody155_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_41 optimizedBody155_90

def optimizedBody155_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_73 optimizedBody155_91

def optimizedBody155_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_92

def optimizedBody155_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_93

def optimizedBody155_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_94

def optimizedBody155_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_95

def optimizedBody155_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_72 optimizedBody155_96

def optimizedBody155_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_71 optimizedBody155_97

def optimizedBody155_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_98

def optimizedBody155_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_99

def optimizedBody155_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_100

def optimizedBody155_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_101

def optimizedBody155_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_43 optimizedBody155_102

def optimizedBody155_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_70 optimizedBody155_103

def optimizedBody155_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_104

def optimizedBody155_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_105

def optimizedBody155_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_106

def optimizedBody155_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_107

def optimizedBody155_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_69 optimizedBody155_108

def optimizedBody155_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_68 optimizedBody155_109

def optimizedBody155_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_110

def optimizedBody155_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_111

def optimizedBody155_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_112

def optimizedBody155_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_113

def optimizedBody155_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_67 optimizedBody155_114

def optimizedBody155_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_66 optimizedBody155_115

def optimizedBody155_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_116

def optimizedBody155_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_117

def optimizedBody155_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_118

def optimizedBody155_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_119

def optimizedBody155_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_65 optimizedBody155_120

def optimizedBody155_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_64 optimizedBody155_121

def optimizedBody155_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_122

def optimizedBody155_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_123

def optimizedBody155_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_124

def optimizedBody155_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_125

def optimizedBody155_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_63 optimizedBody155_126

def optimizedBody155_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_62 optimizedBody155_127

def optimizedBody155_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_128

def optimizedBody155_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_129

def optimizedBody155_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_130

def optimizedBody155_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_131

def optimizedBody155_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_61 optimizedBody155_132

def optimizedBody155_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_60 optimizedBody155_133

def optimizedBody155_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_134

def optimizedBody155_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_135

def optimizedBody155_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_136

def optimizedBody155_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_137

def optimizedBody155_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_59 optimizedBody155_138

def optimizedBody155_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_58 optimizedBody155_139

def optimizedBody155_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_140

def optimizedBody155_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_141

def optimizedBody155_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_142

def optimizedBody155_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_143

def optimizedBody155_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_57 optimizedBody155_144

def optimizedBody155_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_56 optimizedBody155_145

def optimizedBody155_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_146

def optimizedBody155_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_147

def optimizedBody155_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_148

def optimizedBody155_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_149

def optimizedBody155_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_55 optimizedBody155_150

def optimizedBody155_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_54 optimizedBody155_151

def optimizedBody155_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_152

def optimizedBody155_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_153

def optimizedBody155_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_154

def optimizedBody155_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_155

def optimizedBody155_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_53 optimizedBody155_156

def optimizedBody155_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_52 optimizedBody155_157

def optimizedBody155_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_158

def optimizedBody155_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_159

def optimizedBody155_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_160

def optimizedBody155_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_161

def optimizedBody155_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_51 optimizedBody155_162

def optimizedBody155_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_50 optimizedBody155_163

def optimizedBody155_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_164

def optimizedBody155_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_165

def optimizedBody155_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_166

def optimizedBody155_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_167

def optimizedBody155_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_49 optimizedBody155_168

def optimizedBody155_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_48 optimizedBody155_169

def optimizedBody155_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_170

def optimizedBody155_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_171

def optimizedBody155_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_172

def optimizedBody155_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_173

def optimizedBody155_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_47 optimizedBody155_174

def optimizedBody155_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_46 optimizedBody155_175

def optimizedBody155_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_176

def optimizedBody155_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_177

def optimizedBody155_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_178

def optimizedBody155_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_179

def optimizedBody155_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_45 optimizedBody155_180

def optimizedBody155_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_44 optimizedBody155_181

def optimizedBody155_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_182

def optimizedBody155_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_183

def optimizedBody155_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_184

def optimizedBody155_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_185

def optimizedBody155_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_43 optimizedBody155_186

def optimizedBody155_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_42 optimizedBody155_187

def optimizedBody155_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_188

def optimizedBody155_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_189

def optimizedBody155_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_190

def optimizedBody155_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_191

def optimizedBody155_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_41 optimizedBody155_192

def optimizedBody155_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_40 optimizedBody155_193

def optimizedBody155_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_194

def optimizedBody155_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_195

def optimizedBody155_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_196

def optimizedBody155_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_197

def optimizedBody155_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_39 optimizedBody155_198

def optimizedBody155_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_38 optimizedBody155_199

def optimizedBody155_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_200

def optimizedBody155_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_201

def optimizedBody155_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_202

def optimizedBody155_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_203

def optimizedBody155_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_37 optimizedBody155_204

def optimizedBody155_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_36 optimizedBody155_205

def optimizedBody155_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_206

def optimizedBody155_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_207

def optimizedBody155_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_208

def optimizedBody155_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_209

def optimizedBody155_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_35 optimizedBody155_210

def optimizedBody155_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_34 optimizedBody155_211

def optimizedBody155_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_212

def optimizedBody155_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_213

def optimizedBody155_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_214

def optimizedBody155_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_215

def optimizedBody155_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_33 optimizedBody155_216

def optimizedBody155_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_32 optimizedBody155_217

def optimizedBody155_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_218

def optimizedBody155_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_219

def optimizedBody155_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_220

def optimizedBody155_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_31 optimizedBody155_221

def optimizedBody155_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_30 optimizedBody155_222

def optimizedBody155_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_29 optimizedBody155_223

def optimizedBody155_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_224

def optimizedBody155_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_28 optimizedBody155_225

def optimizedBody155_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_27 optimizedBody155_226

def optimizedBody155_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_26 optimizedBody155_227

def optimizedBody155_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_25 optimizedBody155_228

def optimizedBody155_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_24 optimizedBody155_229

def optimizedBody155_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_23 optimizedBody155_230

def optimizedBody155_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_8 optimizedBody155_231

def optimizedBody155_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_22 optimizedBody155_232

def optimizedBody155_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_4 optimizedBody155_233

def optimizedBody155_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_18 optimizedBody155_234

def optimizedBody155_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_14 optimizedBody155_235

def optimizedBody155_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_13 optimizedBody155_236

def optimizedBody155_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_17 optimizedBody155_237

def optimizedBody155_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_11 optimizedBody155_238

def optimizedBody155_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_10 optimizedBody155_239

def optimizedBody155_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_9 optimizedBody155_240

def optimizedBody155_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_8 optimizedBody155_241

def optimizedBody155_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_16 optimizedBody155_242

def optimizedBody155_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_4 optimizedBody155_243

def optimizedBody155_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_15 optimizedBody155_244

def optimizedBody155_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_14 optimizedBody155_245

def optimizedBody155_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_13 optimizedBody155_246

def optimizedBody155_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_12 optimizedBody155_247

def optimizedBody155_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_11 optimizedBody155_248

def optimizedBody155_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_10 optimizedBody155_249

def optimizedBody155_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_9 optimizedBody155_250

def optimizedBody155_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_8 optimizedBody155_251

def optimizedBody155_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_7 optimizedBody155_252

def optimizedBody155_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_2 optimizedBody155_253

def optimizedBody155_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_1 optimizedBody155_254

def optimizedBody155_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody155_0 optimizedBody155_255

def oracle155 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 0
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 1 Flapjack.Spt.ln)
                1 (Flapjack.Spt.ls 1))))
          0
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)))))
            1
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 3)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)) 22
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))
            22 Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)))
def optimized155 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(155, 1, optimizedBody155_256)
theorem optimize155_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source155, oracle155) = optimized155 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize155_eq
end InitECandidate.Proofs.WordStages
