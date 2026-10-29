import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody471_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody471_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody471_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody471_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody471_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody471_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 72#64))

def optimizedBody471_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody471_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody471_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody471_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody471_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody471_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody471_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody471_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody471_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody471_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody471_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody471_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_15 optimizedBody471_16

def optimizedBody471_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_14 optimizedBody471_17

def optimizedBody471_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_13 optimizedBody471_18

def optimizedBody471_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_12 optimizedBody471_19

def optimizedBody471_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_11 optimizedBody471_20

def optimizedBody471_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_8 optimizedBody471_21

def optimizedBody471_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_10 optimizedBody471_22

def optimizedBody471_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_6 optimizedBody471_23

def optimizedBody471_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_9 optimizedBody471_24

def optimizedBody471_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 8), (48, 2)]

def optimizedBody471_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 8 (Flapjack.WordRegImm.reg 2) optimizedBody471_25 optimizedBody471_26

def optimizedBody471_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (44, 0), (46, 10), (48, 48), (50, 4)]

def optimizedBody471_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (10, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody471_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody471_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody471_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_30 optimizedBody471_31

def optimizedBody471_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody471_29, 471, 2)) (some 463) ([2, 4]) (some (2, optimizedBody471_32, 471, 3))

def optimizedBody471_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody471_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody471_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody471_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody471_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody471_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody471_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody471_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody471_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody471_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody471_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody471_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody471_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody471_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody471_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody471_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody471_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody471_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody471_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0)]

def optimizedBody471_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 192#64))

def optimizedBody471_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody471_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody471_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody471_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody471_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_15 optimizedBody471_57

def optimizedBody471_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_14 optimizedBody471_58

def optimizedBody471_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_56 optimizedBody471_59

def optimizedBody471_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_55 optimizedBody471_60

def optimizedBody471_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_54 optimizedBody471_61

def optimizedBody471_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_53 optimizedBody471_62

def optimizedBody471_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_52 optimizedBody471_63

def optimizedBody471_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_51 optimizedBody471_64

def optimizedBody471_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_50 optimizedBody471_65

def optimizedBody471_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_44 optimizedBody471_66

def optimizedBody471_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_49 optimizedBody471_67

def optimizedBody471_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_48 optimizedBody471_68

def optimizedBody471_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_47 optimizedBody471_69

def optimizedBody471_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_46 optimizedBody471_70

def optimizedBody471_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_45 optimizedBody471_71

def optimizedBody471_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_40 optimizedBody471_72

def optimizedBody471_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_44 optimizedBody471_73

def optimizedBody471_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_43 optimizedBody471_74

def optimizedBody471_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_42 optimizedBody471_75

def optimizedBody471_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_41 optimizedBody471_76

def optimizedBody471_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_10 optimizedBody471_77

def optimizedBody471_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_40 optimizedBody471_78

def optimizedBody471_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_39 optimizedBody471_79

def optimizedBody471_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_38 optimizedBody471_80

def optimizedBody471_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_37 optimizedBody471_81

def optimizedBody471_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_36 optimizedBody471_82

def optimizedBody471_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_35 optimizedBody471_83

def optimizedBody471_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_9 optimizedBody471_84

def optimizedBody471_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody471_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 8 (Flapjack.WordRegImm.reg 0) optimizedBody471_85 optimizedBody471_86

def optimizedBody471_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4#64)

def optimizedBody471_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody471_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody471_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody471_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_44 optimizedBody471_31

def optimizedBody471_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_91 optimizedBody471_92

def optimizedBody471_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_90 optimizedBody471_93

def optimizedBody471_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_89 optimizedBody471_94

def optimizedBody471_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_88 optimizedBody471_95

def optimizedBody471_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_9 optimizedBody471_96

def optimizedBody471_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_9 optimizedBody471_97

def optimizedBody471_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_87 optimizedBody471_98

def optimizedBody471_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_34 optimizedBody471_99

def optimizedBody471_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_9 optimizedBody471_100

def optimizedBody471_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_33 optimizedBody471_101

def optimizedBody471_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_28 optimizedBody471_102

def optimizedBody471_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_9 optimizedBody471_103

def optimizedBody471_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_9 optimizedBody471_104

def optimizedBody471_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_27 optimizedBody471_105

def optimizedBody471_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_8 optimizedBody471_106

def optimizedBody471_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_7 optimizedBody471_107

def optimizedBody471_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_6 optimizedBody471_108

def optimizedBody471_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_5 optimizedBody471_109

def optimizedBody471_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_4 optimizedBody471_110

def optimizedBody471_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_3 optimizedBody471_111

def optimizedBody471_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_2 optimizedBody471_112

def optimizedBody471_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_1 optimizedBody471_113

def optimizedBody471_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody471_0 optimizedBody471_114

def optimized471 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(471, 2, optimizedBody471_115)
end InitECandidate.Proofs.StackAnalysis
