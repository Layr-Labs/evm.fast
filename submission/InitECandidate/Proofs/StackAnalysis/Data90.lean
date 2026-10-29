import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody90_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody90_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1073741832#64)

def optimizedBody90_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.load 4 (Flapjack.WordLangExpHOL.var 2)

def optimizedBody90_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1073741808#64)

def optimizedBody90_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody90_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody90_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody90_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody90_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46)]

def optimizedBody90_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody90_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody90_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_9 optimizedBody90_10

def optimizedBody90_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody90_8, 90, 2)) (some 66) ([2]) (some (2, optimizedBody90_11, 90, 3))

def optimizedBody90_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4)]

def optimizedBody90_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_5 optimizedBody90_13

def optimizedBody90_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_12 optimizedBody90_14

def optimizedBody90_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_7 optimizedBody90_15

def optimizedBody90_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_6 optimizedBody90_16

def optimizedBody90_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_5 optimizedBody90_17

def optimizedBody90_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (4, 4)]

def optimizedBody90_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_5 optimizedBody90_19

def optimizedBody90_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody90_18 optimizedBody90_20

def optimizedBody90_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody90_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4)]

def optimizedBody90_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (10, 44), (4, 46)]

def optimizedBody90_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (4, 46)]

def optimizedBody90_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_25 optimizedBody90_10

def optimizedBody90_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody90_24, 90, 4)) (some 68) ([2]) (some (2, optimizedBody90_26, 90, 5))

def optimizedBody90_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody90_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody90_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 2), (6, 6), (4, 4), (0, 0)]

def optimizedBody90_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody90_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody90_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1073741840#64)

def optimizedBody90_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody90_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.load 6 (Flapjack.WordLangExpHOL.var 6)

def optimizedBody90_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody90_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody90_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody90_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody90_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody90_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 6), (4, 4), (0, 0)]

def optimizedBody90_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody90_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_41 optimizedBody90_42

def optimizedBody90_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_40 optimizedBody90_43

def optimizedBody90_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_32 optimizedBody90_44

def optimizedBody90_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_39 optimizedBody90_45

def optimizedBody90_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_38 optimizedBody90_46

def optimizedBody90_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_37 optimizedBody90_47

def optimizedBody90_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_36 optimizedBody90_48

def optimizedBody90_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_35 optimizedBody90_49

def optimizedBody90_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_34 optimizedBody90_50

def optimizedBody90_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_33 optimizedBody90_51

def optimizedBody90_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_32 optimizedBody90_52

def optimizedBody90_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_5 optimizedBody90_53

def optimizedBody90_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody90_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody90_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_55 optimizedBody90_56

def optimizedBody90_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_5 optimizedBody90_57

def optimizedBody90_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody90_54 optimizedBody90_58

def optimizedBody90_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_5 optimizedBody90_41

def optimizedBody90_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_59 optimizedBody90_60

def optimizedBody90_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_31 optimizedBody90_61

def optimizedBody90_63 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) optimizedBody90_62 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody90_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0), (4, 4)]

def optimizedBody90_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4]

def optimizedBody90_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_64 optimizedBody90_65

def optimizedBody90_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_5 optimizedBody90_66

def optimizedBody90_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_63 optimizedBody90_67

def optimizedBody90_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_30 optimizedBody90_68

def optimizedBody90_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_5 optimizedBody90_69

def optimizedBody90_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_29 optimizedBody90_70

def optimizedBody90_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_28 optimizedBody90_71

def optimizedBody90_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_5 optimizedBody90_72

def optimizedBody90_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_27 optimizedBody90_73

def optimizedBody90_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_23 optimizedBody90_74

def optimizedBody90_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_22 optimizedBody90_75

def optimizedBody90_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_4 optimizedBody90_76

def optimizedBody90_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_5 optimizedBody90_77

def optimizedBody90_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_21 optimizedBody90_78

def optimizedBody90_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_4 optimizedBody90_79

def optimizedBody90_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_3 optimizedBody90_80

def optimizedBody90_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_2 optimizedBody90_81

def optimizedBody90_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_1 optimizedBody90_82

def optimizedBody90_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody90_0 optimizedBody90_83

def optimized90 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(90, 1, optimizedBody90_84)
end InitECandidate.Proofs.StackAnalysis
