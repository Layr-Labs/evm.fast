import InitECandidate.Proofs.WordStages.Optimize597
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source613
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody613_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 4), (0, 0), (4, 2)]

def optimizedBody613_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody613_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody613_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody613_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody613_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody613_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody613_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 8 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody613_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody613_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 18446744073709551352#64))

def optimizedBody613_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody613_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody613_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 152#64)))

def optimizedBody613_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody613_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody613_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody613_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody613_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 216#64)))

def optimizedBody613_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody613_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody613_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody613_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody613_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_19 optimizedBody613_21

def optimizedBody613_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_1 optimizedBody613_22

def optimizedBody613_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_20 optimizedBody613_23

def optimizedBody613_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_19 optimizedBody613_24

def optimizedBody613_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_18 optimizedBody613_25

def optimizedBody613_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_17 optimizedBody613_26

def optimizedBody613_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_16 optimizedBody613_27

def optimizedBody613_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_8 optimizedBody613_28

def optimizedBody613_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_15 optimizedBody613_29

def optimizedBody613_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_14 optimizedBody613_30

def optimizedBody613_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_13 optimizedBody613_31

def optimizedBody613_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_12 optimizedBody613_32

def optimizedBody613_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_6 optimizedBody613_33

def optimizedBody613_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_8 optimizedBody613_34

def optimizedBody613_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_11 optimizedBody613_35

def optimizedBody613_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_10 optimizedBody613_36

def optimizedBody613_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_9 optimizedBody613_37

def optimizedBody613_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_8 optimizedBody613_38

def optimizedBody613_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_7 optimizedBody613_39

def optimizedBody613_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_6 optimizedBody613_40

def optimizedBody613_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_5 optimizedBody613_41

def optimizedBody613_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_4 optimizedBody613_42

def optimizedBody613_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_3 optimizedBody613_43

def optimizedBody613_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_2 optimizedBody613_44

def optimizedBody613_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody613_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody613_45 optimizedBody613_46

def optimizedBody613_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 216#64))

def optimizedBody613_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 144#64))

def optimizedBody613_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody613_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody613_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody613_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 6), (48, 4)]

def optimizedBody613_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody613_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody613_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody613_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_55 optimizedBody613_56

def optimizedBody613_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody613_54, 613, 2)) (some 68) ([2]) (some (2, optimizedBody613_57, 613, 3))

def optimizedBody613_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody613_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody613_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody613_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody613_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody613_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 10)]

def optimizedBody613_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody613_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody613_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody613_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 216#64)))

def optimizedBody613_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody613_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody613_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (2, 2), (6, 6), (4, 4)]

def optimizedBody613_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_70 optimizedBody613_71

def optimizedBody613_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_69 optimizedBody613_72

def optimizedBody613_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_68 optimizedBody613_73

def optimizedBody613_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_67 optimizedBody613_74

def optimizedBody613_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_66 optimizedBody613_75

def optimizedBody613_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_65 optimizedBody613_76

def optimizedBody613_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_64 optimizedBody613_77

def optimizedBody613_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_63 optimizedBody613_78

def optimizedBody613_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_62 optimizedBody613_79

def optimizedBody613_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_61 optimizedBody613_80

def optimizedBody613_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_60 optimizedBody613_81

def optimizedBody613_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_59 optimizedBody613_82

def optimizedBody613_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_2 optimizedBody613_83

def optimizedBody613_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_58 optimizedBody613_84

def optimizedBody613_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_53 optimizedBody613_85

def optimizedBody613_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_52 optimizedBody613_86

def optimizedBody613_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_51 optimizedBody613_87

def optimizedBody613_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_2 optimizedBody613_88

def optimizedBody613_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (2, 2), (6, 6), (4, 4)]

def optimizedBody613_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_2 optimizedBody613_90

def optimizedBody613_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 6) optimizedBody613_89 optimizedBody613_91

def optimizedBody613_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody613_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody613_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody613_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_95 optimizedBody613_56

def optimizedBody613_97 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody613_94, 613, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody613_96, 613, 5))

def optimizedBody613_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 152#64)))

def optimizedBody613_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody613_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody613_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody613_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_19 optimizedBody613_101

def optimizedBody613_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_1 optimizedBody613_102

def optimizedBody613_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_100 optimizedBody613_103

def optimizedBody613_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_99 optimizedBody613_104

def optimizedBody613_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_98 optimizedBody613_105

def optimizedBody613_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_16 optimizedBody613_106

def optimizedBody613_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_5 optimizedBody613_107

def optimizedBody613_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_4 optimizedBody613_108

def optimizedBody613_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_3 optimizedBody613_109

def optimizedBody613_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_2 optimizedBody613_110

def optimizedBody613_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_97 optimizedBody613_111

def optimizedBody613_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_93 optimizedBody613_112

def optimizedBody613_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_2 optimizedBody613_113

def optimizedBody613_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_92 optimizedBody613_114

def optimizedBody613_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_50 optimizedBody613_115

def optimizedBody613_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_49 optimizedBody613_116

def optimizedBody613_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_8 optimizedBody613_117

def optimizedBody613_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_48 optimizedBody613_118

def optimizedBody613_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_16 optimizedBody613_119

def optimizedBody613_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_5 optimizedBody613_120

def optimizedBody613_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_4 optimizedBody613_121

def optimizedBody613_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_3 optimizedBody613_122

def optimizedBody613_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_2 optimizedBody613_123

def optimizedBody613_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_2 optimizedBody613_124

def optimizedBody613_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_47 optimizedBody613_125

def optimizedBody613_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_1 optimizedBody613_126

def optimizedBody613_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody613_0 optimizedBody613_127

def oracle613 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 1))
              4 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 5
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)) 4
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
              1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 1
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)) 5 (Flapjack.Spt.ls 1)))
            2
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 4
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)) 4
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln) 3
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 5
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))))
def optimized613 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(613, 3, optimizedBody613_128)
theorem optimize613_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source613, oracle613) = optimized613 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize613_eq
end InitECandidate.Proofs.WordStages
