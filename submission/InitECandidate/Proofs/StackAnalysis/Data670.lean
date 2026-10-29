import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody670_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 2), (0, 0), (18, 4), (12, 6), (16, 8)]

def optimizedBody670_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody670_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody670_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody670_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody670_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 8#64))

def optimizedBody670_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 16#64))

def optimizedBody670_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 24#64))

def optimizedBody670_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody670_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody670_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 16 8#64))

def optimizedBody670_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 16 16#64))

def optimizedBody670_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 16 24#64))

def optimizedBody670_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (46, 0), (48, 18)]

def optimizedBody670_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (8, 8), (10, 2), (20, 46), (0, 48)]

def optimizedBody670_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (20, 46), (0, 48)]

def optimizedBody670_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody670_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_15 optimizedBody670_16

def optimizedBody670_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody670_14, 670, 2)) (some 661) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody670_17, 670, 3))

def optimizedBody670_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody670_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody670_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody670_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody670_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody670_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody670_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody670_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody670_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody670_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody670_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 20 [2]

def optimizedBody670_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_28 optimizedBody670_29

def optimizedBody670_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_27 optimizedBody670_30

def optimizedBody670_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_26 optimizedBody670_31

def optimizedBody670_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_25 optimizedBody670_32

def optimizedBody670_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_24 optimizedBody670_33

def optimizedBody670_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_23 optimizedBody670_34

def optimizedBody670_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_22 optimizedBody670_35

def optimizedBody670_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_21 optimizedBody670_36

def optimizedBody670_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_20 optimizedBody670_37

def optimizedBody670_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_19 optimizedBody670_38

def optimizedBody670_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_2 optimizedBody670_39

def optimizedBody670_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_18 optimizedBody670_40

def optimizedBody670_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_13 optimizedBody670_41

def optimizedBody670_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_12 optimizedBody670_42

def optimizedBody670_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_8 optimizedBody670_43

def optimizedBody670_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_11 optimizedBody670_44

def optimizedBody670_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_8 optimizedBody670_45

def optimizedBody670_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_10 optimizedBody670_46

def optimizedBody670_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_8 optimizedBody670_47

def optimizedBody670_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_9 optimizedBody670_48

def optimizedBody670_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_8 optimizedBody670_49

def optimizedBody670_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_7 optimizedBody670_50

def optimizedBody670_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_3 optimizedBody670_51

def optimizedBody670_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_6 optimizedBody670_52

def optimizedBody670_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_3 optimizedBody670_53

def optimizedBody670_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_5 optimizedBody670_54

def optimizedBody670_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_3 optimizedBody670_55

def optimizedBody670_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_4 optimizedBody670_56

def optimizedBody670_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_3 optimizedBody670_57

def optimizedBody670_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_2 optimizedBody670_58

def optimizedBody670_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(16, 16), (14, 14), (12, 12), (44, 0), (18, 18)]

def optimizedBody670_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 2) optimizedBody670_59 optimizedBody670_60

def optimizedBody670_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody670_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody670_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 18), (4, 12), (6, 16), (46, 44)]

def optimizedBody670_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody670_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46)]

def optimizedBody670_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_66 optimizedBody670_16

def optimizedBody670_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody670_65, 670, 4)) (some 666) ([2, 4, 6]) (some (2, optimizedBody670_67, 670, 5))

def optimizedBody670_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody670_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_28 optimizedBody670_69

def optimizedBody670_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_27 optimizedBody670_70

def optimizedBody670_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_2 optimizedBody670_71

def optimizedBody670_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_68 optimizedBody670_72

def optimizedBody670_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_64 optimizedBody670_73

def optimizedBody670_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_2 optimizedBody670_74

def optimizedBody670_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(16, 16), (18, 18), (12, 12), (44, 44)]

def optimizedBody670_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 0) optimizedBody670_75 optimizedBody670_76

def optimizedBody670_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 18), (4, 12), (6, 16), (44, 44)]

def optimizedBody670_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody670_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody670_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_80 optimizedBody670_16

def optimizedBody670_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody670_79, 670, 6)) (some 668) ([2, 4, 6]) (some (2, optimizedBody670_81, 670, 7))

def optimizedBody670_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_82 optimizedBody670_72

def optimizedBody670_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_78 optimizedBody670_83

def optimizedBody670_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_2 optimizedBody670_84

def optimizedBody670_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_2 optimizedBody670_85

def optimizedBody670_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_77 optimizedBody670_86

def optimizedBody670_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_63 optimizedBody670_87

def optimizedBody670_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_62 optimizedBody670_88

def optimizedBody670_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_2 optimizedBody670_89

def optimizedBody670_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_2 optimizedBody670_90

def optimizedBody670_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_61 optimizedBody670_91

def optimizedBody670_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_1 optimizedBody670_92

def optimizedBody670_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody670_0 optimizedBody670_93

def optimized670 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(670, 5, optimizedBody670_94)
end InitECandidate.Proofs.StackAnalysis
