import InitECandidate.Proofs.FrontendStages.Loop.Translate639
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody655_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody655_1 : HolLoopProg 64 :=
.mark loopBody655_0

def loopBody655_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody655_3 : HolLoopProg 64 :=
.mark loopBody655_2

def loopBody655_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody655_5 : HolLoopProg 64 :=
.mark loopBody655_4

def loopBody655_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody655_7 : HolLoopProg 64 :=
.mark loopBody655_6

def loopBody655_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody655_5 loopBody655_7 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody655_9 : HolLoopProg 64 :=
.mark loopBody655_8

def loopBody655_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody655_11 : HolLoopProg 64 :=
.mark loopBody655_10

def loopBody655_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody655_13 : HolLoopProg 64 :=
.mark loopBody655_12

def loopBody655_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody655_15 : HolLoopProg 64 :=
.mark loopBody655_14

def loopBody655_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody655_17 : HolLoopProg 64 :=
.mark loopBody655_16

def loopBody655_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody655_19 : HolLoopProg 64 :=
.mark loopBody655_18

def loopBody655_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody655_21 : HolLoopProg 64 :=
.mark loopBody655_20

def loopBody655_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody655_23 : HolLoopProg 64 :=
.mark loopBody655_22

def loopBody655_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 718) [6, 7, 8, 9, 10, 11] none

def loopBody655_25 : HolLoopProg 64 :=
.mark loopBody655_24

def loopBody655_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody655_27 : HolLoopProg 64 :=
.mark loopBody655_26

def loopBody655_28 : HolLoopProg 64 :=
.seq loopBody655_25 loopBody655_27

def loopBody655_29 : HolLoopProg 64 :=
.mark loopBody655_28

def loopBody655_30 : HolLoopProg 64 :=
.seq loopBody655_23 loopBody655_29

def loopBody655_31 : HolLoopProg 64 :=
.mark loopBody655_30

def loopBody655_32 : HolLoopProg 64 :=
.seq loopBody655_21 loopBody655_31

def loopBody655_33 : HolLoopProg 64 :=
.mark loopBody655_32

def loopBody655_34 : HolLoopProg 64 :=
.seq loopBody655_19 loopBody655_33

def loopBody655_35 : HolLoopProg 64 :=
.mark loopBody655_34

def loopBody655_36 : HolLoopProg 64 :=
.seq loopBody655_17 loopBody655_35

def loopBody655_37 : HolLoopProg 64 :=
.mark loopBody655_36

def loopBody655_38 : HolLoopProg 64 :=
.seq loopBody655_15 loopBody655_37

def loopBody655_39 : HolLoopProg 64 :=
.mark loopBody655_38

def loopBody655_40 : HolLoopProg 64 :=
.seq loopBody655_13 loopBody655_39

def loopBody655_41 : HolLoopProg 64 :=
.mark loopBody655_40

def loopBody655_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody655_41 loopBody655_27 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody655_43 : HolLoopProg 64 :=
.mark loopBody655_42

def loopBody655_44 : HolLoopProg 64 :=
.seq loopBody655_43 loopBody655_27

def loopBody655_45 : HolLoopProg 64 :=
.mark loopBody655_44

def loopBody655_46 : HolLoopProg 64 :=
.seq loopBody655_11 loopBody655_45

def loopBody655_47 : HolLoopProg 64 :=
.mark loopBody655_46

def loopBody655_48 : HolLoopProg 64 :=
.seq loopBody655_9 loopBody655_47

def loopBody655_49 : HolLoopProg 64 :=
.mark loopBody655_48

def loopBody655_50 : HolLoopProg 64 :=
.seq loopBody655_3 loopBody655_49

def loopBody655_51 : HolLoopProg 64 :=
.mark loopBody655_50

def loopBody655_52 : HolLoopProg 64 :=
.seq loopBody655_1 loopBody655_51

def loopBody655_53 : HolLoopProg 64 :=
.mark loopBody655_52

def loopBody655_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 0)

def loopBody655_55 : HolLoopProg 64 :=
.mark loopBody655_54

def loopBody655_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 1)

def loopBody655_57 : HolLoopProg 64 :=
.mark loopBody655_56

def loopBody655_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 2)

def loopBody655_59 : HolLoopProg 64 :=
.mark loopBody655_58

def loopBody655_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 3)

def loopBody655_61 : HolLoopProg 64 :=
.mark loopBody655_60

def loopBody655_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 4)

def loopBody655_63 : HolLoopProg 64 :=
.mark loopBody655_62

def loopBody655_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 5)

def loopBody655_65 : HolLoopProg 64 :=
.mark loopBody655_64

def loopBody655_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.const 13402431016077863595#64)

def loopBody655_67 : HolLoopProg 64 :=
.mark loopBody655_66

def loopBody655_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.const 2210141511517208575#64)

def loopBody655_69 : HolLoopProg 64 :=
.mark loopBody655_68

def loopBody655_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.const 7435674573564081700#64)

def loopBody655_71 : HolLoopProg 64 :=
.mark loopBody655_70

def loopBody655_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.const 7239337960414712511#64)

def loopBody655_73 : HolLoopProg 64 :=
.mark loopBody655_72

def loopBody655_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.const 5412103778470702295#64)

def loopBody655_75 : HolLoopProg 64 :=
.mark loopBody655_74

def loopBody655_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 24 (Flapjack.HolLoopExp.const 1873798617647539866#64)

def loopBody655_77 : HolLoopProg 64 :=
.mark loopBody655_76

def loopBody655_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody655_79 : HolLoopProg 64 :=
.mark loopBody655_78

def loopBody655_80 : HolLoopProg 64 :=
.call (some ([6, 7, 8, 9, 10, 11, 12], Flapjack.Spt.ln)) (some 708) ([13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]) (some (13, loopBody655_79, loopBody655_27, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))

def loopBody655_81 : HolLoopProg 64 :=
.mark loopBody655_80

def loopBody655_82 : HolLoopProg 64 :=
.seq loopBody655_81 loopBody655_27

def loopBody655_83 : HolLoopProg 64 :=
.mark loopBody655_82

def loopBody655_84 : HolLoopProg 64 :=
.seq loopBody655_77 loopBody655_83

def loopBody655_85 : HolLoopProg 64 :=
.mark loopBody655_84

def loopBody655_86 : HolLoopProg 64 :=
.seq loopBody655_75 loopBody655_85

def loopBody655_87 : HolLoopProg 64 :=
.mark loopBody655_86

def loopBody655_88 : HolLoopProg 64 :=
.seq loopBody655_73 loopBody655_87

def loopBody655_89 : HolLoopProg 64 :=
.mark loopBody655_88

def loopBody655_90 : HolLoopProg 64 :=
.seq loopBody655_71 loopBody655_89

def loopBody655_91 : HolLoopProg 64 :=
.mark loopBody655_90

def loopBody655_92 : HolLoopProg 64 :=
.seq loopBody655_69 loopBody655_91

def loopBody655_93 : HolLoopProg 64 :=
.mark loopBody655_92

def loopBody655_94 : HolLoopProg 64 :=
.seq loopBody655_67 loopBody655_93

def loopBody655_95 : HolLoopProg 64 :=
.mark loopBody655_94

def loopBody655_96 : HolLoopProg 64 :=
.seq loopBody655_65 loopBody655_95

def loopBody655_97 : HolLoopProg 64 :=
.mark loopBody655_96

def loopBody655_98 : HolLoopProg 64 :=
.seq loopBody655_63 loopBody655_97

def loopBody655_99 : HolLoopProg 64 :=
.mark loopBody655_98

def loopBody655_100 : HolLoopProg 64 :=
.seq loopBody655_61 loopBody655_99

def loopBody655_101 : HolLoopProg 64 :=
.mark loopBody655_100

def loopBody655_102 : HolLoopProg 64 :=
.seq loopBody655_59 loopBody655_101

def loopBody655_103 : HolLoopProg 64 :=
.mark loopBody655_102

def loopBody655_104 : HolLoopProg 64 :=
.seq loopBody655_57 loopBody655_103

def loopBody655_105 : HolLoopProg 64 :=
.mark loopBody655_104

def loopBody655_106 : HolLoopProg 64 :=
.seq loopBody655_55 loopBody655_105

def loopBody655_107 : HolLoopProg 64 :=
.mark loopBody655_106

def loopBody655_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.const 63#64)])

def loopBody655_109 : HolLoopProg 64 :=
.mark loopBody655_108

def loopBody655_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 8) (Flapjack.HolLoopExp.const 63#64)])

def loopBody655_111 : HolLoopProg 64 :=
.mark loopBody655_110

def loopBody655_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 8) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 9) (Flapjack.HolLoopExp.const 63#64)])

def loopBody655_113 : HolLoopProg 64 :=
.mark loopBody655_112

def loopBody655_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 9) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 10) (Flapjack.HolLoopExp.const 63#64)])

def loopBody655_115 : HolLoopProg 64 :=
.mark loopBody655_114

def loopBody655_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 10) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 11) (Flapjack.HolLoopExp.const 63#64)])

def loopBody655_117 : HolLoopProg 64 :=
.mark loopBody655_116

def loopBody655_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 11) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 12) (Flapjack.HolLoopExp.const 63#64)])

def loopBody655_119 : HolLoopProg 64 :=
.mark loopBody655_118

def loopBody655_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [13, 14, 15, 16, 17, 18]

def loopBody655_121 : HolLoopProg 64 :=
.mark loopBody655_120

def loopBody655_122 : HolLoopProg 64 :=
.seq loopBody655_121 loopBody655_27

def loopBody655_123 : HolLoopProg 64 :=
.mark loopBody655_122

def loopBody655_124 : HolLoopProg 64 :=
.seq loopBody655_119 loopBody655_123

def loopBody655_125 : HolLoopProg 64 :=
.mark loopBody655_124

def loopBody655_126 : HolLoopProg 64 :=
.seq loopBody655_117 loopBody655_125

def loopBody655_127 : HolLoopProg 64 :=
.mark loopBody655_126

def loopBody655_128 : HolLoopProg 64 :=
.seq loopBody655_115 loopBody655_127

def loopBody655_129 : HolLoopProg 64 :=
.mark loopBody655_128

def loopBody655_130 : HolLoopProg 64 :=
.seq loopBody655_113 loopBody655_129

def loopBody655_131 : HolLoopProg 64 :=
.mark loopBody655_130

def loopBody655_132 : HolLoopProg 64 :=
.seq loopBody655_111 loopBody655_131

def loopBody655_133 : HolLoopProg 64 :=
.mark loopBody655_132

def loopBody655_134 : HolLoopProg 64 :=
.seq loopBody655_109 loopBody655_133

def loopBody655_135 : HolLoopProg 64 :=
.mark loopBody655_134

def loopBody655_136 : HolLoopProg 64 :=
.seq loopBody655_107 loopBody655_135

def loopBody655_137 : HolLoopProg 64 :=
.mark loopBody655_136

def loopBody655_138 : HolLoopProg 64 :=
.seq loopBody655_27 loopBody655_137

def loopBody655_139 : HolLoopProg 64 :=
.mark loopBody655_138

def loopBody655_140 : HolLoopProg 64 :=
.seq loopBody655_27 loopBody655_139

def loopBody655_141 : HolLoopProg 64 :=
.mark loopBody655_140

def loopBody655_142 : HolLoopProg 64 :=
.seq loopBody655_27 loopBody655_141

def loopBody655_143 : HolLoopProg 64 :=
.mark loopBody655_142

def loopBody655_144 : HolLoopProg 64 :=
.seq loopBody655_27 loopBody655_143

def loopBody655_145 : HolLoopProg 64 :=
.mark loopBody655_144

def loopBody655_146 : HolLoopProg 64 :=
.seq loopBody655_27 loopBody655_145

def loopBody655_147 : HolLoopProg 64 :=
.mark loopBody655_146

def loopBody655_148 : HolLoopProg 64 :=
.seq loopBody655_27 loopBody655_147

def loopBody655_149 : HolLoopProg 64 :=
.mark loopBody655_148

def loopBody655_150 : HolLoopProg 64 :=
.seq loopBody655_27 loopBody655_149

def loopBody655_151 : HolLoopProg 64 :=
.mark loopBody655_150

def loopBody655_152 : HolLoopProg 64 :=
.seq loopBody655_27 loopBody655_151

def loopBody655_153 : HolLoopProg 64 :=
.mark loopBody655_152

def loopBody655_154 : HolLoopProg 64 :=
.seq loopBody655_27 loopBody655_153

def loopBody655_155 : HolLoopProg 64 :=
.mark loopBody655_154

def loopBody655_156 : HolLoopProg 64 :=
.seq loopBody655_27 loopBody655_155

def loopBody655_157 : HolLoopProg 64 :=
.mark loopBody655_156

def loopBody655_158 : HolLoopProg 64 :=
.seq loopBody655_27 loopBody655_157

def loopBody655_159 : HolLoopProg 64 :=
.mark loopBody655_158

def loopBody655_160 : HolLoopProg 64 :=
.seq loopBody655_27 loopBody655_159

def loopBody655_161 : HolLoopProg 64 :=
.mark loopBody655_160

def loopBody655_162 : HolLoopProg 64 :=
.seq loopBody655_27 loopBody655_161

def loopBody655_163 : HolLoopProg 64 :=
.mark loopBody655_162

def loopBody655_164 : HolLoopProg 64 :=
.seq loopBody655_27 loopBody655_163

def loopBody655_165 : HolLoopProg 64 :=
.mark loopBody655_164

def loopBody655_166 : HolLoopProg 64 :=
.seq loopBody655_53 loopBody655_165

def loopBody655_167 : HolLoopProg 64 :=
.mark loopBody655_166

def output655 : Nat × List Nat × HolLoopProg 64 :=
  (719, [0, 1, 2, 3, 4, 5], loopBody655_167)
end InitECandidate.Proofs.FrontendStages.Loop
