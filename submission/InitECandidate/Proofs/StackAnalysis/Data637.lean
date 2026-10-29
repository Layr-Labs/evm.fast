import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody637_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10)]

def optimizedBody637_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody637_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody637_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 0), (8, 8), (22, 4), (16, 16), (2, 2), (10, 10), (14, 6)]

def optimizedBody637_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (8, 8), (16, 16)]

def optimizedBody637_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.reg 22)))

def optimizedBody637_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody637_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 16 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody637_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody637_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody637_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody637_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody637_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody637_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody637_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (22, 22), (16, 16), (10, 10)]

def optimizedBody637_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody637_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_14 optimizedBody637_15

def optimizedBody637_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_13 optimizedBody637_16

def optimizedBody637_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_6 optimizedBody637_17

def optimizedBody637_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_12 optimizedBody637_18

def optimizedBody637_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_11 optimizedBody637_19

def optimizedBody637_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_10 optimizedBody637_20

def optimizedBody637_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_9 optimizedBody637_21

def optimizedBody637_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_8 optimizedBody637_22

def optimizedBody637_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_7 optimizedBody637_23

def optimizedBody637_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_6 optimizedBody637_24

def optimizedBody637_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_25

def optimizedBody637_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (22, 22)]

def optimizedBody637_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody637_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_27 optimizedBody637_28

def optimizedBody637_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_29

def optimizedBody637_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 0) optimizedBody637_26 optimizedBody637_30

def optimizedBody637_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_14

def optimizedBody637_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_31 optimizedBody637_32

def optimizedBody637_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_5 optimizedBody637_33

def optimizedBody637_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_4 optimizedBody637_34

def optimizedBody637_36 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln) optimizedBody637_35 (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def optimizedBody637_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 0#64)

def optimizedBody637_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8), (22, 22), (24, 24), (2, 2), (10, 10), (14, 14)]

def optimizedBody637_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (24, 24)]

def optimizedBody637_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody637_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 24 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody637_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody637_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody637_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody637_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 0#64)

def optimizedBody637_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0), (24, 24)]

def optimizedBody637_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody637_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(12, 12), (18, 18), (8, 8), (22, 22), (24, 24), (2, 2), (20, 20), (10, 10), (26, 26), (14, 14), (16, 16)]

def optimizedBody637_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (26, 26)]

def optimizedBody637_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26), (18, 18)]

def optimizedBody637_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 28 26 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody637_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody637_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 28 (Flapjack.WordRegImm.reg 14)))

def optimizedBody637_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody637_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 18), (4, 4)]

def optimizedBody637_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody637_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20), (28, 28), (26, 26), (16, 16), (0, 0)]

def optimizedBody637_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 28 (Flapjack.WordRegImm.reg 20)))

def optimizedBody637_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody637_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 16 (Flapjack.WordRegImm.reg 6)))

def optimizedBody637_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody637_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (20, 20), (26, 26)]

def optimizedBody637_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4294967295#64)

def optimizedBody637_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 6 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody637_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody637_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody637_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 16 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody637_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26)]

def optimizedBody637_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 26 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody637_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18), (8, 8), (20, 20), (26, 26), (14, 14), (16, 16)]

def optimizedBody637_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_70 optimizedBody637_15

def optimizedBody637_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_69 optimizedBody637_71

def optimizedBody637_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_68 optimizedBody637_72

def optimizedBody637_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_67 optimizedBody637_73

def optimizedBody637_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_11 optimizedBody637_74

def optimizedBody637_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_66 optimizedBody637_75

def optimizedBody637_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_65 optimizedBody637_76

def optimizedBody637_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_64 optimizedBody637_77

def optimizedBody637_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_63 optimizedBody637_78

def optimizedBody637_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_62 optimizedBody637_79

def optimizedBody637_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_61 optimizedBody637_80

def optimizedBody637_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_11 optimizedBody637_81

def optimizedBody637_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_60 optimizedBody637_82

def optimizedBody637_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_59 optimizedBody637_83

def optimizedBody637_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_58 optimizedBody637_84

def optimizedBody637_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_57 optimizedBody637_85

def optimizedBody637_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_56 optimizedBody637_86

def optimizedBody637_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_55 optimizedBody637_87

def optimizedBody637_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_54 optimizedBody637_88

def optimizedBody637_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_53 optimizedBody637_89

def optimizedBody637_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_52 optimizedBody637_90

def optimizedBody637_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_51 optimizedBody637_91

def optimizedBody637_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_50 optimizedBody637_92

def optimizedBody637_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_93

def optimizedBody637_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody637_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_95 optimizedBody637_28

def optimizedBody637_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_96

def optimizedBody637_98 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 26 (Flapjack.WordRegImm.reg 8) optimizedBody637_94 optimizedBody637_97

def optimizedBody637_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_70

def optimizedBody637_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_98 optimizedBody637_99

def optimizedBody637_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_49 optimizedBody637_100

def optimizedBody637_102 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln) optimizedBody637_101 (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln)

def optimizedBody637_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody637_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody637_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody637_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 20)))

def optimizedBody637_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (16, 16)]

def optimizedBody637_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody637_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24 24 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody637_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (8, 8), (22, 22), (24, 24), (2, 2), (10, 10), (14, 14)]

def optimizedBody637_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_110 optimizedBody637_15

def optimizedBody637_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_109 optimizedBody637_111

def optimizedBody637_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_40 optimizedBody637_112

def optimizedBody637_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_108 optimizedBody637_113

def optimizedBody637_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_107 optimizedBody637_114

def optimizedBody637_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_106 optimizedBody637_115

def optimizedBody637_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_105 optimizedBody637_116

def optimizedBody637_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_104 optimizedBody637_117

def optimizedBody637_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_103 optimizedBody637_118

def optimizedBody637_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_119

def optimizedBody637_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_102 optimizedBody637_120

def optimizedBody637_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_48 optimizedBody637_121

def optimizedBody637_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_122

def optimizedBody637_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_47 optimizedBody637_123

def optimizedBody637_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_46 optimizedBody637_124

def optimizedBody637_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_45 optimizedBody637_125

def optimizedBody637_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_1 optimizedBody637_126

def optimizedBody637_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_44 optimizedBody637_127

def optimizedBody637_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_43 optimizedBody637_128

def optimizedBody637_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_42 optimizedBody637_129

def optimizedBody637_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_41 optimizedBody637_130

def optimizedBody637_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_40 optimizedBody637_131

def optimizedBody637_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_132

def optimizedBody637_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_28

def optimizedBody637_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.WordRegImm.reg 22) optimizedBody637_133 optimizedBody637_134

def optimizedBody637_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_110

def optimizedBody637_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_135 optimizedBody637_136

def optimizedBody637_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_39 optimizedBody637_137

def optimizedBody637_139 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
  Flapjack.Spt.ln) optimizedBody637_138 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody637_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody637_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody637_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_42 optimizedBody637_141

def optimizedBody637_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_140 optimizedBody637_142

def optimizedBody637_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_143

def optimizedBody637_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_139 optimizedBody637_144

def optimizedBody637_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_38 optimizedBody637_145

def optimizedBody637_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_146

def optimizedBody637_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_37 optimizedBody637_147

def optimizedBody637_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_148

def optimizedBody637_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_36 optimizedBody637_149

def optimizedBody637_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_3 optimizedBody637_150

def optimizedBody637_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_151

def optimizedBody637_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_1 optimizedBody637_152

def optimizedBody637_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_0 optimizedBody637_153

def optimized637 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(637, 6, optimizedBody637_154)
end InitECandidate.Proofs.StackAnalysis
