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
def word347_5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 0), (69, 2), (73, 4)]

def word347_5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 73)]

def word347_5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def word347_5_3 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1 word347_5_2

def word347_5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word347_5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 1#64)

def word347_5_6 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_5

def word347_5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 93)]

def word347_5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 97)

def word347_5_9 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_7 word347_5_8

def word347_5_10 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_6 word347_5_9

def word347_5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 6#64)

def word347_5_12 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_10 word347_5_11

def word347_5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 101)]

def word347_5_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def word347_5_15 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_13 word347_5_14

def word347_5_16 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_12 word347_5_15

def word347_5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word347_5_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 77 (Flapjack.WordRegImm.reg 81) word347_5_16 word347_5_17

def word347_5_19 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_18 word347_5_4

def word347_5_20 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_3 word347_5_19

def word347_5_21 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_20 word347_5_4

def word347_5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 69)]

def word347_5_23 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_21 word347_5_22

def word347_5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 133 (Flapjack.WordLangAddr.addr 129 0#64))

def word347_5_25 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_23 word347_5_24

def word347_5_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 133)]

def word347_5_27 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_25 word347_5_26

def word347_5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 400#64)

def word347_5_29 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_27 word347_5_28

def word347_5_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(151, 65), (155, 77), (159, 137), (163, 129)]

def word347_5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def word347_5_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 151), (173, 155), (177, 159), (181, 163)]

def word347_5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 2)]

def word347_5_34 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_32 word347_5_33

def word347_5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 185)]

def word347_5_36 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_34 word347_5_35

def word347_5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 2)]

def word347_5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 189)]

def word347_5_39 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_38 word347_5_14

def word347_5_40 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_37 word347_5_39

def word347_5_41 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_32 word347_5_40

def word347_5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 0#64)

def word347_5_43 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_41 word347_5_42

def word347_5_44 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_36, 347, 2)) (some 68) ([2]) (some (2, word347_5_43, 347, 3))

def word347_5_45 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_31 word347_5_44

def word347_5_46 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_30 word347_5_45

def word347_5_47 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_29 word347_5_46

def word347_5_48 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_47 word347_5_4

def word347_5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 193)]

def word347_5_50 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_48 word347_5_49

def word347_5_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 209 400#64)

def word347_5_52 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_50 word347_5_51

def word347_5_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(215, 169), (219, 173), (223, 177), (227, 181), (231, 201)]

def word347_5_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201), (4, 209)]

def word347_5_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 215), (241, 219), (245, 223), (249, 227), (253, 231)]

def word347_5_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def word347_5_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 261)]

def word347_5_58 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_57 word347_5_14

def word347_5_59 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_56 word347_5_58

def word347_5_60 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_55 word347_5_59

def word347_5_61 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_55, 347, 4)) (some 78) ([2, 4]) (some (2, word347_5_60, 347, 5))

def word347_5_62 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_54 word347_5_61

def word347_5_63 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_53 word347_5_62

def word347_5_64 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_52 word347_5_63

def word347_5_65 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_64 word347_5_4

def word347_5_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 253)]

def word347_5_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 277 273 (Flapjack.WordRegImm.imm 384#64)))

def word347_5_68 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_66 word347_5_67

def word347_5_69 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_65 word347_5_68

def word347_5_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 249)]

def word347_5_71 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_69 word347_5_70

def word347_5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 281)]

def word347_5_73 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_71 word347_5_72

def word347_5_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 277)]

def word347_5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 285 (Flapjack.WordLangAddr.addr 289 0#64))

def word347_5_76 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_74 word347_5_75

def word347_5_77 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_73 word347_5_76

def word347_5_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 273)]

def word347_5_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 297 293 (Flapjack.WordRegImm.imm 392#64)))

def word347_5_80 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_78 word347_5_79

def word347_5_81 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_77 word347_5_80

def word347_5_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(301, 241)]

def word347_5_83 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_81 word347_5_82

def word347_5_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 301)]

def word347_5_85 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_83 word347_5_84

def word347_5_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 297)]

def word347_5_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 305 (Flapjack.WordLangAddr.addr 309 0#64))

def word347_5_88 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_86 word347_5_87

def word347_5_89 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_85 word347_5_88

def word347_5_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)

def word347_5_91 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_89 word347_5_90

def word347_5_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 317 9#64)

def word347_5_93 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_91 word347_5_92

def word347_5_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(321, 245)]

def word347_5_95 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_93 word347_5_94

def word347_5_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 325 1#64)

def word347_5_97 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_95 word347_5_96

def word347_5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 1#64)

def word347_5_99 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_98

def word347_5_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 341)]

def word347_5_101 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_99 word347_5_100

def word347_5_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 357 0#64)

def word347_5_103 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_102

def word347_5_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(361, 357)]

def word347_5_105 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_103 word347_5_104

def word347_5_106 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 321 (Flapjack.WordRegImm.reg 325) word347_5_101 word347_5_105

def word347_5_107 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_97 word347_5_106

def word347_5_108 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_107 word347_5_4

def word347_5_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 373 4#64)

def word347_5_110 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_108 word347_5_109

def word347_5_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 321)]

def word347_5_112 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_110 word347_5_111

def word347_5_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 393 1#64)

def word347_5_114 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_113

def word347_5_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 393)]

def word347_5_116 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_114 word347_5_115

def word347_5_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 0#64)

def word347_5_118 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_117

def word347_5_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 409)]

def word347_5_120 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_118 word347_5_119

def word347_5_121 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 373 (Flapjack.WordRegImm.reg 377) word347_5_116 word347_5_120

def word347_5_122 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_112 word347_5_121

def word347_5_123 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_122 word347_5_4

def word347_5_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(425, 413)]

def word347_5_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(429, 361)]

def word347_5_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 433 425 (Flapjack.WordRegImm.reg 429)))

def word347_5_127 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_125 word347_5_126

def word347_5_128 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_124 word347_5_127

def word347_5_129 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_123 word347_5_128

def word347_5_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(437, 285)]

def word347_5_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 441 437 (Flapjack.WordRegImm.imm 1#64)))

def word347_5_132 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_130 word347_5_131

def word347_5_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 305)]

def word347_5_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 449 445 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def word347_5_135 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_133 word347_5_134

def word347_5_136 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_132 word347_5_135

def word347_5_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(455, 237), (459, 377), (463, 317), (467, 293)]

def word347_5_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 441), (4, 449)]

def word347_5_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(473, 455), (477, 459), (481, 463), (485, 467)]

def word347_5_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(489, 2), (493, 4), (497, 6)]

def word347_5_141 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_139 word347_5_140

def word347_5_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(509, 493)]

def word347_5_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(513, 489)]

def word347_5_144 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_142 word347_5_143

def word347_5_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(521, 497)]

def word347_5_146 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_144 word347_5_145

def word347_5_147 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_141 word347_5_146

def word347_5_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(505, 2)]

def word347_5_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 505)]

def word347_5_150 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_149 word347_5_14

def word347_5_151 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_148 word347_5_150

def word347_5_152 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_139 word347_5_151

def word347_5_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 509 0#64)

def word347_5_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 513 0#64)

def word347_5_155 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_153 word347_5_154

def word347_5_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 0#64)

def word347_5_157 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_155 word347_5_156

def word347_5_158 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_152 word347_5_157

def word347_5_159 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_147, 347, 6)) (some 162) ([2, 4]) (some (2, word347_5_158, 347, 7))

def word347_5_160 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_138 word347_5_159

def word347_5_161 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_137 word347_5_160

def word347_5_162 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_136 word347_5_161

def word347_5_163 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_162 word347_5_4

def word347_5_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(529, 477)]

def word347_5_165 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_163 word347_5_164

def word347_5_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 529)]

def word347_5_167 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_165 word347_5_166

def word347_5_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 1#64)

def word347_5_169 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_167 word347_5_168

def word347_5_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 549 11#64)

def word347_5_171 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_170

def word347_5_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 549)]

def word347_5_173 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_171 word347_5_172

def word347_5_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 481)]

def word347_5_175 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_174

def word347_5_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 533 (Flapjack.WordRegImm.reg 537) word347_5_173 word347_5_175

def word347_5_177 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_169 word347_5_176

def word347_5_178 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_177 word347_5_4

def word347_5_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(573, 533)]

def word347_5_180 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_178 word347_5_179

def word347_5_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 2#64)

def word347_5_182 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_180 word347_5_181

def word347_5_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 589 12#64)

def word347_5_184 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_183

def word347_5_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(609, 589)]

def word347_5_186 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_184 word347_5_185

def word347_5_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(609, 569)]

def word347_5_188 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_187

def word347_5_189 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 573 (Flapjack.WordRegImm.reg 577) word347_5_186 word347_5_188

def word347_5_190 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_182 word347_5_189

def word347_5_191 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_190 word347_5_4

def word347_5_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(613, 573)]

def word347_5_193 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_191 word347_5_192

def word347_5_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 617 3#64)

def word347_5_195 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_193 word347_5_194

def word347_5_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 629 14#64)

def word347_5_197 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_196

def word347_5_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 629)]

def word347_5_199 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_197 word347_5_198

def word347_5_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(649, 609)]

def word347_5_201 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_200

def word347_5_202 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 613 (Flapjack.WordRegImm.reg 617) word347_5_199 word347_5_201

def word347_5_203 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_195 word347_5_202

def word347_5_204 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_203 word347_5_4

def word347_5_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(653, 613)]

def word347_5_206 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_204 word347_5_205

def word347_5_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 657 4#64)

def word347_5_208 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_206 word347_5_207

def word347_5_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 669 13#64)

def word347_5_210 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_209

def word347_5_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 669)]

def word347_5_212 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_210 word347_5_211

def word347_5_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 649)]

def word347_5_214 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_213

def word347_5_215 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 653 (Flapjack.WordRegImm.reg 657) word347_5_212 word347_5_214

def word347_5_216 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_208 word347_5_215

def word347_5_217 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_216 word347_5_4

def word347_5_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 473), (937, 521), (929, 689), (925, 513), (921, 485), (917, 653), (913, 509)]

def word347_5_219 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_217 word347_5_218

def word347_5_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(693, 377)]

def word347_5_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 697 192#64)

def word347_5_222 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_220 word347_5_221

def word347_5_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 713 1#64)

def word347_5_224 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_223

def word347_5_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(733, 713)]

def word347_5_226 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_224 word347_5_225

def word347_5_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 0#64)

def word347_5_228 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_227

def word347_5_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(733, 729)]

def word347_5_230 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_228 word347_5_229

def word347_5_231 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 693 (Flapjack.WordRegImm.reg 697) word347_5_226 word347_5_230

def word347_5_232 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_222 word347_5_231

def word347_5_233 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_232 word347_5_4

def word347_5_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 745 254#64)

def word347_5_235 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_233 word347_5_234

def word347_5_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(749, 693)]

def word347_5_237 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_235 word347_5_236

def word347_5_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 1#64)

def word347_5_239 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_238

def word347_5_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(785, 765)]

def word347_5_241 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_239 word347_5_240

def word347_5_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 781 0#64)

def word347_5_243 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_242

def word347_5_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(785, 781)]

def word347_5_245 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_243 word347_5_244

def word347_5_246 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 745 (Flapjack.WordRegImm.reg 749) word347_5_241 word347_5_245

def word347_5_247 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_237 word347_5_246

def word347_5_248 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_247 word347_5_4

def word347_5_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(797, 785)]

def word347_5_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(801, 733)]

def word347_5_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 805 797 (Flapjack.WordRegImm.reg 801)))

def word347_5_252 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_250 word347_5_251

def word347_5_253 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_249 word347_5_252

def word347_5_254 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_248 word347_5_253

def word347_5_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 809 2#64)

def word347_5_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(813, 809)]

def word347_5_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 813)

def word347_5_258 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_256 word347_5_257

def word347_5_259 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_255 word347_5_258

def word347_5_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 817 6#64)

def word347_5_261 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_259 word347_5_260

def word347_5_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 817)]

def word347_5_263 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_262 word347_5_14

def word347_5_264 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_261 word347_5_263

def word347_5_265 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 805 (Flapjack.WordRegImm.imm 0#64) word347_5_17 word347_5_264

def word347_5_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 285)]

def word347_5_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(833, 305)]

def word347_5_268 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_266 word347_5_267

def word347_5_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(839, 237), (843, 317), (847, 293), (851, 313)]

def word347_5_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 829), (4, 833)]

def word347_5_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(857, 839), (861, 843), (865, 847), (869, 851)]

def word347_5_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(873, 2), (877, 4), (881, 6)]

def word347_5_273 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_271 word347_5_272

def word347_5_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(893, 877)]

def word347_5_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(897, 873)]

def word347_5_276 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_274 word347_5_275

def word347_5_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(905, 881)]

def word347_5_278 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_276 word347_5_277

def word347_5_279 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_273 word347_5_278

def word347_5_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(889, 2)]

def word347_5_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 889)]

def word347_5_282 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_281 word347_5_14

def word347_5_283 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_280 word347_5_282

def word347_5_284 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_271 word347_5_283

def word347_5_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 893 0#64)

def word347_5_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 897 0#64)

def word347_5_287 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_285 word347_5_286

def word347_5_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 905 0#64)

def word347_5_289 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_287 word347_5_288

def word347_5_290 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_284 word347_5_289

def word347_5_291 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_279, 347, 8)) (some 162) ([2, 4]) (some (2, word347_5_290, 347, 9))

def word347_5_292 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_270 word347_5_291

def word347_5_293 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_269 word347_5_292

def word347_5_294 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_268 word347_5_293

def word347_5_295 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_294 word347_5_4

def word347_5_296 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_265 word347_5_295

def word347_5_297 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_254 word347_5_296

def word347_5_298 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_297 word347_5_4

def word347_5_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 857), (937, 905), (929, 861), (925, 897), (921, 865), (917, 869), (913, 893)]

def word347_5_300 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_298 word347_5_299

def word347_5_301 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 433 (Flapjack.WordRegImm.imm 0#64) word347_5_219 word347_5_300

def word347_5_302 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_129 word347_5_301

def word347_5_303 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_302 word347_5_4

def word347_5_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(965, 921)]

def word347_5_305 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_303 word347_5_304

def word347_5_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(969, 917)]

def word347_5_307 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_305 word347_5_306

def word347_5_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(973, 969)]

def word347_5_309 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_307 word347_5_308

def word347_5_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(977, 965)]

def word347_5_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 973 (Flapjack.WordLangAddr.addr 977 0#64))

def word347_5_312 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_310 word347_5_311

def word347_5_313 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_309 word347_5_312

def word347_5_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(981, 925)]

def word347_5_315 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_313 word347_5_314

def word347_5_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 985 1#64)

def word347_5_317 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_315 word347_5_316

def word347_5_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 997 3#64)

def word347_5_319 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_318

def word347_5_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1001, 997)]

def word347_5_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 1001)

def word347_5_322 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_320 word347_5_321

def word347_5_323 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_319 word347_5_322

def word347_5_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1005 6#64)

def word347_5_325 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_323 word347_5_324

def word347_5_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1005)]

def word347_5_327 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_326 word347_5_14

def word347_5_328 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_325 word347_5_327

def word347_5_329 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 981 (Flapjack.WordRegImm.reg 985) word347_5_328 word347_5_17

def word347_5_330 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_329 word347_5_4

def word347_5_331 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_317 word347_5_330

def word347_5_332 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_331 word347_5_4

def word347_5_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1033, 913)]

def word347_5_334 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_332 word347_5_333

def word347_5_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1037, 937)]

def word347_5_336 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_334 word347_5_335

def word347_5_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1043, 945), (1047, 929), (1051, 977), (1055, 973)]

def word347_5_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1033), (4, 1037)]

def word347_5_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1061, 1043), (1065, 1047), (1069, 1051), (1073, 1055)]

def word347_5_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1077, 2), (1081, 4)]

def word347_5_341 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_339 word347_5_340

def word347_5_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1093, 1081)]

def word347_5_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1097, 1077)]

def word347_5_344 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_342 word347_5_343

def word347_5_345 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_341 word347_5_344

def word347_5_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1085, 2)]

def word347_5_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1085)]

def word347_5_348 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_347 word347_5_14

def word347_5_349 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_346 word347_5_348

def word347_5_350 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_339 word347_5_349

def word347_5_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1093 0#64)

def word347_5_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1097 0#64)

def word347_5_353 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_351 word347_5_352

def word347_5_354 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_350 word347_5_353

def word347_5_355 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_345, 347, 10)) (some 169) ([2, 4]) (some (2, word347_5_354, 347, 11))

def word347_5_356 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_338 word347_5_355

def word347_5_357 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_337 word347_5_356

def word347_5_358 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_336 word347_5_357

def word347_5_359 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_358 word347_5_4

def word347_5_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1101, 1097)]

def word347_5_361 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_359 word347_5_360

def word347_5_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1105, 1093)]

def word347_5_363 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_361 word347_5_362

def word347_5_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1109, 1065)]

def word347_5_365 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_363 word347_5_364

def word347_5_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1121 4#64)

def word347_5_367 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_366

def word347_5_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1125, 1121)]

def word347_5_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 1125)

def word347_5_370 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_368 word347_5_369

def word347_5_371 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_367 word347_5_370

def word347_5_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1129 6#64)

def word347_5_373 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_371 word347_5_372

def word347_5_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1129)]

def word347_5_375 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_374 word347_5_14

def word347_5_376 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_373 word347_5_375

def word347_5_377 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 1105 (Flapjack.WordRegImm.reg 1109) word347_5_376 word347_5_17

def word347_5_378 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_377 word347_5_4

def word347_5_379 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_365 word347_5_378

def word347_5_380 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_379 word347_5_4

def word347_5_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1157 0#64)

def word347_5_382 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_380 word347_5_381

def word347_5_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1161, 1073)]

def word347_5_384 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_382 word347_5_383

def word347_5_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1165 0#64)

def word347_5_386 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_384 word347_5_385

def word347_5_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1177, 1101)]

def word347_5_388 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_387

def word347_5_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1205 12#64)

def word347_5_390 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_388 word347_5_389

def word347_5_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1209 8#64)

def word347_5_392 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_390 word347_5_391

def word347_5_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1213 0#64)

def word347_5_394 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_392 word347_5_393

def word347_5_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1219, 1061), (1223, 1069), (1227, 1161), (1231, 1177)]

def word347_5_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1177), (4, 1213), (6, 1209), (8, 1205)]

def word347_5_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1237, 1219), (1241, 1223), (1245, 1227), (1249, 1231)]

def word347_5_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1253, 2)]

def word347_5_399 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_397 word347_5_398

def word347_5_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1261, 1253)]

def word347_5_401 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_399 word347_5_400

def word347_5_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1257, 2)]

def word347_5_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1257)]

def word347_5_404 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_403 word347_5_14

def word347_5_405 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_402 word347_5_404

def word347_5_406 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_397 word347_5_405

def word347_5_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1261 0#64)

def word347_5_408 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_406 word347_5_407

def word347_5_409 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_401, 347, 12)) (some 339) ([2, 4, 6, 8]) (some (2, word347_5_408, 347, 13))

def word347_5_410 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_396 word347_5_409

def word347_5_411 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_395 word347_5_410

def word347_5_412 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_394 word347_5_411

def word347_5_413 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_412 word347_5_4

def word347_5_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1269, 1241)]

def word347_5_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1273 1269 (Flapjack.WordRegImm.imm 8#64)))

def word347_5_416 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_414 word347_5_415

def word347_5_417 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_413 word347_5_416

def word347_5_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1277, 1261)]

def word347_5_419 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_417 word347_5_418

def word347_5_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1281, 1277)]

def word347_5_421 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_419 word347_5_420

def word347_5_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1285, 1273)]

def word347_5_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1281 (Flapjack.WordLangAddr.addr 1285 0#64))

def word347_5_424 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_422 word347_5_423

def word347_5_425 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_421 word347_5_424

def word347_5_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1289 1#64)

def word347_5_427 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_425 word347_5_426

def word347_5_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1333, 1237), (1317, 1289), (1309, 1269), (1305, 1245), (1301, 1249)]

def word347_5_429 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_427 word347_5_428

def word347_5_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1333, 1061), (1317, 1157), (1309, 1069), (1305, 1161), (1301, 1101)]

def word347_5_431 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_430

def word347_5_432 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 1161 (Flapjack.WordRegImm.reg 1165) word347_5_429 word347_5_431

def word347_5_433 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_386 word347_5_432

def word347_5_434 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_433 word347_5_4

def word347_5_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1357, 1305)]

def word347_5_436 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_434 word347_5_435

def word347_5_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1361 4#64)

def word347_5_438 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_436 word347_5_437

def word347_5_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1373, 1301)]

def word347_5_440 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_439

def word347_5_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1377, 1317)]

def word347_5_442 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_440 word347_5_441

def word347_5_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1397 12#64)

def word347_5_444 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_442 word347_5_443

def word347_5_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1401 8#64)

def word347_5_446 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_444 word347_5_445

def word347_5_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1407, 1333), (1411, 1377), (1415, 1309), (1419, 1357), (1423, 1373)]

def word347_5_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1373), (4, 1377), (6, 1401), (8, 1397)]

def word347_5_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1429, 1407), (1433, 1411), (1437, 1415), (1441, 1419), (1445, 1423)]

def word347_5_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1449, 2)]

def word347_5_451 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_449 word347_5_450

def word347_5_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1457, 1449)]

def word347_5_453 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_451 word347_5_452

def word347_5_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1453, 2)]

def word347_5_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1453)]

def word347_5_456 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_455 word347_5_14

def word347_5_457 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_454 word347_5_456

def word347_5_458 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_449 word347_5_457

def word347_5_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1457 0#64)

def word347_5_460 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_458 word347_5_459

def word347_5_461 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_453, 347, 14)) (some 339) ([2, 4, 6, 8]) (some (2, word347_5_460, 347, 15))

def word347_5_462 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_448 word347_5_461

def word347_5_463 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_447 word347_5_462

def word347_5_464 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_446 word347_5_463

def word347_5_465 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_464 word347_5_4

def word347_5_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1465, 1457)]

def word347_5_467 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_465 word347_5_466

def word347_5_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1469 0#64)

def word347_5_469 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_467 word347_5_468

def word347_5_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1473 0#64)

def word347_5_471 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_469 word347_5_470

def word347_5_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1477 0#64)

def word347_5_473 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_471 word347_5_472

def word347_5_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(1629, 1429), (1625, 1465), (1621, 1473), (1613, 1469), (1609, 1433), (1605, 1437), (1601, 1441), (1597, 1477),
    (1593, 1445)]

def word347_5_475 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_473 word347_5_474

def word347_5_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1489, 1301)]

def word347_5_477 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_476

def word347_5_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1493, 1317)]

def word347_5_479 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_477 word347_5_478

def word347_5_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1505 32#64)

def word347_5_481 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_479 word347_5_480

def word347_5_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1511, 1333), (1515, 1493), (1519, 1309), (1523, 1357), (1527, 1489)]

def word347_5_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1489), (4, 1493), (6, 1505)]

def word347_5_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1533, 1511), (1537, 1515), (1541, 1519), (1545, 1523), (1549, 1527)]

def word347_5_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1553, 2), (1557, 4), (1561, 6), (1565, 8)]

def word347_5_486 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_484 word347_5_485

def word347_5_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1573, 1565)]

def word347_5_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1577, 1557)]

def word347_5_489 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_487 word347_5_488

def word347_5_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1585, 1561)]

def word347_5_491 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_489 word347_5_490

def word347_5_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1589, 1553)]

def word347_5_493 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_491 word347_5_492

def word347_5_494 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_486 word347_5_493

def word347_5_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1569, 2)]

def word347_5_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1569)]

def word347_5_497 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_496 word347_5_14

def word347_5_498 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_495 word347_5_497

def word347_5_499 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_484 word347_5_498

def word347_5_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1573 0#64)

def word347_5_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1577 0#64)

def word347_5_502 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_500 word347_5_501

def word347_5_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1585 0#64)

def word347_5_504 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_502 word347_5_503

def word347_5_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1589 0#64)

def word347_5_506 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_504 word347_5_505

def word347_5_507 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_499 word347_5_506

def word347_5_508 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_494, 347, 16)) (some 338) ([2, 4, 6]) (some (2, word347_5_507, 347, 17))

def word347_5_509 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_483 word347_5_508

def word347_5_510 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_482 word347_5_509

def word347_5_511 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_481 word347_5_510

def word347_5_512 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_511 word347_5_4

def word347_5_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(1629, 1533), (1625, 1589), (1621, 1585), (1613, 1577), (1609, 1537), (1605, 1541), (1601, 1545), (1597, 1573),
    (1593, 1549)]

def word347_5_514 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_512 word347_5_513

def word347_5_515 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 1357 (Flapjack.WordRegImm.reg 1361) word347_5_475 word347_5_514

def word347_5_516 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_438 word347_5_515

def word347_5_517 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_516 word347_5_4

def word347_5_518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1637, 1605)]

def word347_5_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1641 1637 (Flapjack.WordRegImm.imm 16#64)))

def word347_5_520 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_518 word347_5_519

def word347_5_521 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_517 word347_5_520

def word347_5_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1645, 1625)]

def word347_5_523 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_521 word347_5_522

def word347_5_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1649, 1613)]

def word347_5_525 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_523 word347_5_524

def word347_5_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1653, 1621)]

def word347_5_527 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_525 word347_5_526

def word347_5_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1657, 1597)]

def word347_5_529 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_527 word347_5_528

def word347_5_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1661, 1645)]

def word347_5_531 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_529 word347_5_530

def word347_5_532 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1665, 1641)]

def word347_5_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1661 (Flapjack.WordLangAddr.addr 1665 0#64))

def word347_5_534 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_532 word347_5_533

def word347_5_535 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_531 word347_5_534

def word347_5_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1669, 1649)]

def word347_5_537 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_535 word347_5_536

def word347_5_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1673, 1665)]

def word347_5_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1669 (Flapjack.WordLangAddr.addr 1673 8#64))

def word347_5_540 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_538 word347_5_539

def word347_5_541 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_537 word347_5_540

def word347_5_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1677, 1653)]

def word347_5_543 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_541 word347_5_542

def word347_5_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1681, 1673)]

def word347_5_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1677 (Flapjack.WordLangAddr.addr 1681 16#64))

def word347_5_546 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_544 word347_5_545

def word347_5_547 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_543 word347_5_546

def word347_5_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1685, 1657)]

def word347_5_549 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_547 word347_5_548

def word347_5_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1689, 1681)]

def word347_5_551 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1685 (Flapjack.WordLangAddr.addr 1689 24#64))

def word347_5_552 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_550 word347_5_551

def word347_5_553 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_549 word347_5_552

def word347_5_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1693, 1609)]

def word347_5_555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1697 1693 (Flapjack.WordRegImm.imm 1#64)))

def word347_5_556 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_554 word347_5_555

def word347_5_557 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_553 word347_5_556

def word347_5_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1701, 1697)]

def word347_5_559 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_557 word347_5_558

def word347_5_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1705 1#64)

def word347_5_561 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_559 word347_5_560

def word347_5_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1709, 1601)]

def word347_5_563 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_561 word347_5_562

def word347_5_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1721, 1593)]

def word347_5_565 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_564

def word347_5_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1725, 1701)]

def word347_5_567 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_565 word347_5_566

def word347_5_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1737 0#64)

def word347_5_569 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_567 word347_5_568

def word347_5_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1743, 1629), (1747, 1725), (1751, 1637), (1755, 1709), (1759, 1721)]

def word347_5_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1721), (4, 1725), (6, 1737)]

def word347_5_572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1765, 1743), (1769, 1747), (1773, 1751), (1777, 1755), (1781, 1759)]

def word347_5_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1785, 2), (1789, 4), (1793, 6), (1797, 8)]

def word347_5_574 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_572 word347_5_573

def word347_5_575 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1805, 1797)]

def word347_5_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1809, 1789)]

def word347_5_577 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_575 word347_5_576

def word347_5_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1817, 1793)]

def word347_5_579 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_577 word347_5_578

def word347_5_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1821, 1785)]

def word347_5_581 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_579 word347_5_580

def word347_5_582 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_574 word347_5_581

def word347_5_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1801, 2)]

def word347_5_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1801)]

def word347_5_585 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_584 word347_5_14

def word347_5_586 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_583 word347_5_585

def word347_5_587 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_572 word347_5_586

def word347_5_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1805 0#64)

def word347_5_589 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1809 0#64)

def word347_5_590 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_588 word347_5_589

def word347_5_591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1817 0#64)

def word347_5_592 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_590 word347_5_591

def word347_5_593 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1821 0#64)

def word347_5_594 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_592 word347_5_593

def word347_5_595 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_587 word347_5_594

def word347_5_596 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_582, 347, 18)) (some 338) ([2, 4, 6]) (some (2, word347_5_595, 347, 19))

def word347_5_597 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_571 word347_5_596

def word347_5_598 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_570 word347_5_597

def word347_5_599 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_569 word347_5_598

def word347_5_600 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_599 word347_5_4

def word347_5_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1825, 1773)]

def word347_5_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1829 1825 (Flapjack.WordRegImm.imm 48#64)))

def word347_5_603 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_601 word347_5_602

def word347_5_604 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_600 word347_5_603

def word347_5_605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1833, 1821)]

def word347_5_606 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_604 word347_5_605

def word347_5_607 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1837, 1809)]

def word347_5_608 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_606 word347_5_607

def word347_5_609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1841, 1817)]

def word347_5_610 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_608 word347_5_609

def word347_5_611 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1845, 1805)]

def word347_5_612 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_610 word347_5_611

def word347_5_613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1849, 1833)]

def word347_5_614 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_612 word347_5_613

def word347_5_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1853, 1829)]

def word347_5_616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1849 (Flapjack.WordLangAddr.addr 1853 0#64))

def word347_5_617 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_615 word347_5_616

def word347_5_618 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_614 word347_5_617

def word347_5_619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1857, 1837)]

def word347_5_620 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_618 word347_5_619

def word347_5_621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1861, 1853)]

def word347_5_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1857 (Flapjack.WordLangAddr.addr 1861 8#64))

def word347_5_623 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_621 word347_5_622

def word347_5_624 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_620 word347_5_623

def word347_5_625 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1865, 1841)]

def word347_5_626 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_624 word347_5_625

def word347_5_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1869, 1861)]

def word347_5_628 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1865 (Flapjack.WordLangAddr.addr 1869 16#64))

def word347_5_629 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_627 word347_5_628

def word347_5_630 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_626 word347_5_629

def word347_5_631 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1873, 1845)]

def word347_5_632 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_630 word347_5_631

def word347_5_633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1877, 1869)]

def word347_5_634 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1873 (Flapjack.WordLangAddr.addr 1877 24#64))

def word347_5_635 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_633 word347_5_634

def word347_5_636 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_632 word347_5_635

def word347_5_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1881, 1769)]

def word347_5_638 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1885 1881 (Flapjack.WordRegImm.imm 1#64)))

def word347_5_639 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_637 word347_5_638

def word347_5_640 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_636 word347_5_639

def word347_5_641 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1889, 1885)]

def word347_5_642 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_640 word347_5_641

def word347_5_643 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2293, 1765), (2253, 1889), (2249, 1825), (2245, 1777), (2237, 1781)]

def word347_5_644 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_642 word347_5_643

def word347_5_645 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1901, 1593)]

def word347_5_646 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_645

def word347_5_647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1905, 1701)]

def word347_5_648 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_646 word347_5_647

def word347_5_649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1917 0#64)

def word347_5_650 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_648 word347_5_649

def word347_5_651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1923, 1629), (1927, 1905), (1931, 1637), (1935, 1709), (1939, 1901)]

def word347_5_652 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1901), (4, 1905), (6, 1917)]

def word347_5_653 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1945, 1923), (1949, 1927), (1953, 1931), (1957, 1935), (1961, 1939)]

def word347_5_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1965, 2), (1969, 4), (1973, 6), (1977, 8)]

def word347_5_655 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_653 word347_5_654

def word347_5_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1985, 1977)]

def word347_5_657 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1989, 1969)]

def word347_5_658 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_656 word347_5_657

def word347_5_659 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1997, 1973)]

def word347_5_660 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_658 word347_5_659

def word347_5_661 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2001, 1965)]

def word347_5_662 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_660 word347_5_661

def word347_5_663 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_655 word347_5_662

def word347_5_664 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1981, 2)]

def word347_5_665 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1981)]

def word347_5_666 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_665 word347_5_14

def word347_5_667 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_664 word347_5_666

def word347_5_668 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_653 word347_5_667

def word347_5_669 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1985 0#64)

def word347_5_670 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1989 0#64)

def word347_5_671 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_669 word347_5_670

def word347_5_672 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1997 0#64)

def word347_5_673 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_671 word347_5_672

def word347_5_674 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2001 0#64)

def word347_5_675 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_673 word347_5_674

def word347_5_676 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_668 word347_5_675

def word347_5_677 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_663, 347, 20)) (some 338) ([2, 4, 6]) (some (2, word347_5_676, 347, 21))

def word347_5_678 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_652 word347_5_677

def word347_5_679 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_651 word347_5_678

def word347_5_680 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_650 word347_5_679

def word347_5_681 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_680 word347_5_4

def word347_5_682 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2005, 1953)]

def word347_5_683 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2009 2005 (Flapjack.WordRegImm.imm 80#64)))

def word347_5_684 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_682 word347_5_683

def word347_5_685 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_681 word347_5_684

def word347_5_686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2013, 2001)]

def word347_5_687 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_685 word347_5_686

def word347_5_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2017, 1989)]

def word347_5_689 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_687 word347_5_688

def word347_5_690 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2021, 1997)]

def word347_5_691 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_689 word347_5_690

def word347_5_692 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2025, 1985)]

def word347_5_693 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_691 word347_5_692

def word347_5_694 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2029, 2013)]

def word347_5_695 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_693 word347_5_694

def word347_5_696 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2033, 2009)]

def word347_5_697 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2029 (Flapjack.WordLangAddr.addr 2033 0#64))

def word347_5_698 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_696 word347_5_697

def word347_5_699 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_695 word347_5_698

def word347_5_700 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2037, 2017)]

def word347_5_701 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_699 word347_5_700

def word347_5_702 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2041, 2033)]

def word347_5_703 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2037 (Flapjack.WordLangAddr.addr 2041 8#64))

def word347_5_704 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_702 word347_5_703

def word347_5_705 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_701 word347_5_704

def word347_5_706 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2045, 2021)]

def word347_5_707 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_705 word347_5_706

def word347_5_708 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2049, 2041)]

def word347_5_709 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2045 (Flapjack.WordLangAddr.addr 2049 16#64))

def word347_5_710 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_708 word347_5_709

def word347_5_711 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_707 word347_5_710

def word347_5_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2053, 2025)]

def word347_5_713 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_711 word347_5_712

def word347_5_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2057, 2049)]

def word347_5_715 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2053 (Flapjack.WordLangAddr.addr 2057 24#64))

def word347_5_716 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_714 word347_5_715

def word347_5_717 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_713 word347_5_716

def word347_5_718 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2061, 1961)]

def word347_5_719 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_717 word347_5_718

def word347_5_720 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2065, 1949)]

def word347_5_721 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2069 2065 (Flapjack.WordRegImm.imm 1#64)))

def word347_5_722 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_720 word347_5_721

def word347_5_723 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_719 word347_5_722

def word347_5_724 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2081 0#64)

def word347_5_725 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_723 word347_5_724

def word347_5_726 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2087, 1945), (2091, 2065), (2095, 2005), (2099, 1957), (2103, 2061)]

def word347_5_727 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2061), (4, 2069), (6, 2081)]

def word347_5_728 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2109, 2087), (2113, 2091), (2117, 2095), (2121, 2099), (2125, 2103)]

def word347_5_729 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2129, 2), (2133, 4), (2137, 6), (2141, 8)]

def word347_5_730 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_728 word347_5_729

def word347_5_731 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2149, 2141)]

def word347_5_732 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2153, 2133)]

def word347_5_733 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_731 word347_5_732

def word347_5_734 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2161, 2137)]

def word347_5_735 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_733 word347_5_734

def word347_5_736 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2165, 2129)]

def word347_5_737 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_735 word347_5_736

def word347_5_738 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_730 word347_5_737

def word347_5_739 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2145, 2)]

def word347_5_740 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2145)]

def word347_5_741 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_740 word347_5_14

def word347_5_742 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_739 word347_5_741

def word347_5_743 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_728 word347_5_742

def word347_5_744 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2149 0#64)

def word347_5_745 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2153 0#64)

def word347_5_746 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_744 word347_5_745

def word347_5_747 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2161 0#64)

def word347_5_748 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_746 word347_5_747

def word347_5_749 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2165 0#64)

def word347_5_750 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_748 word347_5_749

def word347_5_751 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_743 word347_5_750

def word347_5_752 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_738, 347, 22)) (some 338) ([2, 4, 6]) (some (2, word347_5_751, 347, 23))

def word347_5_753 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_727 word347_5_752

def word347_5_754 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_726 word347_5_753

def word347_5_755 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_725 word347_5_754

def word347_5_756 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_755 word347_5_4

def word347_5_757 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2169, 2117)]

def word347_5_758 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2173 2169 (Flapjack.WordRegImm.imm 112#64)))

def word347_5_759 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_757 word347_5_758

def word347_5_760 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_756 word347_5_759

def word347_5_761 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2177, 2165)]

def word347_5_762 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_760 word347_5_761

def word347_5_763 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2181, 2153)]

def word347_5_764 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_762 word347_5_763

def word347_5_765 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2185, 2161)]

def word347_5_766 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_764 word347_5_765

def word347_5_767 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2189, 2149)]

def word347_5_768 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_766 word347_5_767

def word347_5_769 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2193, 2177)]

def word347_5_770 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_768 word347_5_769

def word347_5_771 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2197, 2173)]

def word347_5_772 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2193 (Flapjack.WordLangAddr.addr 2197 0#64))

def word347_5_773 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_771 word347_5_772

def word347_5_774 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_770 word347_5_773

def word347_5_775 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2201, 2181)]

def word347_5_776 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_774 word347_5_775

def word347_5_777 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2205, 2197)]

def word347_5_778 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2201 (Flapjack.WordLangAddr.addr 2205 8#64))

def word347_5_779 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_777 word347_5_778

def word347_5_780 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_776 word347_5_779

def word347_5_781 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2209, 2185)]

def word347_5_782 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_780 word347_5_781

def word347_5_783 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2213, 2205)]

def word347_5_784 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2209 (Flapjack.WordLangAddr.addr 2213 16#64))

def word347_5_785 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_783 word347_5_784

def word347_5_786 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_782 word347_5_785

def word347_5_787 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2217, 2189)]

def word347_5_788 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_786 word347_5_787

def word347_5_789 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2221, 2213)]

def word347_5_790 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2217 (Flapjack.WordLangAddr.addr 2221 24#64))

def word347_5_791 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_789 word347_5_790

def word347_5_792 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_788 word347_5_791

def word347_5_793 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2225, 2113)]

def word347_5_794 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2229 2225 (Flapjack.WordRegImm.imm 2#64)))

def word347_5_795 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_793 word347_5_794

def word347_5_796 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_792 word347_5_795

def word347_5_797 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2233, 2229)]

def word347_5_798 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_796 word347_5_797

def word347_5_799 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2293, 2109), (2253, 2233), (2249, 2169), (2245, 2121), (2237, 2125)]

def word347_5_800 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_798 word347_5_799

def word347_5_801 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 1705 (Flapjack.WordRegImm.reg 1709) word347_5_644 word347_5_800

def word347_5_802 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_563 word347_5_801

def word347_5_803 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_802 word347_5_4

def word347_5_804 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2301, 2237)]

def word347_5_805 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_803 word347_5_804

def word347_5_806 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2305, 2253)]

def word347_5_807 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_805 word347_5_806

def word347_5_808 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2317 14#64)

def word347_5_809 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_807 word347_5_808

def word347_5_810 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2321 0#64)

def word347_5_811 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_809 word347_5_810

def word347_5_812 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2327, 2293), (2331, 2305), (2335, 2249), (2339, 2245), (2343, 2301)]

def word347_5_813 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2301), (4, 2305), (6, 2321), (8, 2317)]

def word347_5_814 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2349, 2327), (2353, 2331), (2357, 2335), (2361, 2339), (2365, 2343)]

def word347_5_815 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2369, 2)]

def word347_5_816 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_814 word347_5_815

def word347_5_817 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2377, 2369)]

def word347_5_818 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_816 word347_5_817

def word347_5_819 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2373, 2)]

def word347_5_820 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2373)]

def word347_5_821 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_820 word347_5_14

def word347_5_822 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_819 word347_5_821

def word347_5_823 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_814 word347_5_822

def word347_5_824 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2377 0#64)

def word347_5_825 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_823 word347_5_824

def word347_5_826 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_818, 347, 24)) (some 339) ([2, 4, 6, 8]) (some (2, word347_5_825, 347, 25))

def word347_5_827 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_813 word347_5_826

def word347_5_828 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_812 word347_5_827

def word347_5_829 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_811 word347_5_828

def word347_5_830 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_829 word347_5_4

def word347_5_831 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2385, 2357)]

def word347_5_832 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2389 2385 (Flapjack.WordRegImm.imm 144#64)))

def word347_5_833 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_831 word347_5_832

def word347_5_834 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_830 word347_5_833

def word347_5_835 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2393, 2377)]

def word347_5_836 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_834 word347_5_835

def word347_5_837 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2397, 2393)]

def word347_5_838 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_836 word347_5_837

def word347_5_839 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2401, 2389)]

def word347_5_840 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2397 (Flapjack.WordLangAddr.addr 2401 0#64))

def word347_5_841 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_839 word347_5_840

def word347_5_842 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_838 word347_5_841

def word347_5_843 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2405, 2353)]

def word347_5_844 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2409 2405 (Flapjack.WordRegImm.imm 1#64)))

def word347_5_845 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_843 word347_5_844

def word347_5_846 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_842 word347_5_845

def word347_5_847 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2413, 2409)]

def word347_5_848 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_846 word347_5_847

def word347_5_849 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2417, 2361)]

def word347_5_850 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_848 word347_5_849

def word347_5_851 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2421 3#64)

def word347_5_852 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_850 word347_5_851

def word347_5_853 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2433, 2365)]

def word347_5_854 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_853

def word347_5_855 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2437, 2413)]

def word347_5_856 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_854 word347_5_855

def word347_5_857 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2449 20#64)

def word347_5_858 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_856 word347_5_857

def word347_5_859 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2455, 2349), (2459, 2437), (2463, 2385), (2467, 2417), (2471, 2433)]

def word347_5_860 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2433), (4, 2437), (6, 2449)]

def word347_5_861 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2477, 2455), (2481, 2459), (2485, 2463), (2489, 2467), (2493, 2471)]

def word347_5_862 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2497, 2)]

def word347_5_863 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_861 word347_5_862

def word347_5_864 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2505, 2497)]

def word347_5_865 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_863 word347_5_864

def word347_5_866 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2501, 2)]

def word347_5_867 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2501)]

def word347_5_868 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_867 word347_5_14

def word347_5_869 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_866 word347_5_868

def word347_5_870 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_861 word347_5_869

def word347_5_871 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2505 0#64)

def word347_5_872 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_870 word347_5_871

def word347_5_873 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_865, 347, 26)) (some 341) ([2, 4, 6]) (some (2, word347_5_872, 347, 27))

def word347_5_874 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_860 word347_5_873

def word347_5_875 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_859 word347_5_874

def word347_5_876 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_858 word347_5_875

def word347_5_877 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_876 word347_5_4

def word347_5_878 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2613, 2477), (2605, 2481), (2601, 2505), (2597, 2485), (2593, 2489), (2589, 2493)]

def word347_5_879 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_877 word347_5_878

def word347_5_880 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2521, 2365)]

def word347_5_881 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_880

def word347_5_882 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2525, 2413)]

def word347_5_883 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_881 word347_5_882

def word347_5_884 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2531, 2349), (2535, 2525), (2539, 2385), (2543, 2417), (2547, 2521)]

def word347_5_885 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2521), (4, 2525)]

def word347_5_886 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2553, 2531), (2557, 2535), (2561, 2539), (2565, 2543), (2569, 2547)]

def word347_5_887 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2573, 2)]

def word347_5_888 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_886 word347_5_887

def word347_5_889 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2581, 2573)]

def word347_5_890 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_888 word347_5_889

def word347_5_891 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2577, 2)]

def word347_5_892 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2577)]

def word347_5_893 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_892 word347_5_14

def word347_5_894 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_891 word347_5_893

def word347_5_895 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_886 word347_5_894

def word347_5_896 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2581 0#64)

def word347_5_897 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_895 word347_5_896

def word347_5_898 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_890, 347, 28)) (some 342) ([2, 4]) (some (2, word347_5_897, 347, 29))

def word347_5_899 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_885 word347_5_898

def word347_5_900 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_884 word347_5_899

def word347_5_901 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_883 word347_5_900

def word347_5_902 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_901 word347_5_4

def word347_5_903 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2613, 2553), (2605, 2557), (2601, 2581), (2597, 2561), (2593, 2565), (2589, 2569)]

def word347_5_904 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_902 word347_5_903

def word347_5_905 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2417 (Flapjack.WordRegImm.reg 2421) word347_5_879 word347_5_904

def word347_5_906 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_852 word347_5_905

def word347_5_907 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_906 word347_5_4

def word347_5_908 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2617, 2597)]

def word347_5_909 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2621 2617 (Flapjack.WordRegImm.imm 152#64)))

def word347_5_910 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_908 word347_5_909

def word347_5_911 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_907 word347_5_910

def word347_5_912 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2625, 2601)]

def word347_5_913 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_911 word347_5_912

def word347_5_914 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2629, 2625)]

def word347_5_915 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_913 word347_5_914

def word347_5_916 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2633, 2621)]

def word347_5_917 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2629 (Flapjack.WordLangAddr.addr 2633 0#64))

def word347_5_918 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_916 word347_5_917

def word347_5_919 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_915 word347_5_918

def word347_5_920 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2637, 2605)]

def word347_5_921 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2641 2637 (Flapjack.WordRegImm.imm 1#64)))

def word347_5_922 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_920 word347_5_921

def word347_5_923 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_919 word347_5_922

def word347_5_924 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2645, 2641)]

def word347_5_925 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_923 word347_5_924

def word347_5_926 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2649, 2589)]

def word347_5_927 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_925 word347_5_926

def word347_5_928 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2653, 2645)]

def word347_5_929 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_927 word347_5_928

def word347_5_930 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2661 32#64)

def word347_5_931 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_929 word347_5_930

def word347_5_932 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2667, 2613), (2671, 2653), (2675, 2617), (2679, 2593), (2683, 2649)]

def word347_5_933 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2649), (4, 2653), (6, 2661)]

def word347_5_934 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2689, 2667), (2693, 2671), (2697, 2675), (2701, 2679), (2705, 2683)]

def word347_5_935 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2709, 2), (2713, 4), (2717, 6), (2721, 8)]

def word347_5_936 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_934 word347_5_935

def word347_5_937 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2729, 2721)]

def word347_5_938 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2733, 2713)]

def word347_5_939 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_937 word347_5_938

def word347_5_940 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2741, 2717)]

def word347_5_941 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_939 word347_5_940

def word347_5_942 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2745, 2709)]

def word347_5_943 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_941 word347_5_942

def word347_5_944 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_936 word347_5_943

def word347_5_945 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2725, 2)]

def word347_5_946 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2725)]

def word347_5_947 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_946 word347_5_14

def word347_5_948 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_945 word347_5_947

def word347_5_949 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_934 word347_5_948

def word347_5_950 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2729 0#64)

def word347_5_951 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2733 0#64)

def word347_5_952 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_950 word347_5_951

def word347_5_953 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2741 0#64)

def word347_5_954 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_952 word347_5_953

def word347_5_955 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2745 0#64)

def word347_5_956 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_954 word347_5_955

def word347_5_957 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_949 word347_5_956

def word347_5_958 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_944, 347, 30)) (some 338) ([2, 4, 6]) (some (2, word347_5_957, 347, 31))

def word347_5_959 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_933 word347_5_958

def word347_5_960 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_932 word347_5_959

def word347_5_961 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_931 word347_5_960

def word347_5_962 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_961 word347_5_4

def word347_5_963 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2749, 2697)]

def word347_5_964 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2753 2749 (Flapjack.WordRegImm.imm 160#64)))

def word347_5_965 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_963 word347_5_964

def word347_5_966 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_962 word347_5_965

def word347_5_967 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2757, 2745)]

def word347_5_968 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_966 word347_5_967

def word347_5_969 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2761, 2733)]

def word347_5_970 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_968 word347_5_969

def word347_5_971 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2765, 2741)]

def word347_5_972 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_970 word347_5_971

def word347_5_973 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2769, 2729)]

def word347_5_974 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_972 word347_5_973

def word347_5_975 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2773, 2757)]

def word347_5_976 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_974 word347_5_975

def word347_5_977 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2777, 2753)]

def word347_5_978 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2773 (Flapjack.WordLangAddr.addr 2777 0#64))

def word347_5_979 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_977 word347_5_978

def word347_5_980 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_976 word347_5_979

def word347_5_981 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2781, 2761)]

def word347_5_982 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_980 word347_5_981

def word347_5_983 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2785, 2777)]

def word347_5_984 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2781 (Flapjack.WordLangAddr.addr 2785 8#64))

def word347_5_985 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_983 word347_5_984

def word347_5_986 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_982 word347_5_985

def word347_5_987 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2789, 2765)]

def word347_5_988 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_986 word347_5_987

def word347_5_989 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2793, 2785)]

def word347_5_990 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2789 (Flapjack.WordLangAddr.addr 2793 16#64))

def word347_5_991 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_989 word347_5_990

def word347_5_992 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_988 word347_5_991

def word347_5_993 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2797, 2769)]

def word347_5_994 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_992 word347_5_993

def word347_5_995 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2801, 2793)]

def word347_5_996 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2797 (Flapjack.WordLangAddr.addr 2801 24#64))

def word347_5_997 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_995 word347_5_996

def word347_5_998 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_994 word347_5_997

def word347_5_999 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2805, 2693)]

def word347_5_1000 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2809 2805 (Flapjack.WordRegImm.imm 1#64)))

def word347_5_1001 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_999 word347_5_1000

def word347_5_1002 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_998 word347_5_1001

def word347_5_1003 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2813, 2809)]

def word347_5_1004 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1002 word347_5_1003

def word347_5_1005 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2817, 2705)]

def word347_5_1006 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1004 word347_5_1005

def word347_5_1007 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2821, 2813)]

def word347_5_1008 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1006 word347_5_1007

def word347_5_1009 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2827, 2689), (2831, 2821), (2835, 2749), (2839, 2701), (2843, 2817)]

def word347_5_1010 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2817), (4, 2821)]

def word347_5_1011 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2849, 2827), (2853, 2831), (2857, 2835), (2861, 2839), (2865, 2843)]

def word347_5_1012 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2869, 2), (2873, 4)]

def word347_5_1013 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1011 word347_5_1012

def word347_5_1014 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2881, 2873)]

def word347_5_1015 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2889, 2869)]

def word347_5_1016 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1014 word347_5_1015

def word347_5_1017 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1013 word347_5_1016

def word347_5_1018 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2877, 2)]

def word347_5_1019 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2877)]

def word347_5_1020 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1019 word347_5_14

def word347_5_1021 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1018 word347_5_1020

def word347_5_1022 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1011 word347_5_1021

def word347_5_1023 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2881 0#64)

def word347_5_1024 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2889 0#64)

def word347_5_1025 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1023 word347_5_1024

def word347_5_1026 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1022 word347_5_1025

def word347_5_1027 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_1017, 347, 32)) (some 340) ([2, 4]) (some (2, word347_5_1026, 347, 33))

def word347_5_1028 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1010 word347_5_1027

def word347_5_1029 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1009 word347_5_1028

def word347_5_1030 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1008 word347_5_1029

def word347_5_1031 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1030 word347_5_4

def word347_5_1032 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2893, 2857)]

def word347_5_1033 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2897 2893 (Flapjack.WordRegImm.imm 192#64)))

def word347_5_1034 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1032 word347_5_1033

def word347_5_1035 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1031 word347_5_1034

def word347_5_1036 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2901, 2889)]

def word347_5_1037 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1035 word347_5_1036

def word347_5_1038 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2905, 2901)]

def word347_5_1039 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1037 word347_5_1038

def word347_5_1040 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2909, 2897)]

def word347_5_1041 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2905 (Flapjack.WordLangAddr.addr 2909 0#64))

def word347_5_1042 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1040 word347_5_1041

def word347_5_1043 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1039 word347_5_1042

def word347_5_1044 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2913, 2893)]

def word347_5_1045 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2917 2913 (Flapjack.WordRegImm.imm 200#64)))

def word347_5_1046 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1044 word347_5_1045

def word347_5_1047 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1043 word347_5_1046

def word347_5_1048 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2921, 2881)]

def word347_5_1049 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1047 word347_5_1048

def word347_5_1050 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2925, 2921)]

def word347_5_1051 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1049 word347_5_1050

def word347_5_1052 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2929, 2917)]

def word347_5_1053 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2925 (Flapjack.WordLangAddr.addr 2929 0#64))

def word347_5_1054 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1052 word347_5_1053

def word347_5_1055 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1051 word347_5_1054

def word347_5_1056 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2933, 2853)]

def word347_5_1057 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2937 2933 (Flapjack.WordRegImm.imm 1#64)))

def word347_5_1058 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1056 word347_5_1057

def word347_5_1059 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1055 word347_5_1058

def word347_5_1060 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2941, 2937)]

def word347_5_1061 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1059 word347_5_1060

def word347_5_1062 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2945, 2861)]

def word347_5_1063 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1061 word347_5_1062

def word347_5_1064 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2949 0#64)

def word347_5_1065 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1063 word347_5_1064

def word347_5_1066 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2961, 2865)]

def word347_5_1067 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_1066

def word347_5_1068 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2965, 2941)]

def word347_5_1069 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1067 word347_5_1068

def word347_5_1070 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2971, 2849), (2975, 2965), (2979, 2913), (2983, 2945), (2987, 2961)]

def word347_5_1071 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2961), (4, 2965)]

def word347_5_1072 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2993, 2971), (2997, 2975), (3001, 2979), (3005, 2983), (3009, 2987)]

def word347_5_1073 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3013, 2), (3017, 4)]

def word347_5_1074 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1072 word347_5_1073

def word347_5_1075 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3025, 3017)]

def word347_5_1076 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3033, 3013)]

def word347_5_1077 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1075 word347_5_1076

def word347_5_1078 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1074 word347_5_1077

def word347_5_1079 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3021, 2)]

def word347_5_1080 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3021)]

def word347_5_1081 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1080 word347_5_14

def word347_5_1082 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1079 word347_5_1081

def word347_5_1083 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1072 word347_5_1082

def word347_5_1084 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3025 0#64)

def word347_5_1085 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3033 0#64)

def word347_5_1086 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1084 word347_5_1085

def word347_5_1087 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1083 word347_5_1086

def word347_5_1088 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_1078, 347, 34)) (some 343) ([2, 4]) (some (2, word347_5_1087, 347, 35))

def word347_5_1089 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1071 word347_5_1088

def word347_5_1090 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1070 word347_5_1089

def word347_5_1091 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1069 word347_5_1090

def word347_5_1092 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1091 word347_5_4

def word347_5_1093 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3037, 3033)]

def word347_5_1094 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1092 word347_5_1093

def word347_5_1095 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3041, 3025)]

def word347_5_1096 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1094 word347_5_1095

def word347_5_1097 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3047, 2993), (3051, 2997), (3055, 3001), (3059, 3005), (3063, 3009)]

def word347_5_1098 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3037), (4, 3041)]

def word347_5_1099 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3069, 3047), (3073, 3051), (3077, 3055), (3081, 3059), (3085, 3063)]

def word347_5_1100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3089, 2), (3093, 4)]

def word347_5_1101 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1099 word347_5_1100

def word347_5_1102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3105, 3089)]

def word347_5_1103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3109, 3093)]

def word347_5_1104 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1102 word347_5_1103

def word347_5_1105 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1101 word347_5_1104

def word347_5_1106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3097, 2)]

def word347_5_1107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3097)]

def word347_5_1108 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1107 word347_5_14

def word347_5_1109 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1106 word347_5_1108

def word347_5_1110 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1099 word347_5_1109

def word347_5_1111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3105 0#64)

def word347_5_1112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3109 0#64)

def word347_5_1113 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1111 word347_5_1112

def word347_5_1114 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1110 word347_5_1113

def word347_5_1115 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_1105, 347, 36)) (some 344) ([2, 4]) (some (2, word347_5_1114, 347, 37))

def word347_5_1116 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1098 word347_5_1115

def word347_5_1117 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1097 word347_5_1116

def word347_5_1118 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1096 word347_5_1117

def word347_5_1119 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1118 word347_5_4

def word347_5_1120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3113, 3077)]

def word347_5_1121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3117 3113 (Flapjack.WordRegImm.imm 208#64)))

def word347_5_1122 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1120 word347_5_1121

def word347_5_1123 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1119 word347_5_1122

def word347_5_1124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3121, 3105)]

def word347_5_1125 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1123 word347_5_1124

def word347_5_1126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3125, 3121)]

def word347_5_1127 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1125 word347_5_1126

def word347_5_1128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3129, 3117)]

def word347_5_1129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3125 (Flapjack.WordLangAddr.addr 3129 0#64))

def word347_5_1130 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1128 word347_5_1129

def word347_5_1131 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1127 word347_5_1130

def word347_5_1132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3133, 3113)]

def word347_5_1133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3137 3133 (Flapjack.WordRegImm.imm 216#64)))

def word347_5_1134 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1132 word347_5_1133

def word347_5_1135 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1131 word347_5_1134

def word347_5_1136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3141, 3109)]

def word347_5_1137 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1135 word347_5_1136

def word347_5_1138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3145, 3141)]

def word347_5_1139 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1137 word347_5_1138

def word347_5_1140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3149, 3137)]

def word347_5_1141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3145 (Flapjack.WordLangAddr.addr 3149 0#64))

def word347_5_1142 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1140 word347_5_1141

def word347_5_1143 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1139 word347_5_1142

def word347_5_1144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3153, 3073)]

def word347_5_1145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3157 3153 (Flapjack.WordRegImm.imm 1#64)))

def word347_5_1146 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1144 word347_5_1145

def word347_5_1147 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1143 word347_5_1146

def word347_5_1148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3161, 3157)]

def word347_5_1149 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1147 word347_5_1148

def word347_5_1150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3197, 3069), (3185, 3161), (3181, 3133), (3177, 3081), (3173, 3085)]

def word347_5_1151 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1149 word347_5_1150

def word347_5_1152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3197, 2849), (3185, 2941), (3181, 2913), (3177, 2945), (3173, 2865)]

def word347_5_1153 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_1152

def word347_5_1154 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2945 (Flapjack.WordRegImm.reg 2949) word347_5_1151 word347_5_1153

def word347_5_1155 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1065 word347_5_1154

def word347_5_1156 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1155 word347_5_4

def word347_5_1157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3233, 3177)]

def word347_5_1158 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1156 word347_5_1157

def word347_5_1159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3237 3#64)

def word347_5_1160 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1158 word347_5_1159

def word347_5_1161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3249, 3173)]

def word347_5_1162 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_1161

def word347_5_1163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3253, 3185)]

def word347_5_1164 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1162 word347_5_1163

def word347_5_1165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3265 32#64)

def word347_5_1166 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1164 word347_5_1165

def word347_5_1167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3271, 3197), (3275, 3253), (3279, 3181), (3283, 3233), (3287, 3249)]

def word347_5_1168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3249), (4, 3253), (6, 3265)]

def word347_5_1169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3293, 3271), (3297, 3275), (3301, 3279), (3305, 3283), (3309, 3287)]

def word347_5_1170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3313, 2), (3317, 4), (3321, 6), (3325, 8)]

def word347_5_1171 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1169 word347_5_1170

def word347_5_1172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3333, 3325)]

def word347_5_1173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3337, 3317)]

def word347_5_1174 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1172 word347_5_1173

def word347_5_1175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3345, 3321)]

def word347_5_1176 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1174 word347_5_1175

def word347_5_1177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3349, 3313)]

def word347_5_1178 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1176 word347_5_1177

def word347_5_1179 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1171 word347_5_1178

def word347_5_1180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3329, 2)]

def word347_5_1181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3329)]

def word347_5_1182 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1181 word347_5_14

def word347_5_1183 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1180 word347_5_1182

def word347_5_1184 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1169 word347_5_1183

def word347_5_1185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3333 0#64)

def word347_5_1186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3337 0#64)

def word347_5_1187 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1185 word347_5_1186

def word347_5_1188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3345 0#64)

def word347_5_1189 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1187 word347_5_1188

def word347_5_1190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3349 0#64)

def word347_5_1191 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1189 word347_5_1190

def word347_5_1192 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1184 word347_5_1191

def word347_5_1193 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_1179, 347, 38)) (some 338) ([2, 4, 6]) (some (2, word347_5_1192, 347, 39))

def word347_5_1194 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1168 word347_5_1193

def word347_5_1195 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1167 word347_5_1194

def word347_5_1196 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1166 word347_5_1195

def word347_5_1197 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1196 word347_5_4

def word347_5_1198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3353, 3301)]

def word347_5_1199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3357 3353 (Flapjack.WordRegImm.imm 224#64)))

def word347_5_1200 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1198 word347_5_1199

def word347_5_1201 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1197 word347_5_1200

def word347_5_1202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3361, 3349)]

def word347_5_1203 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1201 word347_5_1202

def word347_5_1204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3365, 3337)]

def word347_5_1205 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1203 word347_5_1204

def word347_5_1206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3369, 3345)]

def word347_5_1207 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1205 word347_5_1206

def word347_5_1208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3373, 3333)]

def word347_5_1209 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1207 word347_5_1208

def word347_5_1210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3377, 3361)]

def word347_5_1211 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1209 word347_5_1210

def word347_5_1212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3381, 3357)]

def word347_5_1213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3377 (Flapjack.WordLangAddr.addr 3381 0#64))

def word347_5_1214 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1212 word347_5_1213

def word347_5_1215 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1211 word347_5_1214

def word347_5_1216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3385, 3365)]

def word347_5_1217 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1215 word347_5_1216

def word347_5_1218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3389, 3381)]

def word347_5_1219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3385 (Flapjack.WordLangAddr.addr 3389 8#64))

def word347_5_1220 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1218 word347_5_1219

def word347_5_1221 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1217 word347_5_1220

def word347_5_1222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3393, 3369)]

def word347_5_1223 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1221 word347_5_1222

def word347_5_1224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3397, 3389)]

def word347_5_1225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3393 (Flapjack.WordLangAddr.addr 3397 16#64))

def word347_5_1226 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1224 word347_5_1225

def word347_5_1227 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1223 word347_5_1226

def word347_5_1228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3401, 3373)]

def word347_5_1229 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1227 word347_5_1228

def word347_5_1230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3405, 3397)]

def word347_5_1231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3401 (Flapjack.WordLangAddr.addr 3405 24#64))

def word347_5_1232 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1230 word347_5_1231

def word347_5_1233 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1229 word347_5_1232

def word347_5_1234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3409, 3309)]

def word347_5_1235 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1233 word347_5_1234

def word347_5_1236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3413, 3297)]

def word347_5_1237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3417 3413 (Flapjack.WordRegImm.imm 1#64)))

def word347_5_1238 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1236 word347_5_1237

def word347_5_1239 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1235 word347_5_1238

def word347_5_1240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3423, 3293), (3427, 3413), (3431, 3353), (3435, 3305), (3439, 3409)]

def word347_5_1241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3409), (4, 3417)]

def word347_5_1242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3445, 3423), (3449, 3427), (3453, 3431), (3457, 3435), (3461, 3439)]

def word347_5_1243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3465, 2), (3469, 4)]

def word347_5_1244 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1242 word347_5_1243

def word347_5_1245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3477, 3469)]

def word347_5_1246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3485, 3465)]

def word347_5_1247 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1245 word347_5_1246

def word347_5_1248 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1244 word347_5_1247

def word347_5_1249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3473, 2)]

def word347_5_1250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3473)]

def word347_5_1251 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1250 word347_5_14

def word347_5_1252 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1249 word347_5_1251

def word347_5_1253 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1242 word347_5_1252

def word347_5_1254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3477 0#64)

def word347_5_1255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3485 0#64)

def word347_5_1256 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1254 word347_5_1255

def word347_5_1257 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1253 word347_5_1256

def word347_5_1258 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_1248, 347, 40)) (some 343) ([2, 4]) (some (2, word347_5_1257, 347, 41))

def word347_5_1259 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1241 word347_5_1258

def word347_5_1260 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1240 word347_5_1259

def word347_5_1261 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1239 word347_5_1260

def word347_5_1262 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1261 word347_5_4

def word347_5_1263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3489, 3485)]

def word347_5_1264 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1262 word347_5_1263

def word347_5_1265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3493, 3477)]

def word347_5_1266 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1264 word347_5_1265

def word347_5_1267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3499, 3445), (3503, 3449), (3507, 3453), (3511, 3457), (3515, 3461)]

def word347_5_1268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3489), (4, 3493)]

def word347_5_1269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3521, 3499), (3525, 3503), (3529, 3507), (3533, 3511), (3537, 3515)]

def word347_5_1270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3541, 2), (3545, 4)]

def word347_5_1271 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1269 word347_5_1270

def word347_5_1272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3557, 3541)]

def word347_5_1273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3561, 3545)]

def word347_5_1274 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1272 word347_5_1273

def word347_5_1275 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1271 word347_5_1274

def word347_5_1276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3549, 2)]

def word347_5_1277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3549)]

def word347_5_1278 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1277 word347_5_14

def word347_5_1279 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1276 word347_5_1278

def word347_5_1280 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1269 word347_5_1279

def word347_5_1281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3557 0#64)

def word347_5_1282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3561 0#64)

def word347_5_1283 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1281 word347_5_1282

def word347_5_1284 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1280 word347_5_1283

def word347_5_1285 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_1275, 347, 42)) (some 345) ([2, 4]) (some (2, word347_5_1284, 347, 43))

def word347_5_1286 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1268 word347_5_1285

def word347_5_1287 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1267 word347_5_1286

def word347_5_1288 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1266 word347_5_1287

def word347_5_1289 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1288 word347_5_4

def word347_5_1290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3565, 3529)]

def word347_5_1291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3569 3565 (Flapjack.WordRegImm.imm 256#64)))

def word347_5_1292 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1290 word347_5_1291

def word347_5_1293 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1289 word347_5_1292

def word347_5_1294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3573, 3557)]

def word347_5_1295 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1293 word347_5_1294

def word347_5_1296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3577, 3573)]

def word347_5_1297 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1295 word347_5_1296

def word347_5_1298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3581, 3569)]

def word347_5_1299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3577 (Flapjack.WordLangAddr.addr 3581 0#64))

def word347_5_1300 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1298 word347_5_1299

def word347_5_1301 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1297 word347_5_1300

def word347_5_1302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3585, 3565)]

def word347_5_1303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3589 3585 (Flapjack.WordRegImm.imm 264#64)))

def word347_5_1304 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1302 word347_5_1303

def word347_5_1305 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1301 word347_5_1304

def word347_5_1306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3593, 3561)]

def word347_5_1307 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1305 word347_5_1306

def word347_5_1308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3597, 3593)]

def word347_5_1309 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1307 word347_5_1308

def word347_5_1310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3601, 3589)]

def word347_5_1311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3597 (Flapjack.WordLangAddr.addr 3601 0#64))

def word347_5_1312 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1310 word347_5_1311

def word347_5_1313 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1309 word347_5_1312

def word347_5_1314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3605, 3525)]

def word347_5_1315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3609 3605 (Flapjack.WordRegImm.imm 2#64)))

def word347_5_1316 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1314 word347_5_1315

def word347_5_1317 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1313 word347_5_1316

def word347_5_1318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3613, 3609)]

def word347_5_1319 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1317 word347_5_1318

def word347_5_1320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3661, 3521), (3637, 3613), (3633, 3585), (3629, 3533), (3625, 3537)]

def word347_5_1321 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1319 word347_5_1320

def word347_5_1322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3661, 3197), (3637, 3185), (3633, 3181), (3629, 3233), (3625, 3173)]

def word347_5_1323 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_1322

def word347_5_1324 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 3233 (Flapjack.WordRegImm.reg 3237) word347_5_1321 word347_5_1323

def word347_5_1325 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1160 word347_5_1324

def word347_5_1326 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1325 word347_5_4

def word347_5_1327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3685, 3629)]

def word347_5_1328 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1326 word347_5_1327

def word347_5_1329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3689 4#64)

def word347_5_1330 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1328 word347_5_1329

def word347_5_1331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3701, 3625)]

def word347_5_1332 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_1331

def word347_5_1333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3705, 3637)]

def word347_5_1334 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1332 word347_5_1333

def word347_5_1335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3711, 3661), (3715, 3705), (3719, 3633), (3723, 3701)]

def word347_5_1336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3701), (4, 3705)]

def word347_5_1337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3729, 3711), (3733, 3715), (3737, 3719), (3741, 3723)]

def word347_5_1338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3745, 2), (3749, 4)]

def word347_5_1339 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1337 word347_5_1338

def word347_5_1340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3757, 3749)]

def word347_5_1341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3765, 3745)]

def word347_5_1342 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1340 word347_5_1341

def word347_5_1343 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1339 word347_5_1342

def word347_5_1344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3753, 2)]

def word347_5_1345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3753)]

def word347_5_1346 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1345 word347_5_14

def word347_5_1347 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1344 word347_5_1346

def word347_5_1348 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1337 word347_5_1347

def word347_5_1349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3757 0#64)

def word347_5_1350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3765 0#64)

def word347_5_1351 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1349 word347_5_1350

def word347_5_1352 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1348 word347_5_1351

def word347_5_1353 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_1343, 347, 44)) (some 343) ([2, 4]) (some (2, word347_5_1352, 347, 45))

def word347_5_1354 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1336 word347_5_1353

def word347_5_1355 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1335 word347_5_1354

def word347_5_1356 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1334 word347_5_1355

def word347_5_1357 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1356 word347_5_4

def word347_5_1358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3769, 3765)]

def word347_5_1359 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1357 word347_5_1358

def word347_5_1360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3773, 3757)]

def word347_5_1361 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1359 word347_5_1360

def word347_5_1362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3779, 3729), (3783, 3733), (3787, 3737), (3791, 3741)]

def word347_5_1363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3769), (4, 3773)]

def word347_5_1364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3797, 3779), (3801, 3783), (3805, 3787), (3809, 3791)]

def word347_5_1365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3813, 2), (3817, 4)]

def word347_5_1366 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1364 word347_5_1365

def word347_5_1367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3829, 3813)]

def word347_5_1368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3833, 3817)]

def word347_5_1369 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1367 word347_5_1368

def word347_5_1370 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1366 word347_5_1369

def word347_5_1371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3821, 2)]

def word347_5_1372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3821)]

def word347_5_1373 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1372 word347_5_14

def word347_5_1374 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1371 word347_5_1373

def word347_5_1375 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1364 word347_5_1374

def word347_5_1376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3829 0#64)

def word347_5_1377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3833 0#64)

def word347_5_1378 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1376 word347_5_1377

def word347_5_1379 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1375 word347_5_1378

def word347_5_1380 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_1370, 347, 46)) (some 346) ([2, 4]) (some (2, word347_5_1379, 347, 47))

def word347_5_1381 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1363 word347_5_1380

def word347_5_1382 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1362 word347_5_1381

def word347_5_1383 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1361 word347_5_1382

def word347_5_1384 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1383 word347_5_4

def word347_5_1385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3837, 3805)]

def word347_5_1386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3841 3837 (Flapjack.WordRegImm.imm 272#64)))

def word347_5_1387 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1385 word347_5_1386

def word347_5_1388 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1384 word347_5_1387

def word347_5_1389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3845, 3829)]

def word347_5_1390 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1388 word347_5_1389

def word347_5_1391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3849, 3845)]

def word347_5_1392 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1390 word347_5_1391

def word347_5_1393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3853, 3841)]

def word347_5_1394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3849 (Flapjack.WordLangAddr.addr 3853 0#64))

def word347_5_1395 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1393 word347_5_1394

def word347_5_1396 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1392 word347_5_1395

def word347_5_1397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3857, 3837)]

def word347_5_1398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3861 3857 (Flapjack.WordRegImm.imm 280#64)))

def word347_5_1399 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1397 word347_5_1398

def word347_5_1400 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1396 word347_5_1399

def word347_5_1401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3865, 3833)]

def word347_5_1402 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1400 word347_5_1401

def word347_5_1403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3869, 3865)]

def word347_5_1404 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1402 word347_5_1403

def word347_5_1405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3873, 3861)]

def word347_5_1406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3869 (Flapjack.WordLangAddr.addr 3873 0#64))

def word347_5_1407 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1405 word347_5_1406

def word347_5_1408 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1404 word347_5_1407

def word347_5_1409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3877, 3801)]

def word347_5_1410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3881 3877 (Flapjack.WordRegImm.imm 1#64)))

def word347_5_1411 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1409 word347_5_1410

def word347_5_1412 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1408 word347_5_1411

def word347_5_1413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3885, 3881)]

def word347_5_1414 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1412 word347_5_1413

def word347_5_1415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3929, 3797), (3905, 3885), (3901, 3857), (3897, 3809)]

def word347_5_1416 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1414 word347_5_1415

def word347_5_1417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3929, 3661), (3905, 3637), (3901, 3633), (3897, 3625)]

def word347_5_1418 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_4 word347_5_1417

def word347_5_1419 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 3685 (Flapjack.WordRegImm.reg 3689) word347_5_1416 word347_5_1418

def word347_5_1420 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1330 word347_5_1419

def word347_5_1421 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1420 word347_5_4

def word347_5_1422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3957, 3897)]

def word347_5_1423 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1421 word347_5_1422

def word347_5_1424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3961, 3905)]

def word347_5_1425 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1423 word347_5_1424

def word347_5_1426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3969 32#64)

def word347_5_1427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3975, 3929), (3979, 3961), (3983, 3901), (3987, 3957)]

def word347_5_1428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3957), (4, 3961), (6, 3969)]

def word347_5_1429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3993, 3975), (3997, 3979), (4001, 3983), (4005, 3987)]

def word347_5_1430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4009, 2), (4013, 4), (4017, 6), (4021, 8)]

def word347_5_1431 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1429 word347_5_1430

def word347_5_1432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4029, 4021)]

def word347_5_1433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4033, 4013)]

def word347_5_1434 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1432 word347_5_1433

def word347_5_1435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4041, 4017)]

def word347_5_1436 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1434 word347_5_1435

def word347_5_1437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4045, 4009)]

def word347_5_1438 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1436 word347_5_1437

def word347_5_1439 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1431 word347_5_1438

def word347_5_1440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4025, 2)]

def word347_5_1441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4025)]

def word347_5_1442 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1441 word347_5_14

def word347_5_1443 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1440 word347_5_1442

def word347_5_1444 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1429 word347_5_1443

def word347_5_1445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4029 0#64)

def word347_5_1446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4033 0#64)

def word347_5_1447 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1445 word347_5_1446

def word347_5_1448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4041 0#64)

def word347_5_1449 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1447 word347_5_1448

def word347_5_1450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4045 0#64)

def word347_5_1451 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1449 word347_5_1450

def word347_5_1452 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1444 word347_5_1451

def word347_5_1453 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_1439, 347, 48)) (some 338) ([2, 4, 6]) (some (2, word347_5_1452, 347, 49))

def word347_5_1454 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1428 word347_5_1453

def word347_5_1455 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1427 word347_5_1454

def word347_5_1456 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1426 word347_5_1455

def word347_5_1457 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1425 word347_5_1456

def word347_5_1458 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1457 word347_5_4

def word347_5_1459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4049, 4001)]

def word347_5_1460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4053 4049 (Flapjack.WordRegImm.imm 288#64)))

def word347_5_1461 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1459 word347_5_1460

def word347_5_1462 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1458 word347_5_1461

def word347_5_1463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4057, 4045)]

def word347_5_1464 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1462 word347_5_1463

def word347_5_1465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4061, 4033)]

def word347_5_1466 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1464 word347_5_1465

def word347_5_1467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4065, 4041)]

def word347_5_1468 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1466 word347_5_1467

def word347_5_1469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4069, 4029)]

def word347_5_1470 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1468 word347_5_1469

def word347_5_1471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4073, 4057)]

def word347_5_1472 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1470 word347_5_1471

def word347_5_1473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4077, 4053)]

def word347_5_1474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4073 (Flapjack.WordLangAddr.addr 4077 0#64))

def word347_5_1475 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1473 word347_5_1474

def word347_5_1476 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1472 word347_5_1475

def word347_5_1477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4081, 4061)]

def word347_5_1478 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1476 word347_5_1477

def word347_5_1479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4085, 4077)]

def word347_5_1480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4081 (Flapjack.WordLangAddr.addr 4085 8#64))

def word347_5_1481 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1479 word347_5_1480

def word347_5_1482 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1478 word347_5_1481

def word347_5_1483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4089, 4065)]

def word347_5_1484 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1482 word347_5_1483

def word347_5_1485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4093, 4085)]

def word347_5_1486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4089 (Flapjack.WordLangAddr.addr 4093 16#64))

def word347_5_1487 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1485 word347_5_1486

def word347_5_1488 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1484 word347_5_1487

def word347_5_1489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4097, 4069)]

def word347_5_1490 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1488 word347_5_1489

def word347_5_1491 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4101, 4093)]

def word347_5_1492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4097 (Flapjack.WordLangAddr.addr 4101 24#64))

def word347_5_1493 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1491 word347_5_1492

def word347_5_1494 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1490 word347_5_1493

def word347_5_1495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4105, 4005)]

def word347_5_1496 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1494 word347_5_1495

def word347_5_1497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4109, 3997)]

def word347_5_1498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4113 4109 (Flapjack.WordRegImm.imm 1#64)))

def word347_5_1499 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1497 word347_5_1498

def word347_5_1500 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1496 word347_5_1499

def word347_5_1501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4121 32#64)

def word347_5_1502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4127, 3993), (4131, 4109), (4135, 4049), (4139, 4105)]

def word347_5_1503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4105), (4, 4113), (6, 4121)]

def word347_5_1504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4145, 4127), (4149, 4131), (4153, 4135), (4157, 4139)]

def word347_5_1505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4161, 2), (4165, 4), (4169, 6), (4173, 8)]

def word347_5_1506 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1504 word347_5_1505

def word347_5_1507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4181, 4173)]

def word347_5_1508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4185, 4165)]

def word347_5_1509 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1507 word347_5_1508

def word347_5_1510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4193, 4169)]

def word347_5_1511 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1509 word347_5_1510

def word347_5_1512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4197, 4161)]

def word347_5_1513 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1511 word347_5_1512

def word347_5_1514 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1506 word347_5_1513

def word347_5_1515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4177, 2)]

def word347_5_1516 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4177)]

def word347_5_1517 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1516 word347_5_14

def word347_5_1518 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1515 word347_5_1517

def word347_5_1519 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1504 word347_5_1518

def word347_5_1520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4181 0#64)

def word347_5_1521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4185 0#64)

def word347_5_1522 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1520 word347_5_1521

def word347_5_1523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4193 0#64)

def word347_5_1524 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1522 word347_5_1523

def word347_5_1525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4197 0#64)

def word347_5_1526 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1524 word347_5_1525

def word347_5_1527 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1519 word347_5_1526

def word347_5_1528 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_1514, 347, 50)) (some 338) ([2, 4, 6]) (some (2, word347_5_1527, 347, 51))

def word347_5_1529 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1503 word347_5_1528

def word347_5_1530 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1502 word347_5_1529

def word347_5_1531 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1501 word347_5_1530

def word347_5_1532 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1500 word347_5_1531

def word347_5_1533 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1532 word347_5_4

def word347_5_1534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4201, 4153)]

def word347_5_1535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4205 4201 (Flapjack.WordRegImm.imm 320#64)))

def word347_5_1536 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1534 word347_5_1535

def word347_5_1537 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1533 word347_5_1536

def word347_5_1538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4209, 4197)]

def word347_5_1539 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1537 word347_5_1538

def word347_5_1540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4213, 4185)]

def word347_5_1541 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1539 word347_5_1540

def word347_5_1542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4217, 4193)]

def word347_5_1543 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1541 word347_5_1542

def word347_5_1544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4221, 4181)]

def word347_5_1545 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1543 word347_5_1544

def word347_5_1546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4225, 4209)]

def word347_5_1547 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1545 word347_5_1546

def word347_5_1548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4229, 4205)]

def word347_5_1549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4225 (Flapjack.WordLangAddr.addr 4229 0#64))

def word347_5_1550 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1548 word347_5_1549

def word347_5_1551 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1547 word347_5_1550

def word347_5_1552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4233, 4213)]

def word347_5_1553 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1551 word347_5_1552

def word347_5_1554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4237, 4229)]

def word347_5_1555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4233 (Flapjack.WordLangAddr.addr 4237 8#64))

def word347_5_1556 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1554 word347_5_1555

def word347_5_1557 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1553 word347_5_1556

def word347_5_1558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4241, 4217)]

def word347_5_1559 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1557 word347_5_1558

def word347_5_1560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4245, 4237)]

def word347_5_1561 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4241 (Flapjack.WordLangAddr.addr 4245 16#64))

def word347_5_1562 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1560 word347_5_1561

def word347_5_1563 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1559 word347_5_1562

def word347_5_1564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4249, 4221)]

def word347_5_1565 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1563 word347_5_1564

def word347_5_1566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4253, 4245)]

def word347_5_1567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4249 (Flapjack.WordLangAddr.addr 4253 24#64))

def word347_5_1568 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1566 word347_5_1567

def word347_5_1569 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1565 word347_5_1568

def word347_5_1570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4257, 4157)]

def word347_5_1571 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1569 word347_5_1570

def word347_5_1572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4261, 4149)]

def word347_5_1573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4265 4261 (Flapjack.WordRegImm.imm 2#64)))

def word347_5_1574 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1572 word347_5_1573

def word347_5_1575 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1571 word347_5_1574

def word347_5_1576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4273 32#64)

def word347_5_1577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4279, 4145), (4283, 4201)]

def word347_5_1578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4257), (4, 4265), (6, 4273)]

def word347_5_1579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4289, 4279), (4293, 4283)]

def word347_5_1580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4297, 2), (4301, 4), (4305, 6), (4309, 8)]

def word347_5_1581 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1579 word347_5_1580

def word347_5_1582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4317, 4309)]

def word347_5_1583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4321, 4301)]

def word347_5_1584 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1582 word347_5_1583

def word347_5_1585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4329, 4305)]

def word347_5_1586 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1584 word347_5_1585

def word347_5_1587 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4333, 4297)]

def word347_5_1588 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1586 word347_5_1587

def word347_5_1589 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1581 word347_5_1588

def word347_5_1590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4313, 2)]

def word347_5_1591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4313)]

def word347_5_1592 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1591 word347_5_14

def word347_5_1593 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1590 word347_5_1592

def word347_5_1594 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1579 word347_5_1593

def word347_5_1595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4317 0#64)

def word347_5_1596 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4321 0#64)

def word347_5_1597 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1595 word347_5_1596

def word347_5_1598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4329 0#64)

def word347_5_1599 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1597 word347_5_1598

def word347_5_1600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4333 0#64)

def word347_5_1601 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1599 word347_5_1600

def word347_5_1602 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1594 word347_5_1601

def word347_5_1603 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word347_5_1589, 347, 52)) (some 338) ([2, 4, 6]) (some (2, word347_5_1602, 347, 53))

def word347_5_1604 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1578 word347_5_1603

def word347_5_1605 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1577 word347_5_1604

def word347_5_1606 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1576 word347_5_1605

def word347_5_1607 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1575 word347_5_1606

def word347_5_1608 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1607 word347_5_4

def word347_5_1609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4337, 4293)]

def word347_5_1610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4341 4337 (Flapjack.WordRegImm.imm 352#64)))

def word347_5_1611 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1609 word347_5_1610

def word347_5_1612 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1608 word347_5_1611

def word347_5_1613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4345, 4333)]

def word347_5_1614 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1612 word347_5_1613

def word347_5_1615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4349, 4321)]

def word347_5_1616 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1614 word347_5_1615

def word347_5_1617 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4353, 4329)]

def word347_5_1618 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1616 word347_5_1617

def word347_5_1619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4357, 4317)]

def word347_5_1620 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1618 word347_5_1619

def word347_5_1621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4361, 4345)]

def word347_5_1622 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1620 word347_5_1621

def word347_5_1623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4365, 4341)]

def word347_5_1624 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4361 (Flapjack.WordLangAddr.addr 4365 0#64))

def word347_5_1625 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1623 word347_5_1624

def word347_5_1626 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1622 word347_5_1625

def word347_5_1627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4369, 4349)]

def word347_5_1628 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1626 word347_5_1627

def word347_5_1629 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4373, 4365)]

def word347_5_1630 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4369 (Flapjack.WordLangAddr.addr 4373 8#64))

def word347_5_1631 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1629 word347_5_1630

def word347_5_1632 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1628 word347_5_1631

def word347_5_1633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4377, 4353)]

def word347_5_1634 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1632 word347_5_1633

def word347_5_1635 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4381, 4373)]

def word347_5_1636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4377 (Flapjack.WordLangAddr.addr 4381 16#64))

def word347_5_1637 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1635 word347_5_1636

def word347_5_1638 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1634 word347_5_1637

def word347_5_1639 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4385, 4357)]

def word347_5_1640 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1638 word347_5_1639

def word347_5_1641 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4389, 4381)]

def word347_5_1642 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4385 (Flapjack.WordLangAddr.addr 4389 24#64))

def word347_5_1643 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1641 word347_5_1642

def word347_5_1644 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1640 word347_5_1643

def word347_5_1645 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4393, 4337)]

def word347_5_1646 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1644 word347_5_1645

def word347_5_1647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4393)]

def word347_5_1648 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4289 [2]

def word347_5_1649 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1647 word347_5_1648

def word347_5_1650 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_1646 word347_5_1649

def word347_5_1651 : WordLangProgHOL (BitVec 64) :=
.seq word347_5_0 word347_5_1650

def pass347_5 : WordLangProgHOL (BitVec 64) :=
word347_5_1651
end InitECandidate.Proofs.WordStages.Parallel347
