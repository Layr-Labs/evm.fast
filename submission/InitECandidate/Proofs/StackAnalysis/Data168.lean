import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody168_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (0, 0)]

def optimizedBody168_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody168_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody168_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody168_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody168_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody168_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody168_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody168_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_6 optimizedBody168_7

def optimizedBody168_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_5 optimizedBody168_8

def optimizedBody168_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_4 optimizedBody168_9

def optimizedBody168_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody168_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody168_10 optimizedBody168_11

def optimizedBody168_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 183#64)

def optimizedBody168_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody168_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551488#64)))

def optimizedBody168_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_15 optimizedBody168_8

def optimizedBody168_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_14 optimizedBody168_16

def optimizedBody168_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_2 optimizedBody168_17

def optimizedBody168_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_4 optimizedBody168_18

def optimizedBody168_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 4)]

def optimizedBody168_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody168_19 optimizedBody168_20

def optimizedBody168_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 191#64)

def optimizedBody168_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody168_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 10 (Flapjack.WordRegImm.imm 18446744073709551433#64)))

def optimizedBody168_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody168_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody168_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4)]

def optimizedBody168_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (14, 44), (8, 46)]

def optimizedBody168_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (8, 46)]

def optimizedBody168_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody168_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_29 optimizedBody168_30

def optimizedBody168_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody168_28, 168, 2)) (some 160) ([2, 4]) (some (2, optimizedBody168_31, 168, 3))

def optimizedBody168_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4)]

def optimizedBody168_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 8)))

def optimizedBody168_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody168_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def optimizedBody168_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_6 optimizedBody168_36

def optimizedBody168_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_35 optimizedBody168_37

def optimizedBody168_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_34 optimizedBody168_38

def optimizedBody168_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_33 optimizedBody168_39

def optimizedBody168_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_4 optimizedBody168_40

def optimizedBody168_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_32 optimizedBody168_41

def optimizedBody168_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_27 optimizedBody168_42

def optimizedBody168_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_26 optimizedBody168_43

def optimizedBody168_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_25 optimizedBody168_44

def optimizedBody168_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_24 optimizedBody168_45

def optimizedBody168_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_23 optimizedBody168_46

def optimizedBody168_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_4 optimizedBody168_47

def optimizedBody168_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 10), (6, 6), (0, 0)]

def optimizedBody168_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 10) optimizedBody168_48 optimizedBody168_49

def optimizedBody168_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 247#64)

def optimizedBody168_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody168_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551424#64)))

def optimizedBody168_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_53 optimizedBody168_8

def optimizedBody168_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_52 optimizedBody168_54

def optimizedBody168_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_23 optimizedBody168_55

def optimizedBody168_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_4 optimizedBody168_56

def optimizedBody168_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(12, 10)]

def optimizedBody168_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 10) optimizedBody168_57 optimizedBody168_58

def optimizedBody168_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody168_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 18446744073709551369#64)))

def optimizedBody168_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody168_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody168_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_63 optimizedBody168_30

def optimizedBody168_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody168_62, 168, 4)) (some 160) ([2, 4]) (some (2, optimizedBody168_64, 168, 5))

def optimizedBody168_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody168_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody168_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody168_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody168_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_6 optimizedBody168_69

def optimizedBody168_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_68 optimizedBody168_70

def optimizedBody168_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_67 optimizedBody168_71

def optimizedBody168_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_66 optimizedBody168_72

def optimizedBody168_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_4 optimizedBody168_73

def optimizedBody168_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_65 optimizedBody168_74

def optimizedBody168_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_27 optimizedBody168_75

def optimizedBody168_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_26 optimizedBody168_76

def optimizedBody168_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_25 optimizedBody168_77

def optimizedBody168_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_61 optimizedBody168_78

def optimizedBody168_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_60 optimizedBody168_79

def optimizedBody168_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_4 optimizedBody168_80

def optimizedBody168_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_4 optimizedBody168_81

def optimizedBody168_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_59 optimizedBody168_82

def optimizedBody168_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_23 optimizedBody168_83

def optimizedBody168_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_51 optimizedBody168_84

def optimizedBody168_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_4 optimizedBody168_85

def optimizedBody168_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_4 optimizedBody168_86

def optimizedBody168_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_50 optimizedBody168_87

def optimizedBody168_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_23 optimizedBody168_88

def optimizedBody168_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_22 optimizedBody168_89

def optimizedBody168_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_4 optimizedBody168_90

def optimizedBody168_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_4 optimizedBody168_91

def optimizedBody168_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_21 optimizedBody168_92

def optimizedBody168_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_2 optimizedBody168_93

def optimizedBody168_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_13 optimizedBody168_94

def optimizedBody168_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_4 optimizedBody168_95

def optimizedBody168_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_4 optimizedBody168_96

def optimizedBody168_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_12 optimizedBody168_97

def optimizedBody168_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_3 optimizedBody168_98

def optimizedBody168_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_2 optimizedBody168_99

def optimizedBody168_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_1 optimizedBody168_100

def optimizedBody168_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody168_0 optimizedBody168_101

def optimized168 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(168, 2, optimizedBody168_102)
end InitECandidate.Proofs.StackAnalysis
