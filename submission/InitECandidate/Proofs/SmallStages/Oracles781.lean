import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source781
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles781
def optimizedBody781_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (16, 2)]

def optimizedBody781_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody781_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 4)]

def optimizedBody781_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 14 56#64))

def optimizedBody781_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody781_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 14 64#64))

def optimizedBody781_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 14 72#64))

def optimizedBody781_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 14 80#64))

def optimizedBody781_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 14 88#64))

def optimizedBody781_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0), (46, 14), (48, 16)]

def optimizedBody781_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(26, 12), (24, 8), (30, 10), (28, 2), (34, 4), (32, 6), (38, 44), (0, 46), (36, 48)]

def optimizedBody781_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (38, 44), (0, 46), (36, 48)]

def optimizedBody781_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody781_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_11 optimizedBody781_12

def optimizedBody781_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody781_10, 781, 2)) (some 721) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody781_13, 781, 3))

def optimizedBody781_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody781_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (36, 36)]

def optimizedBody781_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody781_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody781_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody781_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody781_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody781_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody781_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody781_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody781_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 104#64))

def optimizedBody781_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody781_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 120#64))

def optimizedBody781_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 128#64))

def optimizedBody781_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 136#64))

def optimizedBody781_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (20, 20), (18, 18), (16, 16), (14, 14), (12, 12), (10, 10)]

def optimizedBody781_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 36 0#64))

def optimizedBody781_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (10, 10)]

def optimizedBody781_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 36 8#64))

def optimizedBody781_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (12, 12)]

def optimizedBody781_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 36 16#64))

def optimizedBody781_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (14, 14)]

def optimizedBody781_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 36 24#64))

def optimizedBody781_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (16, 16)]

def optimizedBody781_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 36 32#64))

def optimizedBody781_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (18, 18)]

def optimizedBody781_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 36 40#64))

def optimizedBody781_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36)]

def optimizedBody781_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 36 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody781_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6), (0, 0), (2, 2), (8, 8), (4, 4), (22, 22)]

def optimizedBody781_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody781_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (22, 22)]

def optimizedBody781_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody781_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4)]

def optimizedBody781_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody781_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody781_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody781_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 2)]

def optimizedBody781_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody781_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody781_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 10 40#64))

def optimizedBody781_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(36, 36)]

def optimizedBody781_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_55 optimizedBody781_56

def optimizedBody781_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_54 optimizedBody781_57

def optimizedBody781_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_53 optimizedBody781_58

def optimizedBody781_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_52 optimizedBody781_59

def optimizedBody781_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_51 optimizedBody781_60

def optimizedBody781_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_50 optimizedBody781_61

def optimizedBody781_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_49 optimizedBody781_62

def optimizedBody781_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_48 optimizedBody781_63

def optimizedBody781_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_47 optimizedBody781_64

def optimizedBody781_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_46 optimizedBody781_65

def optimizedBody781_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_45 optimizedBody781_66

def optimizedBody781_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_44 optimizedBody781_67

def optimizedBody781_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_43 optimizedBody781_68

def optimizedBody781_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_42 optimizedBody781_69

def optimizedBody781_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_41 optimizedBody781_70

def optimizedBody781_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_40 optimizedBody781_71

def optimizedBody781_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_39 optimizedBody781_72

def optimizedBody781_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_38 optimizedBody781_73

def optimizedBody781_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_37 optimizedBody781_74

def optimizedBody781_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_36 optimizedBody781_75

def optimizedBody781_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_35 optimizedBody781_76

def optimizedBody781_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_34 optimizedBody781_77

def optimizedBody781_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_33 optimizedBody781_78

def optimizedBody781_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_32 optimizedBody781_79

def optimizedBody781_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_31 optimizedBody781_80

def optimizedBody781_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_30 optimizedBody781_81

def optimizedBody781_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_29 optimizedBody781_82

def optimizedBody781_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_17 optimizedBody781_83

def optimizedBody781_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_28 optimizedBody781_84

def optimizedBody781_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_17 optimizedBody781_85

def optimizedBody781_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_27 optimizedBody781_86

def optimizedBody781_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_17 optimizedBody781_87

def optimizedBody781_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_26 optimizedBody781_88

def optimizedBody781_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_17 optimizedBody781_89

def optimizedBody781_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_25 optimizedBody781_90

def optimizedBody781_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_17 optimizedBody781_91

def optimizedBody781_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_24 optimizedBody781_92

def optimizedBody781_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_17 optimizedBody781_93

def optimizedBody781_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_23 optimizedBody781_94

def optimizedBody781_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_17 optimizedBody781_95

def optimizedBody781_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_22 optimizedBody781_96

def optimizedBody781_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_17 optimizedBody781_97

def optimizedBody781_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_21 optimizedBody781_98

def optimizedBody781_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_17 optimizedBody781_99

def optimizedBody781_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_20 optimizedBody781_100

def optimizedBody781_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_17 optimizedBody781_101

def optimizedBody781_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_19 optimizedBody781_102

def optimizedBody781_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_17 optimizedBody781_103

def optimizedBody781_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_18 optimizedBody781_104

def optimizedBody781_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_17 optimizedBody781_105

def optimizedBody781_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_15 optimizedBody781_106

def optimizedBody781_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_15 optimizedBody781_56

def optimizedBody781_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.reg 0) optimizedBody781_107 optimizedBody781_108

def optimizedBody781_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 36 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody781_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (28, 28), (26, 26), (30, 30), (24, 24), (32, 32), (34, 34)]

def optimizedBody781_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody781_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (34, 34)]

def optimizedBody781_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 34 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody781_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (32, 32)]

def optimizedBody781_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 32 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody781_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (24, 24)]

def optimizedBody781_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody781_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (30, 30)]

def optimizedBody781_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody781_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (26, 26)]

def optimizedBody781_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody781_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody781_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody781_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 38 [2]

def optimizedBody781_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_124 optimizedBody781_125

def optimizedBody781_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_123 optimizedBody781_126

def optimizedBody781_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_122 optimizedBody781_127

def optimizedBody781_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_121 optimizedBody781_128

def optimizedBody781_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_120 optimizedBody781_129

def optimizedBody781_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_119 optimizedBody781_130

def optimizedBody781_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_118 optimizedBody781_131

def optimizedBody781_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_117 optimizedBody781_132

def optimizedBody781_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_116 optimizedBody781_133

def optimizedBody781_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_115 optimizedBody781_134

def optimizedBody781_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_114 optimizedBody781_135

def optimizedBody781_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_113 optimizedBody781_136

def optimizedBody781_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_112 optimizedBody781_137

def optimizedBody781_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_111 optimizedBody781_138

def optimizedBody781_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_110 optimizedBody781_139

def optimizedBody781_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_42 optimizedBody781_140

def optimizedBody781_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_15 optimizedBody781_141

def optimizedBody781_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_109 optimizedBody781_142

def optimizedBody781_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_16 optimizedBody781_143

def optimizedBody781_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_15 optimizedBody781_144

def optimizedBody781_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_14 optimizedBody781_145

def optimizedBody781_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_9 optimizedBody781_146

def optimizedBody781_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_8 optimizedBody781_147

def optimizedBody781_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_4 optimizedBody781_148

def optimizedBody781_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_7 optimizedBody781_149

def optimizedBody781_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_4 optimizedBody781_150

def optimizedBody781_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_6 optimizedBody781_151

def optimizedBody781_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_4 optimizedBody781_152

def optimizedBody781_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_5 optimizedBody781_153

def optimizedBody781_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_4 optimizedBody781_154

def optimizedBody781_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_3 optimizedBody781_155

def optimizedBody781_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_2 optimizedBody781_156

def optimizedBody781_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_1 optimizedBody781_157

def optimizedBody781_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_0 optimizedBody781_158

def oracle781 : Option (Spt Nat) :=
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
def optimized781 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(781, 3, optimizedBody781_159)
end InitECandidate.Proofs.SmallStages.Oracles781
