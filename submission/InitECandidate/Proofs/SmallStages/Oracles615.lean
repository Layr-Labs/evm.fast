import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source615
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles615
def optimizedBody615_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 4), (0, 0), (4, 2)]

def optimizedBody615_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody615_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody615_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody615_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody615_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody615_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody615_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 8 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody615_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody615_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 18446744073709551352#64))

def optimizedBody615_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody615_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody615_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 152#64)))

def optimizedBody615_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody615_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody615_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody615_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody615_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 216#64)))

def optimizedBody615_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody615_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody615_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody615_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody615_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_19 optimizedBody615_21

def optimizedBody615_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_1 optimizedBody615_22

def optimizedBody615_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_20 optimizedBody615_23

def optimizedBody615_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_19 optimizedBody615_24

def optimizedBody615_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_18 optimizedBody615_25

def optimizedBody615_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_17 optimizedBody615_26

def optimizedBody615_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_16 optimizedBody615_27

def optimizedBody615_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_8 optimizedBody615_28

def optimizedBody615_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_15 optimizedBody615_29

def optimizedBody615_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_14 optimizedBody615_30

def optimizedBody615_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_13 optimizedBody615_31

def optimizedBody615_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_12 optimizedBody615_32

def optimizedBody615_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_6 optimizedBody615_33

def optimizedBody615_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_8 optimizedBody615_34

def optimizedBody615_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_11 optimizedBody615_35

def optimizedBody615_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_10 optimizedBody615_36

def optimizedBody615_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_9 optimizedBody615_37

def optimizedBody615_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_8 optimizedBody615_38

def optimizedBody615_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_7 optimizedBody615_39

def optimizedBody615_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_6 optimizedBody615_40

def optimizedBody615_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_5 optimizedBody615_41

def optimizedBody615_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_4 optimizedBody615_42

def optimizedBody615_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_3 optimizedBody615_43

def optimizedBody615_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_2 optimizedBody615_44

def optimizedBody615_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody615_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody615_45 optimizedBody615_46

def optimizedBody615_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 216#64))

def optimizedBody615_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 144#64))

def optimizedBody615_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody615_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody615_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody615_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 6), (48, 4)]

def optimizedBody615_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody615_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody615_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody615_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_55 optimizedBody615_56

def optimizedBody615_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody615_54, 615, 2)) (some 68) ([2]) (some (2, optimizedBody615_57, 615, 3))

def optimizedBody615_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody615_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody615_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody615_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody615_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody615_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 10)]

def optimizedBody615_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody615_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody615_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody615_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 216#64)))

def optimizedBody615_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody615_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody615_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (2, 2), (6, 6), (4, 4)]

def optimizedBody615_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_70 optimizedBody615_71

def optimizedBody615_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_69 optimizedBody615_72

def optimizedBody615_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_68 optimizedBody615_73

def optimizedBody615_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_67 optimizedBody615_74

def optimizedBody615_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_66 optimizedBody615_75

def optimizedBody615_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_65 optimizedBody615_76

def optimizedBody615_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_64 optimizedBody615_77

def optimizedBody615_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_63 optimizedBody615_78

def optimizedBody615_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_62 optimizedBody615_79

def optimizedBody615_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_61 optimizedBody615_80

def optimizedBody615_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_60 optimizedBody615_81

def optimizedBody615_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_59 optimizedBody615_82

def optimizedBody615_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_2 optimizedBody615_83

def optimizedBody615_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_58 optimizedBody615_84

def optimizedBody615_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_53 optimizedBody615_85

def optimizedBody615_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_52 optimizedBody615_86

def optimizedBody615_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_51 optimizedBody615_87

def optimizedBody615_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_2 optimizedBody615_88

def optimizedBody615_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (2, 2), (6, 6), (4, 4)]

def optimizedBody615_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_2 optimizedBody615_90

def optimizedBody615_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 6) optimizedBody615_89 optimizedBody615_91

def optimizedBody615_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody615_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody615_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody615_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_95 optimizedBody615_56

def optimizedBody615_97 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody615_94, 615, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody615_96, 615, 5))

def optimizedBody615_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 152#64)))

def optimizedBody615_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody615_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody615_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody615_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_19 optimizedBody615_101

def optimizedBody615_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_1 optimizedBody615_102

def optimizedBody615_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_100 optimizedBody615_103

def optimizedBody615_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_99 optimizedBody615_104

def optimizedBody615_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_98 optimizedBody615_105

def optimizedBody615_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_16 optimizedBody615_106

def optimizedBody615_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_5 optimizedBody615_107

def optimizedBody615_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_4 optimizedBody615_108

def optimizedBody615_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_3 optimizedBody615_109

def optimizedBody615_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_2 optimizedBody615_110

def optimizedBody615_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_97 optimizedBody615_111

def optimizedBody615_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_93 optimizedBody615_112

def optimizedBody615_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_2 optimizedBody615_113

def optimizedBody615_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_92 optimizedBody615_114

def optimizedBody615_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_50 optimizedBody615_115

def optimizedBody615_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_49 optimizedBody615_116

def optimizedBody615_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_8 optimizedBody615_117

def optimizedBody615_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_48 optimizedBody615_118

def optimizedBody615_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_16 optimizedBody615_119

def optimizedBody615_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_5 optimizedBody615_120

def optimizedBody615_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_4 optimizedBody615_121

def optimizedBody615_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_3 optimizedBody615_122

def optimizedBody615_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_2 optimizedBody615_123

def optimizedBody615_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_2 optimizedBody615_124

def optimizedBody615_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_47 optimizedBody615_125

def optimizedBody615_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_1 optimizedBody615_126

def optimizedBody615_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_0 optimizedBody615_127

def oracle615 : Option (Spt Nat) :=
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
def optimized615 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(615, 3, optimizedBody615_128)
end InitECandidate.Proofs.SmallStages.Oracles615
