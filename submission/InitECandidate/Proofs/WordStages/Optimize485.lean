import InitECandidate.Proofs.WordStages.Optimize469
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source485
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody485_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (6, 2)]

def optimizedBody485_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody485_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody485_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody485_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody485_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (50, 6)]

def optimizedBody485_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody485_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody485_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody485_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_7 optimizedBody485_8

def optimizedBody485_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody485_6, 485, 2)) (some 74) ([2]) (some (2, optimizedBody485_9, 485, 3))

def optimizedBody485_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody485_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody485_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody485_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 4 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody485_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody485_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody485_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 2), (50, 50)]

def optimizedBody485_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 44), (4, 46), (14, 48), (0, 50)]

def optimizedBody485_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (4, 46), (14, 48), (0, 50)]

def optimizedBody485_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_19 optimizedBody485_8

def optimizedBody485_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody485_18, 485, 4)) (some 78) ([2, 4]) (some (2, optimizedBody485_20, 485, 5))

def optimizedBody485_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody485_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (4, 4), (14, 14), (0, 0), (12, 12)]

def optimizedBody485_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody485_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12)]

def optimizedBody485_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 12 (Flapjack.WordRegImm.reg 0)))

def optimizedBody485_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody485_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody485_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody485_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 91#64)

def optimizedBody485_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody485_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 12 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody485_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody485_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.reg 14)))

def optimizedBody485_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody485_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 12 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody485_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody485_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody485_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (14, 14), (12, 12)]

def optimizedBody485_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody485_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody485_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody485_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody485_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (14, 14), (0, 0), (12, 12), (10, 10)]

def optimizedBody485_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_43 optimizedBody485_44

def optimizedBody485_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_42 optimizedBody485_45

def optimizedBody485_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_41 optimizedBody485_46

def optimizedBody485_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_40 optimizedBody485_47

def optimizedBody485_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_39 optimizedBody485_48

def optimizedBody485_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_38 optimizedBody485_49

def optimizedBody485_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_37 optimizedBody485_50

def optimizedBody485_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_36 optimizedBody485_51

def optimizedBody485_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_31 optimizedBody485_52

def optimizedBody485_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_35 optimizedBody485_53

def optimizedBody485_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_34 optimizedBody485_54

def optimizedBody485_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_33 optimizedBody485_55

def optimizedBody485_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_3 optimizedBody485_56

def optimizedBody485_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_32 optimizedBody485_57

def optimizedBody485_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_31 optimizedBody485_58

def optimizedBody485_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_59

def optimizedBody485_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 96#64)

def optimizedBody485_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1#64)

def optimizedBody485_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18)]

def optimizedBody485_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_62 optimizedBody485_63

def optimizedBody485_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_64

def optimizedBody485_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody485_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_66 optimizedBody485_63

def optimizedBody485_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_67

def optimizedBody485_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 8) optimizedBody485_65 optimizedBody485_68

def optimizedBody485_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 127#64)

def optimizedBody485_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody485_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_71 optimizedBody485_37

def optimizedBody485_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_72

def optimizedBody485_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody485_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_74 optimizedBody485_37

def optimizedBody485_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_75

def optimizedBody485_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 8 (Flapjack.WordRegImm.reg 2) optimizedBody485_73 optimizedBody485_76

def optimizedBody485_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (8, 8)]

def optimizedBody485_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.reg 18)))

def optimizedBody485_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.imm 18446744073709551522#64)))

def optimizedBody485_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (12, 12), (10, 10)]

def optimizedBody485_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_80 optimizedBody485_81

def optimizedBody485_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_28 optimizedBody485_82

def optimizedBody485_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 230#64)

def optimizedBody485_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody485_64 optimizedBody485_67

def optimizedBody485_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 231#64)

def optimizedBody485_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody485_72 optimizedBody485_75

def optimizedBody485_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def optimizedBody485_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 8 (Flapjack.WordRegImm.reg 18)))

def optimizedBody485_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 2#64)

def optimizedBody485_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody485_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody485_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 6), (0, 0), (12, 12)]

def optimizedBody485_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody485_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody485_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody485_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 91#64)

def optimizedBody485_98 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 8 (Flapjack.WordRegImm.reg 18) optimizedBody485_65 optimizedBody485_68

def optimizedBody485_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 127#64)

def optimizedBody485_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 20 (Flapjack.WordRegImm.reg 8) optimizedBody485_73 optimizedBody485_76

def optimizedBody485_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10)]

def optimizedBody485_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_29 optimizedBody485_101

def optimizedBody485_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 10)]

def optimizedBody485_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) optimizedBody485_102 optimizedBody485_103

def optimizedBody485_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (12, 12), (10, 10)]

def optimizedBody485_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_105

def optimizedBody485_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_104 optimizedBody485_106

def optimizedBody485_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_79 optimizedBody485_107

def optimizedBody485_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_78 optimizedBody485_108

def optimizedBody485_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_109

def optimizedBody485_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_100 optimizedBody485_110

def optimizedBody485_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_96 optimizedBody485_111

def optimizedBody485_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_99 optimizedBody485_112

def optimizedBody485_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_113

def optimizedBody485_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_98 optimizedBody485_114

def optimizedBody485_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_97 optimizedBody485_115

def optimizedBody485_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_96 optimizedBody485_116

def optimizedBody485_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_95 optimizedBody485_117

def optimizedBody485_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_94 optimizedBody485_118

def optimizedBody485_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_93 optimizedBody485_119

def optimizedBody485_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_120

def optimizedBody485_122 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 4) optimizedBody485_121 optimizedBody485_106

def optimizedBody485_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_81

def optimizedBody485_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_122 optimizedBody485_123

def optimizedBody485_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_92 optimizedBody485_124

def optimizedBody485_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_91 optimizedBody485_125

def optimizedBody485_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_31 optimizedBody485_126

def optimizedBody485_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_90 optimizedBody485_127

def optimizedBody485_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_128

def optimizedBody485_130 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 8) optimizedBody485_129 optimizedBody485_123

def optimizedBody485_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 232#64)

def optimizedBody485_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody485_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0), (12, 12)]

def optimizedBody485_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody485_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody485_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 82#64)

def optimizedBody485_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody485_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody485_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_137 optimizedBody485_138

def optimizedBody485_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_139

def optimizedBody485_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody485_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_141 optimizedBody485_138

def optimizedBody485_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_142

def optimizedBody485_144 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody485_140 optimizedBody485_143

def optimizedBody485_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody485_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_35 optimizedBody485_145

def optimizedBody485_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_146

def optimizedBody485_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody485_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_148 optimizedBody485_145

def optimizedBody485_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_149

def optimizedBody485_151 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 8 (Flapjack.WordRegImm.reg 2) optimizedBody485_147 optimizedBody485_150

def optimizedBody485_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody485_153 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody485_102 optimizedBody485_103

def optimizedBody485_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_153 optimizedBody485_106

def optimizedBody485_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_152 optimizedBody485_154

def optimizedBody485_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_42 optimizedBody485_155

def optimizedBody485_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_156

def optimizedBody485_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_151 optimizedBody485_157

def optimizedBody485_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_28 optimizedBody485_158

def optimizedBody485_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_70 optimizedBody485_159

def optimizedBody485_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_160

def optimizedBody485_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_144 optimizedBody485_161

def optimizedBody485_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_136 optimizedBody485_162

def optimizedBody485_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_28 optimizedBody485_163

def optimizedBody485_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_135 optimizedBody485_164

def optimizedBody485_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_134 optimizedBody485_165

def optimizedBody485_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_133 optimizedBody485_166

def optimizedBody485_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_167

def optimizedBody485_169 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody485_168 optimizedBody485_106

def optimizedBody485_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_169 optimizedBody485_123

def optimizedBody485_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_92 optimizedBody485_170

def optimizedBody485_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_132 optimizedBody485_171

def optimizedBody485_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_31 optimizedBody485_172

def optimizedBody485_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_90 optimizedBody485_173

def optimizedBody485_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_174

def optimizedBody485_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody485_175 optimizedBody485_123

def optimizedBody485_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_176 optimizedBody485_123

def optimizedBody485_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_131 optimizedBody485_177

def optimizedBody485_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_28 optimizedBody485_178

def optimizedBody485_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_179

def optimizedBody485_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_130 optimizedBody485_180

def optimizedBody485_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_89 optimizedBody485_181

def optimizedBody485_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_78 optimizedBody485_182

def optimizedBody485_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_88 optimizedBody485_183

def optimizedBody485_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_184

def optimizedBody485_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_87 optimizedBody485_185

def optimizedBody485_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_86 optimizedBody485_186

def optimizedBody485_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_28 optimizedBody485_187

def optimizedBody485_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_188

def optimizedBody485_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_85 optimizedBody485_189

def optimizedBody485_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_84 optimizedBody485_190

def optimizedBody485_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_28 optimizedBody485_191

def optimizedBody485_193 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) optimizedBody485_83 optimizedBody485_192

def optimizedBody485_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_44

def optimizedBody485_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_193 optimizedBody485_194

def optimizedBody485_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_79 optimizedBody485_195

def optimizedBody485_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_78 optimizedBody485_196

def optimizedBody485_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_197

def optimizedBody485_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_77 optimizedBody485_198

def optimizedBody485_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_28 optimizedBody485_199

def optimizedBody485_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_70 optimizedBody485_200

def optimizedBody485_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_201

def optimizedBody485_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_69 optimizedBody485_202

def optimizedBody485_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_61 optimizedBody485_203

def optimizedBody485_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_28 optimizedBody485_204

def optimizedBody485_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_205

def optimizedBody485_207 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody485_60 optimizedBody485_206

def optimizedBody485_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody485_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 10 (Flapjack.WordRegImm.reg 12)))

def optimizedBody485_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (14, 14), (0, 0), (12, 12)]

def optimizedBody485_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody485_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_210 optimizedBody485_211

def optimizedBody485_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_209 optimizedBody485_212

def optimizedBody485_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_208 optimizedBody485_213

def optimizedBody485_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_214

def optimizedBody485_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_207 optimizedBody485_215

def optimizedBody485_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_30 optimizedBody485_216

def optimizedBody485_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_28 optimizedBody485_217

def optimizedBody485_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_29 optimizedBody485_218

def optimizedBody485_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_28 optimizedBody485_219

def optimizedBody485_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_27 optimizedBody485_220

def optimizedBody485_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_26 optimizedBody485_221

def optimizedBody485_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_25 optimizedBody485_222

def optimizedBody485_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_223

def optimizedBody485_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody485_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_225

def optimizedBody485_227 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 4) optimizedBody485_224 optimizedBody485_226

def optimizedBody485_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_210

def optimizedBody485_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_227 optimizedBody485_228

def optimizedBody485_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_24 optimizedBody485_229

def optimizedBody485_231 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody485_230 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln)

def optimizedBody485_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 14)]

def optimizedBody485_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2]

def optimizedBody485_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_232 optimizedBody485_233

def optimizedBody485_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_234

def optimizedBody485_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_231 optimizedBody485_235

def optimizedBody485_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_23 optimizedBody485_236

def optimizedBody485_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_237

def optimizedBody485_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_22 optimizedBody485_238

def optimizedBody485_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_239

def optimizedBody485_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_21 optimizedBody485_240

def optimizedBody485_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_17 optimizedBody485_241

def optimizedBody485_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_16 optimizedBody485_242

def optimizedBody485_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_15 optimizedBody485_243

def optimizedBody485_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_14 optimizedBody485_244

def optimizedBody485_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_13 optimizedBody485_245

def optimizedBody485_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_12 optimizedBody485_246

def optimizedBody485_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_11 optimizedBody485_247

def optimizedBody485_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_10 optimizedBody485_248

def optimizedBody485_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_5 optimizedBody485_249

def optimizedBody485_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_4 optimizedBody485_250

def optimizedBody485_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_3 optimizedBody485_251

def optimizedBody485_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_2 optimizedBody485_252

def optimizedBody485_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_1 optimizedBody485_253

def optimizedBody485_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody485_0 optimizedBody485_254

def oracle485 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 9 Flapjack.Spt.ln)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5)))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 Flapjack.Spt.ln) 6 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 4 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7)) 1 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6))) 8
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4)))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 9 (Flapjack.Spt.ls 4)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 10))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 0 (Flapjack.Spt.ls 4)))
              3
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 9 Flapjack.Spt.ln) 7
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)) 2 Flapjack.Spt.ln) 0
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6)) (Flapjack.Spt.ls 9)))
                2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 9)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 7)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 6
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 9)))
                25
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 8
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 5))) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 7 (Flapjack.Spt.ls 4)))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 6))) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 9 Flapjack.Spt.ln) 6
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 7
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)) 6 (Flapjack.Spt.ls 2))))
              0
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0)) 9
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 Flapjack.Spt.ln) 6 Flapjack.Spt.ln) 22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 9))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 9)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))))))
def optimized485 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(485, 3, optimizedBody485_255)
theorem optimize485_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source485, oracle485) = optimized485 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize485_eq
end InitECandidate.Proofs.WordStages
