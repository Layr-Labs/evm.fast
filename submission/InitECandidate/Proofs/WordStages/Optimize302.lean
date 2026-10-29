import InitECandidate.Proofs.WordStages.Optimize286
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source302
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody302_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody302_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody302_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody302_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 6), (50, 4)]

def optimizedBody302_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody302_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody302_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 1#64)

def optimizedBody302_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody302_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 0), (54, 4), (60, 50), (50, 50), (46, 10), (56, 2), (8, 8), (48, 58), (22, 22), (52, 12), (58, 58)]

def optimizedBody302_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody302_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody302_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody302_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody302_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 56), (4, 60), (6, 58), (44, 44), (54, 54), (60, 60), (50, 50), (46, 46), (56, 56), (48, 48), (52, 22), (58, 52),
    (62, 58)]

def optimizedBody302_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (4, 4), (24, 44), (18, 54), (26, 60), (20, 50), (16, 46), (14, 56), (0, 48), (22, 52), (12, 58), (10, 62)]

def optimizedBody302_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (24, 44), (18, 54), (26, 60), (20, 50), (16, 46), (14, 56), (0, 48), (22, 52), (12, 58), (10, 62)]

def optimizedBody302_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody302_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_15 optimizedBody302_16

def optimizedBody302_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody302_14, 302, 2)) (some 301) ([2, 4, 6]) (some (2, optimizedBody302_17, 302, 3))

def optimizedBody302_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody302_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody302_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 4)]

def optimizedBody302_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody302_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18), (16, 16), (8, 8), (12, 12)]

def optimizedBody302_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_22 optimizedBody302_23

def optimizedBody302_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_21 optimizedBody302_24

def optimizedBody302_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_25

def optimizedBody302_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 4), (2, 12)]

def optimizedBody302_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody302_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody302_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 8#64))

def optimizedBody302_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody302_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1#64)

def optimizedBody302_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18)]

def optimizedBody302_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_32 optimizedBody302_33

def optimizedBody302_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_34

def optimizedBody302_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody302_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_36 optimizedBody302_33

def optimizedBody302_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_37

def optimizedBody302_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody302_35 optimizedBody302_38

def optimizedBody302_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 2#64)

def optimizedBody302_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_40 optimizedBody302_23

def optimizedBody302_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_41

def optimizedBody302_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_39 optimizedBody302_42

def optimizedBody302_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_31 optimizedBody302_43

def optimizedBody302_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_30 optimizedBody302_44

def optimizedBody302_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_29 optimizedBody302_45

def optimizedBody302_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_28 optimizedBody302_46

def optimizedBody302_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_27 optimizedBody302_47

def optimizedBody302_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_48

def optimizedBody302_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody302_26 optimizedBody302_49

def optimizedBody302_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 24), (18, 18), (26, 26), (20, 20), (16, 16), (14, 14), (8, 8), (0, 0), (22, 22), (12, 12), (10, 10)]

def optimizedBody302_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_51

def optimizedBody302_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_50 optimizedBody302_52

def optimizedBody302_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_20 optimizedBody302_53

def optimizedBody302_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_19 optimizedBody302_54

def optimizedBody302_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_55

def optimizedBody302_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_18 optimizedBody302_56

def optimizedBody302_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_13 optimizedBody302_57

def optimizedBody302_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_58

def optimizedBody302_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody302_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 52)]

def optimizedBody302_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody302_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 54), (2, 56)]

def optimizedBody302_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 6 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody302_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody302_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody302_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody302_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 6)]

def optimizedBody302_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody302_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 52), (60, 60), (50, 50), (48, 46), (52, 2), (54, 48), (56, 22), (58, 8),
    (62, 58)]

def optimizedBody302_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (6, 6), (28, 2), (8, 8), (24, 44), (18, 46), (26, 60), (20, 50), (16, 48), (14, 52), (0, 54), (22, 56),
    (12, 58), (10, 62)]

def optimizedBody302_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (24, 44), (18, 46), (26, 60), (20, 50), (16, 48), (14, 52), (0, 54), (22, 56), (12, 58), (10, 62)]

def optimizedBody302_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_72 optimizedBody302_16

def optimizedBody302_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody302_71, 302, 4)) (some 300) ([2, 4, 6]) (some (2, optimizedBody302_73, 302, 5))

def optimizedBody302_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28)]

def optimizedBody302_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody302_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody302_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody302_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody302_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(26, 26), (16, 16), (8, 8), (12, 12), (10, 10)]

def optimizedBody302_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_22 optimizedBody302_80

def optimizedBody302_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_21 optimizedBody302_81

def optimizedBody302_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_79 optimizedBody302_82

def optimizedBody302_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_78 optimizedBody302_83

def optimizedBody302_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_77 optimizedBody302_84

def optimizedBody302_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_76 optimizedBody302_85

def optimizedBody302_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_29 optimizedBody302_86

def optimizedBody302_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_87

def optimizedBody302_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody302_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody302_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 6), (26, 4)]

def optimizedBody302_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_4 optimizedBody302_80

def optimizedBody302_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_91 optimizedBody302_92

def optimizedBody302_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_90 optimizedBody302_93

def optimizedBody302_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_89 optimizedBody302_94

def optimizedBody302_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_76 optimizedBody302_95

def optimizedBody302_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_29 optimizedBody302_96

def optimizedBody302_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_97

def optimizedBody302_99 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 2) optimizedBody302_88 optimizedBody302_98

def optimizedBody302_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_99 optimizedBody302_52

def optimizedBody302_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_20 optimizedBody302_100

def optimizedBody302_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_75 optimizedBody302_101

def optimizedBody302_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_102

def optimizedBody302_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_74 optimizedBody302_103

def optimizedBody302_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_70 optimizedBody302_104

def optimizedBody302_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_69 optimizedBody302_105

def optimizedBody302_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_68 optimizedBody302_106

def optimizedBody302_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_67 optimizedBody302_107

def optimizedBody302_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_66 optimizedBody302_108

def optimizedBody302_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_65 optimizedBody302_109

def optimizedBody302_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_64 optimizedBody302_110

def optimizedBody302_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_63 optimizedBody302_111

def optimizedBody302_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_62 optimizedBody302_112

def optimizedBody302_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_61 optimizedBody302_113

def optimizedBody302_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_114

def optimizedBody302_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 52)]

def optimizedBody302_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def optimizedBody302_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 44), (18, 54), (26, 60), (20, 50), (16, 46), (14, 56), (8, 8), (0, 48), (22, 22), (12, 12), (10, 58)]

def optimizedBody302_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_117 optimizedBody302_118

def optimizedBody302_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_119

def optimizedBody302_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 12 80#64))

def optimizedBody302_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody302_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_31 optimizedBody302_122

def optimizedBody302_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_123

def optimizedBody302_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_5 optimizedBody302_122

def optimizedBody302_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_125

def optimizedBody302_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody302_124 optimizedBody302_126

def optimizedBody302_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 46)]

def optimizedBody302_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody302_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody302_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_129 optimizedBody302_130

def optimizedBody302_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_131

def optimizedBody302_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_20 optimizedBody302_130

def optimizedBody302_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_133

def optimizedBody302_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 2) optimizedBody302_132 optimizedBody302_134

def optimizedBody302_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody302_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody302_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody302_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody302_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody302_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody302_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16)]

def optimizedBody302_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_141 optimizedBody302_142

def optimizedBody302_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_140 optimizedBody302_143

def optimizedBody302_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_139 optimizedBody302_144

def optimizedBody302_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_138 optimizedBody302_145

def optimizedBody302_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(16, 16)]

def optimizedBody302_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody302_146 optimizedBody302_147

def optimizedBody302_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 12 8#64))

def optimizedBody302_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 16)]

def optimizedBody302_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody302_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 54), (48, 60), (50, 50), (52, 6), (56, 56), (54, 8), (58, 48), (60, 22), (62, 12), (64, 58)]

def optimizedBody302_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (52, 56), (54, 54), (56, 58), (58, 60), (62, 62), (64, 64)]

def optimizedBody302_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (52, 56), (54, 54), (56, 58), (58, 60), (62, 62), (64, 64)]

def optimizedBody302_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_154 optimizedBody302_16

def optimizedBody302_156 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody302_153, 302, 6)) (some 286) ([2]) (some (2, optimizedBody302_155, 302, 7))

def optimizedBody302_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (6, 6), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64)]

def optimizedBody302_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_157

def optimizedBody302_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_156 optimizedBody302_158

def optimizedBody302_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_152 optimizedBody302_159

def optimizedBody302_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_151 optimizedBody302_160

def optimizedBody302_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_161

def optimizedBody302_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 54), (48, 60), (50, 50), (6, 6), (52, 56), (54, 8), (56, 48), (58, 22), (62, 12), (64, 58)]

def optimizedBody302_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_163

def optimizedBody302_165 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 0) optimizedBody302_162 optimizedBody302_164

def optimizedBody302_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody302_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody302_168 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody302_132 optimizedBody302_134

def optimizedBody302_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody302_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_12 optimizedBody302_169

def optimizedBody302_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_170

def optimizedBody302_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_10 optimizedBody302_169

def optimizedBody302_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_172

def optimizedBody302_174 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 4) optimizedBody302_171 optimizedBody302_173

def optimizedBody302_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody302_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 6), (54, 52), (56, 54), (58, 56), (60, 58), (62, 62), (64, 64)]

def optimizedBody302_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (52, 54), (54, 56), (56, 58), (58, 60), (0, 62), (62, 64)]

def optimizedBody302_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (52, 54), (54, 56), (56, 58), (58, 60), (0, 62), (62, 64)]

def optimizedBody302_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_178 optimizedBody302_16

def optimizedBody302_180 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody302_177, 302, 8)) (some 286) ([2]) (some (2, optimizedBody302_179, 302, 9))

def optimizedBody302_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (6, 6), (52, 52), (54, 54), (56, 56), (58, 58), (0, 0), (62, 62)]

def optimizedBody302_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_181

def optimizedBody302_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_180 optimizedBody302_182

def optimizedBody302_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_176 optimizedBody302_183

def optimizedBody302_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_151 optimizedBody302_184

def optimizedBody302_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(44, 44), (46, 46), (48, 48), (50, 50), (6, 6), (52, 52), (54, 54), (56, 56), (58, 58), (0, 62), (62, 64)]

def optimizedBody302_187 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.imm 0#64) optimizedBody302_185 optimizedBody302_186

def optimizedBody302_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody302_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody302_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 0),
    (62, 62)]

def optimizedBody302_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 2), (24, 44), (18, 46), (26, 48), (20, 50), (14, 52), (8, 54), (0, 56), (22, 58), (4, 60), (10, 62)]

def optimizedBody302_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (24, 44), (18, 46), (26, 48), (20, 50), (14, 52), (8, 54), (0, 56), (22, 58), (4, 60), (10, 62)]

def optimizedBody302_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_192 optimizedBody302_16

def optimizedBody302_194 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody302_191, 302, 10)) (some 297) ([2, 4, 6]) (some (2, optimizedBody302_193, 302, 11))

def optimizedBody302_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 16 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody302_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody302_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody302_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody302_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody302_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 16 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody302_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 56#64))

def optimizedBody302_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody302_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_202 optimizedBody302_51

def optimizedBody302_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_196 optimizedBody302_203

def optimizedBody302_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_199 optimizedBody302_204

def optimizedBody302_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_198 optimizedBody302_205

def optimizedBody302_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_201 optimizedBody302_206

def optimizedBody302_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_196 optimizedBody302_207

def optimizedBody302_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_200 optimizedBody302_208

def optimizedBody302_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_138 optimizedBody302_209

def optimizedBody302_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_199 optimizedBody302_210

def optimizedBody302_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_198 optimizedBody302_211

def optimizedBody302_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_197 optimizedBody302_212

def optimizedBody302_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_196 optimizedBody302_213

def optimizedBody302_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_195 optimizedBody302_214

def optimizedBody302_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_138 optimizedBody302_215

def optimizedBody302_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_216

def optimizedBody302_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_194 optimizedBody302_217

def optimizedBody302_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_190 optimizedBody302_218

def optimizedBody302_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_189 optimizedBody302_219

def optimizedBody302_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_65 optimizedBody302_220

def optimizedBody302_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_188 optimizedBody302_221

def optimizedBody302_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_65 optimizedBody302_222

def optimizedBody302_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_223

def optimizedBody302_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_187 optimizedBody302_224

def optimizedBody302_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_175 optimizedBody302_225

def optimizedBody302_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_140 optimizedBody302_226

def optimizedBody302_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_227

def optimizedBody302_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_174 optimizedBody302_228

def optimizedBody302_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_5 optimizedBody302_229

def optimizedBody302_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_65 optimizedBody302_230

def optimizedBody302_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_231

def optimizedBody302_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_168 optimizedBody302_232

def optimizedBody302_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_167 optimizedBody302_233

def optimizedBody302_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_65 optimizedBody302_234

def optimizedBody302_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_166 optimizedBody302_235

def optimizedBody302_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_19 optimizedBody302_236

def optimizedBody302_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_237

def optimizedBody302_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_165 optimizedBody302_238

def optimizedBody302_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_10 optimizedBody302_239

def optimizedBody302_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_150 optimizedBody302_240

def optimizedBody302_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_241

def optimizedBody302_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 16#64))

def optimizedBody302_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 12 32#64))

def optimizedBody302_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody302_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody302_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody302_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (16, 16)]

def optimizedBody302_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody302_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody302_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 40#64))

def optimizedBody302_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody302_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody302_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12)]

def optimizedBody302_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_253 optimizedBody302_254

def optimizedBody302_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_136 optimizedBody302_255

def optimizedBody302_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_252 optimizedBody302_256

def optimizedBody302_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_251 optimizedBody302_257

def optimizedBody302_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_29 optimizedBody302_258

def optimizedBody302_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_250 optimizedBody302_259

def optimizedBody302_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_29 optimizedBody302_260

def optimizedBody302_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_261

def optimizedBody302_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_254

def optimizedBody302_264 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 2) optimizedBody302_262 optimizedBody302_263

def optimizedBody302_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody302_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody302_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 16#64)

def optimizedBody302_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody302_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (18, 18)]

def optimizedBody302_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody302_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 44), (18, 18), (26, 60), (20, 50), (16, 16), (14, 56), (8, 8), (0, 48), (22, 22), (12, 12), (10, 58)]

def optimizedBody302_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_40 optimizedBody302_271

def optimizedBody302_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_266 optimizedBody302_272

def optimizedBody302_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_270 optimizedBody302_273

def optimizedBody302_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_269 optimizedBody302_274

def optimizedBody302_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_268 optimizedBody302_275

def optimizedBody302_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_29 optimizedBody302_276

def optimizedBody302_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_277

def optimizedBody302_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 12 24#64))

def optimizedBody302_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 256#64))

def optimizedBody302_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 264#64))

def optimizedBody302_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 54), (48, 60), (50, 50), (52, 56), (54, 6), (56, 8), (58, 48), (60, 22), (62, 12),
    (64, 58)]

def optimizedBody302_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (8, 2), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (12, 62), (64, 64)]

def optimizedBody302_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (12, 62), (64, 64)]

def optimizedBody302_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_284 optimizedBody302_16

def optimizedBody302_286 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody302_283, 302, 12)) (some 161) ([2, 4]) (some (2, optimizedBody302_285, 302, 13))

def optimizedBody302_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 12 40#64))

def optimizedBody302_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 54)]

def optimizedBody302_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody302_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4)]

def optimizedBody302_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody302_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody302_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody302_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody302_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody302_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_295 optimizedBody302_169

def optimizedBody302_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_65 optimizedBody302_296

def optimizedBody302_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_297

def optimizedBody302_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_169

def optimizedBody302_300 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 4) optimizedBody302_298 optimizedBody302_299

def optimizedBody302_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(54, 2), (0, 0)]

def optimizedBody302_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_301

def optimizedBody302_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_300 optimizedBody302_302

def optimizedBody302_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_5 optimizedBody302_303

def optimizedBody302_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_19 optimizedBody302_304

def optimizedBody302_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_294 optimizedBody302_305

def optimizedBody302_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_293 optimizedBody302_306

def optimizedBody302_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_292 optimizedBody302_307

def optimizedBody302_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_78 optimizedBody302_308

def optimizedBody302_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_291 optimizedBody302_309

def optimizedBody302_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_290 optimizedBody302_310

def optimizedBody302_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_289 optimizedBody302_311

def optimizedBody302_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_288 optimizedBody302_312

def optimizedBody302_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_313

def optimizedBody302_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(54, 54), (0, 0)]

def optimizedBody302_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_315

def optimizedBody302_317 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody302_314 optimizedBody302_316

def optimizedBody302_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody302_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 9#64)

def optimizedBody302_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 12), (64, 64)]

def optimizedBody302_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(24, 44), (18, 46), (26, 48), (20, 50), (14, 52), (16, 54), (8, 56), (0, 58), (22, 60), (12, 62), (10, 64)]

def optimizedBody302_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (24, 44), (18, 46), (26, 48), (20, 50), (14, 52), (16, 54), (8, 56), (0, 58), (22, 60), (12, 62), (10, 64)]

def optimizedBody302_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_322 optimizedBody302_16

def optimizedBody302_324 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody302_321, 302, 14)) (some 286) ([2]) (some (2, optimizedBody302_323, 302, 15))

def optimizedBody302_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 24), (18, 18), (26, 26), (20, 20), (14, 14), (16, 16), (8, 8), (0, 0), (22, 22), (12, 12), (10, 10)]

def optimizedBody302_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_325

def optimizedBody302_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_324 optimizedBody302_326

def optimizedBody302_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_320 optimizedBody302_327

def optimizedBody302_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_319 optimizedBody302_328

def optimizedBody302_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_329

def optimizedBody302_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 44), (18, 46), (26, 48), (20, 50), (14, 52), (16, 54), (8, 56), (0, 58), (22, 60), (12, 12), (10, 64)]

def optimizedBody302_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_331

def optimizedBody302_333 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody302_330 optimizedBody302_332

def optimizedBody302_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 16 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody302_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 48#64))

def optimizedBody302_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 16 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody302_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 56#64))

def optimizedBody302_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody302_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_338 optimizedBody302_51

def optimizedBody302_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_29 optimizedBody302_339

def optimizedBody302_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_253 optimizedBody302_340

def optimizedBody302_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_136 optimizedBody302_341

def optimizedBody302_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_337 optimizedBody302_342

def optimizedBody302_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_29 optimizedBody302_343

def optimizedBody302_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_336 optimizedBody302_344

def optimizedBody302_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_138 optimizedBody302_345

def optimizedBody302_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_253 optimizedBody302_346

def optimizedBody302_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_136 optimizedBody302_347

def optimizedBody302_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_335 optimizedBody302_348

def optimizedBody302_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_29 optimizedBody302_349

def optimizedBody302_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_334 optimizedBody302_350

def optimizedBody302_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_138 optimizedBody302_351

def optimizedBody302_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_352

def optimizedBody302_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_333 optimizedBody302_353

def optimizedBody302_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_318 optimizedBody302_354

def optimizedBody302_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_65 optimizedBody302_355

def optimizedBody302_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_356

def optimizedBody302_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_317 optimizedBody302_357

def optimizedBody302_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_20 optimizedBody302_358

def optimizedBody302_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_11 optimizedBody302_359

def optimizedBody302_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_287 optimizedBody302_360

def optimizedBody302_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_29 optimizedBody302_361

def optimizedBody302_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_362

def optimizedBody302_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_286 optimizedBody302_363

def optimizedBody302_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_282 optimizedBody302_364

def optimizedBody302_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_281 optimizedBody302_365

def optimizedBody302_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_65 optimizedBody302_366

def optimizedBody302_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_280 optimizedBody302_367

def optimizedBody302_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_65 optimizedBody302_368

def optimizedBody302_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_279 optimizedBody302_369

def optimizedBody302_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_29 optimizedBody302_370

def optimizedBody302_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_371

def optimizedBody302_373 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 18 (Flapjack.WordRegImm.reg 0) optimizedBody302_278 optimizedBody302_372

def optimizedBody302_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_373 optimizedBody302_52

def optimizedBody302_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_267 optimizedBody302_374

def optimizedBody302_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_266 optimizedBody302_375

def optimizedBody302_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_265 optimizedBody302_376

def optimizedBody302_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_65 optimizedBody302_377

def optimizedBody302_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_378

def optimizedBody302_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_264 optimizedBody302_379

def optimizedBody302_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_20 optimizedBody302_380

def optimizedBody302_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_138 optimizedBody302_381

def optimizedBody302_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_249 optimizedBody302_382

def optimizedBody302_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_248 optimizedBody302_383

def optimizedBody302_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_247 optimizedBody302_384

def optimizedBody302_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_246 optimizedBody302_385

def optimizedBody302_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_19 optimizedBody302_386

def optimizedBody302_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_245 optimizedBody302_387

def optimizedBody302_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_65 optimizedBody302_388

def optimizedBody302_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_244 optimizedBody302_389

def optimizedBody302_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_29 optimizedBody302_390

def optimizedBody302_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_243 optimizedBody302_391

def optimizedBody302_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_29 optimizedBody302_392

def optimizedBody302_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_393

def optimizedBody302_395 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody302_242 optimizedBody302_394

def optimizedBody302_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_395 optimizedBody302_52

def optimizedBody302_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_129 optimizedBody302_396

def optimizedBody302_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_149 optimizedBody302_397

def optimizedBody302_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_29 optimizedBody302_398

def optimizedBody302_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_399

def optimizedBody302_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_148 optimizedBody302_400

def optimizedBody302_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_137 optimizedBody302_401

def optimizedBody302_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_136 optimizedBody302_402

def optimizedBody302_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_403

def optimizedBody302_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_135 optimizedBody302_404

def optimizedBody302_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_20 optimizedBody302_405

def optimizedBody302_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_128 optimizedBody302_406

def optimizedBody302_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_407

def optimizedBody302_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_127 optimizedBody302_408

def optimizedBody302_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_20 optimizedBody302_409

def optimizedBody302_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_65 optimizedBody302_410

def optimizedBody302_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_121 optimizedBody302_411

def optimizedBody302_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_29 optimizedBody302_412

def optimizedBody302_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_413

def optimizedBody302_415 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 0) optimizedBody302_120 optimizedBody302_414

def optimizedBody302_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_415 optimizedBody302_52

def optimizedBody302_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_10 optimizedBody302_416

def optimizedBody302_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_116 optimizedBody302_417

def optimizedBody302_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_418

def optimizedBody302_420 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 0) optimizedBody302_115 optimizedBody302_419

def optimizedBody302_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_420 optimizedBody302_52

def optimizedBody302_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_60 optimizedBody302_421

def optimizedBody302_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_11 optimizedBody302_422

def optimizedBody302_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_423

def optimizedBody302_425 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 0) optimizedBody302_59 optimizedBody302_424

def optimizedBody302_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 24), (54, 18), (60, 26), (50, 20), (46, 16), (56, 14), (8, 8), (48, 0), (22, 22), (52, 12), (58, 10)]

def optimizedBody302_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody302_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_426 optimizedBody302_427

def optimizedBody302_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_428

def optimizedBody302_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_425 optimizedBody302_429

def optimizedBody302_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_12 optimizedBody302_430

def optimizedBody302_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_11 optimizedBody302_431

def optimizedBody302_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_432

def optimizedBody302_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody302_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_434

def optimizedBody302_436 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 0) optimizedBody302_433 optimizedBody302_435

def optimizedBody302_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (54, 2), (60, 4), (50, 6), (46, 10), (56, 12), (8, 8), (48, 14), (22, 22), (52, 16), (58, 18)]

def optimizedBody302_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_437

def optimizedBody302_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_436 optimizedBody302_438

def optimizedBody302_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_10 optimizedBody302_439

def optimizedBody302_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_9 optimizedBody302_440

def optimizedBody302_442 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody302_441 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody302_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46)]

def optimizedBody302_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody302_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_443 optimizedBody302_444

def optimizedBody302_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_445

def optimizedBody302_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_442 optimizedBody302_446

def optimizedBody302_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_8 optimizedBody302_447

def optimizedBody302_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_7 optimizedBody302_448

def optimizedBody302_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_6 optimizedBody302_449

def optimizedBody302_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_5 optimizedBody302_450

def optimizedBody302_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_4 optimizedBody302_451

def optimizedBody302_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_3 optimizedBody302_452

def optimizedBody302_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_2 optimizedBody302_453

def optimizedBody302_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_1 optimizedBody302_454

def optimizedBody302_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody302_0 optimizedBody302_455

def oracle302 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 9)) (Flapjack.Spt.ls 1)))
                  7
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln) 9
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
                4
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 11)) Flapjack.Spt.ln) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 10
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.ls 27))))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 6 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)) Flapjack.Spt.ln) 6
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 10)) Flapjack.Spt.ln))
                  9
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 4 (Flapjack.Spt.ls 31))))
                30
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 11)) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 6 (Flapjack.Spt.ls 0)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 6)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 5
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 7)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 11
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 23 (Flapjack.Spt.ls 6)))))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 32 Flapjack.Spt.ln)))
                  29
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 27))) 5
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 9)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 8 (Flapjack.Spt.ls 0)))
                  10 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) (Flapjack.Spt.ls 3)))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 6 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 9
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 25))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 10)) 6 (Flapjack.Spt.ls 28)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 8)) Flapjack.Spt.ln) 6
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 25))))
                29
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))) 4
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 1))))
                  0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 1 Flapjack.Spt.ln))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 9))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                    0 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 9)) 2 (Flapjack.Spt.ls 1)) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6)) (Flapjack.Spt.ls 28))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 5)) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))
                    8
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 12)) 8
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 26 (Flapjack.Spt.ls 4))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) (Flapjack.Spt.ls 25)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 7
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 12)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 4))))
                  11
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 11
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 12)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 13 (Flapjack.Spt.ls 0)))
                  8
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 2
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                28
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 1 (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 6)) 1 Flapjack.Spt.ln) 8
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 13
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 26))))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 0)))
                    1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 4)) 5 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 10)) 2 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                4
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 28 (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 12)) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                    0 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8)) Flapjack.Spt.ln))
                  12
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 12)) 8 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 11))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 3)))))
                27
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 8
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 4 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 22))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 8 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 5)) 13 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 22 (Flapjack.Spt.ls 30)))))
                6
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))) 9
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 1))))
                  26
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 6
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 13)) (Flapjack.Spt.ls 3)))
                  13
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 9
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 14 (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 4)))))
                25
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 9
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 24 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 12
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 8))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 11)))
                    4
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 4
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 6
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 32)))))
                25
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))) 6
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)) 6
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 31 Flapjack.Spt.ln)))
                  11
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 6 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 8))) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 7)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) (Flapjack.Spt.ls 27))))
                11
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 2))))
                  4
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 24)) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 8
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 0))))
                  24
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 12)) Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 3 Flapjack.Spt.ln))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 26
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 30)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 26)))))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 28)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 31
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 32))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 27
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 25)))))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 29
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 31))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))))))))
def optimized302 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(302, 4, optimizedBody302_456)
theorem optimize302_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source302, oracle302) = optimized302 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize302_eq
end InitECandidate.Proofs.WordStages
