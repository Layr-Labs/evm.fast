import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody77_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody77_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody77_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody77_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody77_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody77_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody77_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody77_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 2), (10, 10), (6, 6)]

def optimizedBody77_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6)]

def optimizedBody77_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 10 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody77_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody77_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody77_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody77_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 10 (Flapjack.WordRegImm.reg 4)))

def optimizedBody77_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody77_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody77_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody77_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (2, 2)]

def optimizedBody77_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 12 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody77_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4)]

def optimizedBody77_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody77_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (10, 10)]

def optimizedBody77_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody77_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 12 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody77_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody77_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 12 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody77_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody77_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody77_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody77_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (10, 16), (6, 6)]

def optimizedBody77_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody77_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_29 optimizedBody77_30

def optimizedBody77_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_28 optimizedBody77_31

def optimizedBody77_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_27 optimizedBody77_32

def optimizedBody77_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_26 optimizedBody77_33

def optimizedBody77_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_19 optimizedBody77_34

def optimizedBody77_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_25 optimizedBody77_35

def optimizedBody77_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_17 optimizedBody77_36

def optimizedBody77_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_22 optimizedBody77_37

def optimizedBody77_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_21 optimizedBody77_38

def optimizedBody77_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_24 optimizedBody77_39

def optimizedBody77_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_19 optimizedBody77_40

def optimizedBody77_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_23 optimizedBody77_41

def optimizedBody77_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_17 optimizedBody77_42

def optimizedBody77_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_22 optimizedBody77_43

def optimizedBody77_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_21 optimizedBody77_44

def optimizedBody77_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_20 optimizedBody77_45

def optimizedBody77_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_19 optimizedBody77_46

def optimizedBody77_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_18 optimizedBody77_47

def optimizedBody77_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_17 optimizedBody77_48

def optimizedBody77_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_16 optimizedBody77_49

def optimizedBody77_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_15 optimizedBody77_50

def optimizedBody77_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_14 optimizedBody77_51

def optimizedBody77_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_13 optimizedBody77_52

def optimizedBody77_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_12 optimizedBody77_53

def optimizedBody77_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_11 optimizedBody77_54

def optimizedBody77_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_10 optimizedBody77_55

def optimizedBody77_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_56

def optimizedBody77_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (6, 6)]

def optimizedBody77_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody77_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_58 optimizedBody77_59

def optimizedBody77_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_60

def optimizedBody77_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 16) optimizedBody77_57 optimizedBody77_61

def optimizedBody77_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (10, 10), (6, 6)]

def optimizedBody77_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_63

def optimizedBody77_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_62 optimizedBody77_64

def optimizedBody77_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_9 optimizedBody77_65

def optimizedBody77_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_8 optimizedBody77_66

def optimizedBody77_68 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) optimizedBody77_67 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody77_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody77_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.reg 4)))

def optimizedBody77_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody77_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (10, 8), (6, 6)]

def optimizedBody77_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_72 optimizedBody77_30

def optimizedBody77_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_16 optimizedBody77_73

def optimizedBody77_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_15 optimizedBody77_74

def optimizedBody77_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_71 optimizedBody77_75

def optimizedBody77_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_70 optimizedBody77_76

def optimizedBody77_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_12 optimizedBody77_77

def optimizedBody77_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_11 optimizedBody77_78

def optimizedBody77_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_10 optimizedBody77_79

def optimizedBody77_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_80

def optimizedBody77_82 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 8) optimizedBody77_81 optimizedBody77_61

def optimizedBody77_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_82 optimizedBody77_64

def optimizedBody77_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_69 optimizedBody77_83

def optimizedBody77_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_8 optimizedBody77_84

def optimizedBody77_86 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) optimizedBody77_85 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody77_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (2, 2), (10, 10), (6, 6)]

def optimizedBody77_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_87

def optimizedBody77_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_86 optimizedBody77_88

def optimizedBody77_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_7 optimizedBody77_89

def optimizedBody77_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_90

def optimizedBody77_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_91

def optimizedBody77_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_68 optimizedBody77_92

def optimizedBody77_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_7 optimizedBody77_93

def optimizedBody77_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_94

def optimizedBody77_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_95

def optimizedBody77_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 12) optimizedBody77_96 optimizedBody77_88

def optimizedBody77_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody77_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody77_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody77_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody77_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 12 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody77_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody77_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody77_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 2)]

def optimizedBody77_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody77_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 12 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody77_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 8 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody77_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 10 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody77_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody77_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 10 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody77_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 8 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody77_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 10 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody77_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody77_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 10 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody77_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 8 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody77_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 10 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody77_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody77_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody77_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody77_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody77_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody77_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (10, 14), (6, 6)]

def optimizedBody77_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_123 optimizedBody77_30

def optimizedBody77_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_122 optimizedBody77_124

def optimizedBody77_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_121 optimizedBody77_125

def optimizedBody77_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_120 optimizedBody77_126

def optimizedBody77_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_105 optimizedBody77_127

def optimizedBody77_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_119 optimizedBody77_128

def optimizedBody77_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_118 optimizedBody77_129

def optimizedBody77_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_19 optimizedBody77_130

def optimizedBody77_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_107 optimizedBody77_131

def optimizedBody77_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_101 optimizedBody77_132

def optimizedBody77_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_117 optimizedBody77_133

def optimizedBody77_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_105 optimizedBody77_134

def optimizedBody77_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_104 optimizedBody77_135

def optimizedBody77_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_116 optimizedBody77_136

def optimizedBody77_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_19 optimizedBody77_137

def optimizedBody77_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_107 optimizedBody77_138

def optimizedBody77_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_101 optimizedBody77_139

def optimizedBody77_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_115 optimizedBody77_140

def optimizedBody77_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_105 optimizedBody77_141

def optimizedBody77_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_104 optimizedBody77_142

def optimizedBody77_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_114 optimizedBody77_143

def optimizedBody77_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_19 optimizedBody77_144

def optimizedBody77_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_107 optimizedBody77_145

def optimizedBody77_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_101 optimizedBody77_146

def optimizedBody77_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_113 optimizedBody77_147

def optimizedBody77_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_105 optimizedBody77_148

def optimizedBody77_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_104 optimizedBody77_149

def optimizedBody77_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_112 optimizedBody77_150

def optimizedBody77_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_19 optimizedBody77_151

def optimizedBody77_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_107 optimizedBody77_152

def optimizedBody77_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_101 optimizedBody77_153

def optimizedBody77_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_111 optimizedBody77_154

def optimizedBody77_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_105 optimizedBody77_155

def optimizedBody77_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_104 optimizedBody77_156

def optimizedBody77_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_110 optimizedBody77_157

def optimizedBody77_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_19 optimizedBody77_158

def optimizedBody77_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_107 optimizedBody77_159

def optimizedBody77_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_101 optimizedBody77_160

def optimizedBody77_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_109 optimizedBody77_161

def optimizedBody77_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_105 optimizedBody77_162

def optimizedBody77_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_104 optimizedBody77_163

def optimizedBody77_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_108 optimizedBody77_164

def optimizedBody77_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_19 optimizedBody77_165

def optimizedBody77_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_107 optimizedBody77_166

def optimizedBody77_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_101 optimizedBody77_167

def optimizedBody77_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_106 optimizedBody77_168

def optimizedBody77_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_105 optimizedBody77_169

def optimizedBody77_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_104 optimizedBody77_170

def optimizedBody77_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_103 optimizedBody77_171

def optimizedBody77_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_19 optimizedBody77_172

def optimizedBody77_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_102 optimizedBody77_173

def optimizedBody77_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_101 optimizedBody77_174

def optimizedBody77_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_100 optimizedBody77_175

def optimizedBody77_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_10 optimizedBody77_176

def optimizedBody77_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_99 optimizedBody77_177

def optimizedBody77_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_13 optimizedBody77_178

def optimizedBody77_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_12 optimizedBody77_179

def optimizedBody77_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_180

def optimizedBody77_182 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 14) optimizedBody77_181 optimizedBody77_61

def optimizedBody77_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_182 optimizedBody77_64

def optimizedBody77_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_98 optimizedBody77_183

def optimizedBody77_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_8 optimizedBody77_184

def optimizedBody77_186 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) optimizedBody77_185 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody77_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (10, 10)]

def optimizedBody77_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody77_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody77_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody77_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_63 optimizedBody77_30

def optimizedBody77_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_190 optimizedBody77_191

def optimizedBody77_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_189 optimizedBody77_192

def optimizedBody77_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_188 optimizedBody77_193

def optimizedBody77_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_121 optimizedBody77_194

def optimizedBody77_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_11 optimizedBody77_195

def optimizedBody77_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_10 optimizedBody77_196

def optimizedBody77_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_119 optimizedBody77_197

def optimizedBody77_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_13 optimizedBody77_198

def optimizedBody77_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_12 optimizedBody77_199

def optimizedBody77_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_200

def optimizedBody77_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_59

def optimizedBody77_203 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 6) optimizedBody77_201 optimizedBody77_202

def optimizedBody77_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_203 optimizedBody77_64

def optimizedBody77_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_187 optimizedBody77_204

def optimizedBody77_206 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) optimizedBody77_205 (Flapjack.Spt.ls PUnit.unit)

def optimizedBody77_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody77_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody77_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody77_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_208 optimizedBody77_209

def optimizedBody77_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_207 optimizedBody77_210

def optimizedBody77_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_211

def optimizedBody77_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_206 optimizedBody77_212

def optimizedBody77_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_7 optimizedBody77_213

def optimizedBody77_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_214

def optimizedBody77_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_215

def optimizedBody77_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_186 optimizedBody77_216

def optimizedBody77_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_7 optimizedBody77_217

def optimizedBody77_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_218

def optimizedBody77_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_6 optimizedBody77_219

def optimizedBody77_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_97 optimizedBody77_220

def optimizedBody77_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_5 optimizedBody77_221

def optimizedBody77_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_4 optimizedBody77_222

def optimizedBody77_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_3 optimizedBody77_223

def optimizedBody77_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_2 optimizedBody77_224

def optimizedBody77_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_1 optimizedBody77_225

def optimizedBody77_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody77_0 optimizedBody77_226

def optimized77 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(77, 4, optimizedBody77_227)
end InitECandidate.Proofs.StackAnalysis
