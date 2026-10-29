import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody391_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody391_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody391_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (0, 2)]

def optimizedBody391_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody391_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody391_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody391_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody391_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551600#64))

def optimizedBody391_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody391_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 18446744073709551600#64)))

def optimizedBody391_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2)]

def optimizedBody391_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody391_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody391_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody391_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody391_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551416#64))

def optimizedBody391_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody391_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody391_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody391_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody391_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody391_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody391_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4), (2, 2)]

def optimizedBody391_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody391_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0)]

def optimizedBody391_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody391_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody391_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody391_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_26 optimizedBody391_27

def optimizedBody391_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody391_25, 391, 2)) (some 192) ([2, 4, 6]) (some (2, optimizedBody391_28, 391, 3))

def optimizedBody391_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0)]

def optimizedBody391_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_1 optimizedBody391_30

def optimizedBody391_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_29 optimizedBody391_31

def optimizedBody391_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_24 optimizedBody391_32

def optimizedBody391_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_23 optimizedBody391_33

def optimizedBody391_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_22 optimizedBody391_34

def optimizedBody391_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_1 optimizedBody391_35

def optimizedBody391_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0)]

def optimizedBody391_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody391_25, 391, 4)) (some 193) ([2, 4]) (some (2, optimizedBody391_28, 391, 5))

def optimizedBody391_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_38 optimizedBody391_31

def optimizedBody391_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_37 optimizedBody391_39

def optimizedBody391_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_1 optimizedBody391_40

def optimizedBody391_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 10) optimizedBody391_36 optimizedBody391_41

def optimizedBody391_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 4), (0, 0)]

def optimizedBody391_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody391_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_43 optimizedBody391_44

def optimizedBody391_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_1 optimizedBody391_45

def optimizedBody391_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_42 optimizedBody391_46

def optimizedBody391_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_21 optimizedBody391_47

def optimizedBody391_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_20 optimizedBody391_48

def optimizedBody391_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_17 optimizedBody391_49

def optimizedBody391_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_19 optimizedBody391_50

def optimizedBody391_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_17 optimizedBody391_51

def optimizedBody391_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_18 optimizedBody391_52

def optimizedBody391_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_17 optimizedBody391_53

def optimizedBody391_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_16 optimizedBody391_54

def optimizedBody391_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_15 optimizedBody391_55

def optimizedBody391_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_8 optimizedBody391_56

def optimizedBody391_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_14 optimizedBody391_57

def optimizedBody391_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_7 optimizedBody391_58

def optimizedBody391_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_8 optimizedBody391_59

def optimizedBody391_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_13 optimizedBody391_60

def optimizedBody391_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_12 optimizedBody391_61

def optimizedBody391_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_11 optimizedBody391_62

def optimizedBody391_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_10 optimizedBody391_63

def optimizedBody391_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_9 optimizedBody391_64

def optimizedBody391_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_8 optimizedBody391_65

def optimizedBody391_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_1 optimizedBody391_66

def optimizedBody391_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody391_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_1 optimizedBody391_68

def optimizedBody391_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody391_67 optimizedBody391_69

def optimizedBody391_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (0, 0)]

def optimizedBody391_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_1 optimizedBody391_71

def optimizedBody391_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_70 optimizedBody391_72

def optimizedBody391_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_7 optimizedBody391_73

def optimizedBody391_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_6 optimizedBody391_74

def optimizedBody391_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_5 optimizedBody391_75

def optimizedBody391_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_4 optimizedBody391_76

def optimizedBody391_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_3 optimizedBody391_77

def optimizedBody391_79 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody391_78 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody391_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody391_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody391_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody391_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_81 optimizedBody391_82

def optimizedBody391_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_80 optimizedBody391_83

def optimizedBody391_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_1 optimizedBody391_84

def optimizedBody391_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_79 optimizedBody391_85

def optimizedBody391_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_2 optimizedBody391_86

def optimizedBody391_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_1 optimizedBody391_87

def optimizedBody391_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody391_0 optimizedBody391_88

def optimized391 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(391, 2, optimizedBody391_89)
end InitECandidate.Proofs.StackAnalysis
