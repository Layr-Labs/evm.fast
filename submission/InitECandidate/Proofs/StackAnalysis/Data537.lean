import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody537_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody537_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody537_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody537_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46)]

def optimizedBody537_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody537_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody537_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_4 optimizedBody537_5

def optimizedBody537_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody537_3, 537, 2)) (some 470) ([2]) (some (2, optimizedBody537_6, 537, 3))

def optimizedBody537_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody537_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody537_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody537_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody537_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody537_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody537_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody537_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody537_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody537_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody537_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody537_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody537_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_19 optimizedBody537_5

def optimizedBody537_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_18 optimizedBody537_20

def optimizedBody537_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_17 optimizedBody537_21

def optimizedBody537_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_16 optimizedBody537_22

def optimizedBody537_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_15 optimizedBody537_23

def optimizedBody537_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_8 optimizedBody537_24

def optimizedBody537_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody537_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.WordRegImm.reg 6) optimizedBody537_25 optimizedBody537_26

def optimizedBody537_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody537_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody537_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody537_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody537_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody537_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody537_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody537_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody537_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody537_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0)]

def optimizedBody537_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody537_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody537_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody537_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody537_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody537_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody537_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_43 optimizedBody537_5

def optimizedBody537_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody537_42, 537, 4)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody537_44, 537, 5))

def optimizedBody537_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody537_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody537_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody537_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_48 optimizedBody537_5

def optimizedBody537_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody537_47, 537, 6)) (some 490) ([2]) (some (2, optimizedBody537_49, 537, 7))

def optimizedBody537_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody537_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody537_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_16 optimizedBody537_52

def optimizedBody537_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_51 optimizedBody537_53

def optimizedBody537_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_8 optimizedBody537_54

def optimizedBody537_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_50 optimizedBody537_55

def optimizedBody537_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_43 optimizedBody537_56

def optimizedBody537_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_46 optimizedBody537_57

def optimizedBody537_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_8 optimizedBody537_58

def optimizedBody537_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_45 optimizedBody537_59

def optimizedBody537_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_41 optimizedBody537_60

def optimizedBody537_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_40 optimizedBody537_61

def optimizedBody537_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_33 optimizedBody537_62

def optimizedBody537_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_13 optimizedBody537_63

def optimizedBody537_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_33 optimizedBody537_64

def optimizedBody537_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_39 optimizedBody537_65

def optimizedBody537_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_38 optimizedBody537_66

def optimizedBody537_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_37 optimizedBody537_67

def optimizedBody537_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_36 optimizedBody537_68

def optimizedBody537_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_35 optimizedBody537_69

def optimizedBody537_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_34 optimizedBody537_70

def optimizedBody537_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_33 optimizedBody537_71

def optimizedBody537_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_32 optimizedBody537_72

def optimizedBody537_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_31 optimizedBody537_73

def optimizedBody537_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_30 optimizedBody537_74

def optimizedBody537_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_29 optimizedBody537_75

def optimizedBody537_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_28 optimizedBody537_76

def optimizedBody537_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_8 optimizedBody537_77

def optimizedBody537_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_8 optimizedBody537_78

def optimizedBody537_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_27 optimizedBody537_79

def optimizedBody537_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_14 optimizedBody537_80

def optimizedBody537_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_13 optimizedBody537_81

def optimizedBody537_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_12 optimizedBody537_82

def optimizedBody537_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_11 optimizedBody537_83

def optimizedBody537_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_10 optimizedBody537_84

def optimizedBody537_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_9 optimizedBody537_85

def optimizedBody537_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_8 optimizedBody537_86

def optimizedBody537_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_7 optimizedBody537_87

def optimizedBody537_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_2 optimizedBody537_88

def optimizedBody537_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_1 optimizedBody537_89

def optimizedBody537_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody537_0 optimizedBody537_90

def optimized537 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(537, 2, optimizedBody537_91)
end InitECandidate.Proofs.StackAnalysis
