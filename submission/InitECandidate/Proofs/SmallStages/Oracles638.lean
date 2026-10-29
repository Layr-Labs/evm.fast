import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source638
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles638
def optimizedBody638_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10)]

def optimizedBody638_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody638_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody638_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 0), (8, 8), (22, 4), (16, 16), (2, 2), (10, 10), (14, 6)]

def optimizedBody638_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (8, 8), (16, 16)]

def optimizedBody638_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.reg 22)))

def optimizedBody638_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody638_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 16 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody638_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody638_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody638_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody638_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody638_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody638_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (22, 22), (16, 16), (10, 10)]

def optimizedBody638_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody638_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_14 optimizedBody638_15

def optimizedBody638_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_13 optimizedBody638_16

def optimizedBody638_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_6 optimizedBody638_17

def optimizedBody638_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_12 optimizedBody638_18

def optimizedBody638_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_11 optimizedBody638_19

def optimizedBody638_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_10 optimizedBody638_20

def optimizedBody638_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_9 optimizedBody638_21

def optimizedBody638_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_8 optimizedBody638_22

def optimizedBody638_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_7 optimizedBody638_23

def optimizedBody638_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_6 optimizedBody638_24

def optimizedBody638_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_25

def optimizedBody638_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (22, 22)]

def optimizedBody638_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody638_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_27 optimizedBody638_28

def optimizedBody638_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_29

def optimizedBody638_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 0) optimizedBody638_26 optimizedBody638_30

def optimizedBody638_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_14

def optimizedBody638_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_31 optimizedBody638_32

def optimizedBody638_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_33

def optimizedBody638_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_4 optimizedBody638_34

def optimizedBody638_36 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln) optimizedBody638_35 (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def optimizedBody638_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 0#64)

def optimizedBody638_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8), (22, 22), (24, 24), (2, 2), (10, 10), (14, 14)]

def optimizedBody638_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (24, 24)]

def optimizedBody638_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody638_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 24 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody638_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody638_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody638_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 0#64)

def optimizedBody638_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0), (24, 24)]

def optimizedBody638_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody638_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(12, 12), (18, 18), (8, 8), (22, 22), (24, 24), (2, 2), (20, 20), (10, 10), (26, 26), (14, 14), (16, 16)]

def optimizedBody638_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (26, 26)]

def optimizedBody638_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26), (18, 18)]

def optimizedBody638_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 28 26 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody638_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 28 (Flapjack.WordRegImm.reg 14)))

def optimizedBody638_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody638_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 18), (4, 4)]

def optimizedBody638_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody638_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20), (28, 28), (26, 26), (16, 16), (0, 0)]

def optimizedBody638_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 28 (Flapjack.WordRegImm.reg 20)))

def optimizedBody638_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody638_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 16 (Flapjack.WordRegImm.reg 6)))

def optimizedBody638_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody638_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (20, 20), (26, 26)]

def optimizedBody638_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4294967295#64)

def optimizedBody638_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 6 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody638_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody638_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody638_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 16 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody638_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26)]

def optimizedBody638_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 26 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody638_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18), (8, 8), (20, 20), (26, 26), (14, 14), (16, 16)]

def optimizedBody638_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_70 optimizedBody638_15

def optimizedBody638_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_69 optimizedBody638_71

def optimizedBody638_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_68 optimizedBody638_72

def optimizedBody638_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_67 optimizedBody638_73

def optimizedBody638_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_11 optimizedBody638_74

def optimizedBody638_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_66 optimizedBody638_75

def optimizedBody638_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_65 optimizedBody638_76

def optimizedBody638_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_64 optimizedBody638_77

def optimizedBody638_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_63 optimizedBody638_78

def optimizedBody638_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_62 optimizedBody638_79

def optimizedBody638_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_61 optimizedBody638_80

def optimizedBody638_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_11 optimizedBody638_81

def optimizedBody638_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_60 optimizedBody638_82

def optimizedBody638_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_59 optimizedBody638_83

def optimizedBody638_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_58 optimizedBody638_84

def optimizedBody638_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_57 optimizedBody638_85

def optimizedBody638_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_56 optimizedBody638_86

def optimizedBody638_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_55 optimizedBody638_87

def optimizedBody638_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_54 optimizedBody638_88

def optimizedBody638_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_53 optimizedBody638_89

def optimizedBody638_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_52 optimizedBody638_90

def optimizedBody638_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_51 optimizedBody638_91

def optimizedBody638_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_50 optimizedBody638_92

def optimizedBody638_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_93

def optimizedBody638_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody638_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_95 optimizedBody638_28

def optimizedBody638_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_96

def optimizedBody638_98 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 26 (Flapjack.WordRegImm.reg 8) optimizedBody638_94 optimizedBody638_97

def optimizedBody638_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_70

def optimizedBody638_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_98 optimizedBody638_99

def optimizedBody638_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_49 optimizedBody638_100

def optimizedBody638_102 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln) optimizedBody638_101 (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln)

def optimizedBody638_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody638_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody638_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 20)))

def optimizedBody638_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (16, 16)]

def optimizedBody638_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody638_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24 24 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody638_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (8, 8), (22, 22), (24, 24), (2, 2), (10, 10), (14, 14)]

def optimizedBody638_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_110 optimizedBody638_15

def optimizedBody638_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_109 optimizedBody638_111

def optimizedBody638_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_40 optimizedBody638_112

def optimizedBody638_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_108 optimizedBody638_113

def optimizedBody638_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_107 optimizedBody638_114

def optimizedBody638_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_106 optimizedBody638_115

def optimizedBody638_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_105 optimizedBody638_116

def optimizedBody638_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_104 optimizedBody638_117

def optimizedBody638_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_103 optimizedBody638_118

def optimizedBody638_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_119

def optimizedBody638_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_102 optimizedBody638_120

def optimizedBody638_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_48 optimizedBody638_121

def optimizedBody638_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_122

def optimizedBody638_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_47 optimizedBody638_123

def optimizedBody638_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_46 optimizedBody638_124

def optimizedBody638_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_45 optimizedBody638_125

def optimizedBody638_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_1 optimizedBody638_126

def optimizedBody638_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_44 optimizedBody638_127

def optimizedBody638_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_43 optimizedBody638_128

def optimizedBody638_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_42 optimizedBody638_129

def optimizedBody638_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_41 optimizedBody638_130

def optimizedBody638_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_40 optimizedBody638_131

def optimizedBody638_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_132

def optimizedBody638_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_28

def optimizedBody638_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.WordRegImm.reg 22) optimizedBody638_133 optimizedBody638_134

def optimizedBody638_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_110

def optimizedBody638_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_135 optimizedBody638_136

def optimizedBody638_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_39 optimizedBody638_137

def optimizedBody638_139 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
  Flapjack.Spt.ln) optimizedBody638_138 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody638_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody638_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody638_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_42 optimizedBody638_141

def optimizedBody638_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_140 optimizedBody638_142

def optimizedBody638_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_143

def optimizedBody638_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_139 optimizedBody638_144

def optimizedBody638_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_38 optimizedBody638_145

def optimizedBody638_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_146

def optimizedBody638_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_37 optimizedBody638_147

def optimizedBody638_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_148

def optimizedBody638_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_36 optimizedBody638_149

def optimizedBody638_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_3 optimizedBody638_150

def optimizedBody638_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_151

def optimizedBody638_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_1 optimizedBody638_152

def optimizedBody638_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_0 optimizedBody638_153

def oracle638 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 12))))
              5 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 11 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 4))) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 6 (Flapjack.Spt.ls 8)) 11
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 1)) 2 (Flapjack.Spt.ls 8)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 8))))
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 11 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 8 (Flapjack.Spt.ls 12))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 12))) 4
                (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 13)) 6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 0 (Flapjack.Spt.ls 2))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 8
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 8 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))))
              4
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 8 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 11))) 11
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 10))))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 12 (Flapjack.Spt.ls 7)) 4
                (Flapjack.Spt.bn (Flapjack.Spt.ls 14) (Flapjack.Spt.ls 9)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.ls 11)))
              2
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 4 (Flapjack.Spt.ls 13)) 8
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 13))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 1))) 8
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 12))) 8
                (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 9))))))))
      Flapjack.Spt.ln))
def optimized638 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(638, 6, optimizedBody638_154)
end InitECandidate.Proofs.SmallStages.Oracles638
