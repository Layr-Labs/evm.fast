import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody438_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody438_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 64#64)

def optimizedBody438_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody438_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody438_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody438_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody438_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody438_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_5 optimizedBody438_6

def optimizedBody438_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody438_4, 438, 2)) (some 182) ([2, 4]) (some (2, optimizedBody438_7, 438, 3))

def optimizedBody438_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody438_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody438_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody438_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody438_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551400#64)))

def optimizedBody438_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody438_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody438_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 28#64)

def optimizedBody438_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody438_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody438_4, 438, 4)) (some 182) ([2, 4]) (some (2, optimizedBody438_7, 438, 5))

def optimizedBody438_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551384#64)))

def optimizedBody438_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 60#64)

def optimizedBody438_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody438_4, 438, 6)) (some 182) ([2, 4]) (some (2, optimizedBody438_7, 438, 7))

def optimizedBody438_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551376#64)))

def optimizedBody438_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody438_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44)]

def optimizedBody438_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44)]

def optimizedBody438_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_25 optimizedBody438_6

def optimizedBody438_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody438_24, 438, 8)) (some 68) ([2]) (some (2, optimizedBody438_26, 438, 9))

def optimizedBody438_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody438_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody438_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody438_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551368#64)))

def optimizedBody438_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody438_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody438_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551392#64)))

def optimizedBody438_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody438_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody438_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody438_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody438_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody438_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_38 optimizedBody438_39

def optimizedBody438_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_35 optimizedBody438_40

def optimizedBody438_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_37 optimizedBody438_41

def optimizedBody438_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_36 optimizedBody438_42

def optimizedBody438_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_35 optimizedBody438_43

def optimizedBody438_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_34 optimizedBody438_44

def optimizedBody438_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_0 optimizedBody438_45

def optimizedBody438_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_33 optimizedBody438_46

def optimizedBody438_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_32 optimizedBody438_47

def optimizedBody438_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_31 optimizedBody438_48

def optimizedBody438_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_30 optimizedBody438_49

def optimizedBody438_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_29 optimizedBody438_50

def optimizedBody438_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_28 optimizedBody438_51

def optimizedBody438_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_9 optimizedBody438_52

def optimizedBody438_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_27 optimizedBody438_53

def optimizedBody438_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_5 optimizedBody438_54

def optimizedBody438_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_23 optimizedBody438_55

def optimizedBody438_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_15 optimizedBody438_56

def optimizedBody438_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_14 optimizedBody438_57

def optimizedBody438_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_22 optimizedBody438_58

def optimizedBody438_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_12 optimizedBody438_59

def optimizedBody438_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_11 optimizedBody438_60

def optimizedBody438_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_10 optimizedBody438_61

def optimizedBody438_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_9 optimizedBody438_62

def optimizedBody438_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_21 optimizedBody438_63

def optimizedBody438_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_17 optimizedBody438_64

def optimizedBody438_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_20 optimizedBody438_65

def optimizedBody438_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_1 optimizedBody438_66

def optimizedBody438_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_15 optimizedBody438_67

def optimizedBody438_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_14 optimizedBody438_68

def optimizedBody438_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_19 optimizedBody438_69

def optimizedBody438_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_12 optimizedBody438_70

def optimizedBody438_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_11 optimizedBody438_71

def optimizedBody438_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_10 optimizedBody438_72

def optimizedBody438_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_9 optimizedBody438_73

def optimizedBody438_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_18 optimizedBody438_74

def optimizedBody438_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_17 optimizedBody438_75

def optimizedBody438_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_16 optimizedBody438_76

def optimizedBody438_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_1 optimizedBody438_77

def optimizedBody438_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_15 optimizedBody438_78

def optimizedBody438_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_14 optimizedBody438_79

def optimizedBody438_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_13 optimizedBody438_80

def optimizedBody438_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_12 optimizedBody438_81

def optimizedBody438_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_11 optimizedBody438_82

def optimizedBody438_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_10 optimizedBody438_83

def optimizedBody438_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_9 optimizedBody438_84

def optimizedBody438_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_8 optimizedBody438_85

def optimizedBody438_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_3 optimizedBody438_86

def optimizedBody438_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_2 optimizedBody438_87

def optimizedBody438_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_1 optimizedBody438_88

def optimizedBody438_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_0 optimizedBody438_89

def optimized438 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(438, 1, optimizedBody438_90)
end InitECandidate.Proofs.StackAnalysis
