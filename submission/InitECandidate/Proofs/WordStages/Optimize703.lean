import InitECandidate.Proofs.WordStages.Optimize687
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source703
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody703_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody703_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody703_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody703_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody703_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody703_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody703_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody703_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 96#64))

def optimizedBody703_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody703_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 192#64)

def optimizedBody703_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (48, 6)]

def optimizedBody703_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (10, 4), (44, 44), (48, 48)]

def optimizedBody703_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody703_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody703_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_12 optimizedBody703_13

def optimizedBody703_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_11, 703, 2)) (some 94) ([2, 4]) (some (2, optimizedBody703_14, 703, 3))

def optimizedBody703_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody703_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody703_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 34000#64)

def optimizedBody703_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody703_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody703_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 45000#64)

def optimizedBody703_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody703_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 8), (48, 48), (50, 10)]

def optimizedBody703_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (6, 50)]

def optimizedBody703_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (6, 50)]

def optimizedBody703_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_25 optimizedBody703_13

def optimizedBody703_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_24, 703, 4)) (some 470) ([2]) (some (2, optimizedBody703_26, 703, 5))

def optimizedBody703_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody703_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody703_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody703_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody703_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody703_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_32 optimizedBody703_13

def optimizedBody703_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_31 optimizedBody703_33

def optimizedBody703_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_30 optimizedBody703_34

def optimizedBody703_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_8 optimizedBody703_35

def optimizedBody703_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_29 optimizedBody703_36

def optimizedBody703_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_16 optimizedBody703_37

def optimizedBody703_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody703_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody703_38 optimizedBody703_39

def optimizedBody703_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody703_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody703_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody703_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody703_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody703_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_45 optimizedBody703_13

def optimizedBody703_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_44, 703, 6)) (some 700) ([2, 4]) (some (2, optimizedBody703_46, 703, 7))

def optimizedBody703_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody703_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody703_38 optimizedBody703_39

def optimizedBody703_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody703_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 0)]

def optimizedBody703_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48)]

def optimizedBody703_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_52, 703, 8)) (some 68) ([2]) (some (2, optimizedBody703_14, 703, 9))

def optimizedBody703_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody703_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody703_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2), (48, 48)]

def optimizedBody703_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46), (0, 48)]

def optimizedBody703_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46), (0, 48)]

def optimizedBody703_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_58 optimizedBody703_13

def optimizedBody703_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody703_57, 703, 10)) (some 78) ([2, 4]) (some (2, optimizedBody703_59, 703, 11))

def optimizedBody703_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody703_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 31#64)))

def optimizedBody703_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody703_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody703_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody703_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody703_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody703_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody703_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody703_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody703_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody703_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody703_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody703_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody703_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_8 optimizedBody703_74

def optimizedBody703_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_28 optimizedBody703_75

def optimizedBody703_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_73 optimizedBody703_76

def optimizedBody703_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_41 optimizedBody703_77

def optimizedBody703_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_50 optimizedBody703_78

def optimizedBody703_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_72 optimizedBody703_79

def optimizedBody703_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_71 optimizedBody703_80

def optimizedBody703_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_0 optimizedBody703_81

def optimizedBody703_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_70 optimizedBody703_82

def optimizedBody703_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_69 optimizedBody703_83

def optimizedBody703_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_68 optimizedBody703_84

def optimizedBody703_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_67 optimizedBody703_85

def optimizedBody703_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_66 optimizedBody703_86

def optimizedBody703_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_65 optimizedBody703_87

def optimizedBody703_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_64 optimizedBody703_88

def optimizedBody703_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_63 optimizedBody703_89

def optimizedBody703_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_41 optimizedBody703_90

def optimizedBody703_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_62 optimizedBody703_91

def optimizedBody703_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_61 optimizedBody703_92

def optimizedBody703_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_16 optimizedBody703_93

def optimizedBody703_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_60 optimizedBody703_94

def optimizedBody703_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_56 optimizedBody703_95

def optimizedBody703_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_55 optimizedBody703_96

def optimizedBody703_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_54 optimizedBody703_97

def optimizedBody703_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_16 optimizedBody703_98

def optimizedBody703_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_53 optimizedBody703_99

def optimizedBody703_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_51 optimizedBody703_100

def optimizedBody703_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_50 optimizedBody703_101

def optimizedBody703_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_16 optimizedBody703_102

def optimizedBody703_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_16 optimizedBody703_103

def optimizedBody703_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_49 optimizedBody703_104

def optimizedBody703_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_48 optimizedBody703_105

def optimizedBody703_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_41 optimizedBody703_106

def optimizedBody703_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_16 optimizedBody703_107

def optimizedBody703_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_47 optimizedBody703_108

def optimizedBody703_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_43 optimizedBody703_109

def optimizedBody703_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_42 optimizedBody703_110

def optimizedBody703_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_41 optimizedBody703_111

def optimizedBody703_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_16 optimizedBody703_112

def optimizedBody703_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_16 optimizedBody703_113

def optimizedBody703_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_40 optimizedBody703_114

def optimizedBody703_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_28 optimizedBody703_115

def optimizedBody703_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_116

def optimizedBody703_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_16 optimizedBody703_117

def optimizedBody703_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_27 optimizedBody703_118

def optimizedBody703_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_23 optimizedBody703_119

def optimizedBody703_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_22 optimizedBody703_120

def optimizedBody703_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_21 optimizedBody703_121

def optimizedBody703_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_0 optimizedBody703_122

def optimizedBody703_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_20 optimizedBody703_123

def optimizedBody703_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_19 optimizedBody703_124

def optimizedBody703_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_18 optimizedBody703_125

def optimizedBody703_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_17 optimizedBody703_126

def optimizedBody703_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_16 optimizedBody703_127

def optimizedBody703_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_15 optimizedBody703_128

def optimizedBody703_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_10 optimizedBody703_129

def optimizedBody703_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_9 optimizedBody703_130

def optimizedBody703_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_8 optimizedBody703_131

def optimizedBody703_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_7 optimizedBody703_132

def optimizedBody703_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_6 optimizedBody703_133

def optimizedBody703_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_5 optimizedBody703_134

def optimizedBody703_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_4 optimizedBody703_135

def optimizedBody703_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_3 optimizedBody703_136

def optimizedBody703_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_2 optimizedBody703_137

def optimizedBody703_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_1 optimizedBody703_138

def optimizedBody703_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody703_0 optimizedBody703_139

def oracle703 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0))))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 4
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
              3 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 2
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 24
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 5 (Flapjack.Spt.ls 2)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 0)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 4
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              3 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln) 22 Flapjack.Spt.ln))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 1))) 1
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln) 2
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 25)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))))
def optimized703 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(703, 1, optimizedBody703_140)
theorem optimize703_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source703, oracle703) = optimized703 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize703_eq
end InitECandidate.Proofs.WordStages
