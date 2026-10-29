import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody861_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2)]

def optimizedBody861_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody861_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody861_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody861_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_2 optimizedBody861_3

def optimizedBody861_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody861_1, 861, 2)) (some 387) ([]) (some (2, optimizedBody861_4, 861, 3))

def optimizedBody861_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody861_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0)]

def optimizedBody861_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (44, 44), (46, 46)]

def optimizedBody861_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody861_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_9 optimizedBody861_3

def optimizedBody861_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody861_8, 861, 4)) (some 565) ([2]) (some (2, optimizedBody861_10, 861, 5))

def optimizedBody861_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody861_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody861_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 70#64)

def optimizedBody861_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody861_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody861_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody861_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody861_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_18 optimizedBody861_3

def optimizedBody861_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_17 optimizedBody861_19

def optimizedBody861_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_16 optimizedBody861_20

def optimizedBody861_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_15 optimizedBody861_21

def optimizedBody861_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_14 optimizedBody861_22

def optimizedBody861_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_6 optimizedBody861_23

def optimizedBody861_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody861_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody861_24 optimizedBody861_25

def optimizedBody861_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody861_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody861_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody861_28, 861, 6)) (some 68) ([2]) (some (2, optimizedBody861_4, 861, 7))

def optimizedBody861_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody861_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody861_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody861_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody861_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody861_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_34 optimizedBody861_3

def optimizedBody861_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody861_33, 861, 8)) (some 860) ([2, 4, 6]) (some (2, optimizedBody861_35, 861, 9))

def optimizedBody861_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody861_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 71#64)

def optimizedBody861_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody861_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody861_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_40 optimizedBody861_20

def optimizedBody861_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_39 optimizedBody861_41

def optimizedBody861_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_38 optimizedBody861_42

def optimizedBody861_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_6 optimizedBody861_43

def optimizedBody861_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody861_44 optimizedBody861_25

def optimizedBody861_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody861_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody861_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_46 optimizedBody861_47

def optimizedBody861_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_6 optimizedBody861_48

def optimizedBody861_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_6 optimizedBody861_49

def optimizedBody861_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_45 optimizedBody861_50

def optimizedBody861_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_31 optimizedBody861_51

def optimizedBody861_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_37 optimizedBody861_52

def optimizedBody861_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_15 optimizedBody861_53

def optimizedBody861_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_6 optimizedBody861_54

def optimizedBody861_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_36 optimizedBody861_55

def optimizedBody861_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_32 optimizedBody861_56

def optimizedBody861_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_31 optimizedBody861_57

def optimizedBody861_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_30 optimizedBody861_58

def optimizedBody861_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_6 optimizedBody861_59

def optimizedBody861_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_29 optimizedBody861_60

def optimizedBody861_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_9 optimizedBody861_61

def optimizedBody861_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_27 optimizedBody861_62

def optimizedBody861_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_6 optimizedBody861_63

def optimizedBody861_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_6 optimizedBody861_64

def optimizedBody861_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_26 optimizedBody861_65

def optimizedBody861_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_13 optimizedBody861_66

def optimizedBody861_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_12 optimizedBody861_67

def optimizedBody861_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_6 optimizedBody861_68

def optimizedBody861_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_11 optimizedBody861_69

def optimizedBody861_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_7 optimizedBody861_70

def optimizedBody861_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_6 optimizedBody861_71

def optimizedBody861_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_5 optimizedBody861_72

def optimizedBody861_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody861_0 optimizedBody861_73

def optimized861 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(861, 2, optimizedBody861_74)
end InitECandidate.Proofs.StackAnalysis
