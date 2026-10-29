import InitECandidate.Proofs.WordStages.Optimize808
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source824
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody824_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody824_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody824_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody824_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody824_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody824_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody824_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody824_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 96#64))

def optimizedBody824_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody824_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody824_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody824_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody824_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody824_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody824_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody824_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody824_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody824_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_15 optimizedBody824_16

def optimizedBody824_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_14 optimizedBody824_17

def optimizedBody824_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_13 optimizedBody824_18

def optimizedBody824_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_12 optimizedBody824_19

def optimizedBody824_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_11 optimizedBody824_20

def optimizedBody824_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_10 optimizedBody824_21

def optimizedBody824_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody824_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody824_22 optimizedBody824_23

def optimizedBody824_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody824_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 288#64)

def optimizedBody824_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody824_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 4), (44, 44), (46, 46)]

def optimizedBody824_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody824_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_29 optimizedBody824_16

def optimizedBody824_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody824_28, 824, 2)) (some 94) ([2, 4]) (some (2, optimizedBody824_30, 824, 3))

def optimizedBody824_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody824_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody824_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody824_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody824_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_35 optimizedBody824_18

def optimizedBody824_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_34 optimizedBody824_36

def optimizedBody824_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_33 optimizedBody824_37

def optimizedBody824_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_10 optimizedBody824_38

def optimizedBody824_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody824_39 optimizedBody824_23

def optimizedBody824_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 44), (46, 46), (48, 6)]

def optimizedBody824_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (46, 46), (8, 48)]

def optimizedBody824_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (8, 48)]

def optimizedBody824_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_43 optimizedBody824_16

def optimizedBody824_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody824_42, 824, 4)) (some 820) ([2]) (some (2, optimizedBody824_44, 824, 5))

def optimizedBody824_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody824_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 22500#64)

def optimizedBody824_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody824_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody824_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 10)]

def optimizedBody824_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0)]

def optimizedBody824_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1000#64)

def optimizedBody824_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 8)]

def optimizedBody824_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody824_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody824_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_55 optimizedBody824_16

def optimizedBody824_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody824_54, 824, 6)) (some 94) ([2, 4]) (some (2, optimizedBody824_56, 824, 7))

def optimizedBody824_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48)]

def optimizedBody824_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48)]

def optimizedBody824_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody824_59, 824, 8)) (some 470) ([2]) (some (2, optimizedBody824_56, 824, 9))

def optimizedBody824_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody824_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody824_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody824_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_63 optimizedBody824_16

def optimizedBody824_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody824_62, 824, 10)) (some 68) ([2]) (some (2, optimizedBody824_64, 824, 11))

def optimizedBody824_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody824_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody824_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody824_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody824_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_69 optimizedBody824_16

def optimizedBody824_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody824_68, 824, 12)) (some 813) ([2, 4, 6]) (some (2, optimizedBody824_70, 824, 13))

def optimizedBody824_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody824_39 optimizedBody824_23

def optimizedBody824_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody824_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody824_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody824_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody824_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody824_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody824_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody824_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody824_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody824_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody824_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody824_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_12 optimizedBody824_83

def optimizedBody824_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_9 optimizedBody824_84

def optimizedBody824_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_82 optimizedBody824_85

def optimizedBody824_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_34 optimizedBody824_86

def optimizedBody824_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_61 optimizedBody824_87

def optimizedBody824_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_81 optimizedBody824_88

def optimizedBody824_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_80 optimizedBody824_89

def optimizedBody824_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_0 optimizedBody824_90

def optimizedBody824_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_79 optimizedBody824_91

def optimizedBody824_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_78 optimizedBody824_92

def optimizedBody824_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_77 optimizedBody824_93

def optimizedBody824_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_76 optimizedBody824_94

def optimizedBody824_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_75 optimizedBody824_95

def optimizedBody824_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_74 optimizedBody824_96

def optimizedBody824_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_73 optimizedBody824_97

def optimizedBody824_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_10 optimizedBody824_98

def optimizedBody824_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_10 optimizedBody824_99

def optimizedBody824_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_72 optimizedBody824_100

def optimizedBody824_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_9 optimizedBody824_101

def optimizedBody824_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_34 optimizedBody824_102

def optimizedBody824_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_10 optimizedBody824_103

def optimizedBody824_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_71 optimizedBody824_104

def optimizedBody824_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_67 optimizedBody824_105

def optimizedBody824_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_66 optimizedBody824_106

def optimizedBody824_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_34 optimizedBody824_107

def optimizedBody824_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_10 optimizedBody824_108

def optimizedBody824_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_65 optimizedBody824_109

def optimizedBody824_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_55 optimizedBody824_110

def optimizedBody824_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_61 optimizedBody824_111

def optimizedBody824_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_10 optimizedBody824_112

def optimizedBody824_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_60 optimizedBody824_113

def optimizedBody824_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_58 optimizedBody824_114

def optimizedBody824_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_10 optimizedBody824_115

def optimizedBody824_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_57 optimizedBody824_116

def optimizedBody824_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_53 optimizedBody824_117

def optimizedBody824_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_52 optimizedBody824_118

def optimizedBody824_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_51 optimizedBody824_119

def optimizedBody824_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_49 optimizedBody824_120

def optimizedBody824_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_50 optimizedBody824_121

def optimizedBody824_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_49 optimizedBody824_122

def optimizedBody824_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_48 optimizedBody824_123

def optimizedBody824_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_47 optimizedBody824_124

def optimizedBody824_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_46 optimizedBody824_125

def optimizedBody824_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_10 optimizedBody824_126

def optimizedBody824_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_45 optimizedBody824_127

def optimizedBody824_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_41 optimizedBody824_128

def optimizedBody824_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_10 optimizedBody824_129

def optimizedBody824_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_10 optimizedBody824_130

def optimizedBody824_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_40 optimizedBody824_131

def optimizedBody824_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_32 optimizedBody824_132

def optimizedBody824_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_8 optimizedBody824_133

def optimizedBody824_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_10 optimizedBody824_134

def optimizedBody824_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_31 optimizedBody824_135

def optimizedBody824_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_27 optimizedBody824_136

def optimizedBody824_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_26 optimizedBody824_137

def optimizedBody824_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_25 optimizedBody824_138

def optimizedBody824_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_10 optimizedBody824_139

def optimizedBody824_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_10 optimizedBody824_140

def optimizedBody824_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_24 optimizedBody824_141

def optimizedBody824_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_9 optimizedBody824_142

def optimizedBody824_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_8 optimizedBody824_143

def optimizedBody824_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_7 optimizedBody824_144

def optimizedBody824_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_6 optimizedBody824_145

def optimizedBody824_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_5 optimizedBody824_146

def optimizedBody824_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_4 optimizedBody824_147

def optimizedBody824_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_3 optimizedBody824_148

def optimizedBody824_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_2 optimizedBody824_149

def optimizedBody824_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_1 optimizedBody824_150

def optimizedBody824_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody824_0 optimizedBody824_151

def oracle824 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                Flapjack.Spt.ln)
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2))) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.ls 0))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 2
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 4))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              3
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 23)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.ls 2))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 2)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 23)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 23))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))))
def optimized824 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(824, 1, optimizedBody824_152)
theorem optimize824_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source824, oracle824) = optimized824 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize824_eq
end InitECandidate.Proofs.WordStages
