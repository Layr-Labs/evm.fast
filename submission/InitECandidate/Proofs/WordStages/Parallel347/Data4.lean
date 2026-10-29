import InitE.SourceDeclarations
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel347
def word347_4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 0), (69, 2), (73, 4)]

def word347_4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 73)]

def word347_4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def word347_4_3 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1 word347_4_2

def word347_4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word347_4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 1#64)

def word347_4_6 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_5

def word347_4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 93)]

def word347_4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 97)

def word347_4_9 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_7 word347_4_8

def word347_4_10 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_6 word347_4_9

def word347_4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 6#64)

def word347_4_12 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_10 word347_4_11

def word347_4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 101)]

def word347_4_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def word347_4_15 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_13 word347_4_14

def word347_4_16 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_12 word347_4_15

def word347_4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word347_4_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 77 (Flapjack.WordRegImm.reg 81) word347_4_16 word347_4_17

def word347_4_19 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_18 word347_4_4

def word347_4_20 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_3 word347_4_19

def word347_4_21 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_20 word347_4_4

def word347_4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 69)]

def word347_4_23 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_21 word347_4_22

def word347_4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 133 (Flapjack.WordLangAddr.addr 129 0#64))

def word347_4_25 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_23 word347_4_24

def word347_4_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 133)]

def word347_4_27 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_25 word347_4_26

def word347_4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 400#64)

def word347_4_29 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_27 word347_4_28

def word347_4_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(151, 65), (155, 77), (159, 137), (163, 129)]

def word347_4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def word347_4_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 151), (173, 155), (177, 159), (181, 163)]

def word347_4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 2)]

def word347_4_34 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_32 word347_4_33

def word347_4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 185)]

def word347_4_36 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_34 word347_4_35

def word347_4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 2)]

def word347_4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def word347_4_39 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_38 word347_4_14

def word347_4_40 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_37 word347_4_39

def word347_4_41 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_32 word347_4_40

def word347_4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 0#64)

def word347_4_43 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_41 word347_4_42

def word347_4_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word347_4_36, 347, 2)) (some 68) ([2]) (some (2, word347_4_43, 347, 3))

def word347_4_45 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_31 word347_4_44

def word347_4_46 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_30 word347_4_45

def word347_4_47 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_29 word347_4_46

def word347_4_48 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_47 word347_4_4

def word347_4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 193)]

def word347_4_50 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_48 word347_4_49

def word347_4_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 209 400#64)

def word347_4_52 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_50 word347_4_51

def word347_4_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(215, 169), (219, 173), (223, 177), (227, 181), (231, 201)]

def word347_4_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201), (4, 209)]

def word347_4_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 215), (241, 219), (245, 223), (249, 227), (253, 231)]

def word347_4_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def word347_4_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def word347_4_58 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_57 word347_4_14

def word347_4_59 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_56 word347_4_58

def word347_4_60 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_55 word347_4_59

def word347_4_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word347_4_55, 347, 4)) (some 78) ([2, 4]) (some (2, word347_4_60, 347, 5))

def word347_4_62 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_54 word347_4_61

def word347_4_63 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_53 word347_4_62

def word347_4_64 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_52 word347_4_63

def word347_4_65 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_64 word347_4_4

def word347_4_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 253)]

def word347_4_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 277 273 (Flapjack.WordRegImm.imm 384#64)))

def word347_4_68 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_66 word347_4_67

def word347_4_69 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_65 word347_4_68

def word347_4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 249)]

def word347_4_71 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_69 word347_4_70

def word347_4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 281)]

def word347_4_73 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_71 word347_4_72

def word347_4_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 277)]

def word347_4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 285 (Flapjack.WordLangAddr.addr 289 0#64))

def word347_4_76 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_74 word347_4_75

def word347_4_77 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_73 word347_4_76

def word347_4_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 273)]

def word347_4_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 297 293 (Flapjack.WordRegImm.imm 392#64)))

def word347_4_80 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_78 word347_4_79

def word347_4_81 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_77 word347_4_80

def word347_4_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 241)]

def word347_4_83 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_81 word347_4_82

def word347_4_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 301)]

def word347_4_85 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_83 word347_4_84

def word347_4_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 297)]

def word347_4_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 305 (Flapjack.WordLangAddr.addr 309 0#64))

def word347_4_88 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_86 word347_4_87

def word347_4_89 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_85 word347_4_88

def word347_4_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)

def word347_4_91 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_89 word347_4_90

def word347_4_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 317 9#64)

def word347_4_93 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_91 word347_4_92

def word347_4_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(321, 245)]

def word347_4_95 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_93 word347_4_94

def word347_4_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 325 1#64)

def word347_4_97 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_95 word347_4_96

def word347_4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 1#64)

def word347_4_99 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_98

def word347_4_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 341)]

def word347_4_101 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_99 word347_4_100

def word347_4_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 357 0#64)

def word347_4_103 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_102

def word347_4_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 357)]

def word347_4_105 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_103 word347_4_104

def word347_4_106 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 321 (Flapjack.WordRegImm.reg 325) word347_4_101 word347_4_105

def word347_4_107 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_97 word347_4_106

def word347_4_108 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_107 word347_4_4

def word347_4_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 373 4#64)

def word347_4_110 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_108 word347_4_109

def word347_4_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 321)]

def word347_4_112 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_110 word347_4_111

def word347_4_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 393 1#64)

def word347_4_114 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_113

def word347_4_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 393)]

def word347_4_116 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_114 word347_4_115

def word347_4_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 0#64)

def word347_4_118 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_117

def word347_4_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 409)]

def word347_4_120 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_118 word347_4_119

def word347_4_121 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 373 (Flapjack.WordRegImm.reg 377) word347_4_116 word347_4_120

def word347_4_122 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_112 word347_4_121

def word347_4_123 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_122 word347_4_4

def word347_4_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 413)]

def word347_4_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 361)]

def word347_4_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 433 425 (Flapjack.WordRegImm.reg 429)))

def word347_4_127 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_125 word347_4_126

def word347_4_128 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_124 word347_4_127

def word347_4_129 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_123 word347_4_128

def word347_4_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(437, 281)]

def word347_4_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 441 437 (Flapjack.WordRegImm.imm 1#64)))

def word347_4_132 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_130 word347_4_131

def word347_4_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 301)]

def word347_4_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 449 445 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def word347_4_135 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_133 word347_4_134

def word347_4_136 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_132 word347_4_135

def word347_4_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(455, 237), (459, 377), (463, 317), (467, 293)]

def word347_4_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 441), (4, 449)]

def word347_4_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(473, 455), (477, 459), (481, 463), (485, 467)]

def word347_4_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(489, 2), (493, 4), (497, 6)]

def word347_4_141 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_139 word347_4_140

def word347_4_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(509, 493)]

def word347_4_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(513, 489)]

def word347_4_144 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_142 word347_4_143

def word347_4_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 497)]

def word347_4_146 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_144 word347_4_145

def word347_4_147 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_141 word347_4_146

def word347_4_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(505, 2)]

def word347_4_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 505)]

def word347_4_150 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_149 word347_4_14

def word347_4_151 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_148 word347_4_150

def word347_4_152 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_139 word347_4_151

def word347_4_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 509 0#64)

def word347_4_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 513 0#64)

def word347_4_155 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_153 word347_4_154

def word347_4_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 0#64)

def word347_4_157 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_155 word347_4_156

def word347_4_158 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_152 word347_4_157

def word347_4_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word347_4_147, 347, 6)) (some 162) ([2, 4]) (some (2, word347_4_158, 347, 7))

def word347_4_160 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_138 word347_4_159

def word347_4_161 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_137 word347_4_160

def word347_4_162 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_136 word347_4_161

def word347_4_163 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_162 word347_4_4

def word347_4_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 477)]

def word347_4_165 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_163 word347_4_164

def word347_4_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 529)]

def word347_4_167 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_165 word347_4_166

def word347_4_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 1#64)

def word347_4_169 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_167 word347_4_168

def word347_4_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 549 11#64)

def word347_4_171 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_170

def word347_4_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 549)]

def word347_4_173 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_171 word347_4_172

def word347_4_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 481)]

def word347_4_175 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_174

def word347_4_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 533 (Flapjack.WordRegImm.reg 537) word347_4_173 word347_4_175

def word347_4_177 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_169 word347_4_176

def word347_4_178 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_177 word347_4_4

def word347_4_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(573, 533)]

def word347_4_180 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_178 word347_4_179

def word347_4_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 2#64)

def word347_4_182 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_180 word347_4_181

def word347_4_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 589 12#64)

def word347_4_184 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_183

def word347_4_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(609, 589)]

def word347_4_186 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_184 word347_4_185

def word347_4_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(609, 569)]

def word347_4_188 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_187

def word347_4_189 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 573 (Flapjack.WordRegImm.reg 577) word347_4_186 word347_4_188

def word347_4_190 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_182 word347_4_189

def word347_4_191 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_190 word347_4_4

def word347_4_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(613, 573)]

def word347_4_193 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_191 word347_4_192

def word347_4_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 617 3#64)

def word347_4_195 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_193 word347_4_194

def word347_4_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 629 14#64)

def word347_4_197 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_196

def word347_4_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 629)]

def word347_4_199 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_197 word347_4_198

def word347_4_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 609)]

def word347_4_201 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_200

def word347_4_202 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 613 (Flapjack.WordRegImm.reg 617) word347_4_199 word347_4_201

def word347_4_203 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_195 word347_4_202

def word347_4_204 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_203 word347_4_4

def word347_4_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(653, 613)]

def word347_4_206 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_204 word347_4_205

def word347_4_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 657 4#64)

def word347_4_208 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_206 word347_4_207

def word347_4_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 669 13#64)

def word347_4_210 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_209

def word347_4_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 669)]

def word347_4_212 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_210 word347_4_211

def word347_4_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 649)]

def word347_4_214 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_213

def word347_4_215 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 653 (Flapjack.WordRegImm.reg 657) word347_4_212 word347_4_214

def word347_4_216 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_208 word347_4_215

def word347_4_217 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_216 word347_4_4

def word347_4_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 473), (937, 521), (929, 689), (925, 513), (921, 485), (917, 653), (913, 509)]

def word347_4_219 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_217 word347_4_218

def word347_4_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(693, 377)]

def word347_4_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 697 192#64)

def word347_4_222 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_220 word347_4_221

def word347_4_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 713 1#64)

def word347_4_224 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_223

def word347_4_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(733, 713)]

def word347_4_226 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_224 word347_4_225

def word347_4_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 0#64)

def word347_4_228 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_227

def word347_4_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(733, 729)]

def word347_4_230 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_228 word347_4_229

def word347_4_231 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 693 (Flapjack.WordRegImm.reg 697) word347_4_226 word347_4_230

def word347_4_232 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_222 word347_4_231

def word347_4_233 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_232 word347_4_4

def word347_4_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 745 254#64)

def word347_4_235 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_233 word347_4_234

def word347_4_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(749, 693)]

def word347_4_237 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_235 word347_4_236

def word347_4_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 1#64)

def word347_4_239 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_238

def word347_4_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(785, 765)]

def word347_4_241 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_239 word347_4_240

def word347_4_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 781 0#64)

def word347_4_243 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_242

def word347_4_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(785, 781)]

def word347_4_245 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_243 word347_4_244

def word347_4_246 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 745 (Flapjack.WordRegImm.reg 749) word347_4_241 word347_4_245

def word347_4_247 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_237 word347_4_246

def word347_4_248 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_247 word347_4_4

def word347_4_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(797, 785)]

def word347_4_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(801, 733)]

def word347_4_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 805 797 (Flapjack.WordRegImm.reg 801)))

def word347_4_252 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_250 word347_4_251

def word347_4_253 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_249 word347_4_252

def word347_4_254 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_248 word347_4_253

def word347_4_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 809 2#64)

def word347_4_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(813, 809)]

def word347_4_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 813)

def word347_4_258 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_256 word347_4_257

def word347_4_259 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_255 word347_4_258

def word347_4_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 817 6#64)

def word347_4_261 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_259 word347_4_260

def word347_4_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 817)]

def word347_4_263 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_262 word347_4_14

def word347_4_264 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_261 word347_4_263

def word347_4_265 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 805 (Flapjack.WordRegImm.imm 0#64) word347_4_17 word347_4_264

def word347_4_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 281)]

def word347_4_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(833, 301)]

def word347_4_268 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_266 word347_4_267

def word347_4_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(839, 237), (843, 317), (847, 293), (851, 313)]

def word347_4_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 829), (4, 833)]

def word347_4_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(857, 839), (861, 843), (865, 847), (869, 851)]

def word347_4_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(873, 2), (877, 4), (881, 6)]

def word347_4_273 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_271 word347_4_272

def word347_4_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(893, 877)]

def word347_4_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(897, 873)]

def word347_4_276 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_274 word347_4_275

def word347_4_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(905, 881)]

def word347_4_278 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_276 word347_4_277

def word347_4_279 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_273 word347_4_278

def word347_4_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(889, 2)]

def word347_4_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 889)]

def word347_4_282 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_281 word347_4_14

def word347_4_283 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_280 word347_4_282

def word347_4_284 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_271 word347_4_283

def word347_4_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 893 0#64)

def word347_4_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 897 0#64)

def word347_4_287 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_285 word347_4_286

def word347_4_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 905 0#64)

def word347_4_289 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_287 word347_4_288

def word347_4_290 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_284 word347_4_289

def word347_4_291 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word347_4_279, 347, 8)) (some 162) ([2, 4]) (some (2, word347_4_290, 347, 9))

def word347_4_292 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_270 word347_4_291

def word347_4_293 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_269 word347_4_292

def word347_4_294 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_268 word347_4_293

def word347_4_295 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_294 word347_4_4

def word347_4_296 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_265 word347_4_295

def word347_4_297 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_254 word347_4_296

def word347_4_298 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_297 word347_4_4

def word347_4_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 857), (937, 905), (929, 861), (925, 897), (921, 865), (917, 869), (913, 893)]

def word347_4_300 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_298 word347_4_299

def word347_4_301 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 433 (Flapjack.WordRegImm.imm 0#64) word347_4_219 word347_4_300

def word347_4_302 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_129 word347_4_301

def word347_4_303 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_302 word347_4_4

def word347_4_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(965, 921)]

def word347_4_305 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_303 word347_4_304

def word347_4_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(969, 917)]

def word347_4_307 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_305 word347_4_306

def word347_4_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(973, 969)]

def word347_4_309 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_307 word347_4_308

def word347_4_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(977, 965)]

def word347_4_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 973 (Flapjack.WordLangAddr.addr 977 0#64))

def word347_4_312 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_310 word347_4_311

def word347_4_313 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_309 word347_4_312

def word347_4_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(981, 925)]

def word347_4_315 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_313 word347_4_314

def word347_4_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 985 1#64)

def word347_4_317 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_315 word347_4_316

def word347_4_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 997 3#64)

def word347_4_319 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_318

def word347_4_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1001, 997)]

def word347_4_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 1001)

def word347_4_322 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_320 word347_4_321

def word347_4_323 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_319 word347_4_322

def word347_4_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1005 6#64)

def word347_4_325 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_323 word347_4_324

def word347_4_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1005)]

def word347_4_327 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_326 word347_4_14

def word347_4_328 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_325 word347_4_327

def word347_4_329 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 981 (Flapjack.WordRegImm.reg 985) word347_4_328 word347_4_17

def word347_4_330 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_329 word347_4_4

def word347_4_331 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_317 word347_4_330

def word347_4_332 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_331 word347_4_4

def word347_4_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1033, 913)]

def word347_4_334 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_332 word347_4_333

def word347_4_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1037, 937)]

def word347_4_336 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_334 word347_4_335

def word347_4_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1043, 945), (1047, 929), (1051, 965), (1055, 969)]

def word347_4_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1033), (4, 1037)]

def word347_4_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1061, 1043), (1065, 1047), (1069, 1051), (1073, 1055)]

def word347_4_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1077, 2), (1081, 4)]

def word347_4_341 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_339 word347_4_340

def word347_4_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1093, 1081)]

def word347_4_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1097, 1077)]

def word347_4_344 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_342 word347_4_343

def word347_4_345 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_341 word347_4_344

def word347_4_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1085, 2)]

def word347_4_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1085)]

def word347_4_348 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_347 word347_4_14

def word347_4_349 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_346 word347_4_348

def word347_4_350 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_339 word347_4_349

def word347_4_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1093 0#64)

def word347_4_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1097 0#64)

def word347_4_353 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_351 word347_4_352

def word347_4_354 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_350 word347_4_353

def word347_4_355 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word347_4_345, 347, 10)) (some 169) ([2, 4]) (some (2, word347_4_354, 347, 11))

def word347_4_356 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_338 word347_4_355

def word347_4_357 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_337 word347_4_356

def word347_4_358 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_336 word347_4_357

def word347_4_359 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_358 word347_4_4

def word347_4_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1101, 1097)]

def word347_4_361 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_359 word347_4_360

def word347_4_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1105, 1093)]

def word347_4_363 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_361 word347_4_362

def word347_4_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1109, 1065)]

def word347_4_365 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_363 word347_4_364

def word347_4_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1121 4#64)

def word347_4_367 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_366

def word347_4_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1125, 1121)]

def word347_4_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 1125)

def word347_4_370 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_368 word347_4_369

def word347_4_371 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_367 word347_4_370

def word347_4_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1129 6#64)

def word347_4_373 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_371 word347_4_372

def word347_4_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1129)]

def word347_4_375 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_374 word347_4_14

def word347_4_376 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_373 word347_4_375

def word347_4_377 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 1105 (Flapjack.WordRegImm.reg 1109) word347_4_376 word347_4_17

def word347_4_378 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_377 word347_4_4

def word347_4_379 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_365 word347_4_378

def word347_4_380 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_379 word347_4_4

def word347_4_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1157 0#64)

def word347_4_382 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_380 word347_4_381

def word347_4_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1161, 1073)]

def word347_4_384 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_382 word347_4_383

def word347_4_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1165 0#64)

def word347_4_386 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_384 word347_4_385

def word347_4_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1177, 1101)]

def word347_4_388 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_387

def word347_4_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1205 12#64)

def word347_4_390 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_388 word347_4_389

def word347_4_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1209 8#64)

def word347_4_392 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_390 word347_4_391

def word347_4_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1213 0#64)

def word347_4_394 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_392 word347_4_393

def word347_4_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1219, 1061), (1223, 1069), (1227, 1161), (1231, 1177)]

def word347_4_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1177), (4, 1213), (6, 1209), (8, 1205)]

def word347_4_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1237, 1219), (1241, 1223), (1245, 1227), (1249, 1231)]

def word347_4_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1253, 2)]

def word347_4_399 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_397 word347_4_398

def word347_4_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1261, 1253)]

def word347_4_401 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_399 word347_4_400

def word347_4_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1257, 2)]

def word347_4_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1257)]

def word347_4_404 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_403 word347_4_14

def word347_4_405 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_402 word347_4_404

def word347_4_406 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_397 word347_4_405

def word347_4_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1261 0#64)

def word347_4_408 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_406 word347_4_407

def word347_4_409 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word347_4_401, 347, 12)) (some 339) ([2, 4, 6, 8]) (some (2, word347_4_408, 347, 13))

def word347_4_410 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_396 word347_4_409

def word347_4_411 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_395 word347_4_410

def word347_4_412 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_394 word347_4_411

def word347_4_413 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_412 word347_4_4

def word347_4_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1269, 1241)]

def word347_4_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1273 1269 (Flapjack.WordRegImm.imm 8#64)))

def word347_4_416 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_414 word347_4_415

def word347_4_417 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_413 word347_4_416

def word347_4_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1277, 1261)]

def word347_4_419 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_417 word347_4_418

def word347_4_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1281, 1277)]

def word347_4_421 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_419 word347_4_420

def word347_4_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1285, 1273)]

def word347_4_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1281 (Flapjack.WordLangAddr.addr 1285 0#64))

def word347_4_424 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_422 word347_4_423

def word347_4_425 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_421 word347_4_424

def word347_4_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1289 1#64)

def word347_4_427 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_425 word347_4_426

def word347_4_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1333, 1237), (1317, 1289), (1309, 1269), (1305, 1245), (1301, 1249)]

def word347_4_429 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_427 word347_4_428

def word347_4_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1333, 1061), (1317, 1157), (1309, 1069), (1305, 1161), (1301, 1101)]

def word347_4_431 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_430

def word347_4_432 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 1161 (Flapjack.WordRegImm.reg 1165) word347_4_429 word347_4_431

def word347_4_433 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_386 word347_4_432

def word347_4_434 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_433 word347_4_4

def word347_4_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1357, 1305)]

def word347_4_436 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_434 word347_4_435

def word347_4_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1361 4#64)

def word347_4_438 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_436 word347_4_437

def word347_4_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1373, 1301)]

def word347_4_440 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_439

def word347_4_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1377, 1317)]

def word347_4_442 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_440 word347_4_441

def word347_4_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1397 12#64)

def word347_4_444 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_442 word347_4_443

def word347_4_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1401 8#64)

def word347_4_446 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_444 word347_4_445

def word347_4_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1407, 1333), (1411, 1377), (1415, 1309), (1419, 1357), (1423, 1373)]

def word347_4_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1373), (4, 1377), (6, 1401), (8, 1397)]

def word347_4_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1429, 1407), (1433, 1411), (1437, 1415), (1441, 1419), (1445, 1423)]

def word347_4_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1449, 2)]

def word347_4_451 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_449 word347_4_450

def word347_4_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1457, 1449)]

def word347_4_453 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_451 word347_4_452

def word347_4_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1453, 2)]

def word347_4_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1453)]

def word347_4_456 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_455 word347_4_14

def word347_4_457 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_454 word347_4_456

def word347_4_458 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_449 word347_4_457

def word347_4_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1457 0#64)

def word347_4_460 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_458 word347_4_459

def word347_4_461 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), word347_4_453, 347, 14)) (some 339) ([2, 4, 6, 8]) (some (2, word347_4_460, 347, 15))

def word347_4_462 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_448 word347_4_461

def word347_4_463 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_447 word347_4_462

def word347_4_464 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_446 word347_4_463

def word347_4_465 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_464 word347_4_4

def word347_4_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1465, 1457)]

def word347_4_467 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_465 word347_4_466

def word347_4_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1469 0#64)

def word347_4_469 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_467 word347_4_468

def word347_4_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1473 0#64)

def word347_4_471 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_469 word347_4_470

def word347_4_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1477 0#64)

def word347_4_473 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_471 word347_4_472

def word347_4_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(1629, 1429), (1625, 1465), (1621, 1473), (1613, 1469), (1609, 1433), (1605, 1437), (1601, 1441), (1597, 1477),
    (1593, 1445)]

def word347_4_475 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_473 word347_4_474

def word347_4_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1489, 1301)]

def word347_4_477 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_476

def word347_4_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1493, 1317)]

def word347_4_479 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_477 word347_4_478

def word347_4_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1505 32#64)

def word347_4_481 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_479 word347_4_480

def word347_4_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1511, 1333), (1515, 1493), (1519, 1309), (1523, 1357), (1527, 1489)]

def word347_4_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1489), (4, 1493), (6, 1505)]

def word347_4_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1533, 1511), (1537, 1515), (1541, 1519), (1545, 1523), (1549, 1527)]

def word347_4_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1553, 2), (1557, 4), (1561, 6), (1565, 8)]

def word347_4_486 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_484 word347_4_485

def word347_4_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1573, 1565)]

def word347_4_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1577, 1557)]

def word347_4_489 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_487 word347_4_488

def word347_4_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1585, 1561)]

def word347_4_491 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_489 word347_4_490

def word347_4_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1589, 1553)]

def word347_4_493 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_491 word347_4_492

def word347_4_494 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_486 word347_4_493

def word347_4_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1569, 2)]

def word347_4_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1569)]

def word347_4_497 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_496 word347_4_14

def word347_4_498 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_495 word347_4_497

def word347_4_499 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_484 word347_4_498

def word347_4_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1573 0#64)

def word347_4_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1577 0#64)

def word347_4_502 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_500 word347_4_501

def word347_4_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1585 0#64)

def word347_4_504 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_502 word347_4_503

def word347_4_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1589 0#64)

def word347_4_506 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_504 word347_4_505

def word347_4_507 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_499 word347_4_506

def word347_4_508 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word347_4_494, 347, 16)) (some 338) ([2, 4, 6]) (some (2, word347_4_507, 347, 17))

def word347_4_509 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_483 word347_4_508

def word347_4_510 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_482 word347_4_509

def word347_4_511 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_481 word347_4_510

def word347_4_512 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_511 word347_4_4

def word347_4_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(1629, 1533), (1625, 1589), (1621, 1585), (1613, 1577), (1609, 1537), (1605, 1541), (1601, 1545), (1597, 1573),
    (1593, 1549)]

def word347_4_514 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_512 word347_4_513

def word347_4_515 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 1357 (Flapjack.WordRegImm.reg 1361) word347_4_475 word347_4_514

def word347_4_516 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_438 word347_4_515

def word347_4_517 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_516 word347_4_4

def word347_4_518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1637, 1605)]

def word347_4_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1641 1637 (Flapjack.WordRegImm.imm 16#64)))

def word347_4_520 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_518 word347_4_519

def word347_4_521 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_517 word347_4_520

def word347_4_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1645, 1625)]

def word347_4_523 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_521 word347_4_522

def word347_4_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1649, 1613)]

def word347_4_525 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_523 word347_4_524

def word347_4_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1653, 1621)]

def word347_4_527 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_525 word347_4_526

def word347_4_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1657, 1597)]

def word347_4_529 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_527 word347_4_528

def word347_4_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1661, 1645)]

def word347_4_531 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_529 word347_4_530

def word347_4_532 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1665, 1641)]

def word347_4_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1661 (Flapjack.WordLangAddr.addr 1665 0#64))

def word347_4_534 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_532 word347_4_533

def word347_4_535 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_531 word347_4_534

def word347_4_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1669, 1649)]

def word347_4_537 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_535 word347_4_536

def word347_4_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1673, 1665)]

def word347_4_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1669 (Flapjack.WordLangAddr.addr 1673 8#64))

def word347_4_540 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_538 word347_4_539

def word347_4_541 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_537 word347_4_540

def word347_4_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1677, 1653)]

def word347_4_543 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_541 word347_4_542

def word347_4_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1681, 1673)]

def word347_4_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1677 (Flapjack.WordLangAddr.addr 1681 16#64))

def word347_4_546 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_544 word347_4_545

def word347_4_547 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_543 word347_4_546

def word347_4_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1685, 1657)]

def word347_4_549 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_547 word347_4_548

def word347_4_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1689, 1681)]

def word347_4_551 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1685 (Flapjack.WordLangAddr.addr 1689 24#64))

def word347_4_552 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_550 word347_4_551

def word347_4_553 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_549 word347_4_552

def word347_4_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1693, 1609)]

def word347_4_555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1697 1693 (Flapjack.WordRegImm.imm 1#64)))

def word347_4_556 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_554 word347_4_555

def word347_4_557 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_553 word347_4_556

def word347_4_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1701, 1697)]

def word347_4_559 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_557 word347_4_558

def word347_4_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1705 1#64)

def word347_4_561 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_559 word347_4_560

def word347_4_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1709, 1601)]

def word347_4_563 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_561 word347_4_562

def word347_4_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1721, 1593)]

def word347_4_565 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_564

def word347_4_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1725, 1701)]

def word347_4_567 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_565 word347_4_566

def word347_4_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1737 0#64)

def word347_4_569 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_567 word347_4_568

def word347_4_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1743, 1629), (1747, 1725), (1751, 1637), (1755, 1709), (1759, 1721)]

def word347_4_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1721), (4, 1725), (6, 1737)]

def word347_4_572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1765, 1743), (1769, 1747), (1773, 1751), (1777, 1755), (1781, 1759)]

def word347_4_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1785, 2), (1789, 4), (1793, 6), (1797, 8)]

def word347_4_574 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_572 word347_4_573

def word347_4_575 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1805, 1797)]

def word347_4_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1809, 1789)]

def word347_4_577 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_575 word347_4_576

def word347_4_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1817, 1793)]

def word347_4_579 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_577 word347_4_578

def word347_4_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1821, 1785)]

def word347_4_581 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_579 word347_4_580

def word347_4_582 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_574 word347_4_581

def word347_4_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1801, 2)]

def word347_4_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1801)]

def word347_4_585 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_584 word347_4_14

def word347_4_586 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_583 word347_4_585

def word347_4_587 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_572 word347_4_586

def word347_4_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1805 0#64)

def word347_4_589 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1809 0#64)

def word347_4_590 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_588 word347_4_589

def word347_4_591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1817 0#64)

def word347_4_592 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_590 word347_4_591

def word347_4_593 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1821 0#64)

def word347_4_594 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_592 word347_4_593

def word347_4_595 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_587 word347_4_594

def word347_4_596 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word347_4_582, 347, 18)) (some 338) ([2, 4, 6]) (some (2, word347_4_595, 347, 19))

def word347_4_597 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_571 word347_4_596

def word347_4_598 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_570 word347_4_597

def word347_4_599 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_569 word347_4_598

def word347_4_600 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_599 word347_4_4

def word347_4_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1825, 1773)]

def word347_4_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1829 1825 (Flapjack.WordRegImm.imm 48#64)))

def word347_4_603 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_601 word347_4_602

def word347_4_604 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_600 word347_4_603

def word347_4_605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1833, 1821)]

def word347_4_606 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_604 word347_4_605

def word347_4_607 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1837, 1809)]

def word347_4_608 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_606 word347_4_607

def word347_4_609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1841, 1817)]

def word347_4_610 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_608 word347_4_609

def word347_4_611 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1845, 1805)]

def word347_4_612 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_610 word347_4_611

def word347_4_613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1849, 1833)]

def word347_4_614 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_612 word347_4_613

def word347_4_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1853, 1829)]

def word347_4_616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1849 (Flapjack.WordLangAddr.addr 1853 0#64))

def word347_4_617 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_615 word347_4_616

def word347_4_618 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_614 word347_4_617

def word347_4_619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1857, 1837)]

def word347_4_620 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_618 word347_4_619

def word347_4_621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1861, 1853)]

def word347_4_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1857 (Flapjack.WordLangAddr.addr 1861 8#64))

def word347_4_623 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_621 word347_4_622

def word347_4_624 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_620 word347_4_623

def word347_4_625 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1865, 1841)]

def word347_4_626 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_624 word347_4_625

def word347_4_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1869, 1861)]

def word347_4_628 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1865 (Flapjack.WordLangAddr.addr 1869 16#64))

def word347_4_629 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_627 word347_4_628

def word347_4_630 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_626 word347_4_629

def word347_4_631 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1873, 1845)]

def word347_4_632 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_630 word347_4_631

def word347_4_633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1877, 1869)]

def word347_4_634 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1873 (Flapjack.WordLangAddr.addr 1877 24#64))

def word347_4_635 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_633 word347_4_634

def word347_4_636 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_632 word347_4_635

def word347_4_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1881, 1769)]

def word347_4_638 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1885 1881 (Flapjack.WordRegImm.imm 1#64)))

def word347_4_639 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_637 word347_4_638

def word347_4_640 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_636 word347_4_639

def word347_4_641 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1889, 1885)]

def word347_4_642 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_640 word347_4_641

def word347_4_643 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2293, 1765), (2253, 1889), (2249, 1825), (2245, 1777), (2237, 1781)]

def word347_4_644 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_642 word347_4_643

def word347_4_645 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1901, 1593)]

def word347_4_646 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_645

def word347_4_647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1905, 1701)]

def word347_4_648 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_646 word347_4_647

def word347_4_649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1917 0#64)

def word347_4_650 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_648 word347_4_649

def word347_4_651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1923, 1629), (1927, 1905), (1931, 1637), (1935, 1709), (1939, 1901)]

def word347_4_652 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1901), (4, 1905), (6, 1917)]

def word347_4_653 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1945, 1923), (1949, 1927), (1953, 1931), (1957, 1935), (1961, 1939)]

def word347_4_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1965, 2), (1969, 4), (1973, 6), (1977, 8)]

def word347_4_655 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_653 word347_4_654

def word347_4_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1985, 1977)]

def word347_4_657 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1989, 1969)]

def word347_4_658 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_656 word347_4_657

def word347_4_659 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1997, 1973)]

def word347_4_660 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_658 word347_4_659

def word347_4_661 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2001, 1965)]

def word347_4_662 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_660 word347_4_661

def word347_4_663 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_655 word347_4_662

def word347_4_664 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1981, 2)]

def word347_4_665 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1981)]

def word347_4_666 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_665 word347_4_14

def word347_4_667 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_664 word347_4_666

def word347_4_668 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_653 word347_4_667

def word347_4_669 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1985 0#64)

def word347_4_670 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1989 0#64)

def word347_4_671 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_669 word347_4_670

def word347_4_672 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1997 0#64)

def word347_4_673 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_671 word347_4_672

def word347_4_674 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2001 0#64)

def word347_4_675 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_673 word347_4_674

def word347_4_676 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_668 word347_4_675

def word347_4_677 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word347_4_663, 347, 20)) (some 338) ([2, 4, 6]) (some (2, word347_4_676, 347, 21))

def word347_4_678 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_652 word347_4_677

def word347_4_679 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_651 word347_4_678

def word347_4_680 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_650 word347_4_679

def word347_4_681 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_680 word347_4_4

def word347_4_682 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2005, 1953)]

def word347_4_683 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2009 2005 (Flapjack.WordRegImm.imm 80#64)))

def word347_4_684 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_682 word347_4_683

def word347_4_685 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_681 word347_4_684

def word347_4_686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2013, 2001)]

def word347_4_687 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_685 word347_4_686

def word347_4_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2017, 1989)]

def word347_4_689 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_687 word347_4_688

def word347_4_690 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2021, 1997)]

def word347_4_691 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_689 word347_4_690

def word347_4_692 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2025, 1985)]

def word347_4_693 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_691 word347_4_692

def word347_4_694 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2029, 2013)]

def word347_4_695 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_693 word347_4_694

def word347_4_696 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2033, 2009)]

def word347_4_697 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2029 (Flapjack.WordLangAddr.addr 2033 0#64))

def word347_4_698 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_696 word347_4_697

def word347_4_699 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_695 word347_4_698

def word347_4_700 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2037, 2017)]

def word347_4_701 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_699 word347_4_700

def word347_4_702 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2041, 2033)]

def word347_4_703 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2037 (Flapjack.WordLangAddr.addr 2041 8#64))

def word347_4_704 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_702 word347_4_703

def word347_4_705 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_701 word347_4_704

def word347_4_706 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2045, 2021)]

def word347_4_707 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_705 word347_4_706

def word347_4_708 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2049, 2041)]

def word347_4_709 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2045 (Flapjack.WordLangAddr.addr 2049 16#64))

def word347_4_710 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_708 word347_4_709

def word347_4_711 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_707 word347_4_710

def word347_4_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2053, 2025)]

def word347_4_713 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_711 word347_4_712

def word347_4_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2057, 2049)]

def word347_4_715 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2053 (Flapjack.WordLangAddr.addr 2057 24#64))

def word347_4_716 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_714 word347_4_715

def word347_4_717 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_713 word347_4_716

def word347_4_718 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2061, 1961)]

def word347_4_719 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_717 word347_4_718

def word347_4_720 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2065, 1949)]

def word347_4_721 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2069 2065 (Flapjack.WordRegImm.imm 1#64)))

def word347_4_722 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_720 word347_4_721

def word347_4_723 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_719 word347_4_722

def word347_4_724 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2081 0#64)

def word347_4_725 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_723 word347_4_724

def word347_4_726 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2087, 1945), (2091, 2065), (2095, 2005), (2099, 1957), (2103, 2061)]

def word347_4_727 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2061), (4, 2069), (6, 2081)]

def word347_4_728 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2109, 2087), (2113, 2091), (2117, 2095), (2121, 2099), (2125, 2103)]

def word347_4_729 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2129, 2), (2133, 4), (2137, 6), (2141, 8)]

def word347_4_730 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_728 word347_4_729

def word347_4_731 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2149, 2141)]

def word347_4_732 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2153, 2133)]

def word347_4_733 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_731 word347_4_732

def word347_4_734 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2161, 2137)]

def word347_4_735 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_733 word347_4_734

def word347_4_736 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2165, 2129)]

def word347_4_737 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_735 word347_4_736

def word347_4_738 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_730 word347_4_737

def word347_4_739 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2145, 2)]

def word347_4_740 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2145)]

def word347_4_741 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_740 word347_4_14

def word347_4_742 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_739 word347_4_741

def word347_4_743 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_728 word347_4_742

def word347_4_744 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2149 0#64)

def word347_4_745 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2153 0#64)

def word347_4_746 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_744 word347_4_745

def word347_4_747 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2161 0#64)

def word347_4_748 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_746 word347_4_747

def word347_4_749 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2165 0#64)

def word347_4_750 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_748 word347_4_749

def word347_4_751 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_743 word347_4_750

def word347_4_752 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word347_4_738, 347, 22)) (some 338) ([2, 4, 6]) (some (2, word347_4_751, 347, 23))

def word347_4_753 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_727 word347_4_752

def word347_4_754 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_726 word347_4_753

def word347_4_755 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_725 word347_4_754

def word347_4_756 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_755 word347_4_4

def word347_4_757 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2169, 2117)]

def word347_4_758 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2173 2169 (Flapjack.WordRegImm.imm 112#64)))

def word347_4_759 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_757 word347_4_758

def word347_4_760 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_756 word347_4_759

def word347_4_761 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2177, 2165)]

def word347_4_762 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_760 word347_4_761

def word347_4_763 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2181, 2153)]

def word347_4_764 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_762 word347_4_763

def word347_4_765 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2185, 2161)]

def word347_4_766 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_764 word347_4_765

def word347_4_767 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2189, 2149)]

def word347_4_768 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_766 word347_4_767

def word347_4_769 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2193, 2177)]

def word347_4_770 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_768 word347_4_769

def word347_4_771 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2197, 2173)]

def word347_4_772 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2193 (Flapjack.WordLangAddr.addr 2197 0#64))

def word347_4_773 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_771 word347_4_772

def word347_4_774 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_770 word347_4_773

def word347_4_775 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2201, 2181)]

def word347_4_776 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_774 word347_4_775

def word347_4_777 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2205, 2197)]

def word347_4_778 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2201 (Flapjack.WordLangAddr.addr 2205 8#64))

def word347_4_779 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_777 word347_4_778

def word347_4_780 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_776 word347_4_779

def word347_4_781 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2209, 2185)]

def word347_4_782 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_780 word347_4_781

def word347_4_783 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2213, 2205)]

def word347_4_784 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2209 (Flapjack.WordLangAddr.addr 2213 16#64))

def word347_4_785 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_783 word347_4_784

def word347_4_786 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_782 word347_4_785

def word347_4_787 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2217, 2189)]

def word347_4_788 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_786 word347_4_787

def word347_4_789 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2221, 2213)]

def word347_4_790 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2217 (Flapjack.WordLangAddr.addr 2221 24#64))

def word347_4_791 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_789 word347_4_790

def word347_4_792 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_788 word347_4_791

def word347_4_793 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2225, 2113)]

def word347_4_794 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2229 2225 (Flapjack.WordRegImm.imm 2#64)))

def word347_4_795 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_793 word347_4_794

def word347_4_796 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_792 word347_4_795

def word347_4_797 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2233, 2229)]

def word347_4_798 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_796 word347_4_797

def word347_4_799 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2293, 2109), (2253, 2233), (2249, 2169), (2245, 2121), (2237, 2125)]

def word347_4_800 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_798 word347_4_799

def word347_4_801 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 1705 (Flapjack.WordRegImm.reg 1709) word347_4_644 word347_4_800

def word347_4_802 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_563 word347_4_801

def word347_4_803 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_802 word347_4_4

def word347_4_804 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2301, 2237)]

def word347_4_805 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_803 word347_4_804

def word347_4_806 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2305, 2253)]

def word347_4_807 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_805 word347_4_806

def word347_4_808 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2317 14#64)

def word347_4_809 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_807 word347_4_808

def word347_4_810 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2321 0#64)

def word347_4_811 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_809 word347_4_810

def word347_4_812 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2327, 2293), (2331, 2305), (2335, 2249), (2339, 2245), (2343, 2301)]

def word347_4_813 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2301), (4, 2305), (6, 2321), (8, 2317)]

def word347_4_814 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2349, 2327), (2353, 2331), (2357, 2335), (2361, 2339), (2365, 2343)]

def word347_4_815 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2369, 2)]

def word347_4_816 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_814 word347_4_815

def word347_4_817 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2377, 2369)]

def word347_4_818 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_816 word347_4_817

def word347_4_819 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2373, 2)]

def word347_4_820 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2373)]

def word347_4_821 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_820 word347_4_14

def word347_4_822 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_819 word347_4_821

def word347_4_823 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_814 word347_4_822

def word347_4_824 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2377 0#64)

def word347_4_825 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_823 word347_4_824

def word347_4_826 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word347_4_818, 347, 24)) (some 339) ([2, 4, 6, 8]) (some (2, word347_4_825, 347, 25))

def word347_4_827 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_813 word347_4_826

def word347_4_828 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_812 word347_4_827

def word347_4_829 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_811 word347_4_828

def word347_4_830 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_829 word347_4_4

def word347_4_831 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2385, 2357)]

def word347_4_832 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2389 2385 (Flapjack.WordRegImm.imm 144#64)))

def word347_4_833 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_831 word347_4_832

def word347_4_834 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_830 word347_4_833

def word347_4_835 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2393, 2377)]

def word347_4_836 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_834 word347_4_835

def word347_4_837 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2397, 2393)]

def word347_4_838 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_836 word347_4_837

def word347_4_839 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2401, 2389)]

def word347_4_840 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2397 (Flapjack.WordLangAddr.addr 2401 0#64))

def word347_4_841 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_839 word347_4_840

def word347_4_842 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_838 word347_4_841

def word347_4_843 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2405, 2353)]

def word347_4_844 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2409 2405 (Flapjack.WordRegImm.imm 1#64)))

def word347_4_845 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_843 word347_4_844

def word347_4_846 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_842 word347_4_845

def word347_4_847 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2413, 2409)]

def word347_4_848 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_846 word347_4_847

def word347_4_849 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2417, 2361)]

def word347_4_850 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_848 word347_4_849

def word347_4_851 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2421 3#64)

def word347_4_852 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_850 word347_4_851

def word347_4_853 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2433, 2365)]

def word347_4_854 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_853

def word347_4_855 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2437, 2413)]

def word347_4_856 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_854 word347_4_855

def word347_4_857 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2449 20#64)

def word347_4_858 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_856 word347_4_857

def word347_4_859 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2455, 2349), (2459, 2437), (2463, 2385), (2467, 2417), (2471, 2433)]

def word347_4_860 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2433), (4, 2437), (6, 2449)]

def word347_4_861 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2477, 2455), (2481, 2459), (2485, 2463), (2489, 2467), (2493, 2471)]

def word347_4_862 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2497, 2)]

def word347_4_863 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_861 word347_4_862

def word347_4_864 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2505, 2497)]

def word347_4_865 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_863 word347_4_864

def word347_4_866 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2501, 2)]

def word347_4_867 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2501)]

def word347_4_868 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_867 word347_4_14

def word347_4_869 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_866 word347_4_868

def word347_4_870 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_861 word347_4_869

def word347_4_871 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2505 0#64)

def word347_4_872 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_870 word347_4_871

def word347_4_873 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word347_4_865, 347, 26)) (some 341) ([2, 4, 6]) (some (2, word347_4_872, 347, 27))

def word347_4_874 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_860 word347_4_873

def word347_4_875 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_859 word347_4_874

def word347_4_876 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_858 word347_4_875

def word347_4_877 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_876 word347_4_4

def word347_4_878 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2613, 2477), (2605, 2481), (2601, 2505), (2597, 2485), (2593, 2489), (2589, 2493)]

def word347_4_879 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_877 word347_4_878

def word347_4_880 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2521, 2365)]

def word347_4_881 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_880

def word347_4_882 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2525, 2413)]

def word347_4_883 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_881 word347_4_882

def word347_4_884 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2531, 2349), (2535, 2525), (2539, 2385), (2543, 2417), (2547, 2521)]

def word347_4_885 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2521), (4, 2525)]

def word347_4_886 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2553, 2531), (2557, 2535), (2561, 2539), (2565, 2543), (2569, 2547)]

def word347_4_887 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2573, 2)]

def word347_4_888 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_886 word347_4_887

def word347_4_889 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2581, 2573)]

def word347_4_890 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_888 word347_4_889

def word347_4_891 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2577, 2)]

def word347_4_892 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2577)]

def word347_4_893 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_892 word347_4_14

def word347_4_894 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_891 word347_4_893

def word347_4_895 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_886 word347_4_894

def word347_4_896 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2581 0#64)

def word347_4_897 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_895 word347_4_896

def word347_4_898 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word347_4_890, 347, 28)) (some 342) ([2, 4]) (some (2, word347_4_897, 347, 29))

def word347_4_899 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_885 word347_4_898

def word347_4_900 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_884 word347_4_899

def word347_4_901 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_883 word347_4_900

def word347_4_902 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_901 word347_4_4

def word347_4_903 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2613, 2553), (2605, 2557), (2601, 2581), (2597, 2561), (2593, 2565), (2589, 2569)]

def word347_4_904 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_902 word347_4_903

def word347_4_905 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2417 (Flapjack.WordRegImm.reg 2421) word347_4_879 word347_4_904

def word347_4_906 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_852 word347_4_905

def word347_4_907 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_906 word347_4_4

def word347_4_908 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2617, 2597)]

def word347_4_909 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2621 2617 (Flapjack.WordRegImm.imm 152#64)))

def word347_4_910 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_908 word347_4_909

def word347_4_911 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_907 word347_4_910

def word347_4_912 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2625, 2601)]

def word347_4_913 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_911 word347_4_912

def word347_4_914 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2629, 2625)]

def word347_4_915 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_913 word347_4_914

def word347_4_916 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2633, 2621)]

def word347_4_917 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2629 (Flapjack.WordLangAddr.addr 2633 0#64))

def word347_4_918 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_916 word347_4_917

def word347_4_919 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_915 word347_4_918

def word347_4_920 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2637, 2605)]

def word347_4_921 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2641 2637 (Flapjack.WordRegImm.imm 1#64)))

def word347_4_922 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_920 word347_4_921

def word347_4_923 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_919 word347_4_922

def word347_4_924 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2645, 2641)]

def word347_4_925 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_923 word347_4_924

def word347_4_926 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2649, 2589)]

def word347_4_927 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_925 word347_4_926

def word347_4_928 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2653, 2645)]

def word347_4_929 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_927 word347_4_928

def word347_4_930 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2661 32#64)

def word347_4_931 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_929 word347_4_930

def word347_4_932 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2667, 2613), (2671, 2653), (2675, 2617), (2679, 2593), (2683, 2649)]

def word347_4_933 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2649), (4, 2653), (6, 2661)]

def word347_4_934 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2689, 2667), (2693, 2671), (2697, 2675), (2701, 2679), (2705, 2683)]

def word347_4_935 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2709, 2), (2713, 4), (2717, 6), (2721, 8)]

def word347_4_936 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_934 word347_4_935

def word347_4_937 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2729, 2721)]

def word347_4_938 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2733, 2713)]

def word347_4_939 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_937 word347_4_938

def word347_4_940 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2741, 2717)]

def word347_4_941 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_939 word347_4_940

def word347_4_942 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2745, 2709)]

def word347_4_943 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_941 word347_4_942

def word347_4_944 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_936 word347_4_943

def word347_4_945 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2725, 2)]

def word347_4_946 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2725)]

def word347_4_947 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_946 word347_4_14

def word347_4_948 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_945 word347_4_947

def word347_4_949 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_934 word347_4_948

def word347_4_950 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2729 0#64)

def word347_4_951 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2733 0#64)

def word347_4_952 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_950 word347_4_951

def word347_4_953 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2741 0#64)

def word347_4_954 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_952 word347_4_953

def word347_4_955 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2745 0#64)

def word347_4_956 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_954 word347_4_955

def word347_4_957 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_949 word347_4_956

def word347_4_958 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word347_4_944, 347, 30)) (some 338) ([2, 4, 6]) (some (2, word347_4_957, 347, 31))

def word347_4_959 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_933 word347_4_958

def word347_4_960 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_932 word347_4_959

def word347_4_961 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_931 word347_4_960

def word347_4_962 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_961 word347_4_4

def word347_4_963 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2749, 2697)]

def word347_4_964 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2753 2749 (Flapjack.WordRegImm.imm 160#64)))

def word347_4_965 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_963 word347_4_964

def word347_4_966 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_962 word347_4_965

def word347_4_967 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2757, 2745)]

def word347_4_968 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_966 word347_4_967

def word347_4_969 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2761, 2733)]

def word347_4_970 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_968 word347_4_969

def word347_4_971 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2765, 2741)]

def word347_4_972 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_970 word347_4_971

def word347_4_973 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2769, 2729)]

def word347_4_974 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_972 word347_4_973

def word347_4_975 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2773, 2757)]

def word347_4_976 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_974 word347_4_975

def word347_4_977 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2777, 2753)]

def word347_4_978 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2773 (Flapjack.WordLangAddr.addr 2777 0#64))

def word347_4_979 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_977 word347_4_978

def word347_4_980 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_976 word347_4_979

def word347_4_981 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2781, 2761)]

def word347_4_982 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_980 word347_4_981

def word347_4_983 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2785, 2777)]

def word347_4_984 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2781 (Flapjack.WordLangAddr.addr 2785 8#64))

def word347_4_985 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_983 word347_4_984

def word347_4_986 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_982 word347_4_985

def word347_4_987 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2789, 2765)]

def word347_4_988 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_986 word347_4_987

def word347_4_989 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2793, 2785)]

def word347_4_990 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2789 (Flapjack.WordLangAddr.addr 2793 16#64))

def word347_4_991 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_989 word347_4_990

def word347_4_992 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_988 word347_4_991

def word347_4_993 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2797, 2769)]

def word347_4_994 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_992 word347_4_993

def word347_4_995 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2801, 2793)]

def word347_4_996 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2797 (Flapjack.WordLangAddr.addr 2801 24#64))

def word347_4_997 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_995 word347_4_996

def word347_4_998 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_994 word347_4_997

def word347_4_999 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2805, 2693)]

def word347_4_1000 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2809 2805 (Flapjack.WordRegImm.imm 1#64)))

def word347_4_1001 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_999 word347_4_1000

def word347_4_1002 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_998 word347_4_1001

def word347_4_1003 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2813, 2809)]

def word347_4_1004 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1002 word347_4_1003

def word347_4_1005 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2817, 2705)]

def word347_4_1006 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1004 word347_4_1005

def word347_4_1007 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2821, 2813)]

def word347_4_1008 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1006 word347_4_1007

def word347_4_1009 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2827, 2689), (2831, 2821), (2835, 2749), (2839, 2701), (2843, 2817)]

def word347_4_1010 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2817), (4, 2821)]

def word347_4_1011 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2849, 2827), (2853, 2831), (2857, 2835), (2861, 2839), (2865, 2843)]

def word347_4_1012 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2869, 2), (2873, 4)]

def word347_4_1013 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1011 word347_4_1012

def word347_4_1014 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2881, 2873)]

def word347_4_1015 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2889, 2869)]

def word347_4_1016 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1014 word347_4_1015

def word347_4_1017 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1013 word347_4_1016

def word347_4_1018 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2877, 2)]

def word347_4_1019 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2877)]

def word347_4_1020 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1019 word347_4_14

def word347_4_1021 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1018 word347_4_1020

def word347_4_1022 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1011 word347_4_1021

def word347_4_1023 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2881 0#64)

def word347_4_1024 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2889 0#64)

def word347_4_1025 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1023 word347_4_1024

def word347_4_1026 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1022 word347_4_1025

def word347_4_1027 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word347_4_1017, 347, 32)) (some 340) ([2, 4]) (some (2, word347_4_1026, 347, 33))

def word347_4_1028 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1010 word347_4_1027

def word347_4_1029 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1009 word347_4_1028

def word347_4_1030 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1008 word347_4_1029

def word347_4_1031 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1030 word347_4_4

def word347_4_1032 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2893, 2857)]

def word347_4_1033 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2897 2893 (Flapjack.WordRegImm.imm 192#64)))

def word347_4_1034 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1032 word347_4_1033

def word347_4_1035 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1031 word347_4_1034

def word347_4_1036 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2901, 2889)]

def word347_4_1037 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1035 word347_4_1036

def word347_4_1038 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2905, 2901)]

def word347_4_1039 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1037 word347_4_1038

def word347_4_1040 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2909, 2897)]

def word347_4_1041 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2905 (Flapjack.WordLangAddr.addr 2909 0#64))

def word347_4_1042 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1040 word347_4_1041

def word347_4_1043 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1039 word347_4_1042

def word347_4_1044 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2913, 2893)]

def word347_4_1045 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2917 2913 (Flapjack.WordRegImm.imm 200#64)))

def word347_4_1046 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1044 word347_4_1045

def word347_4_1047 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1043 word347_4_1046

def word347_4_1048 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2921, 2881)]

def word347_4_1049 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1047 word347_4_1048

def word347_4_1050 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2925, 2921)]

def word347_4_1051 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1049 word347_4_1050

def word347_4_1052 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2929, 2917)]

def word347_4_1053 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2925 (Flapjack.WordLangAddr.addr 2929 0#64))

def word347_4_1054 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1052 word347_4_1053

def word347_4_1055 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1051 word347_4_1054

def word347_4_1056 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2933, 2853)]

def word347_4_1057 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2937 2933 (Flapjack.WordRegImm.imm 1#64)))

def word347_4_1058 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1056 word347_4_1057

def word347_4_1059 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1055 word347_4_1058

def word347_4_1060 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2941, 2937)]

def word347_4_1061 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1059 word347_4_1060

def word347_4_1062 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2945, 2861)]

def word347_4_1063 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1061 word347_4_1062

def word347_4_1064 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2949 0#64)

def word347_4_1065 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1063 word347_4_1064

def word347_4_1066 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2961, 2865)]

def word347_4_1067 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_1066

def word347_4_1068 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2965, 2941)]

def word347_4_1069 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1067 word347_4_1068

def word347_4_1070 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2971, 2849), (2975, 2965), (2979, 2913), (2983, 2945), (2987, 2961)]

def word347_4_1071 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2961), (4, 2965)]

def word347_4_1072 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2993, 2971), (2997, 2975), (3001, 2979), (3005, 2983), (3009, 2987)]

def word347_4_1073 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3013, 2), (3017, 4)]

def word347_4_1074 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1072 word347_4_1073

def word347_4_1075 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3025, 3017)]

def word347_4_1076 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3033, 3013)]

def word347_4_1077 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1075 word347_4_1076

def word347_4_1078 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1074 word347_4_1077

def word347_4_1079 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3021, 2)]

def word347_4_1080 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3021)]

def word347_4_1081 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1080 word347_4_14

def word347_4_1082 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1079 word347_4_1081

def word347_4_1083 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1072 word347_4_1082

def word347_4_1084 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3025 0#64)

def word347_4_1085 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3033 0#64)

def word347_4_1086 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1084 word347_4_1085

def word347_4_1087 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1083 word347_4_1086

def word347_4_1088 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word347_4_1078, 347, 34)) (some 343) ([2, 4]) (some (2, word347_4_1087, 347, 35))

def word347_4_1089 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1071 word347_4_1088

def word347_4_1090 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1070 word347_4_1089

def word347_4_1091 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1069 word347_4_1090

def word347_4_1092 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1091 word347_4_4

def word347_4_1093 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3037, 3033)]

def word347_4_1094 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1092 word347_4_1093

def word347_4_1095 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3041, 3025)]

def word347_4_1096 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1094 word347_4_1095

def word347_4_1097 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3047, 2993), (3051, 2997), (3055, 3001), (3059, 3005), (3063, 3009)]

def word347_4_1098 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3037), (4, 3041)]

def word347_4_1099 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3069, 3047), (3073, 3051), (3077, 3055), (3081, 3059), (3085, 3063)]

def word347_4_1100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3089, 2), (3093, 4)]

def word347_4_1101 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1099 word347_4_1100

def word347_4_1102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3105, 3089)]

def word347_4_1103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3109, 3093)]

def word347_4_1104 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1102 word347_4_1103

def word347_4_1105 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1101 word347_4_1104

def word347_4_1106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3097, 2)]

def word347_4_1107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3097)]

def word347_4_1108 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1107 word347_4_14

def word347_4_1109 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1106 word347_4_1108

def word347_4_1110 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1099 word347_4_1109

def word347_4_1111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3105 0#64)

def word347_4_1112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3109 0#64)

def word347_4_1113 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1111 word347_4_1112

def word347_4_1114 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1110 word347_4_1113

def word347_4_1115 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word347_4_1105, 347, 36)) (some 344) ([2, 4]) (some (2, word347_4_1114, 347, 37))

def word347_4_1116 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1098 word347_4_1115

def word347_4_1117 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1097 word347_4_1116

def word347_4_1118 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1096 word347_4_1117

def word347_4_1119 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1118 word347_4_4

def word347_4_1120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3113, 3077)]

def word347_4_1121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3117 3113 (Flapjack.WordRegImm.imm 208#64)))

def word347_4_1122 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1120 word347_4_1121

def word347_4_1123 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1119 word347_4_1122

def word347_4_1124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3121, 3105)]

def word347_4_1125 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1123 word347_4_1124

def word347_4_1126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3125, 3121)]

def word347_4_1127 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1125 word347_4_1126

def word347_4_1128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3129, 3117)]

def word347_4_1129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3125 (Flapjack.WordLangAddr.addr 3129 0#64))

def word347_4_1130 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1128 word347_4_1129

def word347_4_1131 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1127 word347_4_1130

def word347_4_1132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3133, 3113)]

def word347_4_1133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3137 3133 (Flapjack.WordRegImm.imm 216#64)))

def word347_4_1134 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1132 word347_4_1133

def word347_4_1135 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1131 word347_4_1134

def word347_4_1136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3141, 3109)]

def word347_4_1137 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1135 word347_4_1136

def word347_4_1138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3145, 3141)]

def word347_4_1139 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1137 word347_4_1138

def word347_4_1140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3149, 3137)]

def word347_4_1141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3145 (Flapjack.WordLangAddr.addr 3149 0#64))

def word347_4_1142 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1140 word347_4_1141

def word347_4_1143 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1139 word347_4_1142

def word347_4_1144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3153, 3073)]

def word347_4_1145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3157 3153 (Flapjack.WordRegImm.imm 1#64)))

def word347_4_1146 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1144 word347_4_1145

def word347_4_1147 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1143 word347_4_1146

def word347_4_1148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3161, 3157)]

def word347_4_1149 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1147 word347_4_1148

def word347_4_1150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3197, 3069), (3185, 3161), (3181, 3133), (3177, 3081), (3173, 3085)]

def word347_4_1151 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1149 word347_4_1150

def word347_4_1152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3197, 2849), (3185, 2941), (3181, 2913), (3177, 2945), (3173, 2865)]

def word347_4_1153 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_1152

def word347_4_1154 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2945 (Flapjack.WordRegImm.reg 2949) word347_4_1151 word347_4_1153

def word347_4_1155 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1065 word347_4_1154

def word347_4_1156 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1155 word347_4_4

def word347_4_1157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3233, 3177)]

def word347_4_1158 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1156 word347_4_1157

def word347_4_1159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3237 3#64)

def word347_4_1160 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1158 word347_4_1159

def word347_4_1161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3249, 3173)]

def word347_4_1162 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_1161

def word347_4_1163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3253, 3185)]

def word347_4_1164 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1162 word347_4_1163

def word347_4_1165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3265 32#64)

def word347_4_1166 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1164 word347_4_1165

def word347_4_1167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3271, 3197), (3275, 3253), (3279, 3181), (3283, 3233), (3287, 3249)]

def word347_4_1168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3249), (4, 3253), (6, 3265)]

def word347_4_1169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3293, 3271), (3297, 3275), (3301, 3279), (3305, 3283), (3309, 3287)]

def word347_4_1170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3313, 2), (3317, 4), (3321, 6), (3325, 8)]

def word347_4_1171 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1169 word347_4_1170

def word347_4_1172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3333, 3325)]

def word347_4_1173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3337, 3317)]

def word347_4_1174 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1172 word347_4_1173

def word347_4_1175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3345, 3321)]

def word347_4_1176 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1174 word347_4_1175

def word347_4_1177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3349, 3313)]

def word347_4_1178 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1176 word347_4_1177

def word347_4_1179 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1171 word347_4_1178

def word347_4_1180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3329, 2)]

def word347_4_1181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3329)]

def word347_4_1182 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1181 word347_4_14

def word347_4_1183 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1180 word347_4_1182

def word347_4_1184 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1169 word347_4_1183

def word347_4_1185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3333 0#64)

def word347_4_1186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3337 0#64)

def word347_4_1187 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1185 word347_4_1186

def word347_4_1188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3345 0#64)

def word347_4_1189 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1187 word347_4_1188

def word347_4_1190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3349 0#64)

def word347_4_1191 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1189 word347_4_1190

def word347_4_1192 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1184 word347_4_1191

def word347_4_1193 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word347_4_1179, 347, 38)) (some 338) ([2, 4, 6]) (some (2, word347_4_1192, 347, 39))

def word347_4_1194 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1168 word347_4_1193

def word347_4_1195 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1167 word347_4_1194

def word347_4_1196 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1166 word347_4_1195

def word347_4_1197 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1196 word347_4_4

def word347_4_1198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3353, 3301)]

def word347_4_1199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3357 3353 (Flapjack.WordRegImm.imm 224#64)))

def word347_4_1200 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1198 word347_4_1199

def word347_4_1201 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1197 word347_4_1200

def word347_4_1202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3361, 3349)]

def word347_4_1203 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1201 word347_4_1202

def word347_4_1204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3365, 3337)]

def word347_4_1205 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1203 word347_4_1204

def word347_4_1206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3369, 3345)]

def word347_4_1207 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1205 word347_4_1206

def word347_4_1208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3373, 3333)]

def word347_4_1209 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1207 word347_4_1208

def word347_4_1210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3377, 3361)]

def word347_4_1211 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1209 word347_4_1210

def word347_4_1212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3381, 3357)]

def word347_4_1213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3377 (Flapjack.WordLangAddr.addr 3381 0#64))

def word347_4_1214 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1212 word347_4_1213

def word347_4_1215 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1211 word347_4_1214

def word347_4_1216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3385, 3365)]

def word347_4_1217 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1215 word347_4_1216

def word347_4_1218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3389, 3381)]

def word347_4_1219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3385 (Flapjack.WordLangAddr.addr 3389 8#64))

def word347_4_1220 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1218 word347_4_1219

def word347_4_1221 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1217 word347_4_1220

def word347_4_1222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3393, 3369)]

def word347_4_1223 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1221 word347_4_1222

def word347_4_1224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3397, 3389)]

def word347_4_1225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3393 (Flapjack.WordLangAddr.addr 3397 16#64))

def word347_4_1226 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1224 word347_4_1225

def word347_4_1227 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1223 word347_4_1226

def word347_4_1228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3401, 3373)]

def word347_4_1229 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1227 word347_4_1228

def word347_4_1230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3405, 3397)]

def word347_4_1231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3401 (Flapjack.WordLangAddr.addr 3405 24#64))

def word347_4_1232 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1230 word347_4_1231

def word347_4_1233 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1229 word347_4_1232

def word347_4_1234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3409, 3309)]

def word347_4_1235 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1233 word347_4_1234

def word347_4_1236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3413, 3297)]

def word347_4_1237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3417 3413 (Flapjack.WordRegImm.imm 1#64)))

def word347_4_1238 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1236 word347_4_1237

def word347_4_1239 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1235 word347_4_1238

def word347_4_1240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3423, 3293), (3427, 3413), (3431, 3353), (3435, 3305), (3439, 3409)]

def word347_4_1241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3409), (4, 3417)]

def word347_4_1242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3445, 3423), (3449, 3427), (3453, 3431), (3457, 3435), (3461, 3439)]

def word347_4_1243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3465, 2), (3469, 4)]

def word347_4_1244 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1242 word347_4_1243

def word347_4_1245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3477, 3469)]

def word347_4_1246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3485, 3465)]

def word347_4_1247 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1245 word347_4_1246

def word347_4_1248 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1244 word347_4_1247

def word347_4_1249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3473, 2)]

def word347_4_1250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3473)]

def word347_4_1251 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1250 word347_4_14

def word347_4_1252 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1249 word347_4_1251

def word347_4_1253 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1242 word347_4_1252

def word347_4_1254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3477 0#64)

def word347_4_1255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3485 0#64)

def word347_4_1256 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1254 word347_4_1255

def word347_4_1257 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1253 word347_4_1256

def word347_4_1258 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word347_4_1248, 347, 40)) (some 343) ([2, 4]) (some (2, word347_4_1257, 347, 41))

def word347_4_1259 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1241 word347_4_1258

def word347_4_1260 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1240 word347_4_1259

def word347_4_1261 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1239 word347_4_1260

def word347_4_1262 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1261 word347_4_4

def word347_4_1263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3489, 3485)]

def word347_4_1264 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1262 word347_4_1263

def word347_4_1265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3493, 3477)]

def word347_4_1266 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1264 word347_4_1265

def word347_4_1267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3499, 3445), (3503, 3449), (3507, 3453), (3511, 3457), (3515, 3461)]

def word347_4_1268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3489), (4, 3493)]

def word347_4_1269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3521, 3499), (3525, 3503), (3529, 3507), (3533, 3511), (3537, 3515)]

def word347_4_1270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3541, 2), (3545, 4)]

def word347_4_1271 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1269 word347_4_1270

def word347_4_1272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3557, 3541)]

def word347_4_1273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3561, 3545)]

def word347_4_1274 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1272 word347_4_1273

def word347_4_1275 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1271 word347_4_1274

def word347_4_1276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3549, 2)]

def word347_4_1277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3549)]

def word347_4_1278 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1277 word347_4_14

def word347_4_1279 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1276 word347_4_1278

def word347_4_1280 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1269 word347_4_1279

def word347_4_1281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3557 0#64)

def word347_4_1282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3561 0#64)

def word347_4_1283 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1281 word347_4_1282

def word347_4_1284 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1280 word347_4_1283

def word347_4_1285 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word347_4_1275, 347, 42)) (some 345) ([2, 4]) (some (2, word347_4_1284, 347, 43))

def word347_4_1286 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1268 word347_4_1285

def word347_4_1287 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1267 word347_4_1286

def word347_4_1288 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1266 word347_4_1287

def word347_4_1289 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1288 word347_4_4

def word347_4_1290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3565, 3529)]

def word347_4_1291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3569 3565 (Flapjack.WordRegImm.imm 256#64)))

def word347_4_1292 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1290 word347_4_1291

def word347_4_1293 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1289 word347_4_1292

def word347_4_1294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3573, 3557)]

def word347_4_1295 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1293 word347_4_1294

def word347_4_1296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3577, 3573)]

def word347_4_1297 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1295 word347_4_1296

def word347_4_1298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3581, 3569)]

def word347_4_1299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3577 (Flapjack.WordLangAddr.addr 3581 0#64))

def word347_4_1300 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1298 word347_4_1299

def word347_4_1301 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1297 word347_4_1300

def word347_4_1302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3585, 3565)]

def word347_4_1303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3589 3585 (Flapjack.WordRegImm.imm 264#64)))

def word347_4_1304 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1302 word347_4_1303

def word347_4_1305 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1301 word347_4_1304

def word347_4_1306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3593, 3561)]

def word347_4_1307 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1305 word347_4_1306

def word347_4_1308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3597, 3593)]

def word347_4_1309 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1307 word347_4_1308

def word347_4_1310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3601, 3589)]

def word347_4_1311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3597 (Flapjack.WordLangAddr.addr 3601 0#64))

def word347_4_1312 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1310 word347_4_1311

def word347_4_1313 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1309 word347_4_1312

def word347_4_1314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3605, 3525)]

def word347_4_1315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3609 3605 (Flapjack.WordRegImm.imm 2#64)))

def word347_4_1316 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1314 word347_4_1315

def word347_4_1317 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1313 word347_4_1316

def word347_4_1318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3613, 3609)]

def word347_4_1319 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1317 word347_4_1318

def word347_4_1320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3661, 3521), (3637, 3613), (3633, 3585), (3629, 3533), (3625, 3537)]

def word347_4_1321 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1319 word347_4_1320

def word347_4_1322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3661, 3197), (3637, 3185), (3633, 3181), (3629, 3233), (3625, 3173)]

def word347_4_1323 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_1322

def word347_4_1324 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 3233 (Flapjack.WordRegImm.reg 3237) word347_4_1321 word347_4_1323

def word347_4_1325 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1160 word347_4_1324

def word347_4_1326 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1325 word347_4_4

def word347_4_1327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3685, 3629)]

def word347_4_1328 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1326 word347_4_1327

def word347_4_1329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3689 4#64)

def word347_4_1330 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1328 word347_4_1329

def word347_4_1331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3701, 3625)]

def word347_4_1332 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_1331

def word347_4_1333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3705, 3637)]

def word347_4_1334 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1332 word347_4_1333

def word347_4_1335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3711, 3661), (3715, 3705), (3719, 3633), (3723, 3701)]

def word347_4_1336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3701), (4, 3705)]

def word347_4_1337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3729, 3711), (3733, 3715), (3737, 3719), (3741, 3723)]

def word347_4_1338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3745, 2), (3749, 4)]

def word347_4_1339 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1337 word347_4_1338

def word347_4_1340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3757, 3749)]

def word347_4_1341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3765, 3745)]

def word347_4_1342 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1340 word347_4_1341

def word347_4_1343 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1339 word347_4_1342

def word347_4_1344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3753, 2)]

def word347_4_1345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3753)]

def word347_4_1346 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1345 word347_4_14

def word347_4_1347 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1344 word347_4_1346

def word347_4_1348 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1337 word347_4_1347

def word347_4_1349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3757 0#64)

def word347_4_1350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3765 0#64)

def word347_4_1351 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1349 word347_4_1350

def word347_4_1352 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1348 word347_4_1351

def word347_4_1353 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), word347_4_1343, 347, 44)) (some 343) ([2, 4]) (some (2, word347_4_1352, 347, 45))

def word347_4_1354 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1336 word347_4_1353

def word347_4_1355 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1335 word347_4_1354

def word347_4_1356 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1334 word347_4_1355

def word347_4_1357 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1356 word347_4_4

def word347_4_1358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3769, 3765)]

def word347_4_1359 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1357 word347_4_1358

def word347_4_1360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3773, 3757)]

def word347_4_1361 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1359 word347_4_1360

def word347_4_1362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3779, 3729), (3783, 3733), (3787, 3737), (3791, 3741)]

def word347_4_1363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3769), (4, 3773)]

def word347_4_1364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3797, 3779), (3801, 3783), (3805, 3787), (3809, 3791)]

def word347_4_1365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3813, 2), (3817, 4)]

def word347_4_1366 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1364 word347_4_1365

def word347_4_1367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3829, 3813)]

def word347_4_1368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3833, 3817)]

def word347_4_1369 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1367 word347_4_1368

def word347_4_1370 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1366 word347_4_1369

def word347_4_1371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3821, 2)]

def word347_4_1372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3821)]

def word347_4_1373 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1372 word347_4_14

def word347_4_1374 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1371 word347_4_1373

def word347_4_1375 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1364 word347_4_1374

def word347_4_1376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3829 0#64)

def word347_4_1377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3833 0#64)

def word347_4_1378 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1376 word347_4_1377

def word347_4_1379 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1375 word347_4_1378

def word347_4_1380 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word347_4_1370, 347, 46)) (some 346) ([2, 4]) (some (2, word347_4_1379, 347, 47))

def word347_4_1381 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1363 word347_4_1380

def word347_4_1382 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1362 word347_4_1381

def word347_4_1383 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1361 word347_4_1382

def word347_4_1384 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1383 word347_4_4

def word347_4_1385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3837, 3805)]

def word347_4_1386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3841 3837 (Flapjack.WordRegImm.imm 272#64)))

def word347_4_1387 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1385 word347_4_1386

def word347_4_1388 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1384 word347_4_1387

def word347_4_1389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3845, 3829)]

def word347_4_1390 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1388 word347_4_1389

def word347_4_1391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3849, 3845)]

def word347_4_1392 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1390 word347_4_1391

def word347_4_1393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3853, 3841)]

def word347_4_1394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3849 (Flapjack.WordLangAddr.addr 3853 0#64))

def word347_4_1395 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1393 word347_4_1394

def word347_4_1396 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1392 word347_4_1395

def word347_4_1397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3857, 3837)]

def word347_4_1398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3861 3857 (Flapjack.WordRegImm.imm 280#64)))

def word347_4_1399 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1397 word347_4_1398

def word347_4_1400 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1396 word347_4_1399

def word347_4_1401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3865, 3833)]

def word347_4_1402 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1400 word347_4_1401

def word347_4_1403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3869, 3865)]

def word347_4_1404 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1402 word347_4_1403

def word347_4_1405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3873, 3861)]

def word347_4_1406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3869 (Flapjack.WordLangAddr.addr 3873 0#64))

def word347_4_1407 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1405 word347_4_1406

def word347_4_1408 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1404 word347_4_1407

def word347_4_1409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3877, 3801)]

def word347_4_1410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3881 3877 (Flapjack.WordRegImm.imm 1#64)))

def word347_4_1411 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1409 word347_4_1410

def word347_4_1412 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1408 word347_4_1411

def word347_4_1413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3885, 3881)]

def word347_4_1414 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1412 word347_4_1413

def word347_4_1415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3929, 3797), (3905, 3885), (3901, 3857), (3897, 3809)]

def word347_4_1416 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1414 word347_4_1415

def word347_4_1417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3929, 3661), (3905, 3637), (3901, 3633), (3897, 3625)]

def word347_4_1418 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_4 word347_4_1417

def word347_4_1419 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 3685 (Flapjack.WordRegImm.reg 3689) word347_4_1416 word347_4_1418

def word347_4_1420 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1330 word347_4_1419

def word347_4_1421 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1420 word347_4_4

def word347_4_1422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3957, 3897)]

def word347_4_1423 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1421 word347_4_1422

def word347_4_1424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3961, 3905)]

def word347_4_1425 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1423 word347_4_1424

def word347_4_1426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3969 32#64)

def word347_4_1427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3975, 3929), (3979, 3961), (3983, 3901), (3987, 3957)]

def word347_4_1428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3957), (4, 3961), (6, 3969)]

def word347_4_1429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3993, 3975), (3997, 3979), (4001, 3983), (4005, 3987)]

def word347_4_1430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4009, 2), (4013, 4), (4017, 6), (4021, 8)]

def word347_4_1431 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1429 word347_4_1430

def word347_4_1432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4029, 4021)]

def word347_4_1433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4033, 4013)]

def word347_4_1434 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1432 word347_4_1433

def word347_4_1435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4041, 4017)]

def word347_4_1436 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1434 word347_4_1435

def word347_4_1437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4045, 4009)]

def word347_4_1438 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1436 word347_4_1437

def word347_4_1439 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1431 word347_4_1438

def word347_4_1440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4025, 2)]

def word347_4_1441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4025)]

def word347_4_1442 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1441 word347_4_14

def word347_4_1443 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1440 word347_4_1442

def word347_4_1444 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1429 word347_4_1443

def word347_4_1445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4029 0#64)

def word347_4_1446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4033 0#64)

def word347_4_1447 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1445 word347_4_1446

def word347_4_1448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4041 0#64)

def word347_4_1449 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1447 word347_4_1448

def word347_4_1450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4045 0#64)

def word347_4_1451 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1449 word347_4_1450

def word347_4_1452 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1444 word347_4_1451

def word347_4_1453 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word347_4_1439, 347, 48)) (some 338) ([2, 4, 6]) (some (2, word347_4_1452, 347, 49))

def word347_4_1454 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1428 word347_4_1453

def word347_4_1455 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1427 word347_4_1454

def word347_4_1456 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1426 word347_4_1455

def word347_4_1457 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1425 word347_4_1456

def word347_4_1458 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1457 word347_4_4

def word347_4_1459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4049, 4001)]

def word347_4_1460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4053 4049 (Flapjack.WordRegImm.imm 288#64)))

def word347_4_1461 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1459 word347_4_1460

def word347_4_1462 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1458 word347_4_1461

def word347_4_1463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4057, 4045)]

def word347_4_1464 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1462 word347_4_1463

def word347_4_1465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4061, 4033)]

def word347_4_1466 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1464 word347_4_1465

def word347_4_1467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4065, 4041)]

def word347_4_1468 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1466 word347_4_1467

def word347_4_1469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4069, 4029)]

def word347_4_1470 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1468 word347_4_1469

def word347_4_1471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4073, 4057)]

def word347_4_1472 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1470 word347_4_1471

def word347_4_1473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4077, 4053)]

def word347_4_1474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4073 (Flapjack.WordLangAddr.addr 4077 0#64))

def word347_4_1475 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1473 word347_4_1474

def word347_4_1476 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1472 word347_4_1475

def word347_4_1477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4081, 4061)]

def word347_4_1478 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1476 word347_4_1477

def word347_4_1479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4085, 4077)]

def word347_4_1480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4081 (Flapjack.WordLangAddr.addr 4085 8#64))

def word347_4_1481 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1479 word347_4_1480

def word347_4_1482 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1478 word347_4_1481

def word347_4_1483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4089, 4065)]

def word347_4_1484 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1482 word347_4_1483

def word347_4_1485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4093, 4085)]

def word347_4_1486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4089 (Flapjack.WordLangAddr.addr 4093 16#64))

def word347_4_1487 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1485 word347_4_1486

def word347_4_1488 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1484 word347_4_1487

def word347_4_1489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4097, 4069)]

def word347_4_1490 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1488 word347_4_1489

def word347_4_1491 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4101, 4093)]

def word347_4_1492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4097 (Flapjack.WordLangAddr.addr 4101 24#64))

def word347_4_1493 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1491 word347_4_1492

def word347_4_1494 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1490 word347_4_1493

def word347_4_1495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4105, 4005)]

def word347_4_1496 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1494 word347_4_1495

def word347_4_1497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4109, 3997)]

def word347_4_1498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4113 4109 (Flapjack.WordRegImm.imm 1#64)))

def word347_4_1499 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1497 word347_4_1498

def word347_4_1500 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1496 word347_4_1499

def word347_4_1501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4121 32#64)

def word347_4_1502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4127, 3993), (4131, 4109), (4135, 4049), (4139, 4105)]

def word347_4_1503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4105), (4, 4113), (6, 4121)]

def word347_4_1504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4145, 4127), (4149, 4131), (4153, 4135), (4157, 4139)]

def word347_4_1505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4161, 2), (4165, 4), (4169, 6), (4173, 8)]

def word347_4_1506 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1504 word347_4_1505

def word347_4_1507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4181, 4173)]

def word347_4_1508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4185, 4165)]

def word347_4_1509 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1507 word347_4_1508

def word347_4_1510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4193, 4169)]

def word347_4_1511 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1509 word347_4_1510

def word347_4_1512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4197, 4161)]

def word347_4_1513 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1511 word347_4_1512

def word347_4_1514 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1506 word347_4_1513

def word347_4_1515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4177, 2)]

def word347_4_1516 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4177)]

def word347_4_1517 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1516 word347_4_14

def word347_4_1518 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1515 word347_4_1517

def word347_4_1519 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1504 word347_4_1518

def word347_4_1520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4181 0#64)

def word347_4_1521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4185 0#64)

def word347_4_1522 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1520 word347_4_1521

def word347_4_1523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4193 0#64)

def word347_4_1524 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1522 word347_4_1523

def word347_4_1525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4197 0#64)

def word347_4_1526 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1524 word347_4_1525

def word347_4_1527 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1519 word347_4_1526

def word347_4_1528 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word347_4_1514, 347, 50)) (some 338) ([2, 4, 6]) (some (2, word347_4_1527, 347, 51))

def word347_4_1529 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1503 word347_4_1528

def word347_4_1530 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1502 word347_4_1529

def word347_4_1531 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1501 word347_4_1530

def word347_4_1532 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1500 word347_4_1531

def word347_4_1533 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1532 word347_4_4

def word347_4_1534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4201, 4153)]

def word347_4_1535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4205 4201 (Flapjack.WordRegImm.imm 320#64)))

def word347_4_1536 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1534 word347_4_1535

def word347_4_1537 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1533 word347_4_1536

def word347_4_1538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4209, 4197)]

def word347_4_1539 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1537 word347_4_1538

def word347_4_1540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4213, 4185)]

def word347_4_1541 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1539 word347_4_1540

def word347_4_1542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4217, 4193)]

def word347_4_1543 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1541 word347_4_1542

def word347_4_1544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4221, 4181)]

def word347_4_1545 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1543 word347_4_1544

def word347_4_1546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4225, 4209)]

def word347_4_1547 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1545 word347_4_1546

def word347_4_1548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4229, 4205)]

def word347_4_1549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4225 (Flapjack.WordLangAddr.addr 4229 0#64))

def word347_4_1550 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1548 word347_4_1549

def word347_4_1551 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1547 word347_4_1550

def word347_4_1552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4233, 4213)]

def word347_4_1553 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1551 word347_4_1552

def word347_4_1554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4237, 4229)]

def word347_4_1555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4233 (Flapjack.WordLangAddr.addr 4237 8#64))

def word347_4_1556 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1554 word347_4_1555

def word347_4_1557 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1553 word347_4_1556

def word347_4_1558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4241, 4217)]

def word347_4_1559 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1557 word347_4_1558

def word347_4_1560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4245, 4237)]

def word347_4_1561 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4241 (Flapjack.WordLangAddr.addr 4245 16#64))

def word347_4_1562 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1560 word347_4_1561

def word347_4_1563 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1559 word347_4_1562

def word347_4_1564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4249, 4221)]

def word347_4_1565 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1563 word347_4_1564

def word347_4_1566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4253, 4245)]

def word347_4_1567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4249 (Flapjack.WordLangAddr.addr 4253 24#64))

def word347_4_1568 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1566 word347_4_1567

def word347_4_1569 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1565 word347_4_1568

def word347_4_1570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4257, 4157)]

def word347_4_1571 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1569 word347_4_1570

def word347_4_1572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4261, 4149)]

def word347_4_1573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4265 4261 (Flapjack.WordRegImm.imm 2#64)))

def word347_4_1574 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1572 word347_4_1573

def word347_4_1575 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1571 word347_4_1574

def word347_4_1576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4273 32#64)

def word347_4_1577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4279, 4145), (4283, 4201)]

def word347_4_1578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4257), (4, 4265), (6, 4273)]

def word347_4_1579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4289, 4279), (4293, 4283)]

def word347_4_1580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4297, 2), (4301, 4), (4305, 6), (4309, 8)]

def word347_4_1581 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1579 word347_4_1580

def word347_4_1582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4317, 4309)]

def word347_4_1583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4321, 4301)]

def word347_4_1584 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1582 word347_4_1583

def word347_4_1585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4329, 4305)]

def word347_4_1586 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1584 word347_4_1585

def word347_4_1587 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4333, 4297)]

def word347_4_1588 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1586 word347_4_1587

def word347_4_1589 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1581 word347_4_1588

def word347_4_1590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4313, 2)]

def word347_4_1591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4313)]

def word347_4_1592 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1591 word347_4_14

def word347_4_1593 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1590 word347_4_1592

def word347_4_1594 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1579 word347_4_1593

def word347_4_1595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4317 0#64)

def word347_4_1596 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4321 0#64)

def word347_4_1597 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1595 word347_4_1596

def word347_4_1598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4329 0#64)

def word347_4_1599 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1597 word347_4_1598

def word347_4_1600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4333 0#64)

def word347_4_1601 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1599 word347_4_1600

def word347_4_1602 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1594 word347_4_1601

def word347_4_1603 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), word347_4_1589, 347, 52)) (some 338) ([2, 4, 6]) (some (2, word347_4_1602, 347, 53))

def word347_4_1604 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1578 word347_4_1603

def word347_4_1605 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1577 word347_4_1604

def word347_4_1606 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1576 word347_4_1605

def word347_4_1607 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1575 word347_4_1606

def word347_4_1608 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1607 word347_4_4

def word347_4_1609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4337, 4293)]

def word347_4_1610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4341 4337 (Flapjack.WordRegImm.imm 352#64)))

def word347_4_1611 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1609 word347_4_1610

def word347_4_1612 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1608 word347_4_1611

def word347_4_1613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4345, 4333)]

def word347_4_1614 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1612 word347_4_1613

def word347_4_1615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4349, 4321)]

def word347_4_1616 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1614 word347_4_1615

def word347_4_1617 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4353, 4329)]

def word347_4_1618 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1616 word347_4_1617

def word347_4_1619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4357, 4317)]

def word347_4_1620 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1618 word347_4_1619

def word347_4_1621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4361, 4345)]

def word347_4_1622 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1620 word347_4_1621

def word347_4_1623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4365, 4341)]

def word347_4_1624 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4361 (Flapjack.WordLangAddr.addr 4365 0#64))

def word347_4_1625 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1623 word347_4_1624

def word347_4_1626 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1622 word347_4_1625

def word347_4_1627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4369, 4349)]

def word347_4_1628 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1626 word347_4_1627

def word347_4_1629 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4373, 4365)]

def word347_4_1630 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4369 (Flapjack.WordLangAddr.addr 4373 8#64))

def word347_4_1631 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1629 word347_4_1630

def word347_4_1632 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1628 word347_4_1631

def word347_4_1633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4377, 4353)]

def word347_4_1634 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1632 word347_4_1633

def word347_4_1635 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4381, 4373)]

def word347_4_1636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4377 (Flapjack.WordLangAddr.addr 4381 16#64))

def word347_4_1637 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1635 word347_4_1636

def word347_4_1638 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1634 word347_4_1637

def word347_4_1639 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4385, 4357)]

def word347_4_1640 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1638 word347_4_1639

def word347_4_1641 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4389, 4381)]

def word347_4_1642 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4385 (Flapjack.WordLangAddr.addr 4389 24#64))

def word347_4_1643 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1641 word347_4_1642

def word347_4_1644 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1640 word347_4_1643

def word347_4_1645 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4393, 4337)]

def word347_4_1646 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1644 word347_4_1645

def word347_4_1647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4393)]

def word347_4_1648 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4289 [2]

def word347_4_1649 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1647 word347_4_1648

def word347_4_1650 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_1646 word347_4_1649

def word347_4_1651 : WordLangProgHOL (BitVec 64) :=
.seq word347_4_0 word347_4_1650

def pass347_4 : WordLangProgHOL (BitVec 64) :=
word347_4_1651
end InitECandidate.Proofs.WordStages.Parallel347
