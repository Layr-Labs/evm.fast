import InitECandidate.Proofs.FrontendStages.Loop.Translate209
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody225_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody225_1 : HolLoopProg 64 :=
.mark loopBody225_0

def loopBody225_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody225_3 : HolLoopProg 64 :=
.mark loopBody225_2

def loopBody225_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody225_5 : HolLoopProg 64 :=
.mark loopBody225_4

def loopBody225_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody225_7 : HolLoopProg 64 :=
.mark loopBody225_6

def loopBody225_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody225_5 loopBody225_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody225_9 : HolLoopProg 64 :=
.mark loopBody225_8

def loopBody225_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody225_11 : HolLoopProg 64 :=
.mark loopBody225_10

def loopBody225_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody225_13 : HolLoopProg 64 :=
.mark loopBody225_12

def loopBody225_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 5#64)

def loopBody225_15 : HolLoopProg 64 :=
.mark loopBody225_14

def loopBody225_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody225_17 : HolLoopProg 64 :=
.mark loopBody225_16

def loopBody225_18 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 286) ([3]) (some (3, loopBody225_17, loopBody225_13, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody225_19 : HolLoopProg 64 :=
.mark loopBody225_18

def loopBody225_20 : HolLoopProg 64 :=
.seq loopBody225_19 loopBody225_13

def loopBody225_21 : HolLoopProg 64 :=
.mark loopBody225_20

def loopBody225_22 : HolLoopProg 64 :=
.seq loopBody225_15 loopBody225_21

def loopBody225_23 : HolLoopProg 64 :=
.mark loopBody225_22

def loopBody225_24 : HolLoopProg 64 :=
.seq loopBody225_13 loopBody225_23

def loopBody225_25 : HolLoopProg 64 :=
.mark loopBody225_24

def loopBody225_26 : HolLoopProg 64 :=
.seq loopBody225_13 loopBody225_25

def loopBody225_27 : HolLoopProg 64 :=
.mark loopBody225_26

def loopBody225_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody225_27 loopBody225_13 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody225_29 : HolLoopProg 64 :=
.mark loopBody225_28

def loopBody225_30 : HolLoopProg 64 :=
.seq loopBody225_29 loopBody225_13

def loopBody225_31 : HolLoopProg 64 :=
.mark loopBody225_30

def loopBody225_32 : HolLoopProg 64 :=
.seq loopBody225_11 loopBody225_31

def loopBody225_33 : HolLoopProg 64 :=
.mark loopBody225_32

def loopBody225_34 : HolLoopProg 64 :=
.seq loopBody225_9 loopBody225_33

def loopBody225_35 : HolLoopProg 64 :=
.mark loopBody225_34

def loopBody225_36 : HolLoopProg 64 :=
.seq loopBody225_3 loopBody225_35

def loopBody225_37 : HolLoopProg 64 :=
.mark loopBody225_36

def loopBody225_38 : HolLoopProg 64 :=
.seq loopBody225_1 loopBody225_37

def loopBody225_39 : HolLoopProg 64 :=
.mark loopBody225_38

def loopBody225_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody225_41 : HolLoopProg 64 :=
.mark loopBody225_40

def loopBody225_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 2 2

def loopBody225_43 : HolLoopProg 64 :=
.mark loopBody225_42

def loopBody225_44 : HolLoopProg 64 :=
.seq loopBody225_43 loopBody225_13

def loopBody225_45 : HolLoopProg 64 :=
.mark loopBody225_44

def loopBody225_46 : HolLoopProg 64 :=
.seq loopBody225_41 loopBody225_45

def loopBody225_47 : HolLoopProg 64 :=
.mark loopBody225_46

def loopBody225_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody225_49 : HolLoopProg 64 :=
.mark loopBody225_48

def loopBody225_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 4#64))

def loopBody225_51 : HolLoopProg 64 :=
.mark loopBody225_50

def loopBody225_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.const 1#64])

def loopBody225_53 : HolLoopProg 64 :=
.mark loopBody225_52

def loopBody225_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody225_55 : HolLoopProg 64 :=
.mark loopBody225_54

def loopBody225_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 1#64))

def loopBody225_57 : HolLoopProg 64 :=
.mark loopBody225_56

def loopBody225_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody225_59 : HolLoopProg 64 :=
.mark loopBody225_58

def loopBody225_60 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([8]) (some (8, loopBody225_59, loopBody225_13, (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody225_61 : HolLoopProg 64 :=
.mark loopBody225_60

def loopBody225_62 : HolLoopProg 64 :=
.seq loopBody225_61 loopBody225_13

def loopBody225_63 : HolLoopProg 64 :=
.mark loopBody225_62

def loopBody225_64 : HolLoopProg 64 :=
.seq loopBody225_57 loopBody225_63

def loopBody225_65 : HolLoopProg 64 :=
.mark loopBody225_64

def loopBody225_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody225_67 : HolLoopProg 64 :=
.mark loopBody225_66

def loopBody225_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody225_69 : HolLoopProg 64 :=
.mark loopBody225_68

def loopBody225_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody225_71 : HolLoopProg 64 :=
.mark loopBody225_70

def loopBody225_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody225_73 : HolLoopProg 64 :=
.mark loopBody225_72

def loopBody225_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody225_75 : HolLoopProg 64 :=
.mark loopBody225_74

def loopBody225_76 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.reg 11) loopBody225_73 loopBody225_75 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody225_77 : HolLoopProg 64 :=
.mark loopBody225_76

def loopBody225_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody225_79 : HolLoopProg 64 :=
.mark loopBody225_78

def loopBody225_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody225_81 : HolLoopProg 64 :=
.mark loopBody225_80

def loopBody225_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 15#64])

def loopBody225_83 : HolLoopProg 64 :=
.mark loopBody225_82

def loopBody225_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 9 10

def loopBody225_85 : HolLoopProg 64 :=
.mark loopBody225_84

def loopBody225_86 : HolLoopProg 64 :=
.seq loopBody225_85 loopBody225_13

def loopBody225_87 : HolLoopProg 64 :=
.mark loopBody225_86

def loopBody225_88 : HolLoopProg 64 :=
.seq loopBody225_83 loopBody225_87

def loopBody225_89 : HolLoopProg 64 :=
.mark loopBody225_88

def loopBody225_90 : HolLoopProg 64 :=
.seq loopBody225_81 loopBody225_89

def loopBody225_91 : HolLoopProg 64 :=
.mark loopBody225_90

def loopBody225_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody225_93 : HolLoopProg 64 :=
.mark loopBody225_92

def loopBody225_94 : HolLoopProg 64 :=
.seq loopBody225_93 loopBody225_13

def loopBody225_95 : HolLoopProg 64 :=
.mark loopBody225_94

def loopBody225_96 : HolLoopProg 64 :=
.seq loopBody225_95 loopBody225_13

def loopBody225_97 : HolLoopProg 64 :=
.mark loopBody225_96

def loopBody225_98 : HolLoopProg 64 :=
.seq loopBody225_91 loopBody225_97

def loopBody225_99 : HolLoopProg 64 :=
.mark loopBody225_98

def loopBody225_100 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody225_99 loopBody225_13 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody225_101 : HolLoopProg 64 :=
.mark loopBody225_100

def loopBody225_102 : HolLoopProg 64 :=
.seq loopBody225_101 loopBody225_13

def loopBody225_103 : HolLoopProg 64 :=
.mark loopBody225_102

def loopBody225_104 : HolLoopProg 64 :=
.seq loopBody225_79 loopBody225_103

def loopBody225_105 : HolLoopProg 64 :=
.mark loopBody225_104

def loopBody225_106 : HolLoopProg 64 :=
.seq loopBody225_77 loopBody225_105

def loopBody225_107 : HolLoopProg 64 :=
.mark loopBody225_106

def loopBody225_108 : HolLoopProg 64 :=
.seq loopBody225_71 loopBody225_107

def loopBody225_109 : HolLoopProg 64 :=
.mark loopBody225_108

def loopBody225_110 : HolLoopProg 64 :=
.seq loopBody225_69 loopBody225_109

def loopBody225_111 : HolLoopProg 64 :=
.mark loopBody225_110

def loopBody225_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody225_113 : HolLoopProg 64 :=
.mark loopBody225_112

def loopBody225_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 1#64])

def loopBody225_115 : HolLoopProg 64 :=
.mark loopBody225_114

def loopBody225_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.var 8])

def loopBody225_117 : HolLoopProg 64 :=
.mark loopBody225_116

def loopBody225_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody225_119 : HolLoopProg 64 :=
.mark loopBody225_118

def loopBody225_120 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 288) ([10, 11, 12]) (some (10, loopBody225_119, loopBody225_13, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody225_121 : HolLoopProg 64 :=
.mark loopBody225_120

def loopBody225_122 : HolLoopProg 64 :=
.seq loopBody225_121 loopBody225_13

def loopBody225_123 : HolLoopProg 64 :=
.mark loopBody225_122

def loopBody225_124 : HolLoopProg 64 :=
.seq loopBody225_117 loopBody225_123

def loopBody225_125 : HolLoopProg 64 :=
.mark loopBody225_124

def loopBody225_126 : HolLoopProg 64 :=
.seq loopBody225_115 loopBody225_125

def loopBody225_127 : HolLoopProg 64 :=
.mark loopBody225_126

def loopBody225_128 : HolLoopProg 64 :=
.seq loopBody225_113 loopBody225_127

def loopBody225_129 : HolLoopProg 64 :=
.mark loopBody225_128

def loopBody225_130 : HolLoopProg 64 :=
.seq loopBody225_13 loopBody225_129

def loopBody225_131 : HolLoopProg 64 :=
.mark loopBody225_130

def loopBody225_132 : HolLoopProg 64 :=
.seq loopBody225_13 loopBody225_131

def loopBody225_133 : HolLoopProg 64 :=
.mark loopBody225_132

def loopBody225_134 : HolLoopProg 64 :=
.seq loopBody225_111 loopBody225_133

def loopBody225_135 : HolLoopProg 64 :=
.mark loopBody225_134

def loopBody225_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 8,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 1#64])
        (Flapjack.HolLoopExp.const 1#64)])

def loopBody225_137 : HolLoopProg 64 :=
.mark loopBody225_136

def loopBody225_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody225_139 : HolLoopProg 64 :=
.mark loopBody225_138

def loopBody225_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9, 10, 11]

def loopBody225_141 : HolLoopProg 64 :=
.mark loopBody225_140

def loopBody225_142 : HolLoopProg 64 :=
.seq loopBody225_141 loopBody225_13

def loopBody225_143 : HolLoopProg 64 :=
.mark loopBody225_142

def loopBody225_144 : HolLoopProg 64 :=
.seq loopBody225_139 loopBody225_143

def loopBody225_145 : HolLoopProg 64 :=
.mark loopBody225_144

def loopBody225_146 : HolLoopProg 64 :=
.seq loopBody225_137 loopBody225_145

def loopBody225_147 : HolLoopProg 64 :=
.mark loopBody225_146

def loopBody225_148 : HolLoopProg 64 :=
.seq loopBody225_81 loopBody225_147

def loopBody225_149 : HolLoopProg 64 :=
.mark loopBody225_148

def loopBody225_150 : HolLoopProg 64 :=
.seq loopBody225_135 loopBody225_149

def loopBody225_151 : HolLoopProg 64 :=
.mark loopBody225_150

def loopBody225_152 : HolLoopProg 64 :=
.seq loopBody225_67 loopBody225_151

def loopBody225_153 : HolLoopProg 64 :=
.mark loopBody225_152

def loopBody225_154 : HolLoopProg 64 :=
.seq loopBody225_13 loopBody225_153

def loopBody225_155 : HolLoopProg 64 :=
.mark loopBody225_154

def loopBody225_156 : HolLoopProg 64 :=
.seq loopBody225_65 loopBody225_155

def loopBody225_157 : HolLoopProg 64 :=
.mark loopBody225_156

def loopBody225_158 : HolLoopProg 64 :=
.seq loopBody225_13 loopBody225_157

def loopBody225_159 : HolLoopProg 64 :=
.mark loopBody225_158

def loopBody225_160 : HolLoopProg 64 :=
.seq loopBody225_13 loopBody225_159

def loopBody225_161 : HolLoopProg 64 :=
.mark loopBody225_160

def loopBody225_162 : HolLoopProg 64 :=
.seq loopBody225_55 loopBody225_161

def loopBody225_163 : HolLoopProg 64 :=
.mark loopBody225_162

def loopBody225_164 : HolLoopProg 64 :=
.seq loopBody225_13 loopBody225_163

def loopBody225_165 : HolLoopProg 64 :=
.mark loopBody225_164

def loopBody225_166 : HolLoopProg 64 :=
.seq loopBody225_53 loopBody225_165

def loopBody225_167 : HolLoopProg 64 :=
.mark loopBody225_166

def loopBody225_168 : HolLoopProg 64 :=
.seq loopBody225_13 loopBody225_167

def loopBody225_169 : HolLoopProg 64 :=
.mark loopBody225_168

def loopBody225_170 : HolLoopProg 64 :=
.seq loopBody225_51 loopBody225_169

def loopBody225_171 : HolLoopProg 64 :=
.mark loopBody225_170

def loopBody225_172 : HolLoopProg 64 :=
.seq loopBody225_13 loopBody225_171

def loopBody225_173 : HolLoopProg 64 :=
.mark loopBody225_172

def loopBody225_174 : HolLoopProg 64 :=
.seq loopBody225_49 loopBody225_173

def loopBody225_175 : HolLoopProg 64 :=
.mark loopBody225_174

def loopBody225_176 : HolLoopProg 64 :=
.seq loopBody225_47 loopBody225_175

def loopBody225_177 : HolLoopProg 64 :=
.mark loopBody225_176

def loopBody225_178 : HolLoopProg 64 :=
.seq loopBody225_39 loopBody225_177

def loopBody225_179 : HolLoopProg 64 :=
.mark loopBody225_178

def output225 : Nat × List Nat × HolLoopProg 64 :=
  (289, [0, 1], loopBody225_179)
end InitECandidate.Proofs.FrontendStages.Loop
