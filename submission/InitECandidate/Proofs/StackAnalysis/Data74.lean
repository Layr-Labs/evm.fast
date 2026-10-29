import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody74_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody74_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody74_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody74_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6 4

def optimizedBody74_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 18446744073709551592#64))

def optimizedBody74_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4)]

def optimizedBody74_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 18446744073709551584#64))

def optimizedBody74_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody74_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 2)]

def optimizedBody74_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody74_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7#64)

def optimizedBody74_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 6), (48, 4)]

def optimizedBody74_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 48)]

def optimizedBody74_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody74_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody74_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_13 optimizedBody74_14

def optimizedBody74_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody74_12, 74, 2)) (some 66) ([2]) (some (2, optimizedBody74_15, 74, 3))

def optimizedBody74_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (4, 4)]

def optimizedBody74_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_9 optimizedBody74_17

def optimizedBody74_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_16 optimizedBody74_18

def optimizedBody74_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_11 optimizedBody74_19

def optimizedBody74_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_10 optimizedBody74_20

def optimizedBody74_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_9 optimizedBody74_21

def optimizedBody74_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (6, 6), (4, 4)]

def optimizedBody74_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_9 optimizedBody74_23

def optimizedBody74_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 6) optimizedBody74_22 optimizedBody74_24

def optimizedBody74_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody74_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody74_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 0 (Flapjack.WordRegImm.imm 18446744073709551608#64)))

def optimizedBody74_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody74_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody74_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody74_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody74_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551584#64))

def optimizedBody74_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4)]

def optimizedBody74_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody74_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody74_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_36 optimizedBody74_14

def optimizedBody74_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody74_35, 74, 4)) (some 66) ([2]) (some (2, optimizedBody74_37, 74, 5))

def optimizedBody74_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody74_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_9 optimizedBody74_39

def optimizedBody74_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_38 optimizedBody74_40

def optimizedBody74_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_34 optimizedBody74_41

def optimizedBody74_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_10 optimizedBody74_42

def optimizedBody74_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_9 optimizedBody74_43

def optimizedBody74_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 4)]

def optimizedBody74_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_9 optimizedBody74_45

def optimizedBody74_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 0) optimizedBody74_44 optimizedBody74_46

def optimizedBody74_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody74_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody74_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody74_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551592#64)))

def optimizedBody74_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody74_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody74_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody74_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody74_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_54 optimizedBody74_55

def optimizedBody74_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_53 optimizedBody74_56

def optimizedBody74_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_52 optimizedBody74_57

def optimizedBody74_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_51 optimizedBody74_58

def optimizedBody74_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_50 optimizedBody74_59

def optimizedBody74_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_49 optimizedBody74_60

def optimizedBody74_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_48 optimizedBody74_61

def optimizedBody74_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_9 optimizedBody74_62

def optimizedBody74_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_47 optimizedBody74_63

def optimizedBody74_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_33 optimizedBody74_64

def optimizedBody74_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_32 optimizedBody74_65

def optimizedBody74_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_31 optimizedBody74_66

def optimizedBody74_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_30 optimizedBody74_67

def optimizedBody74_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_29 optimizedBody74_68

def optimizedBody74_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_28 optimizedBody74_69

def optimizedBody74_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_27 optimizedBody74_70

def optimizedBody74_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_26 optimizedBody74_71

def optimizedBody74_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_9 optimizedBody74_72

def optimizedBody74_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_25 optimizedBody74_73

def optimizedBody74_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_8 optimizedBody74_74

def optimizedBody74_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_7 optimizedBody74_75

def optimizedBody74_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_6 optimizedBody74_76

def optimizedBody74_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_5 optimizedBody74_77

def optimizedBody74_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_4 optimizedBody74_78

def optimizedBody74_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_3 optimizedBody74_79

def optimizedBody74_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_2 optimizedBody74_80

def optimizedBody74_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_1 optimizedBody74_81

def optimizedBody74_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody74_0 optimizedBody74_82

def optimized74 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(74, 2, optimizedBody74_83)
end InitECandidate.Proofs.StackAnalysis
