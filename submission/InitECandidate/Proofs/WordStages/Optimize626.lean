import InitECandidate.Proofs.WordStages.Optimize610
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source626
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody626_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody626_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody626_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody626_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody626_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551296#64))

def optimizedBody626_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody626_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody626_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody626_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody626_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody626_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_9

def optimizedBody626_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_7 optimizedBody626_10

def optimizedBody626_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_6 optimizedBody626_11

def optimizedBody626_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody626_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody626_12 optimizedBody626_13

def optimizedBody626_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 160#64)

def optimizedBody626_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody626_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody626_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody626_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody626_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_18 optimizedBody626_19

def optimizedBody626_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody626_17, 626, 2)) (some 68) ([2]) (some (2, optimizedBody626_20, 626, 3))

def optimizedBody626_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551296#64)))

def optimizedBody626_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody626_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody626_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody626_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody626_17, 626, 4)) (some 68) ([2]) (some (2, optimizedBody626_20, 626, 5))

def optimizedBody626_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551288#64)))

def optimizedBody626_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 40#64)

def optimizedBody626_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody626_17, 626, 6)) (some 68) ([2]) (some (2, optimizedBody626_20, 626, 7))

def optimizedBody626_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551280#64)))

def optimizedBody626_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 44)]

def optimizedBody626_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody626_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_32 optimizedBody626_19

def optimizedBody626_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody626_31, 626, 8)) (some 68) ([2]) (some (2, optimizedBody626_33, 626, 9))

def optimizedBody626_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody626_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody626_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody626_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551272#64)))

def optimizedBody626_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody626_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody626_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551296#64))

def optimizedBody626_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18364758544493064720#64)

def optimizedBody626_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody626_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10079716825146989895#64)

def optimizedBody626_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody626_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14248650839231647395#64)

def optimizedBody626_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody626_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2764919063900629905#64)

def optimizedBody626_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody626_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16099105460569216260#64)

def optimizedBody626_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody626_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14096706008221550565#64)

def optimizedBody626_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody626_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2419779895833949110#64)

def optimizedBody626_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody626_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15279073663851639135#64)

def optimizedBody626_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody626_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16895767220870911080#64)

def optimizedBody626_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody626_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13344426445381913340#64)

def optimizedBody626_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody626_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9905384649541406699#64)

def optimizedBody626_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody626_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14806603881112131687#64)

def optimizedBody626_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody626_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6324581712619534043#64)

def optimizedBody626_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody626_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14224731476766686923#64)

def optimizedBody626_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 112#64)))

def optimizedBody626_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7317203453406000633#64)

def optimizedBody626_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody626_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7849414023404435864#64)

def optimizedBody626_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody626_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13688264971095146457#64)

def optimizedBody626_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 136#64)))

def optimizedBody626_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6331469388073975673#64)

def optimizedBody626_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody626_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10330303817214507103#64)

def optimizedBody626_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551296#64))

def optimizedBody626_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 152#64)))

def optimizedBody626_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 13537634492463488088#64)

def optimizedBody626_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody626_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody626_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody626_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_84

def optimizedBody626_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_7 optimizedBody626_85

def optimizedBody626_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_83 optimizedBody626_86

def optimizedBody626_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_82 optimizedBody626_87

def optimizedBody626_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_81 optimizedBody626_88

def optimizedBody626_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_80 optimizedBody626_89

def optimizedBody626_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_79 optimizedBody626_90

def optimizedBody626_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_91

def optimizedBody626_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_92

def optimizedBody626_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_93

def optimizedBody626_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_78 optimizedBody626_94

def optimizedBody626_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_77 optimizedBody626_95

def optimizedBody626_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_96

def optimizedBody626_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_97

def optimizedBody626_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_98

def optimizedBody626_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_99

def optimizedBody626_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_76 optimizedBody626_100

def optimizedBody626_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_75 optimizedBody626_101

def optimizedBody626_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_102

def optimizedBody626_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_103

def optimizedBody626_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_104

def optimizedBody626_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_105

def optimizedBody626_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_74 optimizedBody626_106

def optimizedBody626_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_73 optimizedBody626_107

def optimizedBody626_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_108

def optimizedBody626_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_109

def optimizedBody626_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_110

def optimizedBody626_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_111

def optimizedBody626_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_72 optimizedBody626_112

def optimizedBody626_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_71 optimizedBody626_113

def optimizedBody626_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_114

def optimizedBody626_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_115

def optimizedBody626_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_116

def optimizedBody626_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_117

def optimizedBody626_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_70 optimizedBody626_118

def optimizedBody626_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_69 optimizedBody626_119

def optimizedBody626_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_120

def optimizedBody626_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_121

def optimizedBody626_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_122

def optimizedBody626_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_123

def optimizedBody626_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_68 optimizedBody626_124

def optimizedBody626_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_67 optimizedBody626_125

def optimizedBody626_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_126

def optimizedBody626_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_127

def optimizedBody626_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_128

def optimizedBody626_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_129

def optimizedBody626_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_66 optimizedBody626_130

def optimizedBody626_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_65 optimizedBody626_131

def optimizedBody626_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_132

def optimizedBody626_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_133

def optimizedBody626_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_134

def optimizedBody626_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_135

def optimizedBody626_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_64 optimizedBody626_136

def optimizedBody626_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_63 optimizedBody626_137

def optimizedBody626_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_138

def optimizedBody626_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_139

def optimizedBody626_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_140

def optimizedBody626_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_141

def optimizedBody626_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_62 optimizedBody626_142

def optimizedBody626_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_61 optimizedBody626_143

def optimizedBody626_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_144

def optimizedBody626_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_145

def optimizedBody626_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_146

def optimizedBody626_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_147

def optimizedBody626_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_60 optimizedBody626_148

def optimizedBody626_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_59 optimizedBody626_149

def optimizedBody626_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_150

def optimizedBody626_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_151

def optimizedBody626_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_152

def optimizedBody626_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_153

def optimizedBody626_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_58 optimizedBody626_154

def optimizedBody626_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_57 optimizedBody626_155

def optimizedBody626_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_156

def optimizedBody626_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_157

def optimizedBody626_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_158

def optimizedBody626_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_159

def optimizedBody626_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_56 optimizedBody626_160

def optimizedBody626_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_55 optimizedBody626_161

def optimizedBody626_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_162

def optimizedBody626_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_163

def optimizedBody626_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_164

def optimizedBody626_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_165

def optimizedBody626_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_54 optimizedBody626_166

def optimizedBody626_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_53 optimizedBody626_167

def optimizedBody626_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_168

def optimizedBody626_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_169

def optimizedBody626_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_170

def optimizedBody626_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_171

def optimizedBody626_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_52 optimizedBody626_172

def optimizedBody626_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_51 optimizedBody626_173

def optimizedBody626_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_174

def optimizedBody626_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_175

def optimizedBody626_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_176

def optimizedBody626_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_177

def optimizedBody626_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_50 optimizedBody626_178

def optimizedBody626_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_49 optimizedBody626_179

def optimizedBody626_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_180

def optimizedBody626_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_181

def optimizedBody626_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_182

def optimizedBody626_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_183

def optimizedBody626_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_48 optimizedBody626_184

def optimizedBody626_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_47 optimizedBody626_185

def optimizedBody626_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_186

def optimizedBody626_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_187

def optimizedBody626_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_188

def optimizedBody626_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_189

def optimizedBody626_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_46 optimizedBody626_190

def optimizedBody626_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_45 optimizedBody626_191

def optimizedBody626_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_192

def optimizedBody626_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_193

def optimizedBody626_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_194

def optimizedBody626_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_195

def optimizedBody626_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_44 optimizedBody626_196

def optimizedBody626_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_43 optimizedBody626_197

def optimizedBody626_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_198

def optimizedBody626_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_199

def optimizedBody626_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_200

def optimizedBody626_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_8 optimizedBody626_201

def optimizedBody626_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_42 optimizedBody626_202

def optimizedBody626_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_41 optimizedBody626_203

def optimizedBody626_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_204

def optimizedBody626_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_40 optimizedBody626_205

def optimizedBody626_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_39 optimizedBody626_206

def optimizedBody626_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_38 optimizedBody626_207

def optimizedBody626_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_37 optimizedBody626_208

def optimizedBody626_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_36 optimizedBody626_209

def optimizedBody626_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_35 optimizedBody626_210

def optimizedBody626_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_6 optimizedBody626_211

def optimizedBody626_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_34 optimizedBody626_212

def optimizedBody626_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_18 optimizedBody626_213

def optimizedBody626_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_25 optimizedBody626_214

def optimizedBody626_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_24 optimizedBody626_215

def optimizedBody626_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_23 optimizedBody626_216

def optimizedBody626_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_30 optimizedBody626_217

def optimizedBody626_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_3 optimizedBody626_218

def optimizedBody626_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_2 optimizedBody626_219

def optimizedBody626_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_1 optimizedBody626_220

def optimizedBody626_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_6 optimizedBody626_221

def optimizedBody626_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_29 optimizedBody626_222

def optimizedBody626_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_18 optimizedBody626_223

def optimizedBody626_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_28 optimizedBody626_224

def optimizedBody626_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_24 optimizedBody626_225

def optimizedBody626_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_23 optimizedBody626_226

def optimizedBody626_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_27 optimizedBody626_227

def optimizedBody626_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_3 optimizedBody626_228

def optimizedBody626_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_2 optimizedBody626_229

def optimizedBody626_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_1 optimizedBody626_230

def optimizedBody626_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_6 optimizedBody626_231

def optimizedBody626_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_26 optimizedBody626_232

def optimizedBody626_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_18 optimizedBody626_233

def optimizedBody626_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_25 optimizedBody626_234

def optimizedBody626_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_24 optimizedBody626_235

def optimizedBody626_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_23 optimizedBody626_236

def optimizedBody626_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_22 optimizedBody626_237

def optimizedBody626_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_3 optimizedBody626_238

def optimizedBody626_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_2 optimizedBody626_239

def optimizedBody626_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_1 optimizedBody626_240

def optimizedBody626_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_6 optimizedBody626_241

def optimizedBody626_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_21 optimizedBody626_242

def optimizedBody626_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_16 optimizedBody626_243

def optimizedBody626_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_15 optimizedBody626_244

def optimizedBody626_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_6 optimizedBody626_245

def optimizedBody626_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_6 optimizedBody626_246

def optimizedBody626_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_14 optimizedBody626_247

def optimizedBody626_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_5 optimizedBody626_248

def optimizedBody626_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_4 optimizedBody626_249

def optimizedBody626_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_3 optimizedBody626_250

def optimizedBody626_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_2 optimizedBody626_251

def optimizedBody626_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_1 optimizedBody626_252

def optimizedBody626_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody626_0 optimizedBody626_253

def oracle626 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)))))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 1))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))))))
          0
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2))))
            1 Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 3)))))
            1
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)))))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))) 2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 1 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22))))
            Flapjack.Spt.ln)))))
def optimized626 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(626, 1, optimizedBody626_254)
theorem optimize626_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source626, oracle626) = optimized626 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize626_eq
end InitECandidate.Proofs.WordStages
