import InitE.SourceDeclarations
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option linter.unusedSimpArgs false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel347
def word347_3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 0), (69, 2), (73, 4)]

def word347_3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 73)]

def word347_3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def word347_3_3 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1 word347_3_2

def word347_3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word347_3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 1#64)

def word347_3_6 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_5

def word347_3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 93)]

def word347_3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 97)

def word347_3_9 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_7 word347_3_8

def word347_3_10 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_6 word347_3_9

def word347_3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 6#64)

def word347_3_12 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_10 word347_3_11

def word347_3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 101)]

def word347_3_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def word347_3_15 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_13 word347_3_14

def word347_3_16 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_12 word347_3_15

def word347_3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word347_3_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 77 (Flapjack.WordRegImm.reg 81) word347_3_16 word347_3_17

def word347_3_19 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_18 word347_3_4

def word347_3_20 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_3 word347_3_19

def word347_3_21 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_20 word347_3_4

def word347_3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 69)]

def word347_3_23 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_21 word347_3_22

def word347_3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 133 (Flapjack.WordLangAddr.addr 129 0#64))

def word347_3_25 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_23 word347_3_24

def word347_3_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 133)]

def word347_3_27 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_25 word347_3_26

def word347_3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 400#64)

def word347_3_29 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_27 word347_3_28

def word347_3_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(151, 65), (155, 77), (159, 137), (163, 129)]

def word347_3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def word347_3_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 151), (173, 155), (177, 159), (181, 163)]

def word347_3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 2)]

def word347_3_34 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_32 word347_3_33

def word347_3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 185)]

def word347_3_36 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_34 word347_3_35

def word347_3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 2)]

def word347_3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def word347_3_39 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_38 word347_3_14

def word347_3_40 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_37 word347_3_39

def word347_3_41 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_32 word347_3_40

def word347_3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 0#64)

def word347_3_43 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_41 word347_3_42

def word347_3_44 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_36, 347, 2)) (some 68) ([2]) (some (2, word347_3_43, 347, 3))

def word347_3_45 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_31 word347_3_44

def word347_3_46 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_30 word347_3_45

def word347_3_47 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_29 word347_3_46

def word347_3_48 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_47 word347_3_4

def word347_3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 193)]

def word347_3_50 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_48 word347_3_49

def word347_3_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 209 400#64)

def word347_3_52 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_50 word347_3_51

def word347_3_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(215, 169), (219, 173), (223, 177), (227, 181), (231, 201)]

def word347_3_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201), (4, 209)]

def word347_3_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 215), (241, 219), (245, 223), (249, 227), (253, 231)]

def word347_3_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def word347_3_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def word347_3_58 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_57 word347_3_14

def word347_3_59 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_56 word347_3_58

def word347_3_60 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_55 word347_3_59

def word347_3_61 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_55, 347, 4)) (some 78) ([2, 4]) (some (2, word347_3_60, 347, 5))

def word347_3_62 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_54 word347_3_61

def word347_3_63 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_53 word347_3_62

def word347_3_64 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_52 word347_3_63

def word347_3_65 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_64 word347_3_4

def word347_3_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 253)]

def word347_3_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 277 273 (Flapjack.WordRegImm.imm 384#64)))

def word347_3_68 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_66 word347_3_67

def word347_3_69 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_65 word347_3_68

def word347_3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 249)]

def word347_3_71 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_69 word347_3_70

def word347_3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 281)]

def word347_3_73 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_71 word347_3_72

def word347_3_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 277)]

def word347_3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 285 (Flapjack.WordLangAddr.addr 289 0#64))

def word347_3_76 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_74 word347_3_75

def word347_3_77 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_73 word347_3_76

def word347_3_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 273)]

def word347_3_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 297 293 (Flapjack.WordRegImm.imm 392#64)))

def word347_3_80 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_78 word347_3_79

def word347_3_81 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_77 word347_3_80

def word347_3_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 241)]

def word347_3_83 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_81 word347_3_82

def word347_3_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 301)]

def word347_3_85 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_83 word347_3_84

def word347_3_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 297)]

def word347_3_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 305 (Flapjack.WordLangAddr.addr 309 0#64))

def word347_3_88 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_86 word347_3_87

def word347_3_89 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_85 word347_3_88

def word347_3_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)

def word347_3_91 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_89 word347_3_90

def word347_3_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 317 9#64)

def word347_3_93 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_91 word347_3_92

def word347_3_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(321, 245)]

def word347_3_95 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_93 word347_3_94

def word347_3_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 325 1#64)

def word347_3_97 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_95 word347_3_96

def word347_3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 1#64)

def word347_3_99 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_98

def word347_3_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 341)]

def word347_3_101 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_99 word347_3_100

def word347_3_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 357 0#64)

def word347_3_103 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_102

def word347_3_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 357)]

def word347_3_105 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_103 word347_3_104

def word347_3_106 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 321 (Flapjack.WordRegImm.reg 325) word347_3_101 word347_3_105

def word347_3_107 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_97 word347_3_106

def word347_3_108 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_107 word347_3_4

def word347_3_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 373 4#64)

def word347_3_110 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_108 word347_3_109

def word347_3_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 321)]

def word347_3_112 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_110 word347_3_111

def word347_3_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 393 1#64)

def word347_3_114 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_113

def word347_3_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 393)]

def word347_3_116 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_114 word347_3_115

def word347_3_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 0#64)

def word347_3_118 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_117

def word347_3_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 409)]

def word347_3_120 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_118 word347_3_119

def word347_3_121 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 373 (Flapjack.WordRegImm.reg 377) word347_3_116 word347_3_120

def word347_3_122 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_112 word347_3_121

def word347_3_123 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_122 word347_3_4

def word347_3_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 413)]

def word347_3_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 361)]

def word347_3_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 433 425 (Flapjack.WordRegImm.reg 429)))

def word347_3_127 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_125 word347_3_126

def word347_3_128 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_124 word347_3_127

def word347_3_129 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_123 word347_3_128

def word347_3_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(437, 281)]

def word347_3_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 441 437 (Flapjack.WordRegImm.imm 1#64)))

def word347_3_132 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_130 word347_3_131

def word347_3_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 301)]

def word347_3_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 449 445 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def word347_3_135 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_133 word347_3_134

def word347_3_136 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_132 word347_3_135

def word347_3_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(455, 237), (459, 377), (463, 317), (467, 293)]

def word347_3_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 441), (4, 449)]

def word347_3_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(473, 455), (477, 459), (481, 463), (485, 467)]

def word347_3_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(489, 2), (493, 4), (497, 6)]

def word347_3_141 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_139 word347_3_140

def word347_3_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(509, 493)]

def word347_3_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(513, 489)]

def word347_3_144 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_142 word347_3_143

def word347_3_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 497)]

def word347_3_146 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_144 word347_3_145

def word347_3_147 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_141 word347_3_146

def word347_3_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(505, 2)]

def word347_3_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 505)]

def word347_3_150 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_149 word347_3_14

def word347_3_151 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_148 word347_3_150

def word347_3_152 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_139 word347_3_151

def word347_3_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 509 0#64)

def word347_3_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 513 0#64)

def word347_3_155 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_153 word347_3_154

def word347_3_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 0#64)

def word347_3_157 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_155 word347_3_156

def word347_3_158 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_152 word347_3_157

def word347_3_159 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_147, 347, 6)) (some 162) ([2, 4]) (some (2, word347_3_158, 347, 7))

def word347_3_160 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_138 word347_3_159

def word347_3_161 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_137 word347_3_160

def word347_3_162 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_136 word347_3_161

def word347_3_163 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_162 word347_3_4

def word347_3_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 477)]

def word347_3_165 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_163 word347_3_164

def word347_3_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 529)]

def word347_3_167 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_165 word347_3_166

def word347_3_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 1#64)

def word347_3_169 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_167 word347_3_168

def word347_3_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 549 11#64)

def word347_3_171 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_170

def word347_3_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 549)]

def word347_3_173 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_171 word347_3_172

def word347_3_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 481)]

def word347_3_175 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_174

def word347_3_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 533 (Flapjack.WordRegImm.reg 537) word347_3_173 word347_3_175

def word347_3_177 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_169 word347_3_176

def word347_3_178 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_177 word347_3_4

def word347_3_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(573, 533)]

def word347_3_180 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_178 word347_3_179

def word347_3_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 2#64)

def word347_3_182 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_180 word347_3_181

def word347_3_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 589 12#64)

def word347_3_184 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_183

def word347_3_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(609, 589)]

def word347_3_186 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_184 word347_3_185

def word347_3_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(609, 569)]

def word347_3_188 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_187

def word347_3_189 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 573 (Flapjack.WordRegImm.reg 577) word347_3_186 word347_3_188

def word347_3_190 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_182 word347_3_189

def word347_3_191 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_190 word347_3_4

def word347_3_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(613, 573)]

def word347_3_193 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_191 word347_3_192

def word347_3_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 617 3#64)

def word347_3_195 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_193 word347_3_194

def word347_3_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 629 14#64)

def word347_3_197 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_196

def word347_3_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 629)]

def word347_3_199 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_197 word347_3_198

def word347_3_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 609)]

def word347_3_201 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_200

def word347_3_202 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 613 (Flapjack.WordRegImm.reg 617) word347_3_199 word347_3_201

def word347_3_203 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_195 word347_3_202

def word347_3_204 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_203 word347_3_4

def word347_3_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(653, 613)]

def word347_3_206 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_204 word347_3_205

def word347_3_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 657 4#64)

def word347_3_208 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_206 word347_3_207

def word347_3_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 669 13#64)

def word347_3_210 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_209

def word347_3_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 669)]

def word347_3_212 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_210 word347_3_211

def word347_3_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 649)]

def word347_3_214 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_213

def word347_3_215 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 653 (Flapjack.WordRegImm.reg 657) word347_3_212 word347_3_214

def word347_3_216 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_208 word347_3_215

def word347_3_217 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_216 word347_3_4

def word347_3_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 473), (937, 521), (929, 689), (925, 513), (921, 485), (917, 653), (913, 509)]

def word347_3_219 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_217 word347_3_218

def word347_3_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(693, 377)]

def word347_3_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 697 192#64)

def word347_3_222 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_220 word347_3_221

def word347_3_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 713 1#64)

def word347_3_224 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_223

def word347_3_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(733, 713)]

def word347_3_226 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_224 word347_3_225

def word347_3_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 0#64)

def word347_3_228 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_227

def word347_3_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(733, 729)]

def word347_3_230 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_228 word347_3_229

def word347_3_231 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 693 (Flapjack.WordRegImm.reg 697) word347_3_226 word347_3_230

def word347_3_232 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_222 word347_3_231

def word347_3_233 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_232 word347_3_4

def word347_3_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 745 254#64)

def word347_3_235 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_233 word347_3_234

def word347_3_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(749, 693)]

def word347_3_237 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_235 word347_3_236

def word347_3_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 1#64)

def word347_3_239 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_238

def word347_3_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(785, 765)]

def word347_3_241 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_239 word347_3_240

def word347_3_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 781 0#64)

def word347_3_243 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_242

def word347_3_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(785, 781)]

def word347_3_245 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_243 word347_3_244

def word347_3_246 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 745 (Flapjack.WordRegImm.reg 749) word347_3_241 word347_3_245

def word347_3_247 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_237 word347_3_246

def word347_3_248 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_247 word347_3_4

def word347_3_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(797, 785)]

def word347_3_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(801, 733)]

def word347_3_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 805 797 (Flapjack.WordRegImm.reg 801)))

def word347_3_252 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_250 word347_3_251

def word347_3_253 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_249 word347_3_252

def word347_3_254 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_248 word347_3_253

def word347_3_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 809 2#64)

def word347_3_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(813, 809)]

def word347_3_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 813)

def word347_3_258 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_256 word347_3_257

def word347_3_259 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_255 word347_3_258

def word347_3_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 817 6#64)

def word347_3_261 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_259 word347_3_260

def word347_3_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 817)]

def word347_3_263 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_262 word347_3_14

def word347_3_264 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_261 word347_3_263

def word347_3_265 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 805 (Flapjack.WordRegImm.imm 0#64) word347_3_17 word347_3_264

def word347_3_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 281)]

def word347_3_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(833, 301)]

def word347_3_268 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_266 word347_3_267

def word347_3_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(839, 237), (843, 317), (847, 293), (851, 313)]

def word347_3_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 829), (4, 833)]

def word347_3_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(857, 839), (861, 843), (865, 847), (869, 851)]

def word347_3_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(873, 2), (877, 4), (881, 6)]

def word347_3_273 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_271 word347_3_272

def word347_3_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(893, 877)]

def word347_3_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(897, 873)]

def word347_3_276 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_274 word347_3_275

def word347_3_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(905, 881)]

def word347_3_278 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_276 word347_3_277

def word347_3_279 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_273 word347_3_278

def word347_3_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(889, 2)]

def word347_3_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 889)]

def word347_3_282 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_281 word347_3_14

def word347_3_283 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_280 word347_3_282

def word347_3_284 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_271 word347_3_283

def word347_3_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 893 0#64)

def word347_3_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 897 0#64)

def word347_3_287 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_285 word347_3_286

def word347_3_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 905 0#64)

def word347_3_289 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_287 word347_3_288

def word347_3_290 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_284 word347_3_289

def word347_3_291 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_279, 347, 8)) (some 162) ([2, 4]) (some (2, word347_3_290, 347, 9))

def word347_3_292 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_270 word347_3_291

def word347_3_293 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_269 word347_3_292

def word347_3_294 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_268 word347_3_293

def word347_3_295 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_294 word347_3_4

def word347_3_296 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_265 word347_3_295

def word347_3_297 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_254 word347_3_296

def word347_3_298 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_297 word347_3_4

def word347_3_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 857), (937, 905), (929, 861), (925, 897), (921, 865), (917, 869), (913, 893)]

def word347_3_300 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_298 word347_3_299

def word347_3_301 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 433 (Flapjack.WordRegImm.imm 0#64) word347_3_219 word347_3_300

def word347_3_302 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_129 word347_3_301

def word347_3_303 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_302 word347_3_4

def word347_3_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(965, 921)]

def word347_3_305 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_303 word347_3_304

def word347_3_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(969, 917)]

def word347_3_307 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_305 word347_3_306

def word347_3_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(973, 969)]

def word347_3_309 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_307 word347_3_308

def word347_3_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(977, 965)]

def word347_3_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 973 (Flapjack.WordLangAddr.addr 977 0#64))

def word347_3_312 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_310 word347_3_311

def word347_3_313 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_309 word347_3_312

def word347_3_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(981, 925)]

def word347_3_315 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_313 word347_3_314

def word347_3_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 985 1#64)

def word347_3_317 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_315 word347_3_316

def word347_3_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 997 3#64)

def word347_3_319 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_318

def word347_3_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1001, 997)]

def word347_3_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 1001)

def word347_3_322 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_320 word347_3_321

def word347_3_323 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_319 word347_3_322

def word347_3_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1005 6#64)

def word347_3_325 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_323 word347_3_324

def word347_3_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1005)]

def word347_3_327 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_326 word347_3_14

def word347_3_328 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_325 word347_3_327

def word347_3_329 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 981 (Flapjack.WordRegImm.reg 985) word347_3_328 word347_3_17

def word347_3_330 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_329 word347_3_4

def word347_3_331 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_317 word347_3_330

def word347_3_332 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_331 word347_3_4

def word347_3_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1033, 913)]

def word347_3_334 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_332 word347_3_333

def word347_3_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1037, 937)]

def word347_3_336 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_334 word347_3_335

def word347_3_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1043, 945), (1047, 929), (1051, 965), (1055, 969)]

def word347_3_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1033), (4, 1037)]

def word347_3_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1061, 1043), (1065, 1047), (1069, 1051), (1073, 1055)]

def word347_3_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1077, 2), (1081, 4)]

def word347_3_341 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_339 word347_3_340

def word347_3_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1093, 1081)]

def word347_3_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1097, 1077)]

def word347_3_344 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_342 word347_3_343

def word347_3_345 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_341 word347_3_344

def word347_3_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1085, 2)]

def word347_3_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1085)]

def word347_3_348 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_347 word347_3_14

def word347_3_349 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_346 word347_3_348

def word347_3_350 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_339 word347_3_349

def word347_3_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1093 0#64)

def word347_3_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1097 0#64)

def word347_3_353 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_351 word347_3_352

def word347_3_354 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_350 word347_3_353

def word347_3_355 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_345, 347, 10)) (some 169) ([2, 4]) (some (2, word347_3_354, 347, 11))

def word347_3_356 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_338 word347_3_355

def word347_3_357 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_337 word347_3_356

def word347_3_358 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_336 word347_3_357

def word347_3_359 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_358 word347_3_4

def word347_3_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1101, 1097)]

def word347_3_361 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_359 word347_3_360

def word347_3_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1105, 1093)]

def word347_3_363 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_361 word347_3_362

def word347_3_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1109, 1065)]

def word347_3_365 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_363 word347_3_364

def word347_3_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1121 4#64)

def word347_3_367 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_366

def word347_3_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1125, 1121)]

def word347_3_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 1125)

def word347_3_370 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_368 word347_3_369

def word347_3_371 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_367 word347_3_370

def word347_3_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1129 6#64)

def word347_3_373 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_371 word347_3_372

def word347_3_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1129)]

def word347_3_375 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_374 word347_3_14

def word347_3_376 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_373 word347_3_375

def word347_3_377 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 1105 (Flapjack.WordRegImm.reg 1109) word347_3_376 word347_3_17

def word347_3_378 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_377 word347_3_4

def word347_3_379 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_365 word347_3_378

def word347_3_380 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_379 word347_3_4

def word347_3_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1157 0#64)

def word347_3_382 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_380 word347_3_381

def word347_3_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1161, 1073)]

def word347_3_384 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_382 word347_3_383

def word347_3_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1165 0#64)

def word347_3_386 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_384 word347_3_385

def word347_3_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1177, 1101)]

def word347_3_388 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_387

def word347_3_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1205 12#64)

def word347_3_390 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_388 word347_3_389

def word347_3_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1209 8#64)

def word347_3_392 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_390 word347_3_391

def word347_3_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1213 0#64)

def word347_3_394 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_392 word347_3_393

def word347_3_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1219, 1061), (1223, 1069), (1227, 1161), (1231, 1177)]

def word347_3_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1177), (4, 1213), (6, 1209), (8, 1205)]

def word347_3_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1237, 1219), (1241, 1223), (1245, 1227), (1249, 1231)]

def word347_3_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1253, 2)]

def word347_3_399 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_397 word347_3_398

def word347_3_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1261, 1253)]

def word347_3_401 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_399 word347_3_400

def word347_3_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1257, 2)]

def word347_3_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1257)]

def word347_3_404 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_403 word347_3_14

def word347_3_405 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_402 word347_3_404

def word347_3_406 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_397 word347_3_405

def word347_3_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1261 0#64)

def word347_3_408 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_406 word347_3_407

def word347_3_409 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_401, 347, 12)) (some 339) ([2, 4, 6, 8]) (some (2, word347_3_408, 347, 13))

def word347_3_410 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_396 word347_3_409

def word347_3_411 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_395 word347_3_410

def word347_3_412 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_394 word347_3_411

def word347_3_413 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_412 word347_3_4

def word347_3_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1269, 1241)]

def word347_3_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1273 1269 (Flapjack.WordRegImm.imm 8#64)))

def word347_3_416 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_414 word347_3_415

def word347_3_417 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_413 word347_3_416

def word347_3_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1277, 1261)]

def word347_3_419 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_417 word347_3_418

def word347_3_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1281, 1277)]

def word347_3_421 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_419 word347_3_420

def word347_3_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1285, 1273)]

def word347_3_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1281 (Flapjack.WordLangAddr.addr 1285 0#64))

def word347_3_424 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_422 word347_3_423

def word347_3_425 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_421 word347_3_424

def word347_3_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1289 1#64)

def word347_3_427 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_425 word347_3_426

def word347_3_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1333, 1237), (1317, 1289), (1309, 1269), (1305, 1245), (1301, 1249)]

def word347_3_429 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_427 word347_3_428

def word347_3_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1333, 1061), (1317, 1157), (1309, 1069), (1305, 1161), (1301, 1101)]

def word347_3_431 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_430

def word347_3_432 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 1161 (Flapjack.WordRegImm.reg 1165) word347_3_429 word347_3_431

def word347_3_433 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_386 word347_3_432

def word347_3_434 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_433 word347_3_4

def word347_3_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1357, 1305)]

def word347_3_436 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_434 word347_3_435

def word347_3_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1361 4#64)

def word347_3_438 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_436 word347_3_437

def word347_3_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1373, 1301)]

def word347_3_440 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_439

def word347_3_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1377, 1317)]

def word347_3_442 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_440 word347_3_441

def word347_3_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1397 12#64)

def word347_3_444 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_442 word347_3_443

def word347_3_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1401 8#64)

def word347_3_446 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_444 word347_3_445

def word347_3_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1407, 1333), (1411, 1377), (1415, 1309), (1419, 1357), (1423, 1373)]

def word347_3_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1373), (4, 1377), (6, 1401), (8, 1397)]

def word347_3_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1429, 1407), (1433, 1411), (1437, 1415), (1441, 1419), (1445, 1423)]

def word347_3_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1449, 2)]

def word347_3_451 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_449 word347_3_450

def word347_3_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1457, 1449)]

def word347_3_453 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_451 word347_3_452

def word347_3_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1453, 2)]

def word347_3_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1453)]

def word347_3_456 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_455 word347_3_14

def word347_3_457 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_454 word347_3_456

def word347_3_458 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_449 word347_3_457

def word347_3_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1457 0#64)

def word347_3_460 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_458 word347_3_459

def word347_3_461 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_453, 347, 14)) (some 339) ([2, 4, 6, 8]) (some (2, word347_3_460, 347, 15))

def word347_3_462 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_448 word347_3_461

def word347_3_463 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_447 word347_3_462

def word347_3_464 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_446 word347_3_463

def word347_3_465 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_464 word347_3_4

def word347_3_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1465, 1457)]

def word347_3_467 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_465 word347_3_466

def word347_3_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1469 0#64)

def word347_3_469 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_467 word347_3_468

def word347_3_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1473 0#64)

def word347_3_471 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_469 word347_3_470

def word347_3_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1477 0#64)

def word347_3_473 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_471 word347_3_472

def word347_3_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(1629, 1429), (1625, 1465), (1621, 1473), (1613, 1469), (1609, 1433), (1605, 1437), (1601, 1441), (1597, 1477),
    (1593, 1445)]

def word347_3_475 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_473 word347_3_474

def word347_3_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1489, 1301)]

def word347_3_477 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_476

def word347_3_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1493, 1317)]

def word347_3_479 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_477 word347_3_478

def word347_3_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1505 32#64)

def word347_3_481 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_479 word347_3_480

def word347_3_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1511, 1333), (1515, 1493), (1519, 1309), (1523, 1357), (1527, 1489)]

def word347_3_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1489), (4, 1493), (6, 1505)]

def word347_3_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1533, 1511), (1537, 1515), (1541, 1519), (1545, 1523), (1549, 1527)]

def word347_3_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1553, 2), (1557, 4), (1561, 6), (1565, 8)]

def word347_3_486 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_484 word347_3_485

def word347_3_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1573, 1565)]

def word347_3_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1577, 1557)]

def word347_3_489 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_487 word347_3_488

def word347_3_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1585, 1561)]

def word347_3_491 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_489 word347_3_490

def word347_3_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1589, 1553)]

def word347_3_493 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_491 word347_3_492

def word347_3_494 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_486 word347_3_493

def word347_3_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1569, 2)]

def word347_3_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1569)]

def word347_3_497 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_496 word347_3_14

def word347_3_498 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_495 word347_3_497

def word347_3_499 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_484 word347_3_498

def word347_3_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1573 0#64)

def word347_3_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1577 0#64)

def word347_3_502 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_500 word347_3_501

def word347_3_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1585 0#64)

def word347_3_504 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_502 word347_3_503

def word347_3_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1589 0#64)

def word347_3_506 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_504 word347_3_505

def word347_3_507 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_499 word347_3_506

def word347_3_508 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_494, 347, 16)) (some 338) ([2, 4, 6]) (some (2, word347_3_507, 347, 17))

def word347_3_509 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_483 word347_3_508

def word347_3_510 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_482 word347_3_509

def word347_3_511 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_481 word347_3_510

def word347_3_512 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_511 word347_3_4

def word347_3_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(1629, 1533), (1625, 1589), (1621, 1585), (1613, 1577), (1609, 1537), (1605, 1541), (1601, 1545), (1597, 1573),
    (1593, 1549)]

def word347_3_514 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_512 word347_3_513

def word347_3_515 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 1357 (Flapjack.WordRegImm.reg 1361) word347_3_475 word347_3_514

def word347_3_516 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_438 word347_3_515

def word347_3_517 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_516 word347_3_4

def word347_3_518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1637, 1605)]

def word347_3_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1641 1637 (Flapjack.WordRegImm.imm 16#64)))

def word347_3_520 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_518 word347_3_519

def word347_3_521 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_517 word347_3_520

def word347_3_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1645, 1625)]

def word347_3_523 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_521 word347_3_522

def word347_3_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1649, 1613)]

def word347_3_525 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_523 word347_3_524

def word347_3_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1653, 1621)]

def word347_3_527 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_525 word347_3_526

def word347_3_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1657, 1597)]

def word347_3_529 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_527 word347_3_528

def word347_3_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1661, 1645)]

def word347_3_531 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_529 word347_3_530

def word347_3_532 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1665, 1641)]

def word347_3_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1661 (Flapjack.WordLangAddr.addr 1665 0#64))

def word347_3_534 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_532 word347_3_533

def word347_3_535 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_531 word347_3_534

def word347_3_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1669, 1649)]

def word347_3_537 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_535 word347_3_536

def word347_3_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1673, 1665)]

def word347_3_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1669 (Flapjack.WordLangAddr.addr 1673 8#64))

def word347_3_540 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_538 word347_3_539

def word347_3_541 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_537 word347_3_540

def word347_3_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1677, 1653)]

def word347_3_543 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_541 word347_3_542

def word347_3_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1681, 1673)]

def word347_3_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1677 (Flapjack.WordLangAddr.addr 1681 16#64))

def word347_3_546 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_544 word347_3_545

def word347_3_547 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_543 word347_3_546

def word347_3_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1685, 1657)]

def word347_3_549 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_547 word347_3_548

def word347_3_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1689, 1681)]

def word347_3_551 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1685 (Flapjack.WordLangAddr.addr 1689 24#64))

def word347_3_552 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_550 word347_3_551

def word347_3_553 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_549 word347_3_552

def word347_3_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1693, 1609)]

def word347_3_555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1697 1693 (Flapjack.WordRegImm.imm 1#64)))

def word347_3_556 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_554 word347_3_555

def word347_3_557 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_553 word347_3_556

def word347_3_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1701, 1697)]

def word347_3_559 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_557 word347_3_558

def word347_3_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1705 1#64)

def word347_3_561 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_559 word347_3_560

def word347_3_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1709, 1601)]

def word347_3_563 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_561 word347_3_562

def word347_3_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1721, 1593)]

def word347_3_565 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_564

def word347_3_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1725, 1701)]

def word347_3_567 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_565 word347_3_566

def word347_3_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1737 0#64)

def word347_3_569 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_567 word347_3_568

def word347_3_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1743, 1629), (1747, 1725), (1751, 1637), (1755, 1709), (1759, 1721)]

def word347_3_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1721), (4, 1725), (6, 1737)]

def word347_3_572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1765, 1743), (1769, 1747), (1773, 1751), (1777, 1755), (1781, 1759)]

def word347_3_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1785, 2), (1789, 4), (1793, 6), (1797, 8)]

def word347_3_574 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_572 word347_3_573

def word347_3_575 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1805, 1797)]

def word347_3_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1809, 1789)]

def word347_3_577 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_575 word347_3_576

def word347_3_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1817, 1793)]

def word347_3_579 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_577 word347_3_578

def word347_3_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1821, 1785)]

def word347_3_581 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_579 word347_3_580

def word347_3_582 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_574 word347_3_581

def word347_3_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1801, 2)]

def word347_3_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1801)]

def word347_3_585 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_584 word347_3_14

def word347_3_586 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_583 word347_3_585

def word347_3_587 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_572 word347_3_586

def word347_3_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1805 0#64)

def word347_3_589 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1809 0#64)

def word347_3_590 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_588 word347_3_589

def word347_3_591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1817 0#64)

def word347_3_592 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_590 word347_3_591

def word347_3_593 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1821 0#64)

def word347_3_594 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_592 word347_3_593

def word347_3_595 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_587 word347_3_594

def word347_3_596 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_582, 347, 18)) (some 338) ([2, 4, 6]) (some (2, word347_3_595, 347, 19))

def word347_3_597 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_571 word347_3_596

def word347_3_598 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_570 word347_3_597

def word347_3_599 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_569 word347_3_598

def word347_3_600 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_599 word347_3_4

def word347_3_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1825, 1773)]

def word347_3_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1829 1825 (Flapjack.WordRegImm.imm 48#64)))

def word347_3_603 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_601 word347_3_602

def word347_3_604 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_600 word347_3_603

def word347_3_605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1833, 1821)]

def word347_3_606 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_604 word347_3_605

def word347_3_607 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1837, 1809)]

def word347_3_608 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_606 word347_3_607

def word347_3_609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1841, 1817)]

def word347_3_610 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_608 word347_3_609

def word347_3_611 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1845, 1805)]

def word347_3_612 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_610 word347_3_611

def word347_3_613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1849, 1833)]

def word347_3_614 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_612 word347_3_613

def word347_3_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1853, 1829)]

def word347_3_616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1849 (Flapjack.WordLangAddr.addr 1853 0#64))

def word347_3_617 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_615 word347_3_616

def word347_3_618 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_614 word347_3_617

def word347_3_619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1857, 1837)]

def word347_3_620 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_618 word347_3_619

def word347_3_621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1861, 1853)]

def word347_3_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1857 (Flapjack.WordLangAddr.addr 1861 8#64))

def word347_3_623 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_621 word347_3_622

def word347_3_624 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_620 word347_3_623

def word347_3_625 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1865, 1841)]

def word347_3_626 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_624 word347_3_625

def word347_3_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1869, 1861)]

def word347_3_628 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1865 (Flapjack.WordLangAddr.addr 1869 16#64))

def word347_3_629 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_627 word347_3_628

def word347_3_630 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_626 word347_3_629

def word347_3_631 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1873, 1845)]

def word347_3_632 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_630 word347_3_631

def word347_3_633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1877, 1869)]

def word347_3_634 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1873 (Flapjack.WordLangAddr.addr 1877 24#64))

def word347_3_635 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_633 word347_3_634

def word347_3_636 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_632 word347_3_635

def word347_3_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1881, 1769)]

def word347_3_638 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1885 1881 (Flapjack.WordRegImm.imm 1#64)))

def word347_3_639 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_637 word347_3_638

def word347_3_640 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_636 word347_3_639

def word347_3_641 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1889, 1885)]

def word347_3_642 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_640 word347_3_641

def word347_3_643 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2293, 1765), (2253, 1889), (2249, 1825), (2245, 1777), (2237, 1781)]

def word347_3_644 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_642 word347_3_643

def word347_3_645 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1901, 1593)]

def word347_3_646 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_645

def word347_3_647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1905, 1701)]

def word347_3_648 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_646 word347_3_647

def word347_3_649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1917 0#64)

def word347_3_650 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_648 word347_3_649

def word347_3_651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1923, 1629), (1927, 1905), (1931, 1637), (1935, 1709), (1939, 1901)]

def word347_3_652 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1901), (4, 1905), (6, 1917)]

def word347_3_653 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1945, 1923), (1949, 1927), (1953, 1931), (1957, 1935), (1961, 1939)]

def word347_3_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1965, 2), (1969, 4), (1973, 6), (1977, 8)]

def word347_3_655 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_653 word347_3_654

def word347_3_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1985, 1977)]

def word347_3_657 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1989, 1969)]

def word347_3_658 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_656 word347_3_657

def word347_3_659 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1997, 1973)]

def word347_3_660 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_658 word347_3_659

def word347_3_661 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2001, 1965)]

def word347_3_662 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_660 word347_3_661

def word347_3_663 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_655 word347_3_662

def word347_3_664 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1981, 2)]

def word347_3_665 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1981)]

def word347_3_666 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_665 word347_3_14

def word347_3_667 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_664 word347_3_666

def word347_3_668 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_653 word347_3_667

def word347_3_669 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1985 0#64)

def word347_3_670 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1989 0#64)

def word347_3_671 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_669 word347_3_670

def word347_3_672 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1997 0#64)

def word347_3_673 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_671 word347_3_672

def word347_3_674 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2001 0#64)

def word347_3_675 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_673 word347_3_674

def word347_3_676 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_668 word347_3_675

def word347_3_677 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_663, 347, 20)) (some 338) ([2, 4, 6]) (some (2, word347_3_676, 347, 21))

def word347_3_678 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_652 word347_3_677

def word347_3_679 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_651 word347_3_678

def word347_3_680 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_650 word347_3_679

def word347_3_681 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_680 word347_3_4

def word347_3_682 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2005, 1953)]

def word347_3_683 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2009 2005 (Flapjack.WordRegImm.imm 80#64)))

def word347_3_684 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_682 word347_3_683

def word347_3_685 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_681 word347_3_684

def word347_3_686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2013, 2001)]

def word347_3_687 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_685 word347_3_686

def word347_3_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2017, 1989)]

def word347_3_689 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_687 word347_3_688

def word347_3_690 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2021, 1997)]

def word347_3_691 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_689 word347_3_690

def word347_3_692 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2025, 1985)]

def word347_3_693 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_691 word347_3_692

def word347_3_694 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2029, 2013)]

def word347_3_695 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_693 word347_3_694

def word347_3_696 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2033, 2009)]

def word347_3_697 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2029 (Flapjack.WordLangAddr.addr 2033 0#64))

def word347_3_698 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_696 word347_3_697

def word347_3_699 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_695 word347_3_698

def word347_3_700 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2037, 2017)]

def word347_3_701 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_699 word347_3_700

def word347_3_702 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2041, 2033)]

def word347_3_703 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2037 (Flapjack.WordLangAddr.addr 2041 8#64))

def word347_3_704 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_702 word347_3_703

def word347_3_705 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_701 word347_3_704

def word347_3_706 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2045, 2021)]

def word347_3_707 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_705 word347_3_706

def word347_3_708 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2049, 2041)]

def word347_3_709 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2045 (Flapjack.WordLangAddr.addr 2049 16#64))

def word347_3_710 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_708 word347_3_709

def word347_3_711 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_707 word347_3_710

def word347_3_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2053, 2025)]

def word347_3_713 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_711 word347_3_712

def word347_3_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2057, 2049)]

def word347_3_715 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2053 (Flapjack.WordLangAddr.addr 2057 24#64))

def word347_3_716 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_714 word347_3_715

def word347_3_717 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_713 word347_3_716

def word347_3_718 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2061, 1961)]

def word347_3_719 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_717 word347_3_718

def word347_3_720 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2065, 1949)]

def word347_3_721 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2069 2065 (Flapjack.WordRegImm.imm 1#64)))

def word347_3_722 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_720 word347_3_721

def word347_3_723 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_719 word347_3_722

def word347_3_724 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2081 0#64)

def word347_3_725 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_723 word347_3_724

def word347_3_726 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2087, 1945), (2091, 2065), (2095, 2005), (2099, 1957), (2103, 2061)]

def word347_3_727 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2061), (4, 2069), (6, 2081)]

def word347_3_728 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2109, 2087), (2113, 2091), (2117, 2095), (2121, 2099), (2125, 2103)]

def word347_3_729 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2129, 2), (2133, 4), (2137, 6), (2141, 8)]

def word347_3_730 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_728 word347_3_729

def word347_3_731 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2149, 2141)]

def word347_3_732 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2153, 2133)]

def word347_3_733 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_731 word347_3_732

def word347_3_734 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2161, 2137)]

def word347_3_735 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_733 word347_3_734

def word347_3_736 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2165, 2129)]

def word347_3_737 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_735 word347_3_736

def word347_3_738 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_730 word347_3_737

def word347_3_739 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2145, 2)]

def word347_3_740 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2145)]

def word347_3_741 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_740 word347_3_14

def word347_3_742 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_739 word347_3_741

def word347_3_743 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_728 word347_3_742

def word347_3_744 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2149 0#64)

def word347_3_745 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2153 0#64)

def word347_3_746 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_744 word347_3_745

def word347_3_747 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2161 0#64)

def word347_3_748 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_746 word347_3_747

def word347_3_749 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2165 0#64)

def word347_3_750 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_748 word347_3_749

def word347_3_751 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_743 word347_3_750

def word347_3_752 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_738, 347, 22)) (some 338) ([2, 4, 6]) (some (2, word347_3_751, 347, 23))

def word347_3_753 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_727 word347_3_752

def word347_3_754 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_726 word347_3_753

def word347_3_755 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_725 word347_3_754

def word347_3_756 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_755 word347_3_4

def word347_3_757 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2169, 2117)]

def word347_3_758 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2173 2169 (Flapjack.WordRegImm.imm 112#64)))

def word347_3_759 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_757 word347_3_758

def word347_3_760 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_756 word347_3_759

def word347_3_761 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2177, 2165)]

def word347_3_762 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_760 word347_3_761

def word347_3_763 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2181, 2153)]

def word347_3_764 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_762 word347_3_763

def word347_3_765 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2185, 2161)]

def word347_3_766 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_764 word347_3_765

def word347_3_767 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2189, 2149)]

def word347_3_768 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_766 word347_3_767

def word347_3_769 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2193, 2177)]

def word347_3_770 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_768 word347_3_769

def word347_3_771 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2197, 2173)]

def word347_3_772 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2193 (Flapjack.WordLangAddr.addr 2197 0#64))

def word347_3_773 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_771 word347_3_772

def word347_3_774 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_770 word347_3_773

def word347_3_775 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2201, 2181)]

def word347_3_776 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_774 word347_3_775

def word347_3_777 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2205, 2197)]

def word347_3_778 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2201 (Flapjack.WordLangAddr.addr 2205 8#64))

def word347_3_779 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_777 word347_3_778

def word347_3_780 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_776 word347_3_779

def word347_3_781 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2209, 2185)]

def word347_3_782 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_780 word347_3_781

def word347_3_783 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2213, 2205)]

def word347_3_784 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2209 (Flapjack.WordLangAddr.addr 2213 16#64))

def word347_3_785 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_783 word347_3_784

def word347_3_786 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_782 word347_3_785

def word347_3_787 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2217, 2189)]

def word347_3_788 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_786 word347_3_787

def word347_3_789 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2221, 2213)]

def word347_3_790 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2217 (Flapjack.WordLangAddr.addr 2221 24#64))

def word347_3_791 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_789 word347_3_790

def word347_3_792 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_788 word347_3_791

def word347_3_793 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2225, 2113)]

def word347_3_794 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2229 2225 (Flapjack.WordRegImm.imm 2#64)))

def word347_3_795 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_793 word347_3_794

def word347_3_796 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_792 word347_3_795

def word347_3_797 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2233, 2229)]

def word347_3_798 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_796 word347_3_797

def word347_3_799 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2293, 2109), (2253, 2233), (2249, 2169), (2245, 2121), (2237, 2125)]

def word347_3_800 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_798 word347_3_799

def word347_3_801 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 1705 (Flapjack.WordRegImm.reg 1709) word347_3_644 word347_3_800

def word347_3_802 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_563 word347_3_801

def word347_3_803 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_802 word347_3_4

def word347_3_804 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2301, 2237)]

def word347_3_805 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_803 word347_3_804

def word347_3_806 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2305, 2253)]

def word347_3_807 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_805 word347_3_806

def word347_3_808 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2317 14#64)

def word347_3_809 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_807 word347_3_808

def word347_3_810 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2321 0#64)

def word347_3_811 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_809 word347_3_810

def word347_3_812 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2327, 2293), (2331, 2305), (2335, 2249), (2339, 2245), (2343, 2301)]

def word347_3_813 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2301), (4, 2305), (6, 2321), (8, 2317)]

def word347_3_814 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2349, 2327), (2353, 2331), (2357, 2335), (2361, 2339), (2365, 2343)]

def word347_3_815 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2369, 2)]

def word347_3_816 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_814 word347_3_815

def word347_3_817 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2377, 2369)]

def word347_3_818 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_816 word347_3_817

def word347_3_819 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2373, 2)]

def word347_3_820 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2373)]

def word347_3_821 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_820 word347_3_14

def word347_3_822 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_819 word347_3_821

def word347_3_823 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_814 word347_3_822

def word347_3_824 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2377 0#64)

def word347_3_825 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_823 word347_3_824

def word347_3_826 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_818, 347, 24)) (some 339) ([2, 4, 6, 8]) (some (2, word347_3_825, 347, 25))

def word347_3_827 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_813 word347_3_826

def word347_3_828 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_812 word347_3_827

def word347_3_829 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_811 word347_3_828

def word347_3_830 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_829 word347_3_4

def word347_3_831 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2385, 2357)]

def word347_3_832 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2389 2385 (Flapjack.WordRegImm.imm 144#64)))

def word347_3_833 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_831 word347_3_832

def word347_3_834 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_830 word347_3_833

def word347_3_835 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2393, 2377)]

def word347_3_836 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_834 word347_3_835

def word347_3_837 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2397, 2393)]

def word347_3_838 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_836 word347_3_837

def word347_3_839 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2401, 2389)]

def word347_3_840 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2397 (Flapjack.WordLangAddr.addr 2401 0#64))

def word347_3_841 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_839 word347_3_840

def word347_3_842 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_838 word347_3_841

def word347_3_843 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2405, 2353)]

def word347_3_844 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2409 2405 (Flapjack.WordRegImm.imm 1#64)))

def word347_3_845 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_843 word347_3_844

def word347_3_846 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_842 word347_3_845

def word347_3_847 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2413, 2409)]

def word347_3_848 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_846 word347_3_847

def word347_3_849 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2417, 2361)]

def word347_3_850 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_848 word347_3_849

def word347_3_851 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2421 3#64)

def word347_3_852 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_850 word347_3_851

def word347_3_853 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2433, 2365)]

def word347_3_854 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_853

def word347_3_855 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2437, 2413)]

def word347_3_856 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_854 word347_3_855

def word347_3_857 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2449 20#64)

def word347_3_858 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_856 word347_3_857

def word347_3_859 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2455, 2349), (2459, 2437), (2463, 2385), (2467, 2417), (2471, 2433)]

def word347_3_860 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2433), (4, 2437), (6, 2449)]

def word347_3_861 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2477, 2455), (2481, 2459), (2485, 2463), (2489, 2467), (2493, 2471)]

def word347_3_862 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2497, 2)]

def word347_3_863 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_861 word347_3_862

def word347_3_864 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2505, 2497)]

def word347_3_865 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_863 word347_3_864

def word347_3_866 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2501, 2)]

def word347_3_867 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2501)]

def word347_3_868 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_867 word347_3_14

def word347_3_869 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_866 word347_3_868

def word347_3_870 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_861 word347_3_869

def word347_3_871 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2505 0#64)

def word347_3_872 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_870 word347_3_871

def word347_3_873 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_865, 347, 26)) (some 341) ([2, 4, 6]) (some (2, word347_3_872, 347, 27))

def word347_3_874 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_860 word347_3_873

def word347_3_875 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_859 word347_3_874

def word347_3_876 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_858 word347_3_875

def word347_3_877 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_876 word347_3_4

def word347_3_878 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2613, 2477), (2605, 2481), (2601, 2505), (2597, 2485), (2593, 2489), (2589, 2493)]

def word347_3_879 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_877 word347_3_878

def word347_3_880 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2521, 2365)]

def word347_3_881 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_880

def word347_3_882 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2525, 2413)]

def word347_3_883 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_881 word347_3_882

def word347_3_884 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2531, 2349), (2535, 2525), (2539, 2385), (2543, 2417), (2547, 2521)]

def word347_3_885 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2521), (4, 2525)]

def word347_3_886 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2553, 2531), (2557, 2535), (2561, 2539), (2565, 2543), (2569, 2547)]

def word347_3_887 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2573, 2)]

def word347_3_888 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_886 word347_3_887

def word347_3_889 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2581, 2573)]

def word347_3_890 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_888 word347_3_889

def word347_3_891 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2577, 2)]

def word347_3_892 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2577)]

def word347_3_893 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_892 word347_3_14

def word347_3_894 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_891 word347_3_893

def word347_3_895 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_886 word347_3_894

def word347_3_896 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2581 0#64)

def word347_3_897 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_895 word347_3_896

def word347_3_898 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_890, 347, 28)) (some 342) ([2, 4]) (some (2, word347_3_897, 347, 29))

def word347_3_899 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_885 word347_3_898

def word347_3_900 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_884 word347_3_899

def word347_3_901 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_883 word347_3_900

def word347_3_902 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_901 word347_3_4

def word347_3_903 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2613, 2553), (2605, 2557), (2601, 2581), (2597, 2561), (2593, 2565), (2589, 2569)]

def word347_3_904 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_902 word347_3_903

def word347_3_905 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2417 (Flapjack.WordRegImm.reg 2421) word347_3_879 word347_3_904

def word347_3_906 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_852 word347_3_905

def word347_3_907 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_906 word347_3_4

def word347_3_908 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2617, 2597)]

def word347_3_909 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2621 2617 (Flapjack.WordRegImm.imm 152#64)))

def word347_3_910 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_908 word347_3_909

def word347_3_911 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_907 word347_3_910

def word347_3_912 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2625, 2601)]

def word347_3_913 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_911 word347_3_912

def word347_3_914 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2629, 2625)]

def word347_3_915 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_913 word347_3_914

def word347_3_916 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2633, 2621)]

def word347_3_917 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2629 (Flapjack.WordLangAddr.addr 2633 0#64))

def word347_3_918 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_916 word347_3_917

def word347_3_919 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_915 word347_3_918

def word347_3_920 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2637, 2605)]

def word347_3_921 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2641 2637 (Flapjack.WordRegImm.imm 1#64)))

def word347_3_922 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_920 word347_3_921

def word347_3_923 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_919 word347_3_922

def word347_3_924 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2645, 2641)]

def word347_3_925 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_923 word347_3_924

def word347_3_926 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2649, 2589)]

def word347_3_927 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_925 word347_3_926

def word347_3_928 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2653, 2645)]

def word347_3_929 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_927 word347_3_928

def word347_3_930 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2661 32#64)

def word347_3_931 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_929 word347_3_930

def word347_3_932 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2667, 2613), (2671, 2653), (2675, 2617), (2679, 2593), (2683, 2649)]

def word347_3_933 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2649), (4, 2653), (6, 2661)]

def word347_3_934 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2689, 2667), (2693, 2671), (2697, 2675), (2701, 2679), (2705, 2683)]

def word347_3_935 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2709, 2), (2713, 4), (2717, 6), (2721, 8)]

def word347_3_936 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_934 word347_3_935

def word347_3_937 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2729, 2721)]

def word347_3_938 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2733, 2713)]

def word347_3_939 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_937 word347_3_938

def word347_3_940 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2741, 2717)]

def word347_3_941 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_939 word347_3_940

def word347_3_942 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2745, 2709)]

def word347_3_943 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_941 word347_3_942

def word347_3_944 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_936 word347_3_943

def word347_3_945 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2725, 2)]

def word347_3_946 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2725)]

def word347_3_947 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_946 word347_3_14

def word347_3_948 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_945 word347_3_947

def word347_3_949 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_934 word347_3_948

def word347_3_950 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2729 0#64)

def word347_3_951 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2733 0#64)

def word347_3_952 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_950 word347_3_951

def word347_3_953 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2741 0#64)

def word347_3_954 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_952 word347_3_953

def word347_3_955 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2745 0#64)

def word347_3_956 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_954 word347_3_955

def word347_3_957 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_949 word347_3_956

def word347_3_958 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_944, 347, 30)) (some 338) ([2, 4, 6]) (some (2, word347_3_957, 347, 31))

def word347_3_959 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_933 word347_3_958

def word347_3_960 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_932 word347_3_959

def word347_3_961 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_931 word347_3_960

def word347_3_962 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_961 word347_3_4

def word347_3_963 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2749, 2697)]

def word347_3_964 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2753 2749 (Flapjack.WordRegImm.imm 160#64)))

def word347_3_965 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_963 word347_3_964

def word347_3_966 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_962 word347_3_965

def word347_3_967 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2757, 2745)]

def word347_3_968 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_966 word347_3_967

def word347_3_969 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2761, 2733)]

def word347_3_970 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_968 word347_3_969

def word347_3_971 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2765, 2741)]

def word347_3_972 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_970 word347_3_971

def word347_3_973 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2769, 2729)]

def word347_3_974 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_972 word347_3_973

def word347_3_975 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2773, 2757)]

def word347_3_976 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_974 word347_3_975

def word347_3_977 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2777, 2753)]

def word347_3_978 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2773 (Flapjack.WordLangAddr.addr 2777 0#64))

def word347_3_979 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_977 word347_3_978

def word347_3_980 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_976 word347_3_979

def word347_3_981 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2781, 2761)]

def word347_3_982 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_980 word347_3_981

def word347_3_983 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2785, 2777)]

def word347_3_984 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2781 (Flapjack.WordLangAddr.addr 2785 8#64))

def word347_3_985 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_983 word347_3_984

def word347_3_986 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_982 word347_3_985

def word347_3_987 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2789, 2765)]

def word347_3_988 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_986 word347_3_987

def word347_3_989 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2793, 2785)]

def word347_3_990 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2789 (Flapjack.WordLangAddr.addr 2793 16#64))

def word347_3_991 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_989 word347_3_990

def word347_3_992 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_988 word347_3_991

def word347_3_993 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2797, 2769)]

def word347_3_994 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_992 word347_3_993

def word347_3_995 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2801, 2793)]

def word347_3_996 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2797 (Flapjack.WordLangAddr.addr 2801 24#64))

def word347_3_997 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_995 word347_3_996

def word347_3_998 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_994 word347_3_997

def word347_3_999 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2805, 2693)]

def word347_3_1000 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2809 2805 (Flapjack.WordRegImm.imm 1#64)))

def word347_3_1001 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_999 word347_3_1000

def word347_3_1002 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_998 word347_3_1001

def word347_3_1003 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2813, 2809)]

def word347_3_1004 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1002 word347_3_1003

def word347_3_1005 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2817, 2705)]

def word347_3_1006 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1004 word347_3_1005

def word347_3_1007 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2821, 2813)]

def word347_3_1008 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1006 word347_3_1007

def word347_3_1009 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2827, 2689), (2831, 2821), (2835, 2749), (2839, 2701), (2843, 2817)]

def word347_3_1010 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2817), (4, 2821)]

def word347_3_1011 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2849, 2827), (2853, 2831), (2857, 2835), (2861, 2839), (2865, 2843)]

def word347_3_1012 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2869, 2), (2873, 4)]

def word347_3_1013 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1011 word347_3_1012

def word347_3_1014 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2881, 2873)]

def word347_3_1015 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2889, 2869)]

def word347_3_1016 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1014 word347_3_1015

def word347_3_1017 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1013 word347_3_1016

def word347_3_1018 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2877, 2)]

def word347_3_1019 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2877)]

def word347_3_1020 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1019 word347_3_14

def word347_3_1021 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1018 word347_3_1020

def word347_3_1022 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1011 word347_3_1021

def word347_3_1023 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2881 0#64)

def word347_3_1024 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2889 0#64)

def word347_3_1025 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1023 word347_3_1024

def word347_3_1026 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1022 word347_3_1025

def word347_3_1027 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_1017, 347, 32)) (some 340) ([2, 4]) (some (2, word347_3_1026, 347, 33))

def word347_3_1028 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1010 word347_3_1027

def word347_3_1029 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1009 word347_3_1028

def word347_3_1030 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1008 word347_3_1029

def word347_3_1031 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1030 word347_3_4

def word347_3_1032 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2893, 2857)]

def word347_3_1033 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2897 2893 (Flapjack.WordRegImm.imm 192#64)))

def word347_3_1034 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1032 word347_3_1033

def word347_3_1035 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1031 word347_3_1034

def word347_3_1036 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2901, 2889)]

def word347_3_1037 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1035 word347_3_1036

def word347_3_1038 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2905, 2901)]

def word347_3_1039 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1037 word347_3_1038

def word347_3_1040 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2909, 2897)]

def word347_3_1041 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2905 (Flapjack.WordLangAddr.addr 2909 0#64))

def word347_3_1042 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1040 word347_3_1041

def word347_3_1043 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1039 word347_3_1042

def word347_3_1044 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2913, 2893)]

def word347_3_1045 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2917 2913 (Flapjack.WordRegImm.imm 200#64)))

def word347_3_1046 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1044 word347_3_1045

def word347_3_1047 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1043 word347_3_1046

def word347_3_1048 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2921, 2881)]

def word347_3_1049 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1047 word347_3_1048

def word347_3_1050 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2925, 2921)]

def word347_3_1051 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1049 word347_3_1050

def word347_3_1052 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2929, 2917)]

def word347_3_1053 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2925 (Flapjack.WordLangAddr.addr 2929 0#64))

def word347_3_1054 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1052 word347_3_1053

def word347_3_1055 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1051 word347_3_1054

def word347_3_1056 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2933, 2853)]

def word347_3_1057 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2937 2933 (Flapjack.WordRegImm.imm 1#64)))

def word347_3_1058 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1056 word347_3_1057

def word347_3_1059 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1055 word347_3_1058

def word347_3_1060 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2941, 2937)]

def word347_3_1061 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1059 word347_3_1060

def word347_3_1062 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2945, 2861)]

def word347_3_1063 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1061 word347_3_1062

def word347_3_1064 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2949 0#64)

def word347_3_1065 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1063 word347_3_1064

def word347_3_1066 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2961, 2865)]

def word347_3_1067 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_1066

def word347_3_1068 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2965, 2941)]

def word347_3_1069 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1067 word347_3_1068

def word347_3_1070 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2971, 2849), (2975, 2965), (2979, 2913), (2983, 2945), (2987, 2961)]

def word347_3_1071 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2961), (4, 2965)]

def word347_3_1072 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2993, 2971), (2997, 2975), (3001, 2979), (3005, 2983), (3009, 2987)]

def word347_3_1073 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3013, 2), (3017, 4)]

def word347_3_1074 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1072 word347_3_1073

def word347_3_1075 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3025, 3017)]

def word347_3_1076 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3033, 3013)]

def word347_3_1077 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1075 word347_3_1076

def word347_3_1078 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1074 word347_3_1077

def word347_3_1079 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3021, 2)]

def word347_3_1080 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3021)]

def word347_3_1081 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1080 word347_3_14

def word347_3_1082 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1079 word347_3_1081

def word347_3_1083 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1072 word347_3_1082

def word347_3_1084 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3025 0#64)

def word347_3_1085 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3033 0#64)

def word347_3_1086 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1084 word347_3_1085

def word347_3_1087 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1083 word347_3_1086

def word347_3_1088 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_1078, 347, 34)) (some 343) ([2, 4]) (some (2, word347_3_1087, 347, 35))

def word347_3_1089 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1071 word347_3_1088

def word347_3_1090 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1070 word347_3_1089

def word347_3_1091 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1069 word347_3_1090

def word347_3_1092 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1091 word347_3_4

def word347_3_1093 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3037, 3033)]

def word347_3_1094 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1092 word347_3_1093

def word347_3_1095 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3041, 3025)]

def word347_3_1096 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1094 word347_3_1095

def word347_3_1097 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3047, 2993), (3051, 2997), (3055, 3001), (3059, 3005), (3063, 3009)]

def word347_3_1098 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3037), (4, 3041)]

def word347_3_1099 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3069, 3047), (3073, 3051), (3077, 3055), (3081, 3059), (3085, 3063)]

def word347_3_1100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3089, 2), (3093, 4)]

def word347_3_1101 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1099 word347_3_1100

def word347_3_1102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3105, 3089)]

def word347_3_1103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3109, 3093)]

def word347_3_1104 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1102 word347_3_1103

def word347_3_1105 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1101 word347_3_1104

def word347_3_1106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3097, 2)]

def word347_3_1107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3097)]

def word347_3_1108 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1107 word347_3_14

def word347_3_1109 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1106 word347_3_1108

def word347_3_1110 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1099 word347_3_1109

def word347_3_1111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3105 0#64)

def word347_3_1112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3109 0#64)

def word347_3_1113 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1111 word347_3_1112

def word347_3_1114 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1110 word347_3_1113

def word347_3_1115 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_1105, 347, 36)) (some 344) ([2, 4]) (some (2, word347_3_1114, 347, 37))

def word347_3_1116 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1098 word347_3_1115

def word347_3_1117 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1097 word347_3_1116

def word347_3_1118 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1096 word347_3_1117

def word347_3_1119 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1118 word347_3_4

def word347_3_1120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3113, 3077)]

def word347_3_1121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3117 3113 (Flapjack.WordRegImm.imm 208#64)))

def word347_3_1122 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1120 word347_3_1121

def word347_3_1123 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1119 word347_3_1122

def word347_3_1124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3121, 3105)]

def word347_3_1125 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1123 word347_3_1124

def word347_3_1126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3125, 3121)]

def word347_3_1127 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1125 word347_3_1126

def word347_3_1128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3129, 3117)]

def word347_3_1129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3125 (Flapjack.WordLangAddr.addr 3129 0#64))

def word347_3_1130 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1128 word347_3_1129

def word347_3_1131 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1127 word347_3_1130

def word347_3_1132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3133, 3113)]

def word347_3_1133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3137 3133 (Flapjack.WordRegImm.imm 216#64)))

def word347_3_1134 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1132 word347_3_1133

def word347_3_1135 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1131 word347_3_1134

def word347_3_1136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3141, 3109)]

def word347_3_1137 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1135 word347_3_1136

def word347_3_1138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3145, 3141)]

def word347_3_1139 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1137 word347_3_1138

def word347_3_1140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3149, 3137)]

def word347_3_1141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3145 (Flapjack.WordLangAddr.addr 3149 0#64))

def word347_3_1142 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1140 word347_3_1141

def word347_3_1143 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1139 word347_3_1142

def word347_3_1144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3153, 3073)]

def word347_3_1145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3157 3153 (Flapjack.WordRegImm.imm 1#64)))

def word347_3_1146 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1144 word347_3_1145

def word347_3_1147 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1143 word347_3_1146

def word347_3_1148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3161, 3157)]

def word347_3_1149 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1147 word347_3_1148

def word347_3_1150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3197, 3069), (3185, 3161), (3181, 3133), (3177, 3081), (3173, 3085)]

def word347_3_1151 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1149 word347_3_1150

def word347_3_1152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3197, 2849), (3185, 2941), (3181, 2913), (3177, 2945), (3173, 2865)]

def word347_3_1153 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_1152

def word347_3_1154 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2945 (Flapjack.WordRegImm.reg 2949) word347_3_1151 word347_3_1153

def word347_3_1155 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1065 word347_3_1154

def word347_3_1156 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1155 word347_3_4

def word347_3_1157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3233, 3177)]

def word347_3_1158 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1156 word347_3_1157

def word347_3_1159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3237 3#64)

def word347_3_1160 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1158 word347_3_1159

def word347_3_1161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3249, 3173)]

def word347_3_1162 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_1161

def word347_3_1163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3253, 3185)]

def word347_3_1164 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1162 word347_3_1163

def word347_3_1165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3265 32#64)

def word347_3_1166 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1164 word347_3_1165

def word347_3_1167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3271, 3197), (3275, 3253), (3279, 3181), (3283, 3233), (3287, 3249)]

def word347_3_1168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3249), (4, 3253), (6, 3265)]

def word347_3_1169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3293, 3271), (3297, 3275), (3301, 3279), (3305, 3283), (3309, 3287)]

def word347_3_1170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3313, 2), (3317, 4), (3321, 6), (3325, 8)]

def word347_3_1171 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1169 word347_3_1170

def word347_3_1172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3333, 3325)]

def word347_3_1173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3337, 3317)]

def word347_3_1174 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1172 word347_3_1173

def word347_3_1175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3345, 3321)]

def word347_3_1176 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1174 word347_3_1175

def word347_3_1177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3349, 3313)]

def word347_3_1178 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1176 word347_3_1177

def word347_3_1179 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1171 word347_3_1178

def word347_3_1180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3329, 2)]

def word347_3_1181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3329)]

def word347_3_1182 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1181 word347_3_14

def word347_3_1183 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1180 word347_3_1182

def word347_3_1184 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1169 word347_3_1183

def word347_3_1185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3333 0#64)

def word347_3_1186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3337 0#64)

def word347_3_1187 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1185 word347_3_1186

def word347_3_1188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3345 0#64)

def word347_3_1189 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1187 word347_3_1188

def word347_3_1190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3349 0#64)

def word347_3_1191 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1189 word347_3_1190

def word347_3_1192 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1184 word347_3_1191

def word347_3_1193 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_1179, 347, 38)) (some 338) ([2, 4, 6]) (some (2, word347_3_1192, 347, 39))

def word347_3_1194 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1168 word347_3_1193

def word347_3_1195 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1167 word347_3_1194

def word347_3_1196 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1166 word347_3_1195

def word347_3_1197 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1196 word347_3_4

def word347_3_1198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3353, 3301)]

def word347_3_1199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3357 3353 (Flapjack.WordRegImm.imm 224#64)))

def word347_3_1200 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1198 word347_3_1199

def word347_3_1201 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1197 word347_3_1200

def word347_3_1202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3361, 3349)]

def word347_3_1203 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1201 word347_3_1202

def word347_3_1204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3365, 3337)]

def word347_3_1205 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1203 word347_3_1204

def word347_3_1206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3369, 3345)]

def word347_3_1207 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1205 word347_3_1206

def word347_3_1208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3373, 3333)]

def word347_3_1209 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1207 word347_3_1208

def word347_3_1210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3377, 3361)]

def word347_3_1211 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1209 word347_3_1210

def word347_3_1212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3381, 3357)]

def word347_3_1213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3377 (Flapjack.WordLangAddr.addr 3381 0#64))

def word347_3_1214 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1212 word347_3_1213

def word347_3_1215 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1211 word347_3_1214

def word347_3_1216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3385, 3365)]

def word347_3_1217 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1215 word347_3_1216

def word347_3_1218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3389, 3381)]

def word347_3_1219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3385 (Flapjack.WordLangAddr.addr 3389 8#64))

def word347_3_1220 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1218 word347_3_1219

def word347_3_1221 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1217 word347_3_1220

def word347_3_1222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3393, 3369)]

def word347_3_1223 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1221 word347_3_1222

def word347_3_1224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3397, 3389)]

def word347_3_1225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3393 (Flapjack.WordLangAddr.addr 3397 16#64))

def word347_3_1226 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1224 word347_3_1225

def word347_3_1227 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1223 word347_3_1226

def word347_3_1228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3401, 3373)]

def word347_3_1229 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1227 word347_3_1228

def word347_3_1230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3405, 3397)]

def word347_3_1231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3401 (Flapjack.WordLangAddr.addr 3405 24#64))

def word347_3_1232 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1230 word347_3_1231

def word347_3_1233 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1229 word347_3_1232

def word347_3_1234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3409, 3309)]

def word347_3_1235 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1233 word347_3_1234

def word347_3_1236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3413, 3297)]

def word347_3_1237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3417 3413 (Flapjack.WordRegImm.imm 1#64)))

def word347_3_1238 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1236 word347_3_1237

def word347_3_1239 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1235 word347_3_1238

def word347_3_1240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3423, 3293), (3427, 3413), (3431, 3353), (3435, 3305), (3439, 3409)]

def word347_3_1241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3409), (4, 3417)]

def word347_3_1242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3445, 3423), (3449, 3427), (3453, 3431), (3457, 3435), (3461, 3439)]

def word347_3_1243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3465, 2), (3469, 4)]

def word347_3_1244 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1242 word347_3_1243

def word347_3_1245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3477, 3469)]

def word347_3_1246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3485, 3465)]

def word347_3_1247 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1245 word347_3_1246

def word347_3_1248 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1244 word347_3_1247

def word347_3_1249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3473, 2)]

def word347_3_1250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3473)]

def word347_3_1251 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1250 word347_3_14

def word347_3_1252 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1249 word347_3_1251

def word347_3_1253 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1242 word347_3_1252

def word347_3_1254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3477 0#64)

def word347_3_1255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3485 0#64)

def word347_3_1256 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1254 word347_3_1255

def word347_3_1257 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1253 word347_3_1256

def word347_3_1258 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_1248, 347, 40)) (some 343) ([2, 4]) (some (2, word347_3_1257, 347, 41))

def word347_3_1259 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1241 word347_3_1258

def word347_3_1260 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1240 word347_3_1259

def word347_3_1261 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1239 word347_3_1260

def word347_3_1262 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1261 word347_3_4

def word347_3_1263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3489, 3485)]

def word347_3_1264 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1262 word347_3_1263

def word347_3_1265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3493, 3477)]

def word347_3_1266 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1264 word347_3_1265

def word347_3_1267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3499, 3445), (3503, 3449), (3507, 3453), (3511, 3457), (3515, 3461)]

def word347_3_1268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3489), (4, 3493)]

def word347_3_1269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3521, 3499), (3525, 3503), (3529, 3507), (3533, 3511), (3537, 3515)]

def word347_3_1270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3541, 2), (3545, 4)]

def word347_3_1271 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1269 word347_3_1270

def word347_3_1272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3557, 3541)]

def word347_3_1273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3561, 3545)]

def word347_3_1274 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1272 word347_3_1273

def word347_3_1275 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1271 word347_3_1274

def word347_3_1276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3549, 2)]

def word347_3_1277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3549)]

def word347_3_1278 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1277 word347_3_14

def word347_3_1279 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1276 word347_3_1278

def word347_3_1280 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1269 word347_3_1279

def word347_3_1281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3557 0#64)

def word347_3_1282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3561 0#64)

def word347_3_1283 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1281 word347_3_1282

def word347_3_1284 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1280 word347_3_1283

def word347_3_1285 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_1275, 347, 42)) (some 345) ([2, 4]) (some (2, word347_3_1284, 347, 43))

def word347_3_1286 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1268 word347_3_1285

def word347_3_1287 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1267 word347_3_1286

def word347_3_1288 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1266 word347_3_1287

def word347_3_1289 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1288 word347_3_4

def word347_3_1290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3565, 3529)]

def word347_3_1291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3569 3565 (Flapjack.WordRegImm.imm 256#64)))

def word347_3_1292 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1290 word347_3_1291

def word347_3_1293 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1289 word347_3_1292

def word347_3_1294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3573, 3557)]

def word347_3_1295 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1293 word347_3_1294

def word347_3_1296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3577, 3573)]

def word347_3_1297 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1295 word347_3_1296

def word347_3_1298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3581, 3569)]

def word347_3_1299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3577 (Flapjack.WordLangAddr.addr 3581 0#64))

def word347_3_1300 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1298 word347_3_1299

def word347_3_1301 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1297 word347_3_1300

def word347_3_1302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3585, 3565)]

def word347_3_1303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3589 3585 (Flapjack.WordRegImm.imm 264#64)))

def word347_3_1304 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1302 word347_3_1303

def word347_3_1305 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1301 word347_3_1304

def word347_3_1306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3593, 3561)]

def word347_3_1307 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1305 word347_3_1306

def word347_3_1308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3597, 3593)]

def word347_3_1309 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1307 word347_3_1308

def word347_3_1310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3601, 3589)]

def word347_3_1311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3597 (Flapjack.WordLangAddr.addr 3601 0#64))

def word347_3_1312 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1310 word347_3_1311

def word347_3_1313 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1309 word347_3_1312

def word347_3_1314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3605, 3525)]

def word347_3_1315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3609 3605 (Flapjack.WordRegImm.imm 2#64)))

def word347_3_1316 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1314 word347_3_1315

def word347_3_1317 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1313 word347_3_1316

def word347_3_1318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3613, 3609)]

def word347_3_1319 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1317 word347_3_1318

def word347_3_1320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3661, 3521), (3637, 3613), (3633, 3585), (3629, 3533), (3625, 3537)]

def word347_3_1321 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1319 word347_3_1320

def word347_3_1322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3661, 3197), (3637, 3185), (3633, 3181), (3629, 3233), (3625, 3173)]

def word347_3_1323 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_1322

def word347_3_1324 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 3233 (Flapjack.WordRegImm.reg 3237) word347_3_1321 word347_3_1323

def word347_3_1325 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1160 word347_3_1324

def word347_3_1326 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1325 word347_3_4

def word347_3_1327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3685, 3629)]

def word347_3_1328 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1326 word347_3_1327

def word347_3_1329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3689 4#64)

def word347_3_1330 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1328 word347_3_1329

def word347_3_1331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3701, 3625)]

def word347_3_1332 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_1331

def word347_3_1333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3705, 3637)]

def word347_3_1334 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1332 word347_3_1333

def word347_3_1335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3711, 3661), (3715, 3705), (3719, 3633), (3723, 3701)]

def word347_3_1336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3701), (4, 3705)]

def word347_3_1337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3729, 3711), (3733, 3715), (3737, 3719), (3741, 3723)]

def word347_3_1338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3745, 2), (3749, 4)]

def word347_3_1339 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1337 word347_3_1338

def word347_3_1340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3757, 3749)]

def word347_3_1341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3765, 3745)]

def word347_3_1342 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1340 word347_3_1341

def word347_3_1343 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1339 word347_3_1342

def word347_3_1344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3753, 2)]

def word347_3_1345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3753)]

def word347_3_1346 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1345 word347_3_14

def word347_3_1347 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1344 word347_3_1346

def word347_3_1348 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1337 word347_3_1347

def word347_3_1349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3757 0#64)

def word347_3_1350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3765 0#64)

def word347_3_1351 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1349 word347_3_1350

def word347_3_1352 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1348 word347_3_1351

def word347_3_1353 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_1343, 347, 44)) (some 343) ([2, 4]) (some (2, word347_3_1352, 347, 45))

def word347_3_1354 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1336 word347_3_1353

def word347_3_1355 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1335 word347_3_1354

def word347_3_1356 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1334 word347_3_1355

def word347_3_1357 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1356 word347_3_4

def word347_3_1358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3769, 3765)]

def word347_3_1359 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1357 word347_3_1358

def word347_3_1360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3773, 3757)]

def word347_3_1361 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1359 word347_3_1360

def word347_3_1362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3779, 3729), (3783, 3733), (3787, 3737), (3791, 3741)]

def word347_3_1363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3769), (4, 3773)]

def word347_3_1364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3797, 3779), (3801, 3783), (3805, 3787), (3809, 3791)]

def word347_3_1365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3813, 2), (3817, 4)]

def word347_3_1366 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1364 word347_3_1365

def word347_3_1367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3829, 3813)]

def word347_3_1368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3833, 3817)]

def word347_3_1369 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1367 word347_3_1368

def word347_3_1370 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1366 word347_3_1369

def word347_3_1371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3821, 2)]

def word347_3_1372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3821)]

def word347_3_1373 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1372 word347_3_14

def word347_3_1374 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1371 word347_3_1373

def word347_3_1375 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1364 word347_3_1374

def word347_3_1376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3829 0#64)

def word347_3_1377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3833 0#64)

def word347_3_1378 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1376 word347_3_1377

def word347_3_1379 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1375 word347_3_1378

def word347_3_1380 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_1370, 347, 46)) (some 346) ([2, 4]) (some (2, word347_3_1379, 347, 47))

def word347_3_1381 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1363 word347_3_1380

def word347_3_1382 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1362 word347_3_1381

def word347_3_1383 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1361 word347_3_1382

def word347_3_1384 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1383 word347_3_4

def word347_3_1385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3837, 3805)]

def word347_3_1386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3841 3837 (Flapjack.WordRegImm.imm 272#64)))

def word347_3_1387 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1385 word347_3_1386

def word347_3_1388 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1384 word347_3_1387

def word347_3_1389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3845, 3829)]

def word347_3_1390 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1388 word347_3_1389

def word347_3_1391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3849, 3845)]

def word347_3_1392 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1390 word347_3_1391

def word347_3_1393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3853, 3841)]

def word347_3_1394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3849 (Flapjack.WordLangAddr.addr 3853 0#64))

def word347_3_1395 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1393 word347_3_1394

def word347_3_1396 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1392 word347_3_1395

def word347_3_1397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3857, 3837)]

def word347_3_1398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3861 3857 (Flapjack.WordRegImm.imm 280#64)))

def word347_3_1399 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1397 word347_3_1398

def word347_3_1400 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1396 word347_3_1399

def word347_3_1401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3865, 3833)]

def word347_3_1402 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1400 word347_3_1401

def word347_3_1403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3869, 3865)]

def word347_3_1404 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1402 word347_3_1403

def word347_3_1405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3873, 3861)]

def word347_3_1406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3869 (Flapjack.WordLangAddr.addr 3873 0#64))

def word347_3_1407 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1405 word347_3_1406

def word347_3_1408 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1404 word347_3_1407

def word347_3_1409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3877, 3801)]

def word347_3_1410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3881 3877 (Flapjack.WordRegImm.imm 1#64)))

def word347_3_1411 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1409 word347_3_1410

def word347_3_1412 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1408 word347_3_1411

def word347_3_1413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3885, 3881)]

def word347_3_1414 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1412 word347_3_1413

def word347_3_1415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3929, 3797), (3905, 3885), (3901, 3857), (3897, 3809)]

def word347_3_1416 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1414 word347_3_1415

def word347_3_1417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3929, 3661), (3905, 3637), (3901, 3633), (3897, 3625)]

def word347_3_1418 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_4 word347_3_1417

def word347_3_1419 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 3685 (Flapjack.WordRegImm.reg 3689) word347_3_1416 word347_3_1418

def word347_3_1420 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1330 word347_3_1419

def word347_3_1421 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1420 word347_3_4

def word347_3_1422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3957, 3897)]

def word347_3_1423 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1421 word347_3_1422

def word347_3_1424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3961, 3905)]

def word347_3_1425 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1423 word347_3_1424

def word347_3_1426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3969 32#64)

def word347_3_1427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3975, 3929), (3979, 3961), (3983, 3901), (3987, 3957)]

def word347_3_1428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3957), (4, 3961), (6, 3969)]

def word347_3_1429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3993, 3975), (3997, 3979), (4001, 3983), (4005, 3987)]

def word347_3_1430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4009, 2), (4013, 4), (4017, 6), (4021, 8)]

def word347_3_1431 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1429 word347_3_1430

def word347_3_1432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4029, 4021)]

def word347_3_1433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4033, 4013)]

def word347_3_1434 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1432 word347_3_1433

def word347_3_1435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4041, 4017)]

def word347_3_1436 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1434 word347_3_1435

def word347_3_1437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4045, 4009)]

def word347_3_1438 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1436 word347_3_1437

def word347_3_1439 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1431 word347_3_1438

def word347_3_1440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4025, 2)]

def word347_3_1441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4025)]

def word347_3_1442 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1441 word347_3_14

def word347_3_1443 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1440 word347_3_1442

def word347_3_1444 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1429 word347_3_1443

def word347_3_1445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4029 0#64)

def word347_3_1446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4033 0#64)

def word347_3_1447 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1445 word347_3_1446

def word347_3_1448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4041 0#64)

def word347_3_1449 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1447 word347_3_1448

def word347_3_1450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4045 0#64)

def word347_3_1451 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1449 word347_3_1450

def word347_3_1452 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1444 word347_3_1451

def word347_3_1453 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_1439, 347, 48)) (some 338) ([2, 4, 6]) (some (2, word347_3_1452, 347, 49))

def word347_3_1454 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1428 word347_3_1453

def word347_3_1455 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1427 word347_3_1454

def word347_3_1456 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1426 word347_3_1455

def word347_3_1457 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1425 word347_3_1456

def word347_3_1458 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1457 word347_3_4

def word347_3_1459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4049, 4001)]

def word347_3_1460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4053 4049 (Flapjack.WordRegImm.imm 288#64)))

def word347_3_1461 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1459 word347_3_1460

def word347_3_1462 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1458 word347_3_1461

def word347_3_1463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4057, 4045)]

def word347_3_1464 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1462 word347_3_1463

def word347_3_1465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4061, 4033)]

def word347_3_1466 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1464 word347_3_1465

def word347_3_1467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4065, 4041)]

def word347_3_1468 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1466 word347_3_1467

def word347_3_1469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4069, 4029)]

def word347_3_1470 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1468 word347_3_1469

def word347_3_1471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4073, 4057)]

def word347_3_1472 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1470 word347_3_1471

def word347_3_1473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4077, 4053)]

def word347_3_1474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4073 (Flapjack.WordLangAddr.addr 4077 0#64))

def word347_3_1475 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1473 word347_3_1474

def word347_3_1476 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1472 word347_3_1475

def word347_3_1477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4081, 4061)]

def word347_3_1478 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1476 word347_3_1477

def word347_3_1479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4085, 4077)]

def word347_3_1480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4081 (Flapjack.WordLangAddr.addr 4085 8#64))

def word347_3_1481 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1479 word347_3_1480

def word347_3_1482 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1478 word347_3_1481

def word347_3_1483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4089, 4065)]

def word347_3_1484 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1482 word347_3_1483

def word347_3_1485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4093, 4085)]

def word347_3_1486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4089 (Flapjack.WordLangAddr.addr 4093 16#64))

def word347_3_1487 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1485 word347_3_1486

def word347_3_1488 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1484 word347_3_1487

def word347_3_1489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4097, 4069)]

def word347_3_1490 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1488 word347_3_1489

def word347_3_1491 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4101, 4093)]

def word347_3_1492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4097 (Flapjack.WordLangAddr.addr 4101 24#64))

def word347_3_1493 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1491 word347_3_1492

def word347_3_1494 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1490 word347_3_1493

def word347_3_1495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4105, 4005)]

def word347_3_1496 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1494 word347_3_1495

def word347_3_1497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4109, 3997)]

def word347_3_1498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4113 4109 (Flapjack.WordRegImm.imm 1#64)))

def word347_3_1499 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1497 word347_3_1498

def word347_3_1500 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1496 word347_3_1499

def word347_3_1501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4121 32#64)

def word347_3_1502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4127, 3993), (4131, 4109), (4135, 4049), (4139, 4105)]

def word347_3_1503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4105), (4, 4113), (6, 4121)]

def word347_3_1504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4145, 4127), (4149, 4131), (4153, 4135), (4157, 4139)]

def word347_3_1505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4161, 2), (4165, 4), (4169, 6), (4173, 8)]

def word347_3_1506 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1504 word347_3_1505

def word347_3_1507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4181, 4173)]

def word347_3_1508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4185, 4165)]

def word347_3_1509 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1507 word347_3_1508

def word347_3_1510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4193, 4169)]

def word347_3_1511 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1509 word347_3_1510

def word347_3_1512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4197, 4161)]

def word347_3_1513 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1511 word347_3_1512

def word347_3_1514 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1506 word347_3_1513

def word347_3_1515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4177, 2)]

def word347_3_1516 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4177)]

def word347_3_1517 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1516 word347_3_14

def word347_3_1518 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1515 word347_3_1517

def word347_3_1519 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1504 word347_3_1518

def word347_3_1520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4181 0#64)

def word347_3_1521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4185 0#64)

def word347_3_1522 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1520 word347_3_1521

def word347_3_1523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4193 0#64)

def word347_3_1524 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1522 word347_3_1523

def word347_3_1525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4197 0#64)

def word347_3_1526 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1524 word347_3_1525

def word347_3_1527 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1519 word347_3_1526

def word347_3_1528 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_1514, 347, 50)) (some 338) ([2, 4, 6]) (some (2, word347_3_1527, 347, 51))

def word347_3_1529 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1503 word347_3_1528

def word347_3_1530 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1502 word347_3_1529

def word347_3_1531 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1501 word347_3_1530

def word347_3_1532 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1500 word347_3_1531

def word347_3_1533 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1532 word347_3_4

def word347_3_1534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4201, 4153)]

def word347_3_1535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4205 4201 (Flapjack.WordRegImm.imm 320#64)))

def word347_3_1536 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1534 word347_3_1535

def word347_3_1537 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1533 word347_3_1536

def word347_3_1538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4209, 4197)]

def word347_3_1539 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1537 word347_3_1538

def word347_3_1540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4213, 4185)]

def word347_3_1541 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1539 word347_3_1540

def word347_3_1542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4217, 4193)]

def word347_3_1543 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1541 word347_3_1542

def word347_3_1544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4221, 4181)]

def word347_3_1545 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1543 word347_3_1544

def word347_3_1546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4225, 4209)]

def word347_3_1547 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1545 word347_3_1546

def word347_3_1548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4229, 4205)]

def word347_3_1549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4225 (Flapjack.WordLangAddr.addr 4229 0#64))

def word347_3_1550 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1548 word347_3_1549

def word347_3_1551 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1547 word347_3_1550

def word347_3_1552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4233, 4213)]

def word347_3_1553 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1551 word347_3_1552

def word347_3_1554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4237, 4229)]

def word347_3_1555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4233 (Flapjack.WordLangAddr.addr 4237 8#64))

def word347_3_1556 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1554 word347_3_1555

def word347_3_1557 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1553 word347_3_1556

def word347_3_1558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4241, 4217)]

def word347_3_1559 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1557 word347_3_1558

def word347_3_1560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4245, 4237)]

def word347_3_1561 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4241 (Flapjack.WordLangAddr.addr 4245 16#64))

def word347_3_1562 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1560 word347_3_1561

def word347_3_1563 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1559 word347_3_1562

def word347_3_1564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4249, 4221)]

def word347_3_1565 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1563 word347_3_1564

def word347_3_1566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4253, 4245)]

def word347_3_1567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4249 (Flapjack.WordLangAddr.addr 4253 24#64))

def word347_3_1568 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1566 word347_3_1567

def word347_3_1569 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1565 word347_3_1568

def word347_3_1570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4257, 4157)]

def word347_3_1571 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1569 word347_3_1570

def word347_3_1572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4261, 4149)]

def word347_3_1573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4265 4261 (Flapjack.WordRegImm.imm 2#64)))

def word347_3_1574 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1572 word347_3_1573

def word347_3_1575 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1571 word347_3_1574

def word347_3_1576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4273 32#64)

def word347_3_1577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4279, 4145), (4283, 4201)]

def word347_3_1578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4257), (4, 4265), (6, 4273)]

def word347_3_1579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4289, 4279), (4293, 4283)]

def word347_3_1580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4297, 2), (4301, 4), (4305, 6), (4309, 8)]

def word347_3_1581 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1579 word347_3_1580

def word347_3_1582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4317, 4309)]

def word347_3_1583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4321, 4301)]

def word347_3_1584 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1582 word347_3_1583

def word347_3_1585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4329, 4305)]

def word347_3_1586 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1584 word347_3_1585

def word347_3_1587 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4333, 4297)]

def word347_3_1588 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1586 word347_3_1587

def word347_3_1589 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1581 word347_3_1588

def word347_3_1590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4313, 2)]

def word347_3_1591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4313)]

def word347_3_1592 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1591 word347_3_14

def word347_3_1593 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1590 word347_3_1592

def word347_3_1594 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1579 word347_3_1593

def word347_3_1595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4317 0#64)

def word347_3_1596 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4321 0#64)

def word347_3_1597 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1595 word347_3_1596

def word347_3_1598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4329 0#64)

def word347_3_1599 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1597 word347_3_1598

def word347_3_1600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4333 0#64)

def word347_3_1601 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1599 word347_3_1600

def word347_3_1602 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1594 word347_3_1601

def word347_3_1603 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_3_1589, 347, 52)) (some 338) ([2, 4, 6]) (some (2, word347_3_1602, 347, 53))

def word347_3_1604 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1578 word347_3_1603

def word347_3_1605 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1577 word347_3_1604

def word347_3_1606 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1576 word347_3_1605

def word347_3_1607 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1575 word347_3_1606

def word347_3_1608 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1607 word347_3_4

def word347_3_1609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4337, 4293)]

def word347_3_1610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4341 4337 (Flapjack.WordRegImm.imm 352#64)))

def word347_3_1611 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1609 word347_3_1610

def word347_3_1612 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1608 word347_3_1611

def word347_3_1613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4345, 4333)]

def word347_3_1614 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1612 word347_3_1613

def word347_3_1615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4349, 4321)]

def word347_3_1616 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1614 word347_3_1615

def word347_3_1617 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4353, 4329)]

def word347_3_1618 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1616 word347_3_1617

def word347_3_1619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4357, 4317)]

def word347_3_1620 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1618 word347_3_1619

def word347_3_1621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4361, 4345)]

def word347_3_1622 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1620 word347_3_1621

def word347_3_1623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4365, 4341)]

def word347_3_1624 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4361 (Flapjack.WordLangAddr.addr 4365 0#64))

def word347_3_1625 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1623 word347_3_1624

def word347_3_1626 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1622 word347_3_1625

def word347_3_1627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4369, 4349)]

def word347_3_1628 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1626 word347_3_1627

def word347_3_1629 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4373, 4365)]

def word347_3_1630 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4369 (Flapjack.WordLangAddr.addr 4373 8#64))

def word347_3_1631 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1629 word347_3_1630

def word347_3_1632 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1628 word347_3_1631

def word347_3_1633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4377, 4353)]

def word347_3_1634 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1632 word347_3_1633

def word347_3_1635 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4381, 4373)]

def word347_3_1636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4377 (Flapjack.WordLangAddr.addr 4381 16#64))

def word347_3_1637 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1635 word347_3_1636

def word347_3_1638 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1634 word347_3_1637

def word347_3_1639 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4385, 4357)]

def word347_3_1640 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1638 word347_3_1639

def word347_3_1641 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4389, 4381)]

def word347_3_1642 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4385 (Flapjack.WordLangAddr.addr 4389 24#64))

def word347_3_1643 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1641 word347_3_1642

def word347_3_1644 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1640 word347_3_1643

def word347_3_1645 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4393, 4337)]

def word347_3_1646 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1644 word347_3_1645

def word347_3_1647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4393)]

def word347_3_1648 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4289 [2]

def word347_3_1649 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1647 word347_3_1648

def word347_3_1650 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_1646 word347_3_1649

def word347_3_1651 : WordLangProgHOL (BitVec 64) :=
.seq word347_3_0 word347_3_1650

def pass347_3 : WordLangProgHOL (BitVec 64) :=
word347_3_1651
end InitECandidate.Proofs.WordStages.Parallel347
