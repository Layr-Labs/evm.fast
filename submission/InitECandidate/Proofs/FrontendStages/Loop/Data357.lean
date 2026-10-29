import InitECandidate.Proofs.FrontendStages.Loop.Translate341
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody357_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody357_1 : HolLoopProg 64 :=
.mark loopBody357_0

def loopBody357_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 184#64]),
        Flapjack.HolLoopExp.const 32#64]))

def loopBody357_3 : HolLoopProg 64 :=
.mark loopBody357_2

def loopBody357_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody357_5 : HolLoopProg 64 :=
.mark loopBody357_4

def loopBody357_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody357_7 : HolLoopProg 64 :=
.mark loopBody357_6

def loopBody357_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody357_9 : HolLoopProg 64 :=
.mark loopBody357_8

def loopBody357_10 : HolLoopProg 64 :=
.call (some ([2, 3], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 186) ([4, 5]) (some (4, loopBody357_9, loopBody357_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody357_11 : HolLoopProg 64 :=
.mark loopBody357_10

def loopBody357_12 : HolLoopProg 64 :=
.seq loopBody357_11 loopBody357_1

def loopBody357_13 : HolLoopProg 64 :=
.mark loopBody357_12

def loopBody357_14 : HolLoopProg 64 :=
.seq loopBody357_7 loopBody357_13

def loopBody357_15 : HolLoopProg 64 :=
.mark loopBody357_14

def loopBody357_16 : HolLoopProg 64 :=
.seq loopBody357_5 loopBody357_15

def loopBody357_17 : HolLoopProg 64 :=
.mark loopBody357_16

def loopBody357_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody357_19 : HolLoopProg 64 :=
.mark loopBody357_18

def loopBody357_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody357_21 : HolLoopProg 64 :=
.mark loopBody357_20

def loopBody357_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody357_23 : HolLoopProg 64 :=
.mark loopBody357_22

def loopBody357_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody357_25 : HolLoopProg 64 :=
.mark loopBody357_24

def loopBody357_26 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.RegImm.reg 6) loopBody357_23 loopBody357_25 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody357_27 : HolLoopProg 64 :=
.mark loopBody357_26

def loopBody357_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody357_29 : HolLoopProg 64 :=
.mark loopBody357_28

def loopBody357_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody357_31 : HolLoopProg 64 :=
.mark loopBody357_30

def loopBody357_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody357_33 : HolLoopProg 64 :=
.mark loopBody357_32

def loopBody357_34 : HolLoopProg 64 :=
.seq loopBody357_33 loopBody357_1

def loopBody357_35 : HolLoopProg 64 :=
.mark loopBody357_34

def loopBody357_36 : HolLoopProg 64 :=
.seq loopBody357_31 loopBody357_35

def loopBody357_37 : HolLoopProg 64 :=
.mark loopBody357_36

def loopBody357_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody357_37 loopBody357_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody357_39 : HolLoopProg 64 :=
.mark loopBody357_38

def loopBody357_40 : HolLoopProg 64 :=
.seq loopBody357_39 loopBody357_1

def loopBody357_41 : HolLoopProg 64 :=
.mark loopBody357_40

def loopBody357_42 : HolLoopProg 64 :=
.seq loopBody357_29 loopBody357_41

def loopBody357_43 : HolLoopProg 64 :=
.mark loopBody357_42

def loopBody357_44 : HolLoopProg 64 :=
.seq loopBody357_27 loopBody357_43

def loopBody357_45 : HolLoopProg 64 :=
.mark loopBody357_44

def loopBody357_46 : HolLoopProg 64 :=
.seq loopBody357_21 loopBody357_45

def loopBody357_47 : HolLoopProg 64 :=
.mark loopBody357_46

def loopBody357_48 : HolLoopProg 64 :=
.seq loopBody357_19 loopBody357_47

def loopBody357_49 : HolLoopProg 64 :=
.mark loopBody357_48

def loopBody357_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody357_51 : HolLoopProg 64 :=
.mark loopBody357_50

def loopBody357_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 24#64]))

def loopBody357_53 : HolLoopProg 64 :=
.mark loopBody357_52

def loopBody357_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody357_55 : HolLoopProg 64 :=
.mark loopBody357_54

def loopBody357_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody357_57 : HolLoopProg 64 :=
.mark loopBody357_56

def loopBody357_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody357_59 : HolLoopProg 64 :=
.mark loopBody357_58

def loopBody357_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody357_61 : HolLoopProg 64 :=
.mark loopBody357_60

def loopBody357_62 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.RegImm.reg 9) loopBody357_59 loopBody357_61 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody357_63 : HolLoopProg 64 :=
.mark loopBody357_62

def loopBody357_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody357_65 : HolLoopProg 64 :=
.mark loopBody357_64

def loopBody357_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody357_67 : HolLoopProg 64 :=
.mark loopBody357_66

def loopBody357_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 6)

def loopBody357_69 : HolLoopProg 64 :=
.mark loopBody357_68

def loopBody357_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody357_71 : HolLoopProg 64 :=
.mark loopBody357_70

def loopBody357_72 : HolLoopProg 64 :=
.call (some
  ([7, 8, 9],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 197) ([10, 11]) (some (10, loopBody357_71, loopBody357_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody357_73 : HolLoopProg 64 :=
.mark loopBody357_72

def loopBody357_74 : HolLoopProg 64 :=
.seq loopBody357_73 loopBody357_1

def loopBody357_75 : HolLoopProg 64 :=
.mark loopBody357_74

def loopBody357_76 : HolLoopProg 64 :=
.seq loopBody357_69 loopBody357_75

def loopBody357_77 : HolLoopProg 64 :=
.mark loopBody357_76

def loopBody357_78 : HolLoopProg 64 :=
.seq loopBody357_67 loopBody357_77

def loopBody357_79 : HolLoopProg 64 :=
.mark loopBody357_78

def loopBody357_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 7)

def loopBody357_81 : HolLoopProg 64 :=
.mark loopBody357_80

def loopBody357_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody357_83 : HolLoopProg 64 :=
.mark loopBody357_82

def loopBody357_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 1#64)

def loopBody357_85 : HolLoopProg 64 :=
.mark loopBody357_84

def loopBody357_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody357_87 : HolLoopProg 64 :=
.mark loopBody357_86

def loopBody357_88 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.reg 12) loopBody357_85 loopBody357_87 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))

def loopBody357_89 : HolLoopProg 64 :=
.mark loopBody357_88

def loopBody357_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 11)

def loopBody357_91 : HolLoopProg 64 :=
.mark loopBody357_90

def loopBody357_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 0)

def loopBody357_93 : HolLoopProg 64 :=
.mark loopBody357_92

def loopBody357_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 8)

def loopBody357_95 : HolLoopProg 64 :=
.mark loopBody357_94

def loopBody357_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody357_97 : HolLoopProg 64 :=
.mark loopBody357_96

def loopBody357_98 : HolLoopProg 64 :=
.call (some
  ([10],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 392) ([11, 12]) (some (11, loopBody357_97, loopBody357_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody357_99 : HolLoopProg 64 :=
.mark loopBody357_98

def loopBody357_100 : HolLoopProg 64 :=
.seq loopBody357_99 loopBody357_1

def loopBody357_101 : HolLoopProg 64 :=
.mark loopBody357_100

def loopBody357_102 : HolLoopProg 64 :=
.seq loopBody357_95 loopBody357_101

def loopBody357_103 : HolLoopProg 64 :=
.mark loopBody357_102

def loopBody357_104 : HolLoopProg 64 :=
.seq loopBody357_93 loopBody357_103

def loopBody357_105 : HolLoopProg 64 :=
.mark loopBody357_104

def loopBody357_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 184#64]),
        Flapjack.HolLoopExp.const 24#64]))

def loopBody357_107 : HolLoopProg 64 :=
.mark loopBody357_106

def loopBody357_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 10)

def loopBody357_109 : HolLoopProg 64 :=
.mark loopBody357_108

def loopBody357_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 1#64)

def loopBody357_111 : HolLoopProg 64 :=
.mark loopBody357_110

def loopBody357_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 12

def loopBody357_113 : HolLoopProg 64 :=
.mark loopBody357_112

def loopBody357_114 : HolLoopProg 64 :=
.call (some
  ([11],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 192) ([12, 13, 14]) (some (12, loopBody357_113, loopBody357_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody357_115 : HolLoopProg 64 :=
.mark loopBody357_114

def loopBody357_116 : HolLoopProg 64 :=
.seq loopBody357_115 loopBody357_1

def loopBody357_117 : HolLoopProg 64 :=
.mark loopBody357_116

def loopBody357_118 : HolLoopProg 64 :=
.seq loopBody357_111 loopBody357_117

def loopBody357_119 : HolLoopProg 64 :=
.mark loopBody357_118

def loopBody357_120 : HolLoopProg 64 :=
.seq loopBody357_109 loopBody357_119

def loopBody357_121 : HolLoopProg 64 :=
.mark loopBody357_120

def loopBody357_122 : HolLoopProg 64 :=
.seq loopBody357_107 loopBody357_121

def loopBody357_123 : HolLoopProg 64 :=
.mark loopBody357_122

def loopBody357_124 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_123

def loopBody357_125 : HolLoopProg 64 :=
.mark loopBody357_124

def loopBody357_126 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_125

def loopBody357_127 : HolLoopProg 64 :=
.mark loopBody357_126

def loopBody357_128 : HolLoopProg 64 :=
.seq loopBody357_105 loopBody357_127

def loopBody357_129 : HolLoopProg 64 :=
.mark loopBody357_128

def loopBody357_130 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_129

def loopBody357_131 : HolLoopProg 64 :=
.mark loopBody357_130

def loopBody357_132 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_131

def loopBody357_133 : HolLoopProg 64 :=
.mark loopBody357_132

def loopBody357_134 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.imm 0#64) loopBody357_133 loopBody357_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody357_135 : HolLoopProg 64 :=
.mark loopBody357_134

def loopBody357_136 : HolLoopProg 64 :=
.seq loopBody357_135 loopBody357_1

def loopBody357_137 : HolLoopProg 64 :=
.mark loopBody357_136

def loopBody357_138 : HolLoopProg 64 :=
.seq loopBody357_91 loopBody357_137

def loopBody357_139 : HolLoopProg 64 :=
.mark loopBody357_138

def loopBody357_140 : HolLoopProg 64 :=
.seq loopBody357_89 loopBody357_139

def loopBody357_141 : HolLoopProg 64 :=
.mark loopBody357_140

def loopBody357_142 : HolLoopProg 64 :=
.seq loopBody357_83 loopBody357_141

def loopBody357_143 : HolLoopProg 64 :=
.mark loopBody357_142

def loopBody357_144 : HolLoopProg 64 :=
.seq loopBody357_81 loopBody357_143

def loopBody357_145 : HolLoopProg 64 :=
.mark loopBody357_144

def loopBody357_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 1#64])

def loopBody357_147 : HolLoopProg 64 :=
.mark loopBody357_146

def loopBody357_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 10)

def loopBody357_149 : HolLoopProg 64 :=
.mark loopBody357_148

def loopBody357_150 : HolLoopProg 64 :=
.seq loopBody357_149 loopBody357_1

def loopBody357_151 : HolLoopProg 64 :=
.mark loopBody357_150

def loopBody357_152 : HolLoopProg 64 :=
.seq loopBody357_151 loopBody357_1

def loopBody357_153 : HolLoopProg 64 :=
.mark loopBody357_152

def loopBody357_154 : HolLoopProg 64 :=
.seq loopBody357_147 loopBody357_153

def loopBody357_155 : HolLoopProg 64 :=
.mark loopBody357_154

def loopBody357_156 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_155

def loopBody357_157 : HolLoopProg 64 :=
.mark loopBody357_156

def loopBody357_158 : HolLoopProg 64 :=
.seq loopBody357_145 loopBody357_157

def loopBody357_159 : HolLoopProg 64 :=
.mark loopBody357_158

def loopBody357_160 : HolLoopProg 64 :=
.seq loopBody357_79 loopBody357_159

def loopBody357_161 : HolLoopProg 64 :=
.mark loopBody357_160

def loopBody357_162 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_161

def loopBody357_163 : HolLoopProg 64 :=
.mark loopBody357_162

def loopBody357_164 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_163

def loopBody357_165 : HolLoopProg 64 :=
.mark loopBody357_164

def loopBody357_166 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_165

def loopBody357_167 : HolLoopProg 64 :=
.mark loopBody357_166

def loopBody357_168 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_167

def loopBody357_169 : HolLoopProg 64 :=
.mark loopBody357_168

def loopBody357_170 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_169

def loopBody357_171 : HolLoopProg 64 :=
.mark loopBody357_170

def loopBody357_172 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_171

def loopBody357_173 : HolLoopProg 64 :=
.mark loopBody357_172

def loopBody357_174 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody357_175 : HolLoopProg 64 :=
.mark loopBody357_174

def loopBody357_176 : HolLoopProg 64 :=
.seq loopBody357_173 loopBody357_175

def loopBody357_177 : HolLoopProg 64 :=
.mark loopBody357_176

def loopBody357_178 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody357_179 : HolLoopProg 64 :=
.mark loopBody357_178

def loopBody357_180 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody357_177 loopBody357_179 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody357_181 : HolLoopProg 64 :=
.mark loopBody357_180

def loopBody357_182 : HolLoopProg 64 :=
.seq loopBody357_181 loopBody357_1

def loopBody357_183 : HolLoopProg 64 :=
.mark loopBody357_182

def loopBody357_184 : HolLoopProg 64 :=
.seq loopBody357_65 loopBody357_183

def loopBody357_185 : HolLoopProg 64 :=
.mark loopBody357_184

def loopBody357_186 : HolLoopProg 64 :=
.seq loopBody357_63 loopBody357_185

def loopBody357_187 : HolLoopProg 64 :=
.mark loopBody357_186

def loopBody357_188 : HolLoopProg 64 :=
.seq loopBody357_57 loopBody357_187

def loopBody357_189 : HolLoopProg 64 :=
.mark loopBody357_188

def loopBody357_190 : HolLoopProg 64 :=
.seq loopBody357_55 loopBody357_189

def loopBody357_191 : HolLoopProg 64 :=
.mark loopBody357_190

def loopBody357_192 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody357_191 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody357_193 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody357_194 : HolLoopProg 64 :=
.mark loopBody357_193

def loopBody357_195 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody357_196 : HolLoopProg 64 :=
.mark loopBody357_195

def loopBody357_197 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody357_198 : HolLoopProg 64 :=
.mark loopBody357_197

def loopBody357_199 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.ln)) (some 389) ([8, 9]) (some (8, loopBody357_198, loopBody357_1, (Flapjack.Spt.ln)))

def loopBody357_200 : HolLoopProg 64 :=
.mark loopBody357_199

def loopBody357_201 : HolLoopProg 64 :=
.seq loopBody357_200 loopBody357_1

def loopBody357_202 : HolLoopProg 64 :=
.mark loopBody357_201

def loopBody357_203 : HolLoopProg 64 :=
.seq loopBody357_196 loopBody357_202

def loopBody357_204 : HolLoopProg 64 :=
.mark loopBody357_203

def loopBody357_205 : HolLoopProg 64 :=
.seq loopBody357_194 loopBody357_204

def loopBody357_206 : HolLoopProg 64 :=
.mark loopBody357_205

def loopBody357_207 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_206

def loopBody357_208 : HolLoopProg 64 :=
.mark loopBody357_207

def loopBody357_209 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_208

def loopBody357_210 : HolLoopProg 64 :=
.mark loopBody357_209

def loopBody357_211 : HolLoopProg 64 :=
.seq loopBody357_192 loopBody357_210

def loopBody357_212 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody357_213 : HolLoopProg 64 :=
.mark loopBody357_212

def loopBody357_214 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody357_215 : HolLoopProg 64 :=
.mark loopBody357_214

def loopBody357_216 : HolLoopProg 64 :=
.seq loopBody357_215 loopBody357_1

def loopBody357_217 : HolLoopProg 64 :=
.mark loopBody357_216

def loopBody357_218 : HolLoopProg 64 :=
.seq loopBody357_213 loopBody357_217

def loopBody357_219 : HolLoopProg 64 :=
.mark loopBody357_218

def loopBody357_220 : HolLoopProg 64 :=
.seq loopBody357_211 loopBody357_219

def loopBody357_221 : HolLoopProg 64 :=
.seq loopBody357_21 loopBody357_220

def loopBody357_222 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_221

def loopBody357_223 : HolLoopProg 64 :=
.seq loopBody357_53 loopBody357_222

def loopBody357_224 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_223

def loopBody357_225 : HolLoopProg 64 :=
.seq loopBody357_51 loopBody357_224

def loopBody357_226 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_225

def loopBody357_227 : HolLoopProg 64 :=
.seq loopBody357_49 loopBody357_226

def loopBody357_228 : HolLoopProg 64 :=
.seq loopBody357_17 loopBody357_227

def loopBody357_229 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_228

def loopBody357_230 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_229

def loopBody357_231 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_230

def loopBody357_232 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_231

def loopBody357_233 : HolLoopProg 64 :=
.seq loopBody357_3 loopBody357_232

def loopBody357_234 : HolLoopProg 64 :=
.seq loopBody357_1 loopBody357_233

def output357 : Nat × List Nat × HolLoopProg 64 :=
  (421, [0], loopBody357_234)
end InitECandidate.Proofs.FrontendStages.Loop
