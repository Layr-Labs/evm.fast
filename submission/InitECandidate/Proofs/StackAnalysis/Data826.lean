import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody826_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody826_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody826_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody826_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody826_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody826_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody826_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody826_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody826_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody826_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 64#64)

def optimizedBody826_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody826_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody826_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody826_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody826_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody826_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody826_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_14 optimizedBody826_15

def optimizedBody826_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_13 optimizedBody826_16

def optimizedBody826_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_12 optimizedBody826_17

def optimizedBody826_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_8 optimizedBody826_18

def optimizedBody826_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_11 optimizedBody826_19

def optimizedBody826_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_10 optimizedBody826_20

def optimizedBody826_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody826_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody826_21 optimizedBody826_22

def optimizedBody826_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5500#64)

def optimizedBody826_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody826_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody826_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody826_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_27 optimizedBody826_15

def optimizedBody826_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_26, 826, 2)) (some 470) ([2]) (some (2, optimizedBody826_28, 826, 3))

def optimizedBody826_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody826_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody826_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody826_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_32 optimizedBody826_15

def optimizedBody826_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_31, 826, 4)) (some 68) ([2]) (some (2, optimizedBody826_33, 826, 5))

def optimizedBody826_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody826_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody826_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4)]

def optimizedBody826_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody826_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody826_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_39 optimizedBody826_15

def optimizedBody826_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody826_38, 826, 6)) (some 815) ([2, 4]) (some (2, optimizedBody826_40, 826, 7))

def optimizedBody826_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody826_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody826_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody826_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_44 optimizedBody826_17

def optimizedBody826_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_35 optimizedBody826_45

def optimizedBody826_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_43 optimizedBody826_46

def optimizedBody826_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_10 optimizedBody826_47

def optimizedBody826_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody826_48 optimizedBody826_22

def optimizedBody826_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody826_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody826_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody826_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody826_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody826_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody826_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody826_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody826_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody826_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody826_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody826_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_8 optimizedBody826_60

def optimizedBody826_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_42 optimizedBody826_61

def optimizedBody826_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_59 optimizedBody826_62

def optimizedBody826_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_35 optimizedBody826_63

def optimizedBody826_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_30 optimizedBody826_64

def optimizedBody826_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_58 optimizedBody826_65

def optimizedBody826_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_57 optimizedBody826_66

def optimizedBody826_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_0 optimizedBody826_67

def optimizedBody826_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_56 optimizedBody826_68

def optimizedBody826_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_55 optimizedBody826_69

def optimizedBody826_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_54 optimizedBody826_70

def optimizedBody826_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_53 optimizedBody826_71

def optimizedBody826_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_52 optimizedBody826_72

def optimizedBody826_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_51 optimizedBody826_73

def optimizedBody826_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_50 optimizedBody826_74

def optimizedBody826_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_10 optimizedBody826_75

def optimizedBody826_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_10 optimizedBody826_76

def optimizedBody826_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_49 optimizedBody826_77

def optimizedBody826_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_42 optimizedBody826_78

def optimizedBody826_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_35 optimizedBody826_79

def optimizedBody826_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_10 optimizedBody826_80

def optimizedBody826_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_41 optimizedBody826_81

def optimizedBody826_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_37 optimizedBody826_82

def optimizedBody826_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_36 optimizedBody826_83

def optimizedBody826_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_35 optimizedBody826_84

def optimizedBody826_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_10 optimizedBody826_85

def optimizedBody826_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_34 optimizedBody826_86

def optimizedBody826_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_27 optimizedBody826_87

def optimizedBody826_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_30 optimizedBody826_88

def optimizedBody826_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_10 optimizedBody826_89

def optimizedBody826_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_29 optimizedBody826_90

def optimizedBody826_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_25 optimizedBody826_91

def optimizedBody826_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_24 optimizedBody826_92

def optimizedBody826_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_10 optimizedBody826_93

def optimizedBody826_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_10 optimizedBody826_94

def optimizedBody826_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_23 optimizedBody826_95

def optimizedBody826_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_9 optimizedBody826_96

def optimizedBody826_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_8 optimizedBody826_97

def optimizedBody826_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_7 optimizedBody826_98

def optimizedBody826_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_6 optimizedBody826_99

def optimizedBody826_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_5 optimizedBody826_100

def optimizedBody826_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_4 optimizedBody826_101

def optimizedBody826_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_3 optimizedBody826_102

def optimizedBody826_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_2 optimizedBody826_103

def optimizedBody826_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_1 optimizedBody826_104

def optimizedBody826_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody826_0 optimizedBody826_105

def optimized826 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(826, 1, optimizedBody826_106)
end InitECandidate.Proofs.StackAnalysis
