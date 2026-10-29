import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody635_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2), (6, 6)]

def optimizedBody635_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody635_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 10 8 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody635_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody635_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody635_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 2), (8, 8), (10, 10), (6, 6)]

def optimizedBody635_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody635_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody635_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody635_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody635_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.reg 6)))

def optimizedBody635_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody635_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody635_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody635_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody635_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (10, 10), (6, 6)]

def optimizedBody635_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody635_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_15 optimizedBody635_16

def optimizedBody635_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_14 optimizedBody635_17

def optimizedBody635_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_7 optimizedBody635_18

def optimizedBody635_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_13 optimizedBody635_19

def optimizedBody635_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_12 optimizedBody635_20

def optimizedBody635_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_11 optimizedBody635_21

def optimizedBody635_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_10 optimizedBody635_22

def optimizedBody635_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_9 optimizedBody635_23

def optimizedBody635_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_8 optimizedBody635_24

def optimizedBody635_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_7 optimizedBody635_25

def optimizedBody635_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_4 optimizedBody635_26

def optimizedBody635_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10)]

def optimizedBody635_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody635_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_28 optimizedBody635_29

def optimizedBody635_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_4 optimizedBody635_30

def optimizedBody635_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 10) optimizedBody635_27 optimizedBody635_31

def optimizedBody635_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_4 optimizedBody635_15

def optimizedBody635_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_32 optimizedBody635_33

def optimizedBody635_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_6 optimizedBody635_34

def optimizedBody635_36 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody635_35 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody635_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody635_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 2), (12, 12), (10, 10), (6, 6)]

def optimizedBody635_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody635_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody635_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody635_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 8 (Flapjack.WordRegImm.reg 12)))

def optimizedBody635_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 14 8 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody635_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody635_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.reg 6)))

def optimizedBody635_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12), (14, 14)]

def optimizedBody635_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 12 (Flapjack.WordRegImm.reg 2)))

def optimizedBody635_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody635_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (16, 16)]

def optimizedBody635_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody635_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody635_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody635_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody635_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody635_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody635_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 8 (Flapjack.WordRegImm.reg 16)))

def optimizedBody635_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (8, 8)]

def optimizedBody635_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody635_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody635_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (12, 12), (6, 6)]

def optimizedBody635_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_60 optimizedBody635_16

def optimizedBody635_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_59 optimizedBody635_61

def optimizedBody635_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_12 optimizedBody635_62

def optimizedBody635_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_58 optimizedBody635_63

def optimizedBody635_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_57 optimizedBody635_64

def optimizedBody635_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_56 optimizedBody635_65

def optimizedBody635_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_55 optimizedBody635_66

def optimizedBody635_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_54 optimizedBody635_67

def optimizedBody635_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_53 optimizedBody635_68

def optimizedBody635_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_52 optimizedBody635_69

def optimizedBody635_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_51 optimizedBody635_70

def optimizedBody635_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_50 optimizedBody635_71

def optimizedBody635_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_49 optimizedBody635_72

def optimizedBody635_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_48 optimizedBody635_73

def optimizedBody635_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_47 optimizedBody635_74

def optimizedBody635_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_46 optimizedBody635_75

def optimizedBody635_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_45 optimizedBody635_76

def optimizedBody635_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_9 optimizedBody635_77

def optimizedBody635_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_44 optimizedBody635_78

def optimizedBody635_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_43 optimizedBody635_79

def optimizedBody635_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_7 optimizedBody635_80

def optimizedBody635_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_42 optimizedBody635_81

def optimizedBody635_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_12 optimizedBody635_82

def optimizedBody635_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_41 optimizedBody635_83

def optimizedBody635_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_40 optimizedBody635_84

def optimizedBody635_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_4 optimizedBody635_85

def optimizedBody635_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_4 optimizedBody635_29

def optimizedBody635_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 4) optimizedBody635_86 optimizedBody635_87

def optimizedBody635_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_4 optimizedBody635_60

def optimizedBody635_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_88 optimizedBody635_89

def optimizedBody635_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_39 optimizedBody635_90

def optimizedBody635_92 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody635_91 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody635_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10)]

def optimizedBody635_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody635_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_93 optimizedBody635_94

def optimizedBody635_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_4 optimizedBody635_95

def optimizedBody635_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_92 optimizedBody635_96

def optimizedBody635_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_38 optimizedBody635_97

def optimizedBody635_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_4 optimizedBody635_98

def optimizedBody635_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_37 optimizedBody635_99

def optimizedBody635_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_4 optimizedBody635_100

def optimizedBody635_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_36 optimizedBody635_101

def optimizedBody635_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_5 optimizedBody635_102

def optimizedBody635_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_4 optimizedBody635_103

def optimizedBody635_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_3 optimizedBody635_104

def optimizedBody635_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_2 optimizedBody635_105

def optimizedBody635_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_1 optimizedBody635_106

def optimizedBody635_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody635_0 optimizedBody635_107

def optimized635 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(635, 4, optimizedBody635_108)
end InitECandidate.Proofs.StackAnalysis
