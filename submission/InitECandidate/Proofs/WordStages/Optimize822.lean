import InitECandidate.Proofs.WordStages.Optimize806
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source822
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody822_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody822_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody822_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody822_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody822_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody822_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody822_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody822_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 96#64))

def optimizedBody822_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody822_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody822_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody822_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody822_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody822_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody822_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody822_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody822_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody822_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_15 optimizedBody822_16

def optimizedBody822_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_14 optimizedBody822_17

def optimizedBody822_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_13 optimizedBody822_18

def optimizedBody822_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_12 optimizedBody822_19

def optimizedBody822_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_11 optimizedBody822_20

def optimizedBody822_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_10 optimizedBody822_21

def optimizedBody822_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody822_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody822_22 optimizedBody822_23

def optimizedBody822_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody822_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 160#64)

def optimizedBody822_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody822_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 4), (44, 44), (46, 46)]

def optimizedBody822_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody822_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_29 optimizedBody822_16

def optimizedBody822_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody822_28, 822, 2)) (some 94) ([2, 4]) (some (2, optimizedBody822_30, 822, 3))

def optimizedBody822_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody822_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody822_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody822_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody822_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_35 optimizedBody822_18

def optimizedBody822_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_34 optimizedBody822_36

def optimizedBody822_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_33 optimizedBody822_37

def optimizedBody822_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_10 optimizedBody822_38

def optimizedBody822_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody822_39 optimizedBody822_23

def optimizedBody822_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 44), (46, 46), (48, 6)]

def optimizedBody822_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (46, 46), (8, 48)]

def optimizedBody822_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (8, 48)]

def optimizedBody822_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_43 optimizedBody822_16

def optimizedBody822_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody822_42, 822, 4)) (some 819) ([2]) (some (2, optimizedBody822_44, 822, 5))

def optimizedBody822_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody822_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 12000#64)

def optimizedBody822_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody822_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody822_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 10)]

def optimizedBody822_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0)]

def optimizedBody822_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1000#64)

def optimizedBody822_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 8)]

def optimizedBody822_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody822_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody822_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_55 optimizedBody822_16

def optimizedBody822_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody822_54, 822, 6)) (some 94) ([2, 4]) (some (2, optimizedBody822_56, 822, 7))

def optimizedBody822_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48)]

def optimizedBody822_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48)]

def optimizedBody822_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody822_59, 822, 8)) (some 470) ([2]) (some (2, optimizedBody822_56, 822, 9))

def optimizedBody822_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody822_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody822_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody822_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_63 optimizedBody822_16

def optimizedBody822_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody822_62, 822, 10)) (some 68) ([2]) (some (2, optimizedBody822_64, 822, 11))

def optimizedBody822_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody822_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody822_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody822_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody822_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_69 optimizedBody822_16

def optimizedBody822_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody822_68, 822, 12)) (some 811) ([2, 4, 6]) (some (2, optimizedBody822_70, 822, 13))

def optimizedBody822_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody822_39 optimizedBody822_23

def optimizedBody822_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody822_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody822_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody822_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody822_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody822_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody822_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody822_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody822_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody822_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody822_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody822_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_12 optimizedBody822_83

def optimizedBody822_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_9 optimizedBody822_84

def optimizedBody822_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_82 optimizedBody822_85

def optimizedBody822_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_34 optimizedBody822_86

def optimizedBody822_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_61 optimizedBody822_87

def optimizedBody822_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_81 optimizedBody822_88

def optimizedBody822_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_80 optimizedBody822_89

def optimizedBody822_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_0 optimizedBody822_90

def optimizedBody822_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_79 optimizedBody822_91

def optimizedBody822_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_78 optimizedBody822_92

def optimizedBody822_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_77 optimizedBody822_93

def optimizedBody822_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_76 optimizedBody822_94

def optimizedBody822_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_75 optimizedBody822_95

def optimizedBody822_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_74 optimizedBody822_96

def optimizedBody822_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_73 optimizedBody822_97

def optimizedBody822_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_10 optimizedBody822_98

def optimizedBody822_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_10 optimizedBody822_99

def optimizedBody822_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_72 optimizedBody822_100

def optimizedBody822_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_9 optimizedBody822_101

def optimizedBody822_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_34 optimizedBody822_102

def optimizedBody822_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_10 optimizedBody822_103

def optimizedBody822_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_71 optimizedBody822_104

def optimizedBody822_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_67 optimizedBody822_105

def optimizedBody822_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_66 optimizedBody822_106

def optimizedBody822_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_34 optimizedBody822_107

def optimizedBody822_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_10 optimizedBody822_108

def optimizedBody822_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_65 optimizedBody822_109

def optimizedBody822_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_55 optimizedBody822_110

def optimizedBody822_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_61 optimizedBody822_111

def optimizedBody822_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_10 optimizedBody822_112

def optimizedBody822_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_60 optimizedBody822_113

def optimizedBody822_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_58 optimizedBody822_114

def optimizedBody822_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_10 optimizedBody822_115

def optimizedBody822_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_57 optimizedBody822_116

def optimizedBody822_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_53 optimizedBody822_117

def optimizedBody822_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_52 optimizedBody822_118

def optimizedBody822_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_51 optimizedBody822_119

def optimizedBody822_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_49 optimizedBody822_120

def optimizedBody822_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_50 optimizedBody822_121

def optimizedBody822_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_49 optimizedBody822_122

def optimizedBody822_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_48 optimizedBody822_123

def optimizedBody822_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_47 optimizedBody822_124

def optimizedBody822_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_46 optimizedBody822_125

def optimizedBody822_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_10 optimizedBody822_126

def optimizedBody822_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_45 optimizedBody822_127

def optimizedBody822_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_41 optimizedBody822_128

def optimizedBody822_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_10 optimizedBody822_129

def optimizedBody822_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_10 optimizedBody822_130

def optimizedBody822_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_40 optimizedBody822_131

def optimizedBody822_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_32 optimizedBody822_132

def optimizedBody822_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_8 optimizedBody822_133

def optimizedBody822_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_10 optimizedBody822_134

def optimizedBody822_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_31 optimizedBody822_135

def optimizedBody822_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_27 optimizedBody822_136

def optimizedBody822_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_26 optimizedBody822_137

def optimizedBody822_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_25 optimizedBody822_138

def optimizedBody822_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_10 optimizedBody822_139

def optimizedBody822_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_10 optimizedBody822_140

def optimizedBody822_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_24 optimizedBody822_141

def optimizedBody822_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_9 optimizedBody822_142

def optimizedBody822_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_8 optimizedBody822_143

def optimizedBody822_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_7 optimizedBody822_144

def optimizedBody822_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_145

def optimizedBody822_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_5 optimizedBody822_146

def optimizedBody822_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_4 optimizedBody822_147

def optimizedBody822_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_3 optimizedBody822_148

def optimizedBody822_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_2 optimizedBody822_149

def optimizedBody822_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_1 optimizedBody822_150

def optimizedBody822_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_0 optimizedBody822_151

def oracle822 : Option (Spt Nat) :=
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
def optimized822 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(822, 1, optimizedBody822_152)
theorem optimize822_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source822, oracle822) = optimized822 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize822_eq
end InitECandidate.Proofs.WordStages
