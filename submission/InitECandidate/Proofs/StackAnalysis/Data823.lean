import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody823_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody823_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody823_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody823_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody823_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody823_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody823_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody823_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody823_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody823_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 512#64)

def optimizedBody823_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody823_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody823_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody823_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody823_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody823_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody823_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_14 optimizedBody823_15

def optimizedBody823_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_13 optimizedBody823_16

def optimizedBody823_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_12 optimizedBody823_17

def optimizedBody823_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_8 optimizedBody823_18

def optimizedBody823_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_11 optimizedBody823_19

def optimizedBody823_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_10 optimizedBody823_20

def optimizedBody823_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody823_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody823_21 optimizedBody823_22

def optimizedBody823_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 600#64)

def optimizedBody823_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody823_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody823_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody823_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_27 optimizedBody823_15

def optimizedBody823_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody823_26, 823, 2)) (some 470) ([2]) (some (2, optimizedBody823_28, 823, 3))

def optimizedBody823_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody823_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody823_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody823_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_32 optimizedBody823_15

def optimizedBody823_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody823_31, 823, 4)) (some 68) ([2]) (some (2, optimizedBody823_33, 823, 5))

def optimizedBody823_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody823_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody823_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4)]

def optimizedBody823_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody823_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody823_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_39 optimizedBody823_15

def optimizedBody823_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody823_38, 823, 6)) (some 812) ([2, 4]) (some (2, optimizedBody823_40, 823, 7))

def optimizedBody823_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody823_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody823_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody823_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_44 optimizedBody823_17

def optimizedBody823_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_35 optimizedBody823_45

def optimizedBody823_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_43 optimizedBody823_46

def optimizedBody823_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_10 optimizedBody823_47

def optimizedBody823_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody823_48 optimizedBody823_22

def optimizedBody823_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody823_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody823_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody823_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody823_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody823_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody823_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody823_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody823_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody823_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody823_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody823_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_8 optimizedBody823_60

def optimizedBody823_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_42 optimizedBody823_61

def optimizedBody823_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_59 optimizedBody823_62

def optimizedBody823_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_35 optimizedBody823_63

def optimizedBody823_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_30 optimizedBody823_64

def optimizedBody823_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_58 optimizedBody823_65

def optimizedBody823_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_57 optimizedBody823_66

def optimizedBody823_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_0 optimizedBody823_67

def optimizedBody823_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_56 optimizedBody823_68

def optimizedBody823_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_55 optimizedBody823_69

def optimizedBody823_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_54 optimizedBody823_70

def optimizedBody823_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_53 optimizedBody823_71

def optimizedBody823_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_52 optimizedBody823_72

def optimizedBody823_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_51 optimizedBody823_73

def optimizedBody823_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_50 optimizedBody823_74

def optimizedBody823_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_10 optimizedBody823_75

def optimizedBody823_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_10 optimizedBody823_76

def optimizedBody823_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_49 optimizedBody823_77

def optimizedBody823_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_42 optimizedBody823_78

def optimizedBody823_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_35 optimizedBody823_79

def optimizedBody823_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_10 optimizedBody823_80

def optimizedBody823_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_41 optimizedBody823_81

def optimizedBody823_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_37 optimizedBody823_82

def optimizedBody823_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_36 optimizedBody823_83

def optimizedBody823_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_35 optimizedBody823_84

def optimizedBody823_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_10 optimizedBody823_85

def optimizedBody823_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_34 optimizedBody823_86

def optimizedBody823_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_27 optimizedBody823_87

def optimizedBody823_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_30 optimizedBody823_88

def optimizedBody823_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_10 optimizedBody823_89

def optimizedBody823_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_29 optimizedBody823_90

def optimizedBody823_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_25 optimizedBody823_91

def optimizedBody823_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_24 optimizedBody823_92

def optimizedBody823_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_10 optimizedBody823_93

def optimizedBody823_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_10 optimizedBody823_94

def optimizedBody823_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_23 optimizedBody823_95

def optimizedBody823_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_9 optimizedBody823_96

def optimizedBody823_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_8 optimizedBody823_97

def optimizedBody823_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_7 optimizedBody823_98

def optimizedBody823_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_6 optimizedBody823_99

def optimizedBody823_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_5 optimizedBody823_100

def optimizedBody823_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_4 optimizedBody823_101

def optimizedBody823_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_3 optimizedBody823_102

def optimizedBody823_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_2 optimizedBody823_103

def optimizedBody823_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_1 optimizedBody823_104

def optimizedBody823_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody823_0 optimizedBody823_105

def optimized823 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(823, 1, optimizedBody823_106)
end InitECandidate.Proofs.StackAnalysis
