import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody157_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody157_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody157_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody157_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 6 4 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody157_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody157_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody157_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (14, 14), (4, 4), (2, 2)]

def optimizedBody157_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody157_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 136#64)

def optimizedBody157_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody157_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 14 (Flapjack.WordRegImm.reg 2)))

def optimizedBody157_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (14, 14)]

def optimizedBody157_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.reg 4)))

def optimizedBody157_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody157_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2), (14, 14)]

def optimizedBody157_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody157_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody157_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody157_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody157_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody157_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (4, 4), (2, 2)]

def optimizedBody157_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody157_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_20 optimizedBody157_21

def optimizedBody157_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_19 optimizedBody157_22

def optimizedBody157_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_7 optimizedBody157_23

def optimizedBody157_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_18 optimizedBody157_24

def optimizedBody157_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_17 optimizedBody157_25

def optimizedBody157_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_16 optimizedBody157_26

def optimizedBody157_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_15 optimizedBody157_27

def optimizedBody157_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_14 optimizedBody157_28

def optimizedBody157_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_13 optimizedBody157_29

def optimizedBody157_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_12 optimizedBody157_30

def optimizedBody157_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_11 optimizedBody157_31

def optimizedBody157_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_10 optimizedBody157_32

def optimizedBody157_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_9 optimizedBody157_33

def optimizedBody157_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_5 optimizedBody157_34

def optimizedBody157_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody157_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_5 optimizedBody157_36

def optimizedBody157_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 0) optimizedBody157_35 optimizedBody157_37

def optimizedBody157_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_5 optimizedBody157_20

def optimizedBody157_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_38 optimizedBody157_39

def optimizedBody157_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_8 optimizedBody157_40

def optimizedBody157_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_7 optimizedBody157_41

def optimizedBody157_43 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln) optimizedBody157_42 (Flapjack.Spt.bn
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody157_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (2, 2)]

def optimizedBody157_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_5 optimizedBody157_44

def optimizedBody157_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_43 optimizedBody157_45

def optimizedBody157_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_6 optimizedBody157_46

def optimizedBody157_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_5 optimizedBody157_47

def optimizedBody157_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_5 optimizedBody157_48

def optimizedBody157_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 14 (Flapjack.WordRegImm.reg 2)))

def optimizedBody157_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 14 (Flapjack.WordRegImm.reg 4)))

def optimizedBody157_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 20 0#64))

def optimizedBody157_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (4, 4), (14, 14)]

def optimizedBody157_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 20 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody157_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody157_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 20 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody157_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody157_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 20 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody157_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody157_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 20 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody157_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody157_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 20 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody157_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 22 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody157_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 20 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody157_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody157_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 20 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody157_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def optimizedBody157_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody157_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20 20 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody157_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody157_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18 18 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody157_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 18 20 (Flapjack.WordRegImm.reg 18)))

def optimizedBody157_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody157_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20 22 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody157_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 18 18 (Flapjack.WordRegImm.reg 20)))

def optimizedBody157_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody157_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 18 (Flapjack.WordRegImm.reg 10)))

def optimizedBody157_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody157_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody157_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody157_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody157_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody157_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody157_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody157_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody157_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 8 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody157_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody157_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody157_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody157_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (2, 2), (14, 14)]

def optimizedBody157_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody157_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody157_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (0, 0)]

def optimizedBody157_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody157_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_94 optimizedBody157_24

def optimizedBody157_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_93 optimizedBody157_95

def optimizedBody157_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_92 optimizedBody157_96

def optimizedBody157_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_91 optimizedBody157_97

def optimizedBody157_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_90 optimizedBody157_98

def optimizedBody157_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_89 optimizedBody157_99

def optimizedBody157_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_88 optimizedBody157_100

def optimizedBody157_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_87 optimizedBody157_101

def optimizedBody157_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_86 optimizedBody157_102

def optimizedBody157_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_85 optimizedBody157_103

def optimizedBody157_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_84 optimizedBody157_104

def optimizedBody157_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_83 optimizedBody157_105

def optimizedBody157_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_82 optimizedBody157_106

def optimizedBody157_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_81 optimizedBody157_107

def optimizedBody157_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_80 optimizedBody157_108

def optimizedBody157_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_79 optimizedBody157_109

def optimizedBody157_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_78 optimizedBody157_110

def optimizedBody157_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_77 optimizedBody157_111

def optimizedBody157_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_76 optimizedBody157_112

def optimizedBody157_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_75 optimizedBody157_113

def optimizedBody157_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_74 optimizedBody157_114

def optimizedBody157_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_73 optimizedBody157_115

def optimizedBody157_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_72 optimizedBody157_116

def optimizedBody157_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_71 optimizedBody157_117

def optimizedBody157_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_70 optimizedBody157_118

def optimizedBody157_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_69 optimizedBody157_119

def optimizedBody157_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_68 optimizedBody157_120

def optimizedBody157_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_67 optimizedBody157_121

def optimizedBody157_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_66 optimizedBody157_122

def optimizedBody157_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_53 optimizedBody157_123

def optimizedBody157_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_65 optimizedBody157_124

def optimizedBody157_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_64 optimizedBody157_125

def optimizedBody157_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_53 optimizedBody157_126

def optimizedBody157_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_63 optimizedBody157_127

def optimizedBody157_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_62 optimizedBody157_128

def optimizedBody157_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_53 optimizedBody157_129

def optimizedBody157_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_61 optimizedBody157_130

def optimizedBody157_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_60 optimizedBody157_131

def optimizedBody157_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_53 optimizedBody157_132

def optimizedBody157_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_59 optimizedBody157_133

def optimizedBody157_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_58 optimizedBody157_134

def optimizedBody157_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_53 optimizedBody157_135

def optimizedBody157_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_57 optimizedBody157_136

def optimizedBody157_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_56 optimizedBody157_137

def optimizedBody157_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_53 optimizedBody157_138

def optimizedBody157_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_55 optimizedBody157_139

def optimizedBody157_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_54 optimizedBody157_140

def optimizedBody157_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_53 optimizedBody157_141

def optimizedBody157_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_52 optimizedBody157_142

def optimizedBody157_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_51 optimizedBody157_143

def optimizedBody157_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_11 optimizedBody157_144

def optimizedBody157_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_50 optimizedBody157_145

def optimizedBody157_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_9 optimizedBody157_146

def optimizedBody157_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_5 optimizedBody157_147

def optimizedBody157_149 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 0) optimizedBody157_148 optimizedBody157_37

def optimizedBody157_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_149 optimizedBody157_39

def optimizedBody157_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_8 optimizedBody157_150

def optimizedBody157_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_7 optimizedBody157_151

def optimizedBody157_153 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln) optimizedBody157_152 (Flapjack.Spt.bn
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody157_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_153 optimizedBody157_45

def optimizedBody157_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_6 optimizedBody157_154

def optimizedBody157_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_5 optimizedBody157_155

def optimizedBody157_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_5 optimizedBody157_156

def optimizedBody157_158 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 8) optimizedBody157_49 optimizedBody157_157

def optimizedBody157_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody157_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody157_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody157_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody157_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_161 optimizedBody157_162

def optimizedBody157_164 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody157_160, 157, 2)) (some 156) ([2]) (some (2, optimizedBody157_163, 157, 3))

def optimizedBody157_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody157_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody157_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody157_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_166 optimizedBody157_167

def optimizedBody157_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_165 optimizedBody157_168

def optimizedBody157_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_5 optimizedBody157_169

def optimizedBody157_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_164 optimizedBody157_170

def optimizedBody157_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_159 optimizedBody157_171

def optimizedBody157_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_5 optimizedBody157_172

def optimizedBody157_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_158 optimizedBody157_173

def optimizedBody157_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_4 optimizedBody157_174

def optimizedBody157_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_3 optimizedBody157_175

def optimizedBody157_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_2 optimizedBody157_176

def optimizedBody157_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_1 optimizedBody157_177

def optimizedBody157_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody157_0 optimizedBody157_178

def optimized157 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(157, 3, optimizedBody157_179)
end InitECandidate.Proofs.StackAnalysis
