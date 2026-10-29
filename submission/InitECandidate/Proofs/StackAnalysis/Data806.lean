import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody806_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (0, 0), (4, 4)]

def optimizedBody806_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody806_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody806_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 192#64)

def optimizedBody806_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody806_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody806_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody806_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 47#64)

def optimizedBody806_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 8), (44, 0), (46, 4), (48, 6)]

def optimizedBody806_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody806_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody806_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody806_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_10 optimizedBody806_11

def optimizedBody806_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody806_9, 806, 2)) (some 80) ([2, 4]) (some (2, optimizedBody806_12, 806, 3))

def optimizedBody806_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody806_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody806_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (46, 44)]

def optimizedBody806_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody806_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46)]

def optimizedBody806_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_18 optimizedBody806_11

def optimizedBody806_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody806_17, 806, 4)) (some 766) ([2]) (some (2, optimizedBody806_19, 806, 5))

def optimizedBody806_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody806_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_2 optimizedBody806_21

def optimizedBody806_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_15 optimizedBody806_22

def optimizedBody806_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_23

def optimizedBody806_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_20 optimizedBody806_24

def optimizedBody806_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_16 optimizedBody806_25

def optimizedBody806_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_26

def optimizedBody806_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(4, 4), (6, 6), (44, 44)]

def optimizedBody806_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody806_27 optimizedBody806_28

def optimizedBody806_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (6, 6)]

def optimizedBody806_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_30

def optimizedBody806_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_31

def optimizedBody806_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_29 optimizedBody806_32

def optimizedBody806_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_15 optimizedBody806_33

def optimizedBody806_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_14 optimizedBody806_34

def optimizedBody806_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_35

def optimizedBody806_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_13 optimizedBody806_36

def optimizedBody806_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_8 optimizedBody806_37

def optimizedBody806_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_7 optimizedBody806_38

def optimizedBody806_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_39

def optimizedBody806_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_5 optimizedBody806_40

def optimizedBody806_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_41

def optimizedBody806_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (4, 4), (6, 6)]

def optimizedBody806_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_43

def optimizedBody806_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody806_42 optimizedBody806_44

def optimizedBody806_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 4)]

def optimizedBody806_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody806_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody806_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_48 optimizedBody806_11

def optimizedBody806_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody806_47, 806, 6)) (some 805) ([2, 4]) (some (2, optimizedBody806_49, 806, 7))

def optimizedBody806_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody806_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody806_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_2 optimizedBody806_52

def optimizedBody806_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_51 optimizedBody806_53

def optimizedBody806_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_54

def optimizedBody806_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody806_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody806_55 optimizedBody806_56

def optimizedBody806_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 6), (46, 4)]

def optimizedBody806_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44), (6, 46)]

def optimizedBody806_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46)]

def optimizedBody806_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_60 optimizedBody806_11

def optimizedBody806_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody806_59, 806, 8)) (some 767) ([2]) (some (2, optimizedBody806_61, 806, 9))

def optimizedBody806_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody806_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_51 optimizedBody806_22

def optimizedBody806_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_64

def optimizedBody806_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody806_65 optimizedBody806_56

def optimizedBody806_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 6)]

def optimizedBody806_68 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 777) ([0, 2]) (none)

def optimizedBody806_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_67 optimizedBody806_68

def optimizedBody806_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_69

def optimizedBody806_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_70

def optimizedBody806_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_66 optimizedBody806_71

def optimizedBody806_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_15 optimizedBody806_72

def optimizedBody806_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_63 optimizedBody806_73

def optimizedBody806_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_74

def optimizedBody806_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_62 optimizedBody806_75

def optimizedBody806_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_58 optimizedBody806_76

def optimizedBody806_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_77

def optimizedBody806_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_78

def optimizedBody806_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_57 optimizedBody806_79

def optimizedBody806_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_51 optimizedBody806_80

def optimizedBody806_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_14 optimizedBody806_81

def optimizedBody806_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_82

def optimizedBody806_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_50 optimizedBody806_83

def optimizedBody806_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_46 optimizedBody806_84

def optimizedBody806_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_4 optimizedBody806_85

def optimizedBody806_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_45 optimizedBody806_86

def optimizedBody806_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_3 optimizedBody806_87

def optimizedBody806_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_2 optimizedBody806_88

def optimizedBody806_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_1 optimizedBody806_89

def optimizedBody806_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_0 optimizedBody806_90

def optimized806 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(806, 3, optimizedBody806_91)
end InitECandidate.Proofs.StackAnalysis
