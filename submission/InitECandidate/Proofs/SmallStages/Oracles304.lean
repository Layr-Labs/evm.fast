import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source304
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles304
def optimizedBody304_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody304_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody304_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody304_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 6), (50, 4)]

def optimizedBody304_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody304_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody304_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 1#64)

def optimizedBody304_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody304_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 0), (54, 4), (60, 50), (50, 50), (46, 10), (56, 2), (8, 8), (48, 58), (22, 22), (52, 12), (58, 58)]

def optimizedBody304_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody304_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody304_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody304_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody304_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 56), (4, 60), (6, 58), (44, 44), (54, 54), (60, 60), (50, 50), (46, 46), (56, 56), (48, 48), (52, 22), (58, 52),
    (62, 58)]

def optimizedBody304_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (4, 4), (24, 44), (18, 54), (26, 60), (20, 50), (16, 46), (14, 56), (0, 48), (22, 52), (12, 58), (10, 62)]

def optimizedBody304_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (24, 44), (18, 54), (26, 60), (20, 50), (16, 46), (14, 56), (0, 48), (22, 52), (12, 58), (10, 62)]

def optimizedBody304_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody304_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_15 optimizedBody304_16

def optimizedBody304_18 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody304_14, 304, 2)) (some 303) ([2, 4, 6]) (some (2, optimizedBody304_17, 304, 3))

def optimizedBody304_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody304_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody304_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 4)]

def optimizedBody304_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody304_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18), (16, 16), (8, 8), (12, 12)]

def optimizedBody304_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_22 optimizedBody304_23

def optimizedBody304_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_21 optimizedBody304_24

def optimizedBody304_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_25

def optimizedBody304_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 4), (2, 12)]

def optimizedBody304_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody304_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody304_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 8#64))

def optimizedBody304_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody304_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1#64)

def optimizedBody304_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18)]

def optimizedBody304_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_32 optimizedBody304_33

def optimizedBody304_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_34

def optimizedBody304_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody304_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_36 optimizedBody304_33

def optimizedBody304_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_37

def optimizedBody304_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody304_35 optimizedBody304_38

def optimizedBody304_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 2#64)

def optimizedBody304_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_40 optimizedBody304_23

def optimizedBody304_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_41

def optimizedBody304_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_39 optimizedBody304_42

def optimizedBody304_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_31 optimizedBody304_43

def optimizedBody304_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_30 optimizedBody304_44

def optimizedBody304_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_29 optimizedBody304_45

def optimizedBody304_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_28 optimizedBody304_46

def optimizedBody304_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_27 optimizedBody304_47

def optimizedBody304_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_48

def optimizedBody304_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody304_26 optimizedBody304_49

def optimizedBody304_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 24), (18, 18), (26, 26), (20, 20), (16, 16), (14, 14), (8, 8), (0, 0), (22, 22), (12, 12), (10, 10)]

def optimizedBody304_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_51

def optimizedBody304_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_50 optimizedBody304_52

def optimizedBody304_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_20 optimizedBody304_53

def optimizedBody304_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_19 optimizedBody304_54

def optimizedBody304_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_55

def optimizedBody304_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_18 optimizedBody304_56

def optimizedBody304_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_13 optimizedBody304_57

def optimizedBody304_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_58

def optimizedBody304_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody304_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 52)]

def optimizedBody304_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody304_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 54), (2, 56)]

def optimizedBody304_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 6 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody304_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody304_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody304_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody304_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 6)]

def optimizedBody304_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody304_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 52), (60, 60), (50, 50), (48, 46), (52, 2), (54, 48), (56, 22), (58, 8),
    (62, 58)]

def optimizedBody304_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (6, 6), (28, 2), (8, 8), (24, 44), (18, 46), (26, 60), (20, 50), (16, 48), (14, 52), (0, 54), (22, 56),
    (12, 58), (10, 62)]

def optimizedBody304_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (24, 44), (18, 46), (26, 60), (20, 50), (16, 48), (14, 52), (0, 54), (22, 56), (12, 58), (10, 62)]

def optimizedBody304_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_72 optimizedBody304_16

def optimizedBody304_74 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody304_71, 304, 4)) (some 302) ([2, 4, 6]) (some (2, optimizedBody304_73, 304, 5))

def optimizedBody304_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28)]

def optimizedBody304_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody304_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody304_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody304_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody304_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(26, 26), (16, 16), (8, 8), (12, 12), (10, 10)]

def optimizedBody304_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_22 optimizedBody304_80

def optimizedBody304_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_21 optimizedBody304_81

def optimizedBody304_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_79 optimizedBody304_82

def optimizedBody304_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_78 optimizedBody304_83

def optimizedBody304_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_77 optimizedBody304_84

def optimizedBody304_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_76 optimizedBody304_85

def optimizedBody304_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_29 optimizedBody304_86

def optimizedBody304_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_87

def optimizedBody304_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody304_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody304_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 6), (26, 4)]

def optimizedBody304_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_4 optimizedBody304_80

def optimizedBody304_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_91 optimizedBody304_92

def optimizedBody304_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_90 optimizedBody304_93

def optimizedBody304_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_89 optimizedBody304_94

def optimizedBody304_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_76 optimizedBody304_95

def optimizedBody304_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_29 optimizedBody304_96

def optimizedBody304_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_97

def optimizedBody304_99 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 2) optimizedBody304_88 optimizedBody304_98

def optimizedBody304_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_99 optimizedBody304_52

def optimizedBody304_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_20 optimizedBody304_100

def optimizedBody304_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_75 optimizedBody304_101

def optimizedBody304_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_102

def optimizedBody304_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_74 optimizedBody304_103

def optimizedBody304_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_70 optimizedBody304_104

def optimizedBody304_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_69 optimizedBody304_105

def optimizedBody304_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_68 optimizedBody304_106

def optimizedBody304_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_67 optimizedBody304_107

def optimizedBody304_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_66 optimizedBody304_108

def optimizedBody304_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_65 optimizedBody304_109

def optimizedBody304_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_64 optimizedBody304_110

def optimizedBody304_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_63 optimizedBody304_111

def optimizedBody304_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_62 optimizedBody304_112

def optimizedBody304_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_61 optimizedBody304_113

def optimizedBody304_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_114

def optimizedBody304_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 52)]

def optimizedBody304_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def optimizedBody304_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 44), (18, 54), (26, 60), (20, 50), (16, 46), (14, 56), (8, 8), (0, 48), (22, 22), (12, 12), (10, 58)]

def optimizedBody304_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_117 optimizedBody304_118

def optimizedBody304_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_119

def optimizedBody304_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 12 80#64))

def optimizedBody304_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody304_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_31 optimizedBody304_122

def optimizedBody304_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_123

def optimizedBody304_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_5 optimizedBody304_122

def optimizedBody304_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_125

def optimizedBody304_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody304_124 optimizedBody304_126

def optimizedBody304_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 46)]

def optimizedBody304_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody304_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody304_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_129 optimizedBody304_130

def optimizedBody304_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_131

def optimizedBody304_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_20 optimizedBody304_130

def optimizedBody304_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_133

def optimizedBody304_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 2) optimizedBody304_132 optimizedBody304_134

def optimizedBody304_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody304_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody304_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody304_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody304_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody304_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody304_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16)]

def optimizedBody304_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_141 optimizedBody304_142

def optimizedBody304_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_140 optimizedBody304_143

def optimizedBody304_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_139 optimizedBody304_144

def optimizedBody304_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_138 optimizedBody304_145

def optimizedBody304_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(16, 16)]

def optimizedBody304_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody304_146 optimizedBody304_147

def optimizedBody304_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 12 8#64))

def optimizedBody304_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 16)]

def optimizedBody304_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody304_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 54), (48, 60), (50, 50), (52, 6), (56, 56), (54, 8), (58, 48), (60, 22), (62, 12), (64, 58)]

def optimizedBody304_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (52, 56), (54, 54), (56, 58), (58, 60), (62, 62), (64, 64)]

def optimizedBody304_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (52, 56), (54, 54), (56, 58), (58, 60), (62, 62), (64, 64)]

def optimizedBody304_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_154 optimizedBody304_16

def optimizedBody304_156 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody304_153, 304, 6)) (some 288) ([2]) (some (2, optimizedBody304_155, 304, 7))

def optimizedBody304_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (6, 6), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64)]

def optimizedBody304_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_157

def optimizedBody304_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_156 optimizedBody304_158

def optimizedBody304_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_152 optimizedBody304_159

def optimizedBody304_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_151 optimizedBody304_160

def optimizedBody304_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_161

def optimizedBody304_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 54), (48, 60), (50, 50), (6, 6), (52, 56), (54, 8), (56, 48), (58, 22), (62, 12), (64, 58)]

def optimizedBody304_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_163

def optimizedBody304_165 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 0) optimizedBody304_162 optimizedBody304_164

def optimizedBody304_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody304_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody304_168 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody304_132 optimizedBody304_134

def optimizedBody304_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody304_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_12 optimizedBody304_169

def optimizedBody304_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_170

def optimizedBody304_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_10 optimizedBody304_169

def optimizedBody304_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_172

def optimizedBody304_174 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 4) optimizedBody304_171 optimizedBody304_173

def optimizedBody304_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody304_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 6), (54, 52), (56, 54), (58, 56), (60, 58), (62, 62), (64, 64)]

def optimizedBody304_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (52, 54), (54, 56), (56, 58), (58, 60), (0, 62), (62, 64)]

def optimizedBody304_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (52, 54), (54, 56), (56, 58), (58, 60), (0, 62), (62, 64)]

def optimizedBody304_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_178 optimizedBody304_16

def optimizedBody304_180 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody304_177, 304, 8)) (some 288) ([2]) (some (2, optimizedBody304_179, 304, 9))

def optimizedBody304_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (6, 6), (52, 52), (54, 54), (56, 56), (58, 58), (0, 0), (62, 62)]

def optimizedBody304_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_181

def optimizedBody304_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_180 optimizedBody304_182

def optimizedBody304_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_176 optimizedBody304_183

def optimizedBody304_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_151 optimizedBody304_184

def optimizedBody304_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(44, 44), (46, 46), (48, 48), (50, 50), (6, 6), (52, 52), (54, 54), (56, 56), (58, 58), (0, 62), (62, 64)]

def optimizedBody304_187 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.imm 0#64) optimizedBody304_185 optimizedBody304_186

def optimizedBody304_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody304_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody304_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 0),
    (62, 62)]

def optimizedBody304_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 2), (24, 44), (18, 46), (26, 48), (20, 50), (14, 52), (8, 54), (0, 56), (22, 58), (4, 60), (10, 62)]

def optimizedBody304_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (24, 44), (18, 46), (26, 48), (20, 50), (14, 52), (8, 54), (0, 56), (22, 58), (4, 60), (10, 62)]

def optimizedBody304_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_192 optimizedBody304_16

def optimizedBody304_194 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody304_191, 304, 10)) (some 299) ([2, 4, 6]) (some (2, optimizedBody304_193, 304, 11))

def optimizedBody304_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 16 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody304_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody304_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody304_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody304_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody304_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 16 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody304_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 56#64))

def optimizedBody304_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody304_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_202 optimizedBody304_51

def optimizedBody304_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_196 optimizedBody304_203

def optimizedBody304_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_199 optimizedBody304_204

def optimizedBody304_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_198 optimizedBody304_205

def optimizedBody304_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_201 optimizedBody304_206

def optimizedBody304_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_196 optimizedBody304_207

def optimizedBody304_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_200 optimizedBody304_208

def optimizedBody304_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_138 optimizedBody304_209

def optimizedBody304_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_199 optimizedBody304_210

def optimizedBody304_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_198 optimizedBody304_211

def optimizedBody304_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_197 optimizedBody304_212

def optimizedBody304_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_196 optimizedBody304_213

def optimizedBody304_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_195 optimizedBody304_214

def optimizedBody304_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_138 optimizedBody304_215

def optimizedBody304_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_216

def optimizedBody304_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_194 optimizedBody304_217

def optimizedBody304_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_190 optimizedBody304_218

def optimizedBody304_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_189 optimizedBody304_219

def optimizedBody304_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_65 optimizedBody304_220

def optimizedBody304_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_188 optimizedBody304_221

def optimizedBody304_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_65 optimizedBody304_222

def optimizedBody304_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_223

def optimizedBody304_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_187 optimizedBody304_224

def optimizedBody304_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_175 optimizedBody304_225

def optimizedBody304_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_140 optimizedBody304_226

def optimizedBody304_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_227

def optimizedBody304_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_174 optimizedBody304_228

def optimizedBody304_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_5 optimizedBody304_229

def optimizedBody304_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_65 optimizedBody304_230

def optimizedBody304_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_231

def optimizedBody304_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_168 optimizedBody304_232

def optimizedBody304_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_167 optimizedBody304_233

def optimizedBody304_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_65 optimizedBody304_234

def optimizedBody304_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_166 optimizedBody304_235

def optimizedBody304_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_19 optimizedBody304_236

def optimizedBody304_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_237

def optimizedBody304_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_165 optimizedBody304_238

def optimizedBody304_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_10 optimizedBody304_239

def optimizedBody304_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_150 optimizedBody304_240

def optimizedBody304_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_241

def optimizedBody304_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 16#64))

def optimizedBody304_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 12 32#64))

def optimizedBody304_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody304_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody304_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody304_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (16, 16)]

def optimizedBody304_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody304_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody304_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 40#64))

def optimizedBody304_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody304_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody304_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12)]

def optimizedBody304_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_253 optimizedBody304_254

def optimizedBody304_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_136 optimizedBody304_255

def optimizedBody304_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_252 optimizedBody304_256

def optimizedBody304_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_251 optimizedBody304_257

def optimizedBody304_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_29 optimizedBody304_258

def optimizedBody304_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_250 optimizedBody304_259

def optimizedBody304_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_29 optimizedBody304_260

def optimizedBody304_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_261

def optimizedBody304_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_254

def optimizedBody304_264 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 2) optimizedBody304_262 optimizedBody304_263

def optimizedBody304_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody304_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody304_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 16#64)

def optimizedBody304_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody304_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (18, 18)]

def optimizedBody304_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody304_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 44), (18, 18), (26, 60), (20, 50), (16, 16), (14, 56), (8, 8), (0, 48), (22, 22), (12, 12), (10, 58)]

def optimizedBody304_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_40 optimizedBody304_271

def optimizedBody304_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_266 optimizedBody304_272

def optimizedBody304_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_270 optimizedBody304_273

def optimizedBody304_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_269 optimizedBody304_274

def optimizedBody304_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_268 optimizedBody304_275

def optimizedBody304_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_29 optimizedBody304_276

def optimizedBody304_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_277

def optimizedBody304_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 12 24#64))

def optimizedBody304_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 256#64))

def optimizedBody304_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 264#64))

def optimizedBody304_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 54), (48, 60), (50, 50), (52, 56), (54, 6), (56, 8), (58, 48), (60, 22), (62, 12),
    (64, 58)]

def optimizedBody304_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (8, 2), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (12, 62), (64, 64)]

def optimizedBody304_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (12, 62), (64, 64)]

def optimizedBody304_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_284 optimizedBody304_16

def optimizedBody304_286 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody304_283, 304, 12)) (some 161) ([2, 4]) (some (2, optimizedBody304_285, 304, 13))

def optimizedBody304_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 12 40#64))

def optimizedBody304_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 54)]

def optimizedBody304_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody304_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4)]

def optimizedBody304_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody304_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody304_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody304_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody304_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody304_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_295 optimizedBody304_169

def optimizedBody304_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_65 optimizedBody304_296

def optimizedBody304_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_297

def optimizedBody304_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_169

def optimizedBody304_300 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 4) optimizedBody304_298 optimizedBody304_299

def optimizedBody304_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(54, 2), (0, 0)]

def optimizedBody304_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_301

def optimizedBody304_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_300 optimizedBody304_302

def optimizedBody304_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_5 optimizedBody304_303

def optimizedBody304_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_19 optimizedBody304_304

def optimizedBody304_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_294 optimizedBody304_305

def optimizedBody304_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_293 optimizedBody304_306

def optimizedBody304_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_292 optimizedBody304_307

def optimizedBody304_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_78 optimizedBody304_308

def optimizedBody304_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_291 optimizedBody304_309

def optimizedBody304_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_290 optimizedBody304_310

def optimizedBody304_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_289 optimizedBody304_311

def optimizedBody304_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_288 optimizedBody304_312

def optimizedBody304_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_313

def optimizedBody304_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(54, 54), (0, 0)]

def optimizedBody304_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_315

def optimizedBody304_317 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody304_314 optimizedBody304_316

def optimizedBody304_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody304_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 9#64)

def optimizedBody304_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 12), (64, 64)]

def optimizedBody304_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(24, 44), (18, 46), (26, 48), (20, 50), (14, 52), (16, 54), (8, 56), (0, 58), (22, 60), (12, 62), (10, 64)]

def optimizedBody304_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (24, 44), (18, 46), (26, 48), (20, 50), (14, 52), (16, 54), (8, 56), (0, 58), (22, 60), (12, 62), (10, 64)]

def optimizedBody304_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_322 optimizedBody304_16

def optimizedBody304_324 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody304_321, 304, 14)) (some 288) ([2]) (some (2, optimizedBody304_323, 304, 15))

def optimizedBody304_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 24), (18, 18), (26, 26), (20, 20), (14, 14), (16, 16), (8, 8), (0, 0), (22, 22), (12, 12), (10, 10)]

def optimizedBody304_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_325

def optimizedBody304_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_324 optimizedBody304_326

def optimizedBody304_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_320 optimizedBody304_327

def optimizedBody304_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_319 optimizedBody304_328

def optimizedBody304_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_329

def optimizedBody304_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 44), (18, 46), (26, 48), (20, 50), (14, 52), (16, 54), (8, 56), (0, 58), (22, 60), (12, 12), (10, 64)]

def optimizedBody304_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_331

def optimizedBody304_333 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody304_330 optimizedBody304_332

def optimizedBody304_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 16 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody304_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 48#64))

def optimizedBody304_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 16 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody304_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 56#64))

def optimizedBody304_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody304_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_338 optimizedBody304_51

def optimizedBody304_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_29 optimizedBody304_339

def optimizedBody304_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_253 optimizedBody304_340

def optimizedBody304_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_136 optimizedBody304_341

def optimizedBody304_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_337 optimizedBody304_342

def optimizedBody304_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_29 optimizedBody304_343

def optimizedBody304_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_336 optimizedBody304_344

def optimizedBody304_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_138 optimizedBody304_345

def optimizedBody304_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_253 optimizedBody304_346

def optimizedBody304_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_136 optimizedBody304_347

def optimizedBody304_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_335 optimizedBody304_348

def optimizedBody304_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_29 optimizedBody304_349

def optimizedBody304_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_334 optimizedBody304_350

def optimizedBody304_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_138 optimizedBody304_351

def optimizedBody304_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_352

def optimizedBody304_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_333 optimizedBody304_353

def optimizedBody304_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_318 optimizedBody304_354

def optimizedBody304_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_65 optimizedBody304_355

def optimizedBody304_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_356

def optimizedBody304_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_317 optimizedBody304_357

def optimizedBody304_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_20 optimizedBody304_358

def optimizedBody304_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_11 optimizedBody304_359

def optimizedBody304_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_287 optimizedBody304_360

def optimizedBody304_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_29 optimizedBody304_361

def optimizedBody304_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_362

def optimizedBody304_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_286 optimizedBody304_363

def optimizedBody304_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_282 optimizedBody304_364

def optimizedBody304_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_281 optimizedBody304_365

def optimizedBody304_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_65 optimizedBody304_366

def optimizedBody304_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_280 optimizedBody304_367

def optimizedBody304_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_65 optimizedBody304_368

def optimizedBody304_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_279 optimizedBody304_369

def optimizedBody304_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_29 optimizedBody304_370

def optimizedBody304_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_371

def optimizedBody304_373 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 18 (Flapjack.WordRegImm.reg 0) optimizedBody304_278 optimizedBody304_372

def optimizedBody304_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_373 optimizedBody304_52

def optimizedBody304_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_267 optimizedBody304_374

def optimizedBody304_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_266 optimizedBody304_375

def optimizedBody304_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_265 optimizedBody304_376

def optimizedBody304_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_65 optimizedBody304_377

def optimizedBody304_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_378

def optimizedBody304_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_264 optimizedBody304_379

def optimizedBody304_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_20 optimizedBody304_380

def optimizedBody304_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_138 optimizedBody304_381

def optimizedBody304_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_249 optimizedBody304_382

def optimizedBody304_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_248 optimizedBody304_383

def optimizedBody304_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_247 optimizedBody304_384

def optimizedBody304_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_246 optimizedBody304_385

def optimizedBody304_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_19 optimizedBody304_386

def optimizedBody304_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_245 optimizedBody304_387

def optimizedBody304_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_65 optimizedBody304_388

def optimizedBody304_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_244 optimizedBody304_389

def optimizedBody304_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_29 optimizedBody304_390

def optimizedBody304_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_243 optimizedBody304_391

def optimizedBody304_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_29 optimizedBody304_392

def optimizedBody304_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_393

def optimizedBody304_395 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody304_242 optimizedBody304_394

def optimizedBody304_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_395 optimizedBody304_52

def optimizedBody304_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_129 optimizedBody304_396

def optimizedBody304_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_149 optimizedBody304_397

def optimizedBody304_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_29 optimizedBody304_398

def optimizedBody304_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_399

def optimizedBody304_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_148 optimizedBody304_400

def optimizedBody304_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_137 optimizedBody304_401

def optimizedBody304_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_136 optimizedBody304_402

def optimizedBody304_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_403

def optimizedBody304_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_135 optimizedBody304_404

def optimizedBody304_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_20 optimizedBody304_405

def optimizedBody304_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_128 optimizedBody304_406

def optimizedBody304_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_407

def optimizedBody304_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_127 optimizedBody304_408

def optimizedBody304_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_20 optimizedBody304_409

def optimizedBody304_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_65 optimizedBody304_410

def optimizedBody304_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_121 optimizedBody304_411

def optimizedBody304_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_29 optimizedBody304_412

def optimizedBody304_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_413

def optimizedBody304_415 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 0) optimizedBody304_120 optimizedBody304_414

def optimizedBody304_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_415 optimizedBody304_52

def optimizedBody304_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_10 optimizedBody304_416

def optimizedBody304_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_116 optimizedBody304_417

def optimizedBody304_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_418

def optimizedBody304_420 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 0) optimizedBody304_115 optimizedBody304_419

def optimizedBody304_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_420 optimizedBody304_52

def optimizedBody304_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_60 optimizedBody304_421

def optimizedBody304_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_11 optimizedBody304_422

def optimizedBody304_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_423

def optimizedBody304_425 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 0) optimizedBody304_59 optimizedBody304_424

def optimizedBody304_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 24), (54, 18), (60, 26), (50, 20), (46, 16), (56, 14), (8, 8), (48, 0), (22, 22), (52, 12), (58, 10)]

def optimizedBody304_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody304_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_426 optimizedBody304_427

def optimizedBody304_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_428

def optimizedBody304_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_425 optimizedBody304_429

def optimizedBody304_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_12 optimizedBody304_430

def optimizedBody304_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_11 optimizedBody304_431

def optimizedBody304_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_432

def optimizedBody304_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody304_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_434

def optimizedBody304_436 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 0) optimizedBody304_433 optimizedBody304_435

def optimizedBody304_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (54, 2), (60, 4), (50, 6), (46, 10), (56, 12), (8, 8), (48, 14), (22, 22), (52, 16), (58, 18)]

def optimizedBody304_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_437

def optimizedBody304_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_436 optimizedBody304_438

def optimizedBody304_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_10 optimizedBody304_439

def optimizedBody304_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_9 optimizedBody304_440

def optimizedBody304_442 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln) optimizedBody304_441 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody304_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46)]

def optimizedBody304_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody304_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_443 optimizedBody304_444

def optimizedBody304_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_445

def optimizedBody304_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_442 optimizedBody304_446

def optimizedBody304_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_8 optimizedBody304_447

def optimizedBody304_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_7 optimizedBody304_448

def optimizedBody304_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_6 optimizedBody304_449

def optimizedBody304_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_5 optimizedBody304_450

def optimizedBody304_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_4 optimizedBody304_451

def optimizedBody304_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_3 optimizedBody304_452

def optimizedBody304_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_2 optimizedBody304_453

def optimizedBody304_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_1 optimizedBody304_454

def optimizedBody304_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody304_0 optimizedBody304_455

def oracle304 : Option (Spt Nat) :=
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
def optimized304 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(304, 4, optimizedBody304_456)
end InitECandidate.Proofs.SmallStages.Oracles304
