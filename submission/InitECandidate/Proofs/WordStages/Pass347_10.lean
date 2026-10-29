import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass347_9
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word347_10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (6, 2)]

def word347_10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def word347_10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word347_10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def word347_10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def word347_10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def word347_10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def word347_10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def word347_10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def word347_10_9 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_7 word347_10_8

def word347_10_10 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_6 word347_10_9

def word347_10_11 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_5 word347_10_10

def word347_10_12 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_4 word347_10_11

def word347_10_13 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_3 word347_10_12

def word347_10_14 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_13

def word347_10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word347_10_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) word347_10_14 word347_10_15

def word347_10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def word347_10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 6 0#64))

def word347_10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 2)]

def word347_10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 400#64)

def word347_10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 48), (50, 6)]

def word347_10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def word347_10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def word347_10_24 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_23 word347_10_8

def word347_10_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_22, 347, 2)) (some 68) ([2]) (some (2, word347_10_24, 347, 3))

def word347_10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def word347_10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 400#64)

def word347_10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 2)]

def word347_10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48), (0, 50), (10, 52)]

def word347_10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (0, 50), (10, 52)]

def word347_10_31 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_30 word347_10_8

def word347_10_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_29, 347, 4)) (some 78) ([2, 4]) (some (2, word347_10_31, 347, 5))

def word347_10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def word347_10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 384#64)))

def word347_10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def word347_10_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def word347_10_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 392#64)))

def word347_10_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def word347_10_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def word347_10_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def word347_10_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 9#64)

def word347_10_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def word347_10_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def word347_10_44 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_42 word347_10_43

def word347_10_45 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_44

def word347_10_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def word347_10_47 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_46 word347_10_43

def word347_10_48 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_47

def word347_10_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 2) word347_10_45 word347_10_48

def word347_10_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def word347_10_51 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_3 word347_10_7

def word347_10_52 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_51

def word347_10_53 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_1 word347_10_7

def word347_10_54 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_53

def word347_10_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 6) word347_10_52 word347_10_54

def word347_10_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def word347_10_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 8)))

def word347_10_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def word347_10_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def word347_10_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def word347_10_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def word347_10_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 6), (48, 12), (50, 10)]

def word347_10_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (10, 2), (4, 4), (44, 44), (0, 46), (46, 48), (8, 50)]

def word347_10_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (8, 50)]

def word347_10_65 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_64 word347_10_8

def word347_10_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_63, 347, 6)) (some 162) ([2, 4]) (some (2, word347_10_65, 347, 7))

def word347_10_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 11#64)

def word347_10_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 2)]

def word347_10_69 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_67 word347_10_68

def word347_10_70 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_69

def word347_10_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46)]

def word347_10_72 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_71

def word347_10_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) word347_10_70 word347_10_72

def word347_10_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def word347_10_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 12#64)

def word347_10_76 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_75 word347_10_68

def word347_10_77 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_76

def word347_10_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) word347_10_77 word347_10_72

def word347_10_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def word347_10_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 14#64)

def word347_10_81 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_80 word347_10_68

def word347_10_82 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_81

def word347_10_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) word347_10_82 word347_10_72

def word347_10_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 13#64)

def word347_10_85 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_84 word347_10_68

def word347_10_86 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_85

def word347_10_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) word347_10_86 word347_10_72

def word347_10_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (46, 46), (10, 10), (8, 8), (0, 0), (4, 4)]

def word347_10_89 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_88

def word347_10_90 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_87 word347_10_89

def word347_10_91 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_50 word347_10_90

def word347_10_92 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_91

def word347_10_93 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_92

def word347_10_94 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_83 word347_10_93

def word347_10_95 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_79 word347_10_94

def word347_10_96 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_95

def word347_10_97 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_96

def word347_10_98 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_78 word347_10_97

def word347_10_99 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_74 word347_10_98

def word347_10_100 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_99

def word347_10_101 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_100

def word347_10_102 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_73 word347_10_101

def word347_10_103 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_3 word347_10_102

def word347_10_104 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_103

def word347_10_105 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_104

def word347_10_106 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_66 word347_10_105

def word347_10_107 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_62 word347_10_106

def word347_10_108 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_61 word347_10_107

def word347_10_109 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_60 word347_10_108

def word347_10_110 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_59 word347_10_109

def word347_10_111 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_110

def word347_10_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 192#64)

def word347_10_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 254#64)

def word347_10_114 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_74 word347_10_12

def word347_10_115 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) word347_10_15 word347_10_114

def word347_10_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 12), (48, 10), (50, 14)]

def word347_10_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (10, 2), (4, 4), (44, 44), (46, 46), (8, 48), (0, 50)]

def word347_10_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (8, 48), (0, 50)]

def word347_10_119 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_118 word347_10_8

def word347_10_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_117, 347, 8)) (some 162) ([2, 4]) (some (2, word347_10_119, 347, 9))

def word347_10_121 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_89

def word347_10_122 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_120 word347_10_121

def word347_10_123 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_116 word347_10_122

def word347_10_124 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_115 word347_10_123

def word347_10_125 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_57 word347_10_124

def word347_10_126 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_56 word347_10_125

def word347_10_127 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_126

def word347_10_128 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_55 word347_10_127

def word347_10_129 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_17 word347_10_128

def word347_10_130 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_113 word347_10_129

def word347_10_131 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_130

def word347_10_132 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_49 word347_10_131

def word347_10_133 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_112 word347_10_132

def word347_10_134 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_17 word347_10_133

def word347_10_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) word347_10_111 word347_10_134

def word347_10_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def word347_10_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 8 0#64))

def word347_10_138 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_79 word347_10_12

def word347_10_139 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_138

def word347_10_140 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 2) word347_10_139 word347_10_15

def word347_10_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 6), (44, 44), (46, 46), (48, 8), (50, 0)]

def word347_10_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 4), (44, 44), (8, 46), (48, 48), (0, 50)]

def word347_10_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (48, 48), (0, 50)]

def word347_10_144 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_143 word347_10_8

def word347_10_145 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_142, 347, 10)) (some 169) ([2, 4]) (some (2, word347_10_144, 347, 11))

def word347_10_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4), (6, 6)]

def word347_10_147 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_50 word347_10_12

def word347_10_148 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_147

def word347_10_149 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 8) word347_10_148 word347_10_15

def word347_10_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def word347_10_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def word347_10_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 12#64)

def word347_10_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8#64)

def word347_10_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 48), (48, 0), (50, 2)]

def word347_10_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (8, 46), (0, 48), (6, 50)]

def word347_10_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (0, 48), (6, 50)]

def word347_10_157 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_156 word347_10_8

def word347_10_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_155, 347, 12)) (some 339) ([2, 4, 6, 8]) (some (2, word347_10_157, 347, 13))

def word347_10_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def word347_10_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 8#64)))

def word347_10_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def word347_10_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (48, 8), (0, 0), (6, 6)]

def word347_10_163 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_161 word347_10_162

def word347_10_164 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_39 word347_10_163

def word347_10_165 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_38 word347_10_164

def word347_10_166 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_160 word347_10_165

def word347_10_167 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_159 word347_10_166

def word347_10_168 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_167

def word347_10_169 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_158 word347_10_168

def word347_10_170 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_154 word347_10_169

def word347_10_171 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_150 word347_10_170

def word347_10_172 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_153 word347_10_171

def word347_10_173 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_152 word347_10_172

def word347_10_174 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_151 word347_10_173

def word347_10_175 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_174

def word347_10_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (48, 48), (0, 0), (6, 6)]

def word347_10_177 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_176

def word347_10_178 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) word347_10_175 word347_10_177

def word347_10_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 6)]

def word347_10_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 4), (48, 48), (50, 0), (52, 2)]

def word347_10_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (0, 46), (14, 48), (12, 50), (16, 52)]

def word347_10_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (14, 48), (12, 50), (16, 52)]

def word347_10_183 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_182 word347_10_8

def word347_10_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_181, 347, 14)) (some 339) ([2, 4, 6, 8]) (some (2, word347_10_183, 347, 15))

def word347_10_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def word347_10_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (10, 10), (6, 6), (4, 4), (0, 0), (14, 14), (12, 12), (8, 8), (16, 16)]

def word347_10_187 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_46 word347_10_186

def word347_10_188 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_185 word347_10_187

def word347_10_189 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_150 word347_10_188

def word347_10_190 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_33 word347_10_189

def word347_10_191 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_190

def word347_10_192 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_184 word347_10_191

def word347_10_193 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_180 word347_10_192

def word347_10_194 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_153 word347_10_193

def word347_10_195 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_152 word347_10_194

def word347_10_196 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_179 word347_10_195

def word347_10_197 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_196

def word347_10_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def word347_10_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 4), (48, 48), (50, 0), (52, 2)]

def word347_10_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (6, 6), (4, 4), (8, 8), (44, 44), (0, 46), (14, 48), (12, 50), (16, 52)]

def word347_10_201 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_200, 347, 16)) (some 338) ([2, 4, 6]) (some (2, word347_10_183, 347, 17))

def word347_10_202 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_186

def word347_10_203 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_201 word347_10_202

def word347_10_204 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_199 word347_10_203

def word347_10_205 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_198 word347_10_204

def word347_10_206 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_179 word347_10_205

def word347_10_207 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_206

def word347_10_208 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) word347_10_197 word347_10_207

def word347_10_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def word347_10_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 16#64)))

def word347_10_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10), (8, 8), (6, 6), (4, 4)]

def word347_10_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def word347_10_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def word347_10_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def word347_10_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def word347_10_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def word347_10_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def word347_10_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def word347_10_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def word347_10_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def word347_10_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 16)]

def word347_10_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 4), (48, 14), (50, 12), (52, 2)]

def word347_10_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (6, 6), (4, 4), (8, 8), (44, 44), (0, 46), (10, 48), (50, 50), (14, 52)]

def word347_10_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (10, 48), (50, 50), (14, 52)]

def word347_10_225 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_224 word347_10_8

def word347_10_226 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_223, 347, 18)) (some 338) ([2, 4, 6]) (some (2, word347_10_225, 347, 19))

def word347_10_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 48#64)))

def word347_10_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12), (8, 8), (6, 6), (4, 4)]

def word347_10_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def word347_10_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (48, 10), (50, 50), (14, 14)]

def word347_10_231 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_218 word347_10_230

def word347_10_232 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_231

def word347_10_233 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_217 word347_10_232

def word347_10_234 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_216 word347_10_233

def word347_10_235 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_215 word347_10_234

def word347_10_236 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_214 word347_10_235

def word347_10_237 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_213 word347_10_236

def word347_10_238 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_38 word347_10_237

def word347_10_239 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_229 word347_10_238

def word347_10_240 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_228 word347_10_239

def word347_10_241 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_227 word347_10_240

def word347_10_242 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_33 word347_10_241

def word347_10_243 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_242

def word347_10_244 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_226 word347_10_243

def word347_10_245 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_222 word347_10_244

def word347_10_246 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_185 word347_10_245

def word347_10_247 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_221 word347_10_246

def word347_10_248 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_247

def word347_10_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (6, 6), (4, 4), (8, 8), (44, 44), (0, 46), (14, 48), (50, 50), (10, 52)]

def word347_10_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (14, 48), (50, 50), (10, 52)]

def word347_10_251 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_250 word347_10_8

def word347_10_252 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_249, 347, 20)) (some 338) ([2, 4, 6]) (some (2, word347_10_251, 347, 21))

def word347_10_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 80#64)))

def word347_10_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 10)]

def word347_10_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 14), (50, 50), (52, 2)]

def word347_10_256 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_223, 347, 22)) (some 338) ([2, 4, 6]) (some (2, word347_10_225, 347, 23))

def word347_10_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 112#64)))

def word347_10_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 2#64)))

def word347_10_259 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_258 word347_10_230

def word347_10_260 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_259

def word347_10_261 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_217 word347_10_260

def word347_10_262 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_216 word347_10_261

def word347_10_263 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_215 word347_10_262

def word347_10_264 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_214 word347_10_263

def word347_10_265 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_213 word347_10_264

def word347_10_266 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_38 word347_10_265

def word347_10_267 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_229 word347_10_266

def word347_10_268 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_228 word347_10_267

def word347_10_269 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_257 word347_10_268

def word347_10_270 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_33 word347_10_269

def word347_10_271 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_270

def word347_10_272 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_256 word347_10_271

def word347_10_273 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_255 word347_10_272

def word347_10_274 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_185 word347_10_273

def word347_10_275 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_218 word347_10_274

def word347_10_276 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_254 word347_10_275

def word347_10_277 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_217 word347_10_276

def word347_10_278 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_216 word347_10_277

def word347_10_279 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_215 word347_10_278

def word347_10_280 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_214 word347_10_279

def word347_10_281 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_213 word347_10_280

def word347_10_282 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_38 word347_10_281

def word347_10_283 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_229 word347_10_282

def word347_10_284 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_228 word347_10_283

def word347_10_285 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_253 word347_10_284

def word347_10_286 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_209 word347_10_285

def word347_10_287 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_286

def word347_10_288 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_252 word347_10_287

def word347_10_289 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_222 word347_10_288

def word347_10_290 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_185 word347_10_289

def word347_10_291 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_221 word347_10_290

def word347_10_292 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_291

def word347_10_293 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 12) word347_10_248 word347_10_292

def word347_10_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 14)]

def word347_10_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 14#64)

def word347_10_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 4), (48, 48), (50, 50), (52, 2)]

def word347_10_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (4, 46), (0, 48), (8, 50), (6, 52)]

def word347_10_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (8, 50), (6, 52)]

def word347_10_299 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_298 word347_10_8

def word347_10_300 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_297, 347, 24)) (some 339) ([2, 4, 6, 8]) (some (2, word347_10_299, 347, 25))

def word347_10_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 144#64)))

def word347_10_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def word347_10_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def word347_10_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4)]

def word347_10_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def word347_10_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 4), (48, 0), (50, 8), (52, 2)]

def word347_10_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (4, 46), (0, 48), (50, 50), (6, 52)]

def word347_10_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (50, 50), (6, 52)]

def word347_10_309 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_308 word347_10_8

def word347_10_310 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_307, 347, 26)) (some 341) ([2, 4, 6]) (some (2, word347_10_309, 347, 27))

def word347_10_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (8, 8), (0, 0), (50, 50), (6, 6)]

def word347_10_312 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_311

def word347_10_313 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_310 word347_10_312

def word347_10_314 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_306 word347_10_313

def word347_10_315 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_305 word347_10_314

def word347_10_316 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_179 word347_10_315

def word347_10_317 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_316

def word347_10_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 4), (48, 0), (50, 8), (52, 6)]

def word347_10_319 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_307, 347, 28)) (some 342) ([2, 4]) (some (2, word347_10_309, 347, 29))

def word347_10_320 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_319 word347_10_312

def word347_10_321 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_318 word347_10_320

def word347_10_322 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_321

def word347_10_323 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 8 (Flapjack.WordRegImm.reg 2) word347_10_317 word347_10_322

def word347_10_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 152#64)))

def word347_10_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def word347_10_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 4), (48, 0), (50, 50), (52, 2)]

def word347_10_327 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_223, 347, 30)) (some 338) ([2, 4, 6]) (some (2, word347_10_225, 347, 31))

def word347_10_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 160#64)))

def word347_10_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 14), (4, 4), (44, 44), (46, 4), (48, 10), (50, 50), (52, 14)]

def word347_10_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (4, 4), (44, 44), (10, 46), (8, 48), (0, 50), (6, 52)]

def word347_10_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (8, 48), (0, 50), (6, 52)]

def word347_10_332 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_331 word347_10_8

def word347_10_333 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_330, 347, 32)) (some 340) ([2, 4]) (some (2, word347_10_332, 347, 33))

def word347_10_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 192#64)))

def word347_10_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def word347_10_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 200#64)))

def word347_10_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 10 (Flapjack.WordRegImm.imm 1#64)))

def word347_10_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def word347_10_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 4), (48, 8), (50, 0), (52, 6)]

def word347_10_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def word347_10_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def word347_10_342 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_341 word347_10_8

def word347_10_343 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_340, 347, 34)) (some 343) ([2, 4]) (some (2, word347_10_342, 347, 35))

def word347_10_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def word347_10_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (12, 2), (44, 44), (10, 46), (8, 48), (0, 50), (6, 52)]

def word347_10_346 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_345, 347, 36)) (some 344) ([2, 4]) (some (2, word347_10_332, 347, 37))

def word347_10_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 208#64)))

def word347_10_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 216#64)))

def word347_10_349 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_337 word347_10_162

def word347_10_350 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_33 word347_10_349

def word347_10_351 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_39 word347_10_350

def word347_10_352 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_38 word347_10_351

def word347_10_353 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_348 word347_10_352

def word347_10_354 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_159 word347_10_353

def word347_10_355 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_229 word347_10_354

def word347_10_356 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_335 word347_10_355

def word347_10_357 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_347 word347_10_356

def word347_10_358 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_159 word347_10_357

def word347_10_359 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_358

def word347_10_360 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_346 word347_10_359

def word347_10_361 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_344 word347_10_360

def word347_10_362 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_361

def word347_10_363 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_343 word347_10_362

def word347_10_364 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_339 word347_10_363

def word347_10_365 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_364

def word347_10_366 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_162

def word347_10_367 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) word347_10_365 word347_10_366

def word347_10_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 2), (6, 6), (4, 4), (8, 8), (44, 44), (0, 46), (10, 48), (50, 50), (12, 52)]

def word347_10_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (10, 48), (50, 50), (12, 52)]

def word347_10_370 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_369 word347_10_8

def word347_10_371 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_368, 347, 38)) (some 338) ([2, 4, 6]) (some (2, word347_10_370, 347, 39))

def word347_10_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 224#64)))

def word347_10_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14), (8, 8), (6, 6), (4, 4)]

def word347_10_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def word347_10_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 12)]

def word347_10_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 10), (50, 50), (52, 2)]

def word347_10_377 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_340, 347, 40)) (some 343) ([2, 4]) (some (2, word347_10_342, 347, 41))

def word347_10_378 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_345, 347, 42)) (some 345) ([2, 4]) (some (2, word347_10_332, 347, 43))

def word347_10_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 256#64)))

def word347_10_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 264#64)))

def word347_10_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 10 (Flapjack.WordRegImm.imm 2#64)))

def word347_10_382 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_381 word347_10_162

def word347_10_383 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_33 word347_10_382

def word347_10_384 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_39 word347_10_383

def word347_10_385 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_38 word347_10_384

def word347_10_386 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_380 word347_10_385

def word347_10_387 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_159 word347_10_386

def word347_10_388 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_229 word347_10_387

def word347_10_389 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_335 word347_10_388

def word347_10_390 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_379 word347_10_389

def word347_10_391 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_159 word347_10_390

def word347_10_392 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_391

def word347_10_393 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_378 word347_10_392

def word347_10_394 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_344 word347_10_393

def word347_10_395 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_394

def word347_10_396 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_377 word347_10_395

def word347_10_397 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_376 word347_10_396

def word347_10_398 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_218 word347_10_397

def word347_10_399 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_375 word347_10_398

def word347_10_400 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_217 word347_10_399

def word347_10_401 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_216 word347_10_400

def word347_10_402 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_215 word347_10_401

def word347_10_403 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_214 word347_10_402

def word347_10_404 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_213 word347_10_403

def word347_10_405 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_38 word347_10_404

def word347_10_406 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_374 word347_10_405

def word347_10_407 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_373 word347_10_406

def word347_10_408 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_372 word347_10_407

def word347_10_409 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_33 word347_10_408

def word347_10_410 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_409

def word347_10_411 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_371 word347_10_410

def word347_10_412 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_199 word347_10_411

def word347_10_413 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_198 word347_10_412

def word347_10_414 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_179 word347_10_413

def word347_10_415 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_414

def word347_10_416 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) word347_10_415 word347_10_177

def word347_10_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 4), (48, 48), (50, 6)]

def word347_10_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50)]

def word347_10_419 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_418, 347, 44)) (some 343) ([2, 4]) (some (2, word347_10_24, 347, 45))

def word347_10_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50)]

def word347_10_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (10, 2), (44, 44), (8, 46), (0, 48), (6, 50)]

def word347_10_422 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_421, 347, 46)) (some 346) ([2, 4]) (some (2, word347_10_157, 347, 47))

def word347_10_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 272#64)))

def word347_10_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 280#64)))

def word347_10_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 1#64)))

def word347_10_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (48, 0), (6, 6)]

def word347_10_427 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_425 word347_10_426

def word347_10_428 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_159 word347_10_427

def word347_10_429 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_39 word347_10_428

def word347_10_430 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_38 word347_10_429

def word347_10_431 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_424 word347_10_430

def word347_10_432 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_431

def word347_10_433 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_212 word347_10_432

def word347_10_434 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_302 word347_10_433

def word347_10_435 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_423 word347_10_434

def word347_10_436 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_435

def word347_10_437 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_436

def word347_10_438 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_422 word347_10_437

def word347_10_439 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_420 word347_10_438

def word347_10_440 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_439

def word347_10_441 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_419 word347_10_440

def word347_10_442 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_417 word347_10_441

def word347_10_443 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_442

def word347_10_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (48, 48), (6, 6)]

def word347_10_445 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_444

def word347_10_446 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) word347_10_443 word347_10_445

def word347_10_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 4), (48, 48), (50, 2)]

def word347_10_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (6, 6), (4, 4), (8, 8), (44, 44), (0, 46), (14, 48), (10, 50)]

def word347_10_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (14, 48), (10, 50)]

def word347_10_450 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_449 word347_10_8

def word347_10_451 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_448, 347, 48)) (some 338) ([2, 4, 6]) (some (2, word347_10_450, 347, 49))

def word347_10_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 288#64)))

def word347_10_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 14), (50, 2)]

def word347_10_454 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_448, 347, 50)) (some 338) ([2, 4, 6]) (some (2, word347_10_450, 347, 51))

def word347_10_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 320#64)))

def word347_10_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 14)]

def word347_10_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (6, 6), (4, 4), (8, 8), (12, 44), (0, 46)]

def word347_10_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (0, 46)]

def word347_10_459 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_458 word347_10_8

def word347_10_460 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word347_10_457, 347, 52)) (some 338) ([2, 4, 6]) (some (2, word347_10_459, 347, 53))

def word347_10_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 352#64)))

def word347_10_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def word347_10_463 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_26 word347_10_462

def word347_10_464 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_217 word347_10_463

def word347_10_465 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_216 word347_10_464

def word347_10_466 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_215 word347_10_465

def word347_10_467 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_214 word347_10_466

def word347_10_468 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_213 word347_10_467

def word347_10_469 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_38 word347_10_468

def word347_10_470 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_212 word347_10_469

def word347_10_471 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_211 word347_10_470

def word347_10_472 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_461 word347_10_471

def word347_10_473 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_472

def word347_10_474 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_473

def word347_10_475 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_460 word347_10_474

def word347_10_476 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_456 word347_10_475

def word347_10_477 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_198 word347_10_476

def word347_10_478 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_258 word347_10_477

def word347_10_479 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_254 word347_10_478

def word347_10_480 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_217 word347_10_479

def word347_10_481 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_216 word347_10_480

def word347_10_482 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_215 word347_10_481

def word347_10_483 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_214 word347_10_482

def word347_10_484 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_213 word347_10_483

def word347_10_485 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_38 word347_10_484

def word347_10_486 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_229 word347_10_485

def word347_10_487 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_228 word347_10_486

def word347_10_488 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_455 word347_10_487

def word347_10_489 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_209 word347_10_488

def word347_10_490 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_489

def word347_10_491 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_454 word347_10_490

def word347_10_492 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_453 word347_10_491

def word347_10_493 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_198 word347_10_492

def word347_10_494 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_218 word347_10_493

def word347_10_495 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_254 word347_10_494

def word347_10_496 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_217 word347_10_495

def word347_10_497 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_216 word347_10_496

def word347_10_498 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_215 word347_10_497

def word347_10_499 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_214 word347_10_498

def word347_10_500 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_213 word347_10_499

def word347_10_501 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_38 word347_10_500

def word347_10_502 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_229 word347_10_501

def word347_10_503 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_228 word347_10_502

def word347_10_504 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_452 word347_10_503

def word347_10_505 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_209 word347_10_504

def word347_10_506 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_505

def word347_10_507 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_451 word347_10_506

def word347_10_508 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_447 word347_10_507

def word347_10_509 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_198 word347_10_508

def word347_10_510 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_179 word347_10_509

def word347_10_511 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_510

def word347_10_512 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_446 word347_10_511

def word347_10_513 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_50 word347_10_512

def word347_10_514 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_513

def word347_10_515 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_514

def word347_10_516 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_416 word347_10_515

def word347_10_517 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_79 word347_10_516

def word347_10_518 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_517

def word347_10_519 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_518

def word347_10_520 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_367 word347_10_519

def word347_10_521 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_1 word347_10_520

def word347_10_522 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_338 word347_10_521

def word347_10_523 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_337 word347_10_522

def word347_10_524 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_33 word347_10_523

def word347_10_525 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_39 word347_10_524

def word347_10_526 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_38 word347_10_525

def word347_10_527 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_336 word347_10_526

def word347_10_528 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_159 word347_10_527

def word347_10_529 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_229 word347_10_528

def word347_10_530 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_335 word347_10_529

def word347_10_531 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_334 word347_10_530

def word347_10_532 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_159 word347_10_531

def word347_10_533 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_532

def word347_10_534 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_333 word347_10_533

def word347_10_535 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_329 word347_10_534

def word347_10_536 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_218 word347_10_535

def word347_10_537 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_536

def word347_10_538 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_217 word347_10_537

def word347_10_539 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_216 word347_10_538

def word347_10_540 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_215 word347_10_539

def word347_10_541 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_214 word347_10_540

def word347_10_542 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_213 word347_10_541

def word347_10_543 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_38 word347_10_542

def word347_10_544 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_229 word347_10_543

def word347_10_545 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_228 word347_10_544

def word347_10_546 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_328 word347_10_545

def word347_10_547 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_33 word347_10_546

def word347_10_548 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_547

def word347_10_549 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_327 word347_10_548

def word347_10_550 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_326 word347_10_549

def word347_10_551 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_198 word347_10_550

def word347_10_552 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_179 word347_10_551

def word347_10_553 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_303 word347_10_552

def word347_10_554 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_60 word347_10_553

def word347_10_555 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_325 word347_10_554

def word347_10_556 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_216 word347_10_555

def word347_10_557 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_324 word347_10_556

def word347_10_558 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_557

def word347_10_559 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_558

def word347_10_560 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_323 word347_10_559

def word347_10_561 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_79 word347_10_560

def word347_10_562 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_304 word347_10_561

def word347_10_563 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_303 word347_10_562

def word347_10_564 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_60 word347_10_563

def word347_10_565 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_212 word347_10_564

def word347_10_566 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_302 word347_10_565

def word347_10_567 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_301 word347_10_566

def word347_10_568 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_567

def word347_10_569 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_568

def word347_10_570 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_300 word347_10_569

def word347_10_571 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_296 word347_10_570

def word347_10_572 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_185 word347_10_571

def word347_10_573 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_295 word347_10_572

def word347_10_574 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_294 word347_10_573

def word347_10_575 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_574

def word347_10_576 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_293 word347_10_575

def word347_10_577 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_220 word347_10_576

def word347_10_578 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_219 word347_10_577

def word347_10_579 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_60 word347_10_578

def word347_10_580 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_218 word347_10_579

def word347_10_581 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_580

def word347_10_582 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_217 word347_10_581

def word347_10_583 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_216 word347_10_582

def word347_10_584 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_215 word347_10_583

def word347_10_585 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_214 word347_10_584

def word347_10_586 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_213 word347_10_585

def word347_10_587 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_38 word347_10_586

def word347_10_588 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_212 word347_10_587

def word347_10_589 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_211 word347_10_588

def word347_10_590 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_210 word347_10_589

def word347_10_591 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_209 word347_10_590

def word347_10_592 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_591

def word347_10_593 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_208 word347_10_592

def word347_10_594 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_50 word347_10_593

def word347_10_595 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_594

def word347_10_596 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_595

def word347_10_597 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_178 word347_10_596

def word347_10_598 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_1 word347_10_597

def word347_10_599 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_58 word347_10_598

def word347_10_600 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_150 word347_10_599

def word347_10_601 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_600

def word347_10_602 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_601

def word347_10_603 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_149 word347_10_602

def word347_10_604 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_146 word347_10_603

def word347_10_605 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_604

def word347_10_606 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_145 word347_10_605

def word347_10_607 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_141 word347_10_606

def word347_10_608 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_607

def word347_10_609 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_608

def word347_10_610 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_140 word347_10_609

def word347_10_611 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_3 word347_10_610

def word347_10_612 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_33 word347_10_611

def word347_10_613 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_137 word347_10_612

def word347_10_614 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_136 word347_10_613

def word347_10_615 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_614

def word347_10_616 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_135 word347_10_615

def word347_10_617 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_57 word347_10_616

def word347_10_618 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_56 word347_10_617

def word347_10_619 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_618

def word347_10_620 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_55 word347_10_619

def word347_10_621 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_17 word347_10_620

def word347_10_622 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_50 word347_10_621

def word347_10_623 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_622

def word347_10_624 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_49 word347_10_623

def word347_10_625 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_3 word347_10_624

def word347_10_626 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_17 word347_10_625

def word347_10_627 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_41 word347_10_626

def word347_10_628 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_40 word347_10_627

def word347_10_629 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_39 word347_10_628

def word347_10_630 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_38 word347_10_629

def word347_10_631 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_37 word347_10_630

def word347_10_632 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_33 word347_10_631

def word347_10_633 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_36 word347_10_632

def word347_10_634 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_35 word347_10_633

def word347_10_635 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_34 word347_10_634

def word347_10_636 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_33 word347_10_635

def word347_10_637 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_636

def word347_10_638 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_32 word347_10_637

def word347_10_639 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_28 word347_10_638

def word347_10_640 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_27 word347_10_639

def word347_10_641 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_26 word347_10_640

def word347_10_642 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_641

def word347_10_643 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_25 word347_10_642

def word347_10_644 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_21 word347_10_643

def word347_10_645 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_20 word347_10_644

def word347_10_646 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_19 word347_10_645

def word347_10_647 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_18 word347_10_646

def word347_10_648 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_17 word347_10_647

def word347_10_649 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_648

def word347_10_650 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_2 word347_10_649

def word347_10_651 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_16 word347_10_650

def word347_10_652 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_1 word347_10_651

def word347_10_653 : WordLangProgHOL (BitVec 64) :=
.seq word347_10_0 word347_10_652

def pass347_10 : WordLangProgHOL (BitVec 64) :=
word347_10_653
theorem pass347_10_eq : WordRemove.removeMustTerminate (pass347_9) = pass347_10 := by
  kernel_rfl
#print axioms pass347_10_eq
end InitECandidate.Proofs.WordStages
