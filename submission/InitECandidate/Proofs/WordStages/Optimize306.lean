import InitECandidate.Proofs.WordStages.Optimize290
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source306
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody306_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody306_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody306_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody306_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (48, 4), (22, 2), (50, 8), (46, 6)]

def optimizedBody306_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody306_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody306_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 22 0#64))

def optimizedBody306_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody306_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody306_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 22), (50, 6), (52, 50), (54, 46)]

def optimizedBody306_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (20, 48), (22, 46), (6, 50), (4, 52), (24, 54)]

def optimizedBody306_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (20, 48), (22, 46), (6, 50), (4, 52), (24, 54)]

def optimizedBody306_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody306_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_11 optimizedBody306_12

def optimizedBody306_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody306_10, 306, 2)) (some 286) ([2]) (some (2, optimizedBody306_13, 306, 3))

def optimizedBody306_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (20, 20), (22, 22), (6, 6), (4, 4), (24, 24)]

def optimizedBody306_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_15

def optimizedBody306_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_14 optimizedBody306_16

def optimizedBody306_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_9 optimizedBody306_17

def optimizedBody306_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_8 optimizedBody306_18

def optimizedBody306_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_19

def optimizedBody306_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (20, 48), (22, 22), (6, 6), (4, 50), (24, 46)]

def optimizedBody306_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_21

def optimizedBody306_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody306_20 optimizedBody306_22

def optimizedBody306_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody306_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 22 40#64))

def optimizedBody306_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (24, 24), (6, 6)]

def optimizedBody306_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 24 (Flapjack.WordRegImm.reg 4)))

def optimizedBody306_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 22 32#64))

def optimizedBody306_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (4, 4)]

def optimizedBody306_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 20)))

def optimizedBody306_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 22)]

def optimizedBody306_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (20, 44), (6, 46)]

def optimizedBody306_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (20, 44), (6, 46)]

def optimizedBody306_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_33 optimizedBody306_12

def optimizedBody306_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody306_32, 306, 4)) (some 79) ([2, 4, 6]) (some (2, optimizedBody306_34, 306, 5))

def optimizedBody306_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody306_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 48#64))

def optimizedBody306_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 56#64))

def optimizedBody306_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6)]

def optimizedBody306_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 20 [2, 4, 6]

def optimizedBody306_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_39 optimizedBody306_40

def optimizedBody306_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_38 optimizedBody306_41

def optimizedBody306_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_7 optimizedBody306_42

def optimizedBody306_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_37 optimizedBody306_43

def optimizedBody306_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_7 optimizedBody306_44

def optimizedBody306_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_24 optimizedBody306_45

def optimizedBody306_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_46

def optimizedBody306_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody306_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody306_47 optimizedBody306_48

def optimizedBody306_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20)]

def optimizedBody306_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_50

def optimizedBody306_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_51

def optimizedBody306_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_49 optimizedBody306_52

def optimizedBody306_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_5 optimizedBody306_53

def optimizedBody306_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_36 optimizedBody306_54

def optimizedBody306_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_55

def optimizedBody306_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_35 optimizedBody306_56

def optimizedBody306_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_31 optimizedBody306_57

def optimizedBody306_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_30 optimizedBody306_58

def optimizedBody306_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_29 optimizedBody306_59

def optimizedBody306_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_28 optimizedBody306_60

def optimizedBody306_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_4 optimizedBody306_61

def optimizedBody306_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_62

def optimizedBody306_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 44)]

def optimizedBody306_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_64

def optimizedBody306_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody306_63 optimizedBody306_65

def optimizedBody306_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody306_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody306_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_68 optimizedBody306_41

def optimizedBody306_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_67 optimizedBody306_69

def optimizedBody306_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_5 optimizedBody306_70

def optimizedBody306_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_71

def optimizedBody306_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_66 optimizedBody306_72

def optimizedBody306_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_27 optimizedBody306_73

def optimizedBody306_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_26 optimizedBody306_74

def optimizedBody306_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_25 optimizedBody306_75

def optimizedBody306_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_4 optimizedBody306_76

def optimizedBody306_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_77

def optimizedBody306_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 44), (8, 20), (18, 22), (14, 6), (16, 4), (0, 24)]

def optimizedBody306_80 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody306_78 optimizedBody306_79

def optimizedBody306_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody306_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody306_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 18 40#64))

def optimizedBody306_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (0, 0)]

def optimizedBody306_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 0 (Flapjack.WordRegImm.reg 16)))

def optimizedBody306_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody306_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4, 6]

def optimizedBody306_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_39 optimizedBody306_87

def optimizedBody306_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_68 optimizedBody306_88

def optimizedBody306_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_67 optimizedBody306_89

def optimizedBody306_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_5 optimizedBody306_90

def optimizedBody306_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_91

def optimizedBody306_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 12) optimizedBody306_92 optimizedBody306_48

def optimizedBody306_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 18 32#64))

def optimizedBody306_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (16, 16)]

def optimizedBody306_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody306_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 12), (44, 10), (46, 8), (48, 18), (50, 16), (52, 0), (54, 12)]

def optimizedBody306_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (10, 44), (8, 46), (12, 48), (16, 50), (0, 52), (14, 54)]

def optimizedBody306_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (8, 46), (12, 48), (16, 50), (0, 52), (14, 54)]

def optimizedBody306_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_99 optimizedBody306_12

def optimizedBody306_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody306_98, 306, 6)) (some 79) ([2, 4, 6]) (some (2, optimizedBody306_100, 306, 7))

def optimizedBody306_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody306_92 optimizedBody306_48

def optimizedBody306_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody306_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.reg 16)))

def optimizedBody306_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (2, 2)]

def optimizedBody306_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 12 48#64))

def optimizedBody306_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (8, 8), (22, 22), (2, 2), (0, 0)]

def optimizedBody306_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_106 optimizedBody306_107

def optimizedBody306_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_105 optimizedBody306_108

def optimizedBody306_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_104 optimizedBody306_109

def optimizedBody306_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_103 optimizedBody306_110

def optimizedBody306_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_111

def optimizedBody306_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_112

def optimizedBody306_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_102 optimizedBody306_113

def optimizedBody306_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_5 optimizedBody306_114

def optimizedBody306_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_36 optimizedBody306_115

def optimizedBody306_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_116

def optimizedBody306_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_101 optimizedBody306_117

def optimizedBody306_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_97 optimizedBody306_118

def optimizedBody306_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_96 optimizedBody306_119

def optimizedBody306_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_95 optimizedBody306_120

def optimizedBody306_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_94 optimizedBody306_121

def optimizedBody306_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_82 optimizedBody306_122

def optimizedBody306_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_123

def optimizedBody306_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_124

def optimizedBody306_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_93 optimizedBody306_125

def optimizedBody306_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_86 optimizedBody306_126

def optimizedBody306_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_85 optimizedBody306_127

def optimizedBody306_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_84 optimizedBody306_128

def optimizedBody306_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_83 optimizedBody306_129

def optimizedBody306_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_82 optimizedBody306_130

def optimizedBody306_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_131

def optimizedBody306_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (16, 16)]

def optimizedBody306_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 18 168#64))

def optimizedBody306_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 2) optimizedBody306_92 optimizedBody306_48

def optimizedBody306_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 18 160#64))

def optimizedBody306_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 14)]

def optimizedBody306_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_137 optimizedBody306_87

def optimizedBody306_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_136 optimizedBody306_138

def optimizedBody306_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_82 optimizedBody306_139

def optimizedBody306_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_24 optimizedBody306_140

def optimizedBody306_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_141

def optimizedBody306_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_142

def optimizedBody306_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_135 optimizedBody306_143

def optimizedBody306_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_5 optimizedBody306_144

def optimizedBody306_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_81 optimizedBody306_145

def optimizedBody306_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_134 optimizedBody306_146

def optimizedBody306_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_82 optimizedBody306_147

def optimizedBody306_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_148

def optimizedBody306_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(12, 18)]

def optimizedBody306_151 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 0) optimizedBody306_149 optimizedBody306_150

def optimizedBody306_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody306_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody306_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody306_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody306_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody306_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody306_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (22, 22)]

def optimizedBody306_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody306_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_159 optimizedBody306_107

def optimizedBody306_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_158 optimizedBody306_160

def optimizedBody306_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_157 optimizedBody306_161

def optimizedBody306_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_156 optimizedBody306_162

def optimizedBody306_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_86 optimizedBody306_163

def optimizedBody306_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_155 optimizedBody306_164

def optimizedBody306_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_154 optimizedBody306_165

def optimizedBody306_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_153 optimizedBody306_166

def optimizedBody306_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_152 optimizedBody306_167

def optimizedBody306_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_95 optimizedBody306_168

def optimizedBody306_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_169

def optimizedBody306_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_170

def optimizedBody306_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_151 optimizedBody306_171

def optimizedBody306_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_133 optimizedBody306_172

def optimizedBody306_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_173

def optimizedBody306_175 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 2) optimizedBody306_132 optimizedBody306_174

def optimizedBody306_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 10), (48, 8), (22, 22), (50, 2), (46, 0)]

def optimizedBody306_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody306_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_176 optimizedBody306_177

def optimizedBody306_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_178

def optimizedBody306_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_175 optimizedBody306_179

def optimizedBody306_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_8 optimizedBody306_180

def optimizedBody306_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_81 optimizedBody306_181

def optimizedBody306_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_182

def optimizedBody306_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_183

def optimizedBody306_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_80 optimizedBody306_184

def optimizedBody306_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_24 optimizedBody306_185

def optimizedBody306_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_7 optimizedBody306_186

def optimizedBody306_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_187

def optimizedBody306_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_23 optimizedBody306_188

def optimizedBody306_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_5 optimizedBody306_189

def optimizedBody306_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_7 optimizedBody306_190

def optimizedBody306_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_6 optimizedBody306_191

def optimizedBody306_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_4 optimizedBody306_192

def optimizedBody306_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_193

def optimizedBody306_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody306_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_195

def optimizedBody306_197 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 2) optimizedBody306_194 optimizedBody306_196

def optimizedBody306_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 2), (22, 22), (50, 4), (46, 6)]

def optimizedBody306_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_198

def optimizedBody306_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_197 optimizedBody306_199

def optimizedBody306_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_5 optimizedBody306_200

def optimizedBody306_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_4 optimizedBody306_201

def optimizedBody306_203 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody306_202 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody306_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4, 6]

def optimizedBody306_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_39 optimizedBody306_204

def optimizedBody306_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_68 optimizedBody306_205

def optimizedBody306_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_67 optimizedBody306_206

def optimizedBody306_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_5 optimizedBody306_207

def optimizedBody306_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_208

def optimizedBody306_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_203 optimizedBody306_209

def optimizedBody306_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_3 optimizedBody306_210

def optimizedBody306_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_2 optimizedBody306_211

def optimizedBody306_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_1 optimizedBody306_212

def optimizedBody306_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody306_0 optimizedBody306_213

def oracle306 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 8 Flapjack.Spt.ln) (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))))
              25
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 11) Flapjack.Spt.ln) 11 Flapjack.Spt.ln) 3
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln) 10
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 2)))
              4
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 7))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 8)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 8)) (Flapjack.Spt.ls 3)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)) 3 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
              24
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 6)))
                11
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 11 Flapjack.Spt.ln)))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 8))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                11
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 9))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 9)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1 (Flapjack.Spt.ls 2)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              11
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 2)) 3 (Flapjack.Spt.ls 2)) 3
                (Flapjack.Spt.bs Flapjack.Spt.ln 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 1 Flapjack.Spt.ln)))
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 10 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
                1
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 7))))
              22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln) 12
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 12))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 2)) 10
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 1)))
                1 (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 10 (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 1))))
                23 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 24)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 22))))))))
def optimized306 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(306, 4, optimizedBody306_214)
theorem optimize306_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source306, oracle306) = optimized306 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize306_eq
end InitECandidate.Proofs.WordStages
