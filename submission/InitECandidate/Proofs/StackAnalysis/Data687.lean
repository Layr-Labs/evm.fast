import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody687_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (6, 4)]

def optimizedBody687_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1152#64)

def optimizedBody687_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6), (48, 2)]

def optimizedBody687_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 44), (0, 46), (4, 48)]

def optimizedBody687_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (0, 46), (4, 48)]

def optimizedBody687_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody687_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_4 optimizedBody687_5

def optimizedBody687_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody687_3, 687, 2)) (some 78) ([2, 4]) (some (2, optimizedBody687_6, 687, 3))

def optimizedBody687_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody687_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody687_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody687_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody687_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody687_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody687_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody687_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody687_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody687_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody687_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody687_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody687_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody687_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody687_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody687_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody687_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody687_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody687_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody687_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody687_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody687_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (12, 12)]

def optimizedBody687_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody687_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (10, 10)]

def optimizedBody687_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody687_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody687_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody687_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody687_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody687_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 768#64)))

def optimizedBody687_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody687_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody687_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody687_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody687_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody687_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody687_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody687_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody687_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody687_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody687_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody687_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody687_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody687_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody687_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def optimizedBody687_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_51 optimizedBody687_52

def optimizedBody687_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_50 optimizedBody687_53

def optimizedBody687_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_49 optimizedBody687_54

def optimizedBody687_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_48 optimizedBody687_55

def optimizedBody687_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_47 optimizedBody687_56

def optimizedBody687_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_46 optimizedBody687_57

def optimizedBody687_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_45 optimizedBody687_58

def optimizedBody687_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_44 optimizedBody687_59

def optimizedBody687_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_43 optimizedBody687_60

def optimizedBody687_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_42 optimizedBody687_61

def optimizedBody687_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_41 optimizedBody687_62

def optimizedBody687_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_11 optimizedBody687_63

def optimizedBody687_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_40 optimizedBody687_64

def optimizedBody687_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_11 optimizedBody687_65

def optimizedBody687_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_39 optimizedBody687_66

def optimizedBody687_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_11 optimizedBody687_67

def optimizedBody687_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_38 optimizedBody687_68

def optimizedBody687_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_11 optimizedBody687_69

def optimizedBody687_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_37 optimizedBody687_70

def optimizedBody687_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_23 optimizedBody687_71

def optimizedBody687_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_36 optimizedBody687_72

def optimizedBody687_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_35 optimizedBody687_73

def optimizedBody687_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_34 optimizedBody687_74

def optimizedBody687_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_33 optimizedBody687_75

def optimizedBody687_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_32 optimizedBody687_76

def optimizedBody687_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_31 optimizedBody687_77

def optimizedBody687_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_30 optimizedBody687_78

def optimizedBody687_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_29 optimizedBody687_79

def optimizedBody687_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_28 optimizedBody687_80

def optimizedBody687_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_11 optimizedBody687_81

def optimizedBody687_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_27 optimizedBody687_82

def optimizedBody687_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_11 optimizedBody687_83

def optimizedBody687_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_26 optimizedBody687_84

def optimizedBody687_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_11 optimizedBody687_85

def optimizedBody687_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_25 optimizedBody687_86

def optimizedBody687_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_11 optimizedBody687_87

def optimizedBody687_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_24 optimizedBody687_88

def optimizedBody687_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_23 optimizedBody687_89

def optimizedBody687_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_22 optimizedBody687_90

def optimizedBody687_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_21 optimizedBody687_91

def optimizedBody687_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_20 optimizedBody687_92

def optimizedBody687_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_19 optimizedBody687_93

def optimizedBody687_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_18 optimizedBody687_94

def optimizedBody687_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_17 optimizedBody687_95

def optimizedBody687_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_16 optimizedBody687_96

def optimizedBody687_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_15 optimizedBody687_97

def optimizedBody687_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_14 optimizedBody687_98

def optimizedBody687_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_11 optimizedBody687_99

def optimizedBody687_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_13 optimizedBody687_100

def optimizedBody687_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_11 optimizedBody687_101

def optimizedBody687_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_12 optimizedBody687_102

def optimizedBody687_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_11 optimizedBody687_103

def optimizedBody687_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_10 optimizedBody687_104

def optimizedBody687_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_9 optimizedBody687_105

def optimizedBody687_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_8 optimizedBody687_106

def optimizedBody687_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_7 optimizedBody687_107

def optimizedBody687_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_2 optimizedBody687_108

def optimizedBody687_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_1 optimizedBody687_109

def optimizedBody687_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody687_0 optimizedBody687_110

def optimized687 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(687, 3, optimizedBody687_111)
end InitECandidate.Proofs.StackAnalysis
