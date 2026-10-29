import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody184_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody184_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody184_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody184_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (10, 2), (12, 12), (6, 6)]

def optimizedBody184_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (12, 12)]

def optimizedBody184_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 12)]

def optimizedBody184_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody184_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody184_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody184_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.reg 4)))

def optimizedBody184_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody184_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody184_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 16 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody184_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody184_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody184_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2), (16, 16), (4, 4), (10, 10), (12, 12), (6, 6)]

def optimizedBody184_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody184_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 8#64)

def optimizedBody184_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 7#64)

def optimizedBody184_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody184_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody184_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody184_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody184_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def optimizedBody184_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (2, 2)]

def optimizedBody184_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 12 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody184_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody184_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody184_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_16 optimizedBody184_27

def optimizedBody184_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_26 optimizedBody184_28

def optimizedBody184_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_25 optimizedBody184_29

def optimizedBody184_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_24 optimizedBody184_30

def optimizedBody184_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_2 optimizedBody184_31

def optimizedBody184_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(14, 2), (18, 12)]

def optimizedBody184_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 20) optimizedBody184_32 optimizedBody184_33

def optimizedBody184_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody184_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody184_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 16), (12, 18)]

def optimizedBody184_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody184_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_37 optimizedBody184_38

def optimizedBody184_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_36 optimizedBody184_39

def optimizedBody184_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_35 optimizedBody184_40

def optimizedBody184_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_2 optimizedBody184_41

def optimizedBody184_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_2 optimizedBody184_42

def optimizedBody184_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_34 optimizedBody184_43

def optimizedBody184_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_23 optimizedBody184_44

def optimizedBody184_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_22 optimizedBody184_45

def optimizedBody184_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_21 optimizedBody184_46

def optimizedBody184_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_20 optimizedBody184_47

def optimizedBody184_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_19 optimizedBody184_48

def optimizedBody184_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_16 optimizedBody184_49

def optimizedBody184_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_18 optimizedBody184_50

def optimizedBody184_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_13 optimizedBody184_51

def optimizedBody184_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_2 optimizedBody184_52

def optimizedBody184_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody184_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_2 optimizedBody184_54

def optimizedBody184_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 8) optimizedBody184_53 optimizedBody184_55

def optimizedBody184_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 16), (12, 12)]

def optimizedBody184_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_2 optimizedBody184_57

def optimizedBody184_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_56 optimizedBody184_58

def optimizedBody184_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_17 optimizedBody184_59

def optimizedBody184_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_16 optimizedBody184_60

def optimizedBody184_62 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody184_61 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody184_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (10, 10), (12, 12), (6, 6)]

def optimizedBody184_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_2 optimizedBody184_63

def optimizedBody184_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_62 optimizedBody184_64

def optimizedBody184_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_15 optimizedBody184_65

def optimizedBody184_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_2 optimizedBody184_66

def optimizedBody184_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_14 optimizedBody184_67

def optimizedBody184_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_2 optimizedBody184_68

def optimizedBody184_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 2) optimizedBody184_69 optimizedBody184_64

def optimizedBody184_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody184_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody184_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_63 optimizedBody184_38

def optimizedBody184_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_72 optimizedBody184_73

def optimizedBody184_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_71 optimizedBody184_74

def optimizedBody184_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_2 optimizedBody184_75

def optimizedBody184_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_70 optimizedBody184_76

def optimizedBody184_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_14 optimizedBody184_77

def optimizedBody184_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_13 optimizedBody184_78

def optimizedBody184_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_12 optimizedBody184_79

def optimizedBody184_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_11 optimizedBody184_80

def optimizedBody184_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_10 optimizedBody184_81

def optimizedBody184_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_9 optimizedBody184_82

def optimizedBody184_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_8 optimizedBody184_83

def optimizedBody184_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_7 optimizedBody184_84

def optimizedBody184_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_6 optimizedBody184_85

def optimizedBody184_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_5 optimizedBody184_86

def optimizedBody184_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_2 optimizedBody184_87

def optimizedBody184_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody184_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_89 optimizedBody184_54

def optimizedBody184_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_2 optimizedBody184_90

def optimizedBody184_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 6) optimizedBody184_88 optimizedBody184_91

def optimizedBody184_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_92 optimizedBody184_64

def optimizedBody184_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_4 optimizedBody184_93

def optimizedBody184_95 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody184_94 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)

def optimizedBody184_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody184_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 6 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody184_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_97 optimizedBody184_28

def optimizedBody184_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_96 optimizedBody184_98

def optimizedBody184_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_2 optimizedBody184_99

def optimizedBody184_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_95 optimizedBody184_100

def optimizedBody184_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_3 optimizedBody184_101

def optimizedBody184_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_2 optimizedBody184_102

def optimizedBody184_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_1 optimizedBody184_103

def optimizedBody184_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody184_0 optimizedBody184_104

def optimized184 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(184, 4, optimizedBody184_105)
end InitECandidate.Proofs.StackAnalysis
