import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody146_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 4), (0, 0), (2, 2)]

def optimizedBody146_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody146_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody146_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody146_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody146_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_3 optimizedBody146_4

def optimizedBody146_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_5

def optimizedBody146_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody146_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_7 optimizedBody146_4

def optimizedBody146_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_8

def optimizedBody146_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 4) optimizedBody146_6 optimizedBody146_9

def optimizedBody146_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 2)]

def optimizedBody146_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 14 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody146_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody146_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody146_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody146_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_14 optimizedBody146_15

def optimizedBody146_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_16

def optimizedBody146_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody146_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_18 optimizedBody146_15

def optimizedBody146_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_19

def optimizedBody146_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody146_17 optimizedBody146_20

def optimizedBody146_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody146_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody146_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody146_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody146_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 14)]

def optimizedBody146_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody146_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody146_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody146_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_28 optimizedBody146_29

def optimizedBody146_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody146_27, 146, 2)) (some 84) ([2]) (some (2, optimizedBody146_30, 146, 3))

def optimizedBody146_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody146_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody146_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 0)]

def optimizedBody146_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody146_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody146_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_36 optimizedBody146_29

def optimizedBody146_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody146_35, 146, 4)) (some 84) ([2]) (some (2, optimizedBody146_37, 146, 5))

def optimizedBody146_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody146_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 4), (50, 0)]

def optimizedBody146_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48), (0, 50)]

def optimizedBody146_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50)]

def optimizedBody146_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_42 optimizedBody146_29

def optimizedBody146_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody146_41, 146, 6)) (some 84) ([2]) (some (2, optimizedBody146_43, 146, 7))

def optimizedBody146_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody146_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 4)]

def optimizedBody146_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 2), (10, 44), (8, 46), (6, 48), (4, 50)]

def optimizedBody146_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (8, 46), (6, 48), (4, 50)]

def optimizedBody146_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_48 optimizedBody146_29

def optimizedBody146_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody146_47, 146, 8)) (some 84) ([2]) (some (2, optimizedBody146_49, 146, 9))

def optimizedBody146_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 16), (4, 4), (6, 6), (8, 8)]

def optimizedBody146_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4, 6, 8]

def optimizedBody146_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_51 optimizedBody146_52

def optimizedBody146_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_53

def optimizedBody146_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_50 optimizedBody146_54

def optimizedBody146_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_46 optimizedBody146_55

def optimizedBody146_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_45 optimizedBody146_56

def optimizedBody146_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_32 optimizedBody146_57

def optimizedBody146_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_58

def optimizedBody146_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_44 optimizedBody146_59

def optimizedBody146_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_40 optimizedBody146_60

def optimizedBody146_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_39 optimizedBody146_61

def optimizedBody146_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_32 optimizedBody146_62

def optimizedBody146_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_63

def optimizedBody146_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_38 optimizedBody146_64

def optimizedBody146_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_34 optimizedBody146_65

def optimizedBody146_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_33 optimizedBody146_66

def optimizedBody146_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_32 optimizedBody146_67

def optimizedBody146_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_68

def optimizedBody146_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_31 optimizedBody146_69

def optimizedBody146_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_26 optimizedBody146_70

def optimizedBody146_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_25 optimizedBody146_71

def optimizedBody146_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_24 optimizedBody146_72

def optimizedBody146_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(12, 12), (14, 14), (0, 0)]

def optimizedBody146_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody146_73 optimizedBody146_74

def optimizedBody146_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def optimizedBody146_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody146_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 2), (12, 12), (6, 6), (10, 10), (14, 14), (20, 20)]

def optimizedBody146_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody146_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody146_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 12 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody146_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody146_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 16 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody146_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (10, 10)]

def optimizedBody146_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 10 (Flapjack.WordRegImm.reg 14)))

def optimizedBody146_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody146_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (18, 18)]

def optimizedBody146_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 16 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody146_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody146_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody146_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 18 (Flapjack.WordRegImm.reg 8)))

def optimizedBody146_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody146_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 16 16 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody146_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody146_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody146_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody146_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 8)]

def optimizedBody146_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_96 optimizedBody146_97

def optimizedBody146_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_95 optimizedBody146_98

def optimizedBody146_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_99

def optimizedBody146_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_97

def optimizedBody146_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 18) optimizedBody146_100 optimizedBody146_101

def optimizedBody146_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1#64)

def optimizedBody146_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody146_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody146_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8)]

def optimizedBody146_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_105 optimizedBody146_106

def optimizedBody146_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_104 optimizedBody146_107

def optimizedBody146_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_108

def optimizedBody146_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_106

def optimizedBody146_111 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 18) optimizedBody146_109 optimizedBody146_110

def optimizedBody146_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 2#64)

def optimizedBody146_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody146_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody146_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8)]

def optimizedBody146_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_114 optimizedBody146_115

def optimizedBody146_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_113 optimizedBody146_116

def optimizedBody146_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_117

def optimizedBody146_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_115

def optimizedBody146_120 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 18) optimizedBody146_118 optimizedBody146_119

def optimizedBody146_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 3#64)

def optimizedBody146_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (8, 8)]

def optimizedBody146_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 20 8 (Flapjack.WordRegImm.reg 20)))

def optimizedBody146_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20)]

def optimizedBody146_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_123 optimizedBody146_124

def optimizedBody146_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_122 optimizedBody146_125

def optimizedBody146_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_126

def optimizedBody146_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_124

def optimizedBody146_129 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 18) optimizedBody146_127 optimizedBody146_128

def optimizedBody146_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody146_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (12, 12), (6, 6), (10, 10), (14, 14), (20, 20)]

def optimizedBody146_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody146_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_131 optimizedBody146_132

def optimizedBody146_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_130 optimizedBody146_133

def optimizedBody146_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_82 optimizedBody146_134

def optimizedBody146_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_135

def optimizedBody146_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_129 optimizedBody146_136

def optimizedBody146_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_121 optimizedBody146_137

def optimizedBody146_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_92 optimizedBody146_138

def optimizedBody146_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_139

def optimizedBody146_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_120 optimizedBody146_140

def optimizedBody146_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_112 optimizedBody146_141

def optimizedBody146_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_92 optimizedBody146_142

def optimizedBody146_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_143

def optimizedBody146_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_111 optimizedBody146_144

def optimizedBody146_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_103 optimizedBody146_145

def optimizedBody146_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_92 optimizedBody146_146

def optimizedBody146_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_147

def optimizedBody146_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_102 optimizedBody146_148

def optimizedBody146_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_94 optimizedBody146_149

def optimizedBody146_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_92 optimizedBody146_150

def optimizedBody146_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_93 optimizedBody146_151

def optimizedBody146_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_92 optimizedBody146_152

def optimizedBody146_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_91 optimizedBody146_153

def optimizedBody146_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_90 optimizedBody146_154

def optimizedBody146_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_89 optimizedBody146_155

def optimizedBody146_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_88 optimizedBody146_156

def optimizedBody146_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_87 optimizedBody146_157

def optimizedBody146_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_86 optimizedBody146_158

def optimizedBody146_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_85 optimizedBody146_159

def optimizedBody146_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_84 optimizedBody146_160

def optimizedBody146_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_83 optimizedBody146_161

def optimizedBody146_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_82 optimizedBody146_162

def optimizedBody146_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_81 optimizedBody146_163

def optimizedBody146_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_80 optimizedBody146_164

def optimizedBody146_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_165

def optimizedBody146_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody146_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_167

def optimizedBody146_169 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 12) optimizedBody146_166 optimizedBody146_168

def optimizedBody146_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_131

def optimizedBody146_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_169 optimizedBody146_170

def optimizedBody146_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_79 optimizedBody146_171

def optimizedBody146_173 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody146_172 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody146_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 20)]

def optimizedBody146_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody146_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_174 optimizedBody146_175

def optimizedBody146_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_176

def optimizedBody146_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_173 optimizedBody146_177

def optimizedBody146_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_78 optimizedBody146_178

def optimizedBody146_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_179

def optimizedBody146_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_77 optimizedBody146_180

def optimizedBody146_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_76 optimizedBody146_181

def optimizedBody146_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_13 optimizedBody146_182

def optimizedBody146_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_7 optimizedBody146_183

def optimizedBody146_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_18 optimizedBody146_184

def optimizedBody146_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_185

def optimizedBody146_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_75 optimizedBody146_186

def optimizedBody146_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_23 optimizedBody146_187

def optimizedBody146_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_22 optimizedBody146_188

def optimizedBody146_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_189

def optimizedBody146_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_21 optimizedBody146_190

def optimizedBody146_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_13 optimizedBody146_191

def optimizedBody146_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_12 optimizedBody146_192

def optimizedBody146_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_11 optimizedBody146_193

def optimizedBody146_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_2 optimizedBody146_194

def optimizedBody146_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_10 optimizedBody146_195

def optimizedBody146_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_1 optimizedBody146_196

def optimizedBody146_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody146_0 optimizedBody146_197

def optimized146 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(146, 3, optimizedBody146_198)
end InitECandidate.Proofs.StackAnalysis
