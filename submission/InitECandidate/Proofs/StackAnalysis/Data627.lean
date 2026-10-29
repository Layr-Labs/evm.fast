import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody627_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(28, 2), (0, 0), (4, 4), (6, 6), (8, 8)]

def optimizedBody627_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody627_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody627_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody627_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody627_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody627_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody627_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody627_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody627_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_7 optimizedBody627_8

def optimizedBody627_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_6 optimizedBody627_9

def optimizedBody627_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_5 optimizedBody627_10

def optimizedBody627_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_4 optimizedBody627_11

def optimizedBody627_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_3 optimizedBody627_12

def optimizedBody627_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_2 optimizedBody627_13

def optimizedBody627_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(30, 8), (32, 4), (34, 6)]

def optimizedBody627_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 28 (Flapjack.WordRegImm.reg 2) optimizedBody627_14 optimizedBody627_15

def optimizedBody627_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28)]

def optimizedBody627_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody627_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 32), (30, 30)]

def optimizedBody627_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4294967295#64)

def optimizedBody627_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 32 (Flapjack.WordRegImm.reg 2)))

def optimizedBody627_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 30 (Flapjack.WordRegImm.reg 2)))

def optimizedBody627_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 32), (34, 34)]

def optimizedBody627_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 34 (Flapjack.WordRegImm.reg 32)))

def optimizedBody627_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody627_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_25 optimizedBody627_9

def optimizedBody627_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_24 optimizedBody627_26

def optimizedBody627_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_23 optimizedBody627_27

def optimizedBody627_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_22 optimizedBody627_28

def optimizedBody627_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_21 optimizedBody627_29

def optimizedBody627_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_20 optimizedBody627_30

def optimizedBody627_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_19 optimizedBody627_31

def optimizedBody627_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_2 optimizedBody627_32

def optimizedBody627_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(20, 30), (26, 32), (24, 34)]

def optimizedBody627_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 28 (Flapjack.WordRegImm.reg 2) optimizedBody627_33 optimizedBody627_34

def optimizedBody627_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 48#64)

def optimizedBody627_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (20, 20)]

def optimizedBody627_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 24 (Flapjack.WordRegImm.reg 2)))

def optimizedBody627_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26)]

def optimizedBody627_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 26)))

def optimizedBody627_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 20 (Flapjack.WordRegImm.reg 2)))

def optimizedBody627_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_41 optimizedBody627_9

def optimizedBody627_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_40 optimizedBody627_42

def optimizedBody627_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_39 optimizedBody627_43

def optimizedBody627_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_38 optimizedBody627_44

def optimizedBody627_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_20 optimizedBody627_45

def optimizedBody627_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_37 optimizedBody627_46

def optimizedBody627_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_2 optimizedBody627_47

def optimizedBody627_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(12, 20), (22, 26), (16, 24)]

def optimizedBody627_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 28 (Flapjack.WordRegImm.reg 2) optimizedBody627_48 optimizedBody627_49

def optimizedBody627_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody627_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody627_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 12 (Flapjack.WordRegImm.reg 2)))

def optimizedBody627_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody627_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 16)))

def optimizedBody627_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (12, 12)]

def optimizedBody627_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 12 (Flapjack.WordRegImm.reg 22)))

def optimizedBody627_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_57 optimizedBody627_26

def optimizedBody627_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_56 optimizedBody627_58

def optimizedBody627_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_55 optimizedBody627_59

def optimizedBody627_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_54 optimizedBody627_60

def optimizedBody627_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_53 optimizedBody627_61

def optimizedBody627_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_20 optimizedBody627_62

def optimizedBody627_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_52 optimizedBody627_63

def optimizedBody627_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_2 optimizedBody627_64

def optimizedBody627_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(14, 12), (18, 22), (10, 16)]

def optimizedBody627_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 28 (Flapjack.WordRegImm.reg 2) optimizedBody627_65 optimizedBody627_66

def optimizedBody627_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody627_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 14 (Flapjack.WordRegImm.reg 2)))

def optimizedBody627_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody627_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody627_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody627_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 2 (Flapjack.WordRegImm.reg 18)))

def optimizedBody627_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_73 optimizedBody627_9

def optimizedBody627_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_72 optimizedBody627_74

def optimizedBody627_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_71 optimizedBody627_75

def optimizedBody627_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_70 optimizedBody627_76

def optimizedBody627_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_69 optimizedBody627_77

def optimizedBody627_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_20 optimizedBody627_78

def optimizedBody627_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_68 optimizedBody627_79

def optimizedBody627_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_2 optimizedBody627_80

def optimizedBody627_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_2 optimizedBody627_81

def optimizedBody627_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_67 optimizedBody627_82

def optimizedBody627_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_51 optimizedBody627_83

def optimizedBody627_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_17 optimizedBody627_84

def optimizedBody627_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_2 optimizedBody627_85

def optimizedBody627_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_2 optimizedBody627_86

def optimizedBody627_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_50 optimizedBody627_87

def optimizedBody627_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_36 optimizedBody627_88

def optimizedBody627_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_17 optimizedBody627_89

def optimizedBody627_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_2 optimizedBody627_90

def optimizedBody627_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_2 optimizedBody627_91

def optimizedBody627_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_35 optimizedBody627_92

def optimizedBody627_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_18 optimizedBody627_93

def optimizedBody627_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_17 optimizedBody627_94

def optimizedBody627_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_2 optimizedBody627_95

def optimizedBody627_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_2 optimizedBody627_96

def optimizedBody627_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_16 optimizedBody627_97

def optimizedBody627_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_1 optimizedBody627_98

def optimizedBody627_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody627_0 optimizedBody627_99

def optimized627 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(627, 5, optimizedBody627_100)
end InitECandidate.Proofs.StackAnalysis
