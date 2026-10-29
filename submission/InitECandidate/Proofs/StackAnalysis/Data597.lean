import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody597_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2)]

def optimizedBody597_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody597_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody597_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody597_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_2 optimizedBody597_3

def optimizedBody597_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody597_1, 597, 2)) (some 474) ([]) (some (2, optimizedBody597_4, 597, 3))

def optimizedBody597_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody597_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody597_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody597_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody597_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody597_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody597_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_11 optimizedBody597_3

def optimizedBody597_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody597_10, 597, 4)) (some 604) ([2]) (some (2, optimizedBody597_12, 597, 5))

def optimizedBody597_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody597_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody597_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody597_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody597_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody597_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody597_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551352#64))

def optimizedBody597_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody597_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody597_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody597_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody597_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody597_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody597_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody597_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody597_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_27 optimizedBody597_28

def optimizedBody597_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_26 optimizedBody597_29

def optimizedBody597_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_25 optimizedBody597_30

def optimizedBody597_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_24 optimizedBody597_31

def optimizedBody597_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_23 optimizedBody597_32

def optimizedBody597_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_19 optimizedBody597_33

def optimizedBody597_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_22 optimizedBody597_34

def optimizedBody597_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_21 optimizedBody597_35

def optimizedBody597_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_20 optimizedBody597_36

def optimizedBody597_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_19 optimizedBody597_37

def optimizedBody597_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_18 optimizedBody597_38

def optimizedBody597_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_17 optimizedBody597_39

def optimizedBody597_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_16 optimizedBody597_40

def optimizedBody597_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_15 optimizedBody597_41

def optimizedBody597_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_14 optimizedBody597_42

def optimizedBody597_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_6 optimizedBody597_43

def optimizedBody597_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_13 optimizedBody597_44

def optimizedBody597_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_9 optimizedBody597_45

def optimizedBody597_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_6 optimizedBody597_46

def optimizedBody597_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody597_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody597_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody597_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody597_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody597_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody597_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody597_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody597_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_54 optimizedBody597_55

def optimizedBody597_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_53 optimizedBody597_56

def optimizedBody597_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_52 optimizedBody597_57

def optimizedBody597_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_51 optimizedBody597_58

def optimizedBody597_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_50 optimizedBody597_59

def optimizedBody597_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_49 optimizedBody597_60

def optimizedBody597_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_48 optimizedBody597_61

def optimizedBody597_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_6 optimizedBody597_62

def optimizedBody597_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 0) optimizedBody597_47 optimizedBody597_63

def optimizedBody597_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody597_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody597_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody597_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody597_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody597_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_26 optimizedBody597_69

def optimizedBody597_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_68 optimizedBody597_70

def optimizedBody597_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_27 optimizedBody597_71

def optimizedBody597_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_26 optimizedBody597_72

def optimizedBody597_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_67 optimizedBody597_73

def optimizedBody597_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_66 optimizedBody597_74

def optimizedBody597_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_65 optimizedBody597_75

def optimizedBody597_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_16 optimizedBody597_76

def optimizedBody597_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_15 optimizedBody597_77

def optimizedBody597_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_14 optimizedBody597_78

def optimizedBody597_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_6 optimizedBody597_79

def optimizedBody597_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_64 optimizedBody597_80

def optimizedBody597_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_8 optimizedBody597_81

def optimizedBody597_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_7 optimizedBody597_82

def optimizedBody597_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_6 optimizedBody597_83

def optimizedBody597_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_5 optimizedBody597_84

def optimizedBody597_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody597_0 optimizedBody597_85

def optimized597 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(597, 2, optimizedBody597_86)
end InitECandidate.Proofs.StackAnalysis
