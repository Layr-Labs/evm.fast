import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody827_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody827_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody827_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody827_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody827_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody827_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody827_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody827_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody827_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody827_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 128#64)

def optimizedBody827_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody827_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody827_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody827_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody827_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody827_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody827_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_14 optimizedBody827_15

def optimizedBody827_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_13 optimizedBody827_16

def optimizedBody827_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_12 optimizedBody827_17

def optimizedBody827_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_8 optimizedBody827_18

def optimizedBody827_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_11 optimizedBody827_19

def optimizedBody827_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_10 optimizedBody827_20

def optimizedBody827_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody827_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody827_21 optimizedBody827_22

def optimizedBody827_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 23800#64)

def optimizedBody827_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody827_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody827_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody827_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_27 optimizedBody827_15

def optimizedBody827_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody827_26, 827, 2)) (some 470) ([2]) (some (2, optimizedBody827_28, 827, 3))

def optimizedBody827_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody827_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody827_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody827_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_32 optimizedBody827_15

def optimizedBody827_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody827_31, 827, 4)) (some 68) ([2]) (some (2, optimizedBody827_33, 827, 5))

def optimizedBody827_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody827_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody827_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4)]

def optimizedBody827_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody827_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody827_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_39 optimizedBody827_15

def optimizedBody827_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody827_38, 827, 6)) (some 816) ([2, 4]) (some (2, optimizedBody827_40, 827, 7))

def optimizedBody827_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody827_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody827_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody827_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_44 optimizedBody827_17

def optimizedBody827_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_35 optimizedBody827_45

def optimizedBody827_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_43 optimizedBody827_46

def optimizedBody827_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_10 optimizedBody827_47

def optimizedBody827_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody827_48 optimizedBody827_22

def optimizedBody827_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody827_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody827_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody827_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody827_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody827_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody827_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody827_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody827_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody827_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody827_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody827_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_8 optimizedBody827_60

def optimizedBody827_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_42 optimizedBody827_61

def optimizedBody827_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_59 optimizedBody827_62

def optimizedBody827_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_35 optimizedBody827_63

def optimizedBody827_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_30 optimizedBody827_64

def optimizedBody827_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_58 optimizedBody827_65

def optimizedBody827_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_57 optimizedBody827_66

def optimizedBody827_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_0 optimizedBody827_67

def optimizedBody827_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_56 optimizedBody827_68

def optimizedBody827_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_55 optimizedBody827_69

def optimizedBody827_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_54 optimizedBody827_70

def optimizedBody827_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_53 optimizedBody827_71

def optimizedBody827_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_52 optimizedBody827_72

def optimizedBody827_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_51 optimizedBody827_73

def optimizedBody827_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_50 optimizedBody827_74

def optimizedBody827_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_10 optimizedBody827_75

def optimizedBody827_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_10 optimizedBody827_76

def optimizedBody827_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_49 optimizedBody827_77

def optimizedBody827_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_42 optimizedBody827_78

def optimizedBody827_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_35 optimizedBody827_79

def optimizedBody827_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_10 optimizedBody827_80

def optimizedBody827_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_41 optimizedBody827_81

def optimizedBody827_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_37 optimizedBody827_82

def optimizedBody827_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_36 optimizedBody827_83

def optimizedBody827_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_35 optimizedBody827_84

def optimizedBody827_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_10 optimizedBody827_85

def optimizedBody827_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_34 optimizedBody827_86

def optimizedBody827_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_27 optimizedBody827_87

def optimizedBody827_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_30 optimizedBody827_88

def optimizedBody827_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_10 optimizedBody827_89

def optimizedBody827_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_29 optimizedBody827_90

def optimizedBody827_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_25 optimizedBody827_91

def optimizedBody827_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_24 optimizedBody827_92

def optimizedBody827_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_10 optimizedBody827_93

def optimizedBody827_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_10 optimizedBody827_94

def optimizedBody827_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_23 optimizedBody827_95

def optimizedBody827_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_9 optimizedBody827_96

def optimizedBody827_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_8 optimizedBody827_97

def optimizedBody827_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_7 optimizedBody827_98

def optimizedBody827_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_6 optimizedBody827_99

def optimizedBody827_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_5 optimizedBody827_100

def optimizedBody827_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_4 optimizedBody827_101

def optimizedBody827_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_3 optimizedBody827_102

def optimizedBody827_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_2 optimizedBody827_103

def optimizedBody827_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_1 optimizedBody827_104

def optimizedBody827_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_0 optimizedBody827_105

def optimized827 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(827, 1, optimizedBody827_106)
end InitECandidate.Proofs.StackAnalysis
