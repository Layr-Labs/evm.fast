import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody543_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody543_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody543_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody543_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody543_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody543_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody543_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_4 optimizedBody543_5

def optimizedBody543_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody543_3, 543, 2)) (some 470) ([2]) (some (2, optimizedBody543_6, 543, 3))

def optimizedBody543_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody543_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody543_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody543_9, 543, 4)) (some 540) ([]) (some (2, optimizedBody543_6, 543, 5))

def optimizedBody543_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody543_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody543_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody543_12, 543, 6)) (some 541) ([2]) (some (2, optimizedBody543_6, 543, 7))

def optimizedBody543_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody543_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody543_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody543_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody543_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody543_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody543_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody543_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody543_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody543_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody543_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody543_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody543_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_25 optimizedBody543_5

def optimizedBody543_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_24 optimizedBody543_26

def optimizedBody543_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_23 optimizedBody543_27

def optimizedBody543_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_22 optimizedBody543_28

def optimizedBody543_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_21 optimizedBody543_29

def optimizedBody543_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_8 optimizedBody543_30

def optimizedBody543_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody543_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody543_31 optimizedBody543_32

def optimizedBody543_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody543_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody543_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody543_3, 543, 8)) (some 538) ([2, 4]) (some (2, optimizedBody543_6, 543, 9))

def optimizedBody543_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody543_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody543_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody543_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_39 optimizedBody543_5

def optimizedBody543_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody543_38, 543, 10)) (some 490) ([2]) (some (2, optimizedBody543_40, 543, 11))

def optimizedBody543_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody543_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody543_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_42 optimizedBody543_43

def optimizedBody543_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_34 optimizedBody543_44

def optimizedBody543_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_8 optimizedBody543_45

def optimizedBody543_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_41 optimizedBody543_46

def optimizedBody543_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_4 optimizedBody543_47

def optimizedBody543_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_37 optimizedBody543_48

def optimizedBody543_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_8 optimizedBody543_49

def optimizedBody543_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_36 optimizedBody543_50

def optimizedBody543_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_35 optimizedBody543_51

def optimizedBody543_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_34 optimizedBody543_52

def optimizedBody543_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_19 optimizedBody543_53

def optimizedBody543_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_8 optimizedBody543_54

def optimizedBody543_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_8 optimizedBody543_55

def optimizedBody543_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_33 optimizedBody543_56

def optimizedBody543_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_20 optimizedBody543_57

def optimizedBody543_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_19 optimizedBody543_58

def optimizedBody543_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_18 optimizedBody543_59

def optimizedBody543_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_17 optimizedBody543_60

def optimizedBody543_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_16 optimizedBody543_61

def optimizedBody543_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_15 optimizedBody543_62

def optimizedBody543_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_14 optimizedBody543_63

def optimizedBody543_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_8 optimizedBody543_64

def optimizedBody543_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_13 optimizedBody543_65

def optimizedBody543_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_11 optimizedBody543_66

def optimizedBody543_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_8 optimizedBody543_67

def optimizedBody543_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_10 optimizedBody543_68

def optimizedBody543_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_3 optimizedBody543_69

def optimizedBody543_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_8 optimizedBody543_70

def optimizedBody543_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_7 optimizedBody543_71

def optimizedBody543_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_2 optimizedBody543_72

def optimizedBody543_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_1 optimizedBody543_73

def optimizedBody543_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_0 optimizedBody543_74

def optimized543 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(543, 1, optimizedBody543_75)
end InitECandidate.Proofs.StackAnalysis
