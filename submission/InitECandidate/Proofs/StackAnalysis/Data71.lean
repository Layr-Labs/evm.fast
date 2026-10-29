import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody71_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody71_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody71_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody71_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6 4

def optimizedBody71_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 18446744073709551584#64))

def optimizedBody71_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody71_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 18446744073709551592#64))

def optimizedBody71_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody71_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody71_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 2)]

def optimizedBody71_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody71_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody71_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 6), (48, 4)]

def optimizedBody71_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 48)]

def optimizedBody71_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody71_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody71_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_14 optimizedBody71_15

def optimizedBody71_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody71_13, 71, 2)) (some 66) ([2]) (some (2, optimizedBody71_16, 71, 3))

def optimizedBody71_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (4, 4)]

def optimizedBody71_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_10 optimizedBody71_18

def optimizedBody71_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_17 optimizedBody71_19

def optimizedBody71_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_12 optimizedBody71_20

def optimizedBody71_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_11 optimizedBody71_21

def optimizedBody71_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_10 optimizedBody71_22

def optimizedBody71_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (6, 6), (4, 4)]

def optimizedBody71_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_10 optimizedBody71_24

def optimizedBody71_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 6) optimizedBody71_23 optimizedBody71_25

def optimizedBody71_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody71_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody71_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody71_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 6 0 (Flapjack.WordRegImm.imm 18446744073709551608#64)))

def optimizedBody71_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody71_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody71_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody71_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551592#64))

def optimizedBody71_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody71_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 6), (48, 4)]

def optimizedBody71_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (6, 46), (4, 48)]

def optimizedBody71_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46), (4, 48)]

def optimizedBody71_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_38 optimizedBody71_15

def optimizedBody71_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody71_37, 71, 4)) (some 66) ([2]) (some (2, optimizedBody71_39, 71, 5))

def optimizedBody71_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 6), (4, 4)]

def optimizedBody71_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_10 optimizedBody71_41

def optimizedBody71_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_40 optimizedBody71_42

def optimizedBody71_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_36 optimizedBody71_43

def optimizedBody71_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_11 optimizedBody71_44

def optimizedBody71_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_10 optimizedBody71_45

def optimizedBody71_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (6, 6), (4, 4)]

def optimizedBody71_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_10 optimizedBody71_47

def optimizedBody71_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 6) optimizedBody71_46 optimizedBody71_48

def optimizedBody71_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody71_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody71_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody71_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551584#64)))

def optimizedBody71_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody71_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody71_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody71_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody71_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_56 optimizedBody71_57

def optimizedBody71_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_55 optimizedBody71_58

def optimizedBody71_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_54 optimizedBody71_59

def optimizedBody71_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_53 optimizedBody71_60

def optimizedBody71_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_52 optimizedBody71_61

def optimizedBody71_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_51 optimizedBody71_62

def optimizedBody71_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_50 optimizedBody71_63

def optimizedBody71_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_10 optimizedBody71_64

def optimizedBody71_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_49 optimizedBody71_65

def optimizedBody71_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_35 optimizedBody71_66

def optimizedBody71_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_34 optimizedBody71_67

def optimizedBody71_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_33 optimizedBody71_68

def optimizedBody71_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_32 optimizedBody71_69

def optimizedBody71_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_31 optimizedBody71_70

def optimizedBody71_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_30 optimizedBody71_71

def optimizedBody71_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_29 optimizedBody71_72

def optimizedBody71_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_28 optimizedBody71_73

def optimizedBody71_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_27 optimizedBody71_74

def optimizedBody71_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_10 optimizedBody71_75

def optimizedBody71_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_26 optimizedBody71_76

def optimizedBody71_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_9 optimizedBody71_77

def optimizedBody71_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_8 optimizedBody71_78

def optimizedBody71_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_7 optimizedBody71_79

def optimizedBody71_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_6 optimizedBody71_80

def optimizedBody71_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_5 optimizedBody71_81

def optimizedBody71_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_4 optimizedBody71_82

def optimizedBody71_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_3 optimizedBody71_83

def optimizedBody71_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_2 optimizedBody71_84

def optimizedBody71_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_1 optimizedBody71_85

def optimizedBody71_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody71_0 optimizedBody71_86

def optimized71 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(71, 2, optimizedBody71_87)
end InitECandidate.Proofs.StackAnalysis
