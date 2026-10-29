import InitECandidate.Proofs.WordStages.Optimize753
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source769
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody769_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (16, 2)]

def optimizedBody769_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody769_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 4)]

def optimizedBody769_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 14 56#64))

def optimizedBody769_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody769_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 14 64#64))

def optimizedBody769_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 14 72#64))

def optimizedBody769_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 14 80#64))

def optimizedBody769_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 14 88#64))

def optimizedBody769_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0), (46, 14), (48, 16)]

def optimizedBody769_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(26, 12), (24, 8), (30, 10), (28, 2), (34, 4), (32, 6), (38, 44), (0, 46), (36, 48)]

def optimizedBody769_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (38, 44), (0, 46), (36, 48)]

def optimizedBody769_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody769_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_11 optimizedBody769_12

def optimizedBody769_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody769_10, 769, 2)) (some 712) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody769_13, 769, 3))

def optimizedBody769_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody769_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (36, 36)]

def optimizedBody769_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody769_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody769_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody769_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody769_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody769_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody769_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody769_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody769_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 104#64))

def optimizedBody769_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody769_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 120#64))

def optimizedBody769_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 128#64))

def optimizedBody769_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 136#64))

def optimizedBody769_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (20, 20), (18, 18), (16, 16), (14, 14), (12, 12), (10, 10)]

def optimizedBody769_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 36 0#64))

def optimizedBody769_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (10, 10)]

def optimizedBody769_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 36 8#64))

def optimizedBody769_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (12, 12)]

def optimizedBody769_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 36 16#64))

def optimizedBody769_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (14, 14)]

def optimizedBody769_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 36 24#64))

def optimizedBody769_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (16, 16)]

def optimizedBody769_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 36 32#64))

def optimizedBody769_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (18, 18)]

def optimizedBody769_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 36 40#64))

def optimizedBody769_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36)]

def optimizedBody769_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 36 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody769_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6), (0, 0), (2, 2), (8, 8), (4, 4), (22, 22)]

def optimizedBody769_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody769_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (22, 22)]

def optimizedBody769_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody769_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4)]

def optimizedBody769_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody769_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody769_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody769_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 2)]

def optimizedBody769_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody769_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody769_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 10 40#64))

def optimizedBody769_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(36, 36)]

def optimizedBody769_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_55 optimizedBody769_56

def optimizedBody769_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_54 optimizedBody769_57

def optimizedBody769_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_53 optimizedBody769_58

def optimizedBody769_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_52 optimizedBody769_59

def optimizedBody769_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_51 optimizedBody769_60

def optimizedBody769_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_50 optimizedBody769_61

def optimizedBody769_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_49 optimizedBody769_62

def optimizedBody769_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_48 optimizedBody769_63

def optimizedBody769_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_47 optimizedBody769_64

def optimizedBody769_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_46 optimizedBody769_65

def optimizedBody769_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_45 optimizedBody769_66

def optimizedBody769_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_44 optimizedBody769_67

def optimizedBody769_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_43 optimizedBody769_68

def optimizedBody769_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_42 optimizedBody769_69

def optimizedBody769_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_41 optimizedBody769_70

def optimizedBody769_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_40 optimizedBody769_71

def optimizedBody769_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_39 optimizedBody769_72

def optimizedBody769_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_38 optimizedBody769_73

def optimizedBody769_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_37 optimizedBody769_74

def optimizedBody769_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_36 optimizedBody769_75

def optimizedBody769_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_35 optimizedBody769_76

def optimizedBody769_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_34 optimizedBody769_77

def optimizedBody769_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_33 optimizedBody769_78

def optimizedBody769_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_32 optimizedBody769_79

def optimizedBody769_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_31 optimizedBody769_80

def optimizedBody769_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_30 optimizedBody769_81

def optimizedBody769_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_29 optimizedBody769_82

def optimizedBody769_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_17 optimizedBody769_83

def optimizedBody769_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_28 optimizedBody769_84

def optimizedBody769_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_17 optimizedBody769_85

def optimizedBody769_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_27 optimizedBody769_86

def optimizedBody769_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_17 optimizedBody769_87

def optimizedBody769_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_26 optimizedBody769_88

def optimizedBody769_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_17 optimizedBody769_89

def optimizedBody769_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_25 optimizedBody769_90

def optimizedBody769_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_17 optimizedBody769_91

def optimizedBody769_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_24 optimizedBody769_92

def optimizedBody769_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_17 optimizedBody769_93

def optimizedBody769_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_23 optimizedBody769_94

def optimizedBody769_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_17 optimizedBody769_95

def optimizedBody769_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_22 optimizedBody769_96

def optimizedBody769_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_17 optimizedBody769_97

def optimizedBody769_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_21 optimizedBody769_98

def optimizedBody769_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_17 optimizedBody769_99

def optimizedBody769_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_20 optimizedBody769_100

def optimizedBody769_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_17 optimizedBody769_101

def optimizedBody769_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_19 optimizedBody769_102

def optimizedBody769_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_17 optimizedBody769_103

def optimizedBody769_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_18 optimizedBody769_104

def optimizedBody769_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_17 optimizedBody769_105

def optimizedBody769_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_15 optimizedBody769_106

def optimizedBody769_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_15 optimizedBody769_56

def optimizedBody769_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.reg 0) optimizedBody769_107 optimizedBody769_108

def optimizedBody769_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 36 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody769_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (28, 28), (26, 26), (30, 30), (24, 24), (32, 32), (34, 34)]

def optimizedBody769_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody769_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (34, 34)]

def optimizedBody769_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 34 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody769_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (32, 32)]

def optimizedBody769_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 32 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody769_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (24, 24)]

def optimizedBody769_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody769_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (30, 30)]

def optimizedBody769_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody769_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (26, 26)]

def optimizedBody769_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody769_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody769_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody769_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 38 [2]

def optimizedBody769_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_124 optimizedBody769_125

def optimizedBody769_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_123 optimizedBody769_126

def optimizedBody769_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_122 optimizedBody769_127

def optimizedBody769_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_121 optimizedBody769_128

def optimizedBody769_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_120 optimizedBody769_129

def optimizedBody769_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_119 optimizedBody769_130

def optimizedBody769_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_118 optimizedBody769_131

def optimizedBody769_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_117 optimizedBody769_132

def optimizedBody769_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_116 optimizedBody769_133

def optimizedBody769_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_115 optimizedBody769_134

def optimizedBody769_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_114 optimizedBody769_135

def optimizedBody769_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_113 optimizedBody769_136

def optimizedBody769_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_112 optimizedBody769_137

def optimizedBody769_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_111 optimizedBody769_138

def optimizedBody769_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_110 optimizedBody769_139

def optimizedBody769_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_42 optimizedBody769_140

def optimizedBody769_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_15 optimizedBody769_141

def optimizedBody769_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_109 optimizedBody769_142

def optimizedBody769_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_16 optimizedBody769_143

def optimizedBody769_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_15 optimizedBody769_144

def optimizedBody769_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_14 optimizedBody769_145

def optimizedBody769_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_9 optimizedBody769_146

def optimizedBody769_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_8 optimizedBody769_147

def optimizedBody769_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_4 optimizedBody769_148

def optimizedBody769_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_7 optimizedBody769_149

def optimizedBody769_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_4 optimizedBody769_150

def optimizedBody769_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_6 optimizedBody769_151

def optimizedBody769_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_4 optimizedBody769_152

def optimizedBody769_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_5 optimizedBody769_153

def optimizedBody769_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_4 optimizedBody769_154

def optimizedBody769_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_3 optimizedBody769_155

def optimizedBody769_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_2 optimizedBody769_156

def optimizedBody769_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_1 optimizedBody769_157

def optimizedBody769_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody769_0 optimizedBody769_158

def oracle769 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 13))) 7
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 11)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 14 (Flapjack.Spt.ls 0)) 7
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 7))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 17))) 7
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 0)) 19 (Flapjack.Spt.ls 9)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4)) 8
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 5)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 12))) 7
                (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 16 (Flapjack.Spt.ls 1)) 2
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 6))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 12 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 7
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 8)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 10))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 15))) 5
                (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 17 (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 12)) (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 13 (Flapjack.Spt.ls 5)) 3
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 13)) (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)) 0
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 17))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 18))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 18 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 16))) 4
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 16)) (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 15 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 18))) 2
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 15)) (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 14)) 6 (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))))
def optimized769 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(769, 3, optimizedBody769_159)
theorem optimize769_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source769, oracle769) = optimized769 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize769_eq
end InitECandidate.Proofs.WordStages
