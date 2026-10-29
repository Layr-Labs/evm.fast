import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody193_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4)]

def optimizedBody193_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody193_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody193_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody193_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 6), (50, 2), (52, 8)]

def optimizedBody193_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (14, 44), (10, 46), (12, 48), (8, 50), (4, 52)]

def optimizedBody193_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (10, 46), (12, 48), (8, 50), (4, 52)]

def optimizedBody193_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody193_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_6 optimizedBody193_7

def optimizedBody193_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody193_5, 193, 2)) (some 185) ([2, 4]) (some (2, optimizedBody193_8, 193, 3))

def optimizedBody193_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody193_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody193_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody193_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def optimizedBody193_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_2 optimizedBody193_13

def optimizedBody193_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_12 optimizedBody193_14

def optimizedBody193_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_15

def optimizedBody193_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody193_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody193_16 optimizedBody193_17

def optimizedBody193_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody193_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 32#64))

def optimizedBody193_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (46, 0)]

def optimizedBody193_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody193_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody193_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody193_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 10), (6, 12), (44, 14), (46, 46), (48, 8)]

def optimizedBody193_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (16, 44), (4, 46), (12, 48)]

def optimizedBody193_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (4, 46), (12, 48)]

def optimizedBody193_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_27 optimizedBody193_7

def optimizedBody193_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody193_26, 193, 4)) (some 79) ([2, 4, 6]) (some (2, optimizedBody193_28, 193, 5))

def optimizedBody193_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2]

def optimizedBody193_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_2 optimizedBody193_30

def optimizedBody193_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_12 optimizedBody193_31

def optimizedBody193_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_32

def optimizedBody193_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody193_33 optimizedBody193_17

def optimizedBody193_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody193_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 40#64))

def optimizedBody193_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody193_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 4 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody193_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody193_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody193_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 24#64))

def optimizedBody193_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody193_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody193_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 12 48#64))

def optimizedBody193_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody193_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 6 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody193_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody193_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 14)))

def optimizedBody193_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody193_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody193_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 18 (Flapjack.WordRegImm.reg 14)))

def optimizedBody193_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (8, 8)]

def optimizedBody193_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody193_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody193_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody193_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody193_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody193_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody193_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 12), (6, 6)]

def optimizedBody193_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_58 optimizedBody193_59

def optimizedBody193_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_57 optimizedBody193_60

def optimizedBody193_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_56 optimizedBody193_61

def optimizedBody193_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_55 optimizedBody193_62

def optimizedBody193_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_2 optimizedBody193_63

def optimizedBody193_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_54 optimizedBody193_64

def optimizedBody193_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_19 optimizedBody193_65

def optimizedBody193_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_53 optimizedBody193_66

def optimizedBody193_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_52 optimizedBody193_67

def optimizedBody193_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_51 optimizedBody193_68

def optimizedBody193_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_47 optimizedBody193_69

def optimizedBody193_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_50 optimizedBody193_70

def optimizedBody193_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_11 optimizedBody193_71

def optimizedBody193_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_49 optimizedBody193_72

def optimizedBody193_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_48 optimizedBody193_73

def optimizedBody193_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_47 optimizedBody193_74

def optimizedBody193_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_46 optimizedBody193_75

def optimizedBody193_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_45 optimizedBody193_76

def optimizedBody193_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_44 optimizedBody193_77

def optimizedBody193_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_35 optimizedBody193_78

def optimizedBody193_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_79

def optimizedBody193_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_59

def optimizedBody193_82 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 6) optimizedBody193_80 optimizedBody193_81

def optimizedBody193_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody193_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody193_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody193_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (4, 4)]

def optimizedBody193_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 12 56#64))

def optimizedBody193_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody193_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody193_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (12, 12)]

def optimizedBody193_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_89 optimizedBody193_90

def optimizedBody193_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_11 optimizedBody193_91

def optimizedBody193_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_12 optimizedBody193_92

def optimizedBody193_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_88 optimizedBody193_93

def optimizedBody193_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_35 optimizedBody193_94

def optimizedBody193_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_95

def optimizedBody193_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 10), (2, 2), (4, 4)]

def optimizedBody193_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody193_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody193_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody193_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody193_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 0), (2, 2), (8, 8)]

def optimizedBody193_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 18 8#64))

def optimizedBody193_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody193_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (2, 2), (8, 8)]

def optimizedBody193_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 18 16#64))

def optimizedBody193_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 6), (8, 8)]

def optimizedBody193_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_106 optimizedBody193_107

def optimizedBody193_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_105 optimizedBody193_108

def optimizedBody193_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_109

def optimizedBody193_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_107

def optimizedBody193_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 4) optimizedBody193_110 optimizedBody193_111

def optimizedBody193_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18 6 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody193_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 18 (Flapjack.WordRegImm.reg 2)))

def optimizedBody193_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (14, 14)]

def optimizedBody193_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody193_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody193_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody193_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody193_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody193_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (8, 8)]

def optimizedBody193_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_120 optimizedBody193_121

def optimizedBody193_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_119 optimizedBody193_122

def optimizedBody193_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_118 optimizedBody193_123

def optimizedBody193_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_35 optimizedBody193_124

def optimizedBody193_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_125

def optimizedBody193_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody193_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.reg 2)))

def optimizedBody193_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody193_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody193_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_119 optimizedBody193_120

def optimizedBody193_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_130 optimizedBody193_131

def optimizedBody193_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_2 optimizedBody193_132

def optimizedBody193_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_133

def optimizedBody193_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody193_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_135 optimizedBody193_131

def optimizedBody193_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_2 optimizedBody193_136

def optimizedBody193_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_137

def optimizedBody193_139 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 8) optimizedBody193_134 optimizedBody193_138

def optimizedBody193_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_121

def optimizedBody193_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_139 optimizedBody193_140

def optimizedBody193_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_19 optimizedBody193_141

def optimizedBody193_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_129 optimizedBody193_142

def optimizedBody193_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_128 optimizedBody193_143

def optimizedBody193_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_2 optimizedBody193_144

def optimizedBody193_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_127 optimizedBody193_145

def optimizedBody193_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_47 optimizedBody193_146

def optimizedBody193_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_147

def optimizedBody193_149 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 18) optimizedBody193_126 optimizedBody193_148

def optimizedBody193_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (0, 0), (8, 8)]

def optimizedBody193_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 72#64))

def optimizedBody193_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody193_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody193_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody193_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody193_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_155 optimizedBody193_90

def optimizedBody193_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_154 optimizedBody193_156

def optimizedBody193_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_153 optimizedBody193_157

def optimizedBody193_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_35 optimizedBody193_158

def optimizedBody193_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_89 optimizedBody193_159

def optimizedBody193_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_152 optimizedBody193_160

def optimizedBody193_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_151 optimizedBody193_161

def optimizedBody193_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_150 optimizedBody193_162

def optimizedBody193_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_163

def optimizedBody193_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_149 optimizedBody193_164

def optimizedBody193_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_117 optimizedBody193_165

def optimizedBody193_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_47 optimizedBody193_166

def optimizedBody193_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_116 optimizedBody193_167

def optimizedBody193_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_115 optimizedBody193_168

def optimizedBody193_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_114 optimizedBody193_169

def optimizedBody193_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_2 optimizedBody193_170

def optimizedBody193_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_113 optimizedBody193_171

def optimizedBody193_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_45 optimizedBody193_172

def optimizedBody193_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_173

def optimizedBody193_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_112 optimizedBody193_174

def optimizedBody193_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_104 optimizedBody193_175

def optimizedBody193_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_103 optimizedBody193_176

def optimizedBody193_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_102 optimizedBody193_177

def optimizedBody193_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_101 optimizedBody193_178

def optimizedBody193_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_100 optimizedBody193_179

def optimizedBody193_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_2 optimizedBody193_180

def optimizedBody193_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_99 optimizedBody193_181

def optimizedBody193_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_19 optimizedBody193_182

def optimizedBody193_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_98 optimizedBody193_183

def optimizedBody193_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_97 optimizedBody193_184

def optimizedBody193_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_185

def optimizedBody193_187 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody193_96 optimizedBody193_186

def optimizedBody193_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10), (4, 4)]

def optimizedBody193_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 12 72#64))

def optimizedBody193_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody193_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody193_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody193_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody193_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody193_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_194 optimizedBody193_31

def optimizedBody193_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_193 optimizedBody193_195

def optimizedBody193_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_192 optimizedBody193_196

def optimizedBody193_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_153 optimizedBody193_197

def optimizedBody193_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_35 optimizedBody193_198

def optimizedBody193_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_191 optimizedBody193_199

def optimizedBody193_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_190 optimizedBody193_200

def optimizedBody193_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_189 optimizedBody193_201

def optimizedBody193_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_188 optimizedBody193_202

def optimizedBody193_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_203

def optimizedBody193_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_187 optimizedBody193_204

def optimizedBody193_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_87 optimizedBody193_205

def optimizedBody193_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_86 optimizedBody193_206

def optimizedBody193_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_85 optimizedBody193_207

def optimizedBody193_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_84 optimizedBody193_208

def optimizedBody193_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_83 optimizedBody193_209

def optimizedBody193_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_35 optimizedBody193_210

def optimizedBody193_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_211

def optimizedBody193_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_82 optimizedBody193_212

def optimizedBody193_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_43 optimizedBody193_213

def optimizedBody193_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_42 optimizedBody193_214

def optimizedBody193_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_41 optimizedBody193_215

def optimizedBody193_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_35 optimizedBody193_216

def optimizedBody193_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_40 optimizedBody193_217

def optimizedBody193_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_39 optimizedBody193_218

def optimizedBody193_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_2 optimizedBody193_219

def optimizedBody193_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_38 optimizedBody193_220

def optimizedBody193_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_37 optimizedBody193_221

def optimizedBody193_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_36 optimizedBody193_222

def optimizedBody193_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_35 optimizedBody193_223

def optimizedBody193_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_224

def optimizedBody193_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_225

def optimizedBody193_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_34 optimizedBody193_226

def optimizedBody193_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_12 optimizedBody193_227

def optimizedBody193_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_11 optimizedBody193_228

def optimizedBody193_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_229

def optimizedBody193_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_29 optimizedBody193_230

def optimizedBody193_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_25 optimizedBody193_231

def optimizedBody193_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_24 optimizedBody193_232

def optimizedBody193_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_23 optimizedBody193_233

def optimizedBody193_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_22 optimizedBody193_234

def optimizedBody193_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_21 optimizedBody193_235

def optimizedBody193_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_20 optimizedBody193_236

def optimizedBody193_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_19 optimizedBody193_237

def optimizedBody193_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_238

def optimizedBody193_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_239

def optimizedBody193_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_18 optimizedBody193_240

def optimizedBody193_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_12 optimizedBody193_241

def optimizedBody193_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_11 optimizedBody193_242

def optimizedBody193_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_10 optimizedBody193_243

def optimizedBody193_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_9 optimizedBody193_244

def optimizedBody193_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_4 optimizedBody193_245

def optimizedBody193_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_3 optimizedBody193_246

def optimizedBody193_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_2 optimizedBody193_247

def optimizedBody193_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_1 optimizedBody193_248

def optimizedBody193_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody193_0 optimizedBody193_249

def optimized193 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(193, 3, optimizedBody193_250)
end InitECandidate.Proofs.StackAnalysis
