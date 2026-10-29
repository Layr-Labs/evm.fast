import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source628
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles628
def optimizedBody628_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody628_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody628_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody628_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody628_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551296#64))

def optimizedBody628_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody628_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody628_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody628_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody628_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody628_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_9

def optimizedBody628_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_7 optimizedBody628_10

def optimizedBody628_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_6 optimizedBody628_11

def optimizedBody628_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody628_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody628_12 optimizedBody628_13

def optimizedBody628_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 160#64)

def optimizedBody628_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody628_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody628_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody628_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody628_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_18 optimizedBody628_19

def optimizedBody628_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody628_17, 628, 2)) (some 68) ([2]) (some (2, optimizedBody628_20, 628, 3))

def optimizedBody628_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551296#64)))

def optimizedBody628_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody628_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody628_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody628_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody628_17, 628, 4)) (some 68) ([2]) (some (2, optimizedBody628_20, 628, 5))

def optimizedBody628_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551288#64)))

def optimizedBody628_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 40#64)

def optimizedBody628_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody628_17, 628, 6)) (some 68) ([2]) (some (2, optimizedBody628_20, 628, 7))

def optimizedBody628_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551280#64)))

def optimizedBody628_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 44)]

def optimizedBody628_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody628_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_32 optimizedBody628_19

def optimizedBody628_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody628_31, 628, 8)) (some 68) ([2]) (some (2, optimizedBody628_33, 628, 9))

def optimizedBody628_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody628_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody628_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody628_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551272#64)))

def optimizedBody628_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody628_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody628_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551296#64))

def optimizedBody628_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18364758544493064720#64)

def optimizedBody628_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody628_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10079716825146989895#64)

def optimizedBody628_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody628_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14248650839231647395#64)

def optimizedBody628_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody628_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2764919063900629905#64)

def optimizedBody628_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody628_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16099105460569216260#64)

def optimizedBody628_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody628_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14096706008221550565#64)

def optimizedBody628_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody628_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2419779895833949110#64)

def optimizedBody628_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody628_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15279073663851639135#64)

def optimizedBody628_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody628_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16895767220870911080#64)

def optimizedBody628_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody628_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13344426445381913340#64)

def optimizedBody628_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody628_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9905384649541406699#64)

def optimizedBody628_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody628_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14806603881112131687#64)

def optimizedBody628_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody628_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6324581712619534043#64)

def optimizedBody628_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody628_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14224731476766686923#64)

def optimizedBody628_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 112#64)))

def optimizedBody628_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7317203453406000633#64)

def optimizedBody628_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody628_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7849414023404435864#64)

def optimizedBody628_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody628_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13688264971095146457#64)

def optimizedBody628_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 136#64)))

def optimizedBody628_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6331469388073975673#64)

def optimizedBody628_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody628_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10330303817214507103#64)

def optimizedBody628_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551296#64))

def optimizedBody628_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 152#64)))

def optimizedBody628_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 13537634492463488088#64)

def optimizedBody628_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody628_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody628_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody628_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_84

def optimizedBody628_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_7 optimizedBody628_85

def optimizedBody628_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_83 optimizedBody628_86

def optimizedBody628_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_82 optimizedBody628_87

def optimizedBody628_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_81 optimizedBody628_88

def optimizedBody628_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_80 optimizedBody628_89

def optimizedBody628_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_79 optimizedBody628_90

def optimizedBody628_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_91

def optimizedBody628_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_92

def optimizedBody628_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_93

def optimizedBody628_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_78 optimizedBody628_94

def optimizedBody628_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_77 optimizedBody628_95

def optimizedBody628_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_96

def optimizedBody628_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_97

def optimizedBody628_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_98

def optimizedBody628_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_99

def optimizedBody628_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_76 optimizedBody628_100

def optimizedBody628_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_75 optimizedBody628_101

def optimizedBody628_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_102

def optimizedBody628_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_103

def optimizedBody628_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_104

def optimizedBody628_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_105

def optimizedBody628_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_74 optimizedBody628_106

def optimizedBody628_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_73 optimizedBody628_107

def optimizedBody628_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_108

def optimizedBody628_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_109

def optimizedBody628_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_110

def optimizedBody628_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_111

def optimizedBody628_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_72 optimizedBody628_112

def optimizedBody628_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_71 optimizedBody628_113

def optimizedBody628_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_114

def optimizedBody628_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_115

def optimizedBody628_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_116

def optimizedBody628_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_117

def optimizedBody628_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_70 optimizedBody628_118

def optimizedBody628_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_69 optimizedBody628_119

def optimizedBody628_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_120

def optimizedBody628_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_121

def optimizedBody628_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_122

def optimizedBody628_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_123

def optimizedBody628_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_68 optimizedBody628_124

def optimizedBody628_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_67 optimizedBody628_125

def optimizedBody628_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_126

def optimizedBody628_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_127

def optimizedBody628_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_128

def optimizedBody628_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_129

def optimizedBody628_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_66 optimizedBody628_130

def optimizedBody628_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_65 optimizedBody628_131

def optimizedBody628_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_132

def optimizedBody628_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_133

def optimizedBody628_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_134

def optimizedBody628_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_135

def optimizedBody628_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_64 optimizedBody628_136

def optimizedBody628_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_63 optimizedBody628_137

def optimizedBody628_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_138

def optimizedBody628_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_139

def optimizedBody628_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_140

def optimizedBody628_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_141

def optimizedBody628_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_62 optimizedBody628_142

def optimizedBody628_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_61 optimizedBody628_143

def optimizedBody628_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_144

def optimizedBody628_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_145

def optimizedBody628_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_146

def optimizedBody628_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_147

def optimizedBody628_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_60 optimizedBody628_148

def optimizedBody628_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_59 optimizedBody628_149

def optimizedBody628_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_150

def optimizedBody628_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_151

def optimizedBody628_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_152

def optimizedBody628_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_153

def optimizedBody628_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_58 optimizedBody628_154

def optimizedBody628_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_57 optimizedBody628_155

def optimizedBody628_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_156

def optimizedBody628_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_157

def optimizedBody628_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_158

def optimizedBody628_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_159

def optimizedBody628_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_56 optimizedBody628_160

def optimizedBody628_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_55 optimizedBody628_161

def optimizedBody628_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_162

def optimizedBody628_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_163

def optimizedBody628_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_164

def optimizedBody628_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_165

def optimizedBody628_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_54 optimizedBody628_166

def optimizedBody628_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_53 optimizedBody628_167

def optimizedBody628_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_168

def optimizedBody628_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_169

def optimizedBody628_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_170

def optimizedBody628_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_171

def optimizedBody628_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_52 optimizedBody628_172

def optimizedBody628_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_51 optimizedBody628_173

def optimizedBody628_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_174

def optimizedBody628_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_175

def optimizedBody628_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_176

def optimizedBody628_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_177

def optimizedBody628_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_50 optimizedBody628_178

def optimizedBody628_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_49 optimizedBody628_179

def optimizedBody628_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_180

def optimizedBody628_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_181

def optimizedBody628_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_182

def optimizedBody628_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_183

def optimizedBody628_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_48 optimizedBody628_184

def optimizedBody628_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_47 optimizedBody628_185

def optimizedBody628_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_186

def optimizedBody628_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_187

def optimizedBody628_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_188

def optimizedBody628_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_189

def optimizedBody628_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_46 optimizedBody628_190

def optimizedBody628_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_45 optimizedBody628_191

def optimizedBody628_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_192

def optimizedBody628_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_193

def optimizedBody628_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_194

def optimizedBody628_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_195

def optimizedBody628_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_44 optimizedBody628_196

def optimizedBody628_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_43 optimizedBody628_197

def optimizedBody628_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_198

def optimizedBody628_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_199

def optimizedBody628_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_200

def optimizedBody628_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_8 optimizedBody628_201

def optimizedBody628_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_42 optimizedBody628_202

def optimizedBody628_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_41 optimizedBody628_203

def optimizedBody628_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_204

def optimizedBody628_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_40 optimizedBody628_205

def optimizedBody628_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_39 optimizedBody628_206

def optimizedBody628_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_38 optimizedBody628_207

def optimizedBody628_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_37 optimizedBody628_208

def optimizedBody628_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_36 optimizedBody628_209

def optimizedBody628_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_35 optimizedBody628_210

def optimizedBody628_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_6 optimizedBody628_211

def optimizedBody628_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_34 optimizedBody628_212

def optimizedBody628_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_18 optimizedBody628_213

def optimizedBody628_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_25 optimizedBody628_214

def optimizedBody628_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_24 optimizedBody628_215

def optimizedBody628_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_23 optimizedBody628_216

def optimizedBody628_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_30 optimizedBody628_217

def optimizedBody628_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_3 optimizedBody628_218

def optimizedBody628_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_219

def optimizedBody628_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_1 optimizedBody628_220

def optimizedBody628_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_6 optimizedBody628_221

def optimizedBody628_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_29 optimizedBody628_222

def optimizedBody628_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_18 optimizedBody628_223

def optimizedBody628_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_28 optimizedBody628_224

def optimizedBody628_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_24 optimizedBody628_225

def optimizedBody628_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_23 optimizedBody628_226

def optimizedBody628_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_27 optimizedBody628_227

def optimizedBody628_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_3 optimizedBody628_228

def optimizedBody628_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_229

def optimizedBody628_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_1 optimizedBody628_230

def optimizedBody628_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_6 optimizedBody628_231

def optimizedBody628_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_26 optimizedBody628_232

def optimizedBody628_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_18 optimizedBody628_233

def optimizedBody628_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_25 optimizedBody628_234

def optimizedBody628_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_24 optimizedBody628_235

def optimizedBody628_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_23 optimizedBody628_236

def optimizedBody628_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_22 optimizedBody628_237

def optimizedBody628_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_3 optimizedBody628_238

def optimizedBody628_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_239

def optimizedBody628_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_1 optimizedBody628_240

def optimizedBody628_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_6 optimizedBody628_241

def optimizedBody628_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_21 optimizedBody628_242

def optimizedBody628_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_16 optimizedBody628_243

def optimizedBody628_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_15 optimizedBody628_244

def optimizedBody628_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_6 optimizedBody628_245

def optimizedBody628_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_6 optimizedBody628_246

def optimizedBody628_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_14 optimizedBody628_247

def optimizedBody628_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_5 optimizedBody628_248

def optimizedBody628_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_4 optimizedBody628_249

def optimizedBody628_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_3 optimizedBody628_250

def optimizedBody628_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_2 optimizedBody628_251

def optimizedBody628_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_1 optimizedBody628_252

def optimizedBody628_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody628_0 optimizedBody628_253

def oracle628 : Option (Spt Nat) :=
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
def optimized628 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(628, 1, optimizedBody628_254)
end InitECandidate.Proofs.SmallStages.Oracles628
