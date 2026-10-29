import InitECandidate.Proofs.FrontendStages.Loop.Translate80
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody96_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody96_1 : HolLoopProg 64 :=
.mark loopBody96_0

def loopBody96_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody96_3 : HolLoopProg 64 :=
.mark loopBody96_2

def loopBody96_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody96_5 : HolLoopProg 64 :=
.mark loopBody96_4

def loopBody96_6 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody96_1 loopBody96_5 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody96_7 : HolLoopProg 64 :=
.mark loopBody96_6

def loopBody96_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody96_9 : HolLoopProg 64 :=
.mark loopBody96_8

def loopBody96_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody96_11 : HolLoopProg 64 :=
.mark loopBody96_10

def loopBody96_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody96_13 : HolLoopProg 64 :=
.mark loopBody96_12

def loopBody96_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody96_13 loopBody96_9 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody96_15 : HolLoopProg 64 :=
.mark loopBody96_14

def loopBody96_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 0)

def loopBody96_17 : HolLoopProg 64 :=
.mark loopBody96_16

def loopBody96_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 8 8

def loopBody96_19 : HolLoopProg 64 :=
.mark loopBody96_18

def loopBody96_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody96_21 : HolLoopProg 64 :=
.mark loopBody96_20

def loopBody96_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody96_23 : HolLoopProg 64 :=
.mark loopBody96_22

def loopBody96_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody96_25 : HolLoopProg 64 :=
.mark loopBody96_24

def loopBody96_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody96_27 : HolLoopProg 64 :=
.mark loopBody96_26

def loopBody96_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.RegImm.reg 11) loopBody96_25 loopBody96_27 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody96_29 : HolLoopProg 64 :=
.mark loopBody96_28

def loopBody96_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody96_31 : HolLoopProg 64 :=
.mark loopBody96_30

def loopBody96_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 10)

def loopBody96_33 : HolLoopProg 64 :=
.mark loopBody96_32

def loopBody96_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 1#64)

def loopBody96_35 : HolLoopProg 64 :=
.mark loopBody96_34

def loopBody96_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.reg 14) loopBody96_35 loopBody96_31 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))

def loopBody96_37 : HolLoopProg 64 :=
.mark loopBody96_36

def loopBody96_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.var 13])

def loopBody96_39 : HolLoopProg 64 :=
.mark loopBody96_38

def loopBody96_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody96_41 : HolLoopProg 64 :=
.mark loopBody96_40

def loopBody96_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 2#64)

def loopBody96_43 : HolLoopProg 64 :=
.mark loopBody96_42

def loopBody96_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody96_45 : HolLoopProg 64 :=
.mark loopBody96_44

def loopBody96_46 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 159) ([3]) (some (3, loopBody96_45, loopBody96_41, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody96_47 : HolLoopProg 64 :=
.mark loopBody96_46

def loopBody96_48 : HolLoopProg 64 :=
.seq loopBody96_47 loopBody96_41

def loopBody96_49 : HolLoopProg 64 :=
.mark loopBody96_48

def loopBody96_50 : HolLoopProg 64 :=
.seq loopBody96_43 loopBody96_49

def loopBody96_51 : HolLoopProg 64 :=
.mark loopBody96_50

def loopBody96_52 : HolLoopProg 64 :=
.seq loopBody96_41 loopBody96_51

def loopBody96_53 : HolLoopProg 64 :=
.mark loopBody96_52

def loopBody96_54 : HolLoopProg 64 :=
.seq loopBody96_41 loopBody96_53

def loopBody96_55 : HolLoopProg 64 :=
.mark loopBody96_54

def loopBody96_56 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody96_55 loopBody96_41 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody96_57 : HolLoopProg 64 :=
.mark loopBody96_56

def loopBody96_58 : HolLoopProg 64 :=
.seq loopBody96_57 loopBody96_41

def loopBody96_59 : HolLoopProg 64 :=
.mark loopBody96_58

def loopBody96_60 : HolLoopProg 64 :=
.seq loopBody96_39 loopBody96_59

def loopBody96_61 : HolLoopProg 64 :=
.mark loopBody96_60

def loopBody96_62 : HolLoopProg 64 :=
.seq loopBody96_37 loopBody96_61

def loopBody96_63 : HolLoopProg 64 :=
.mark loopBody96_62

def loopBody96_64 : HolLoopProg 64 :=
.seq loopBody96_33 loopBody96_63

def loopBody96_65 : HolLoopProg 64 :=
.mark loopBody96_64

def loopBody96_66 : HolLoopProg 64 :=
.seq loopBody96_31 loopBody96_65

def loopBody96_67 : HolLoopProg 64 :=
.mark loopBody96_66

def loopBody96_68 : HolLoopProg 64 :=
.seq loopBody96_29 loopBody96_67

def loopBody96_69 : HolLoopProg 64 :=
.mark loopBody96_68

def loopBody96_70 : HolLoopProg 64 :=
.seq loopBody96_23 loopBody96_69

def loopBody96_71 : HolLoopProg 64 :=
.mark loopBody96_70

def loopBody96_72 : HolLoopProg 64 :=
.seq loopBody96_21 loopBody96_71

def loopBody96_73 : HolLoopProg 64 :=
.mark loopBody96_72

def loopBody96_74 : HolLoopProg 64 :=
.seq loopBody96_19 loopBody96_73

def loopBody96_75 : HolLoopProg 64 :=
.mark loopBody96_74

def loopBody96_76 : HolLoopProg 64 :=
.seq loopBody96_17 loopBody96_75

def loopBody96_77 : HolLoopProg 64 :=
.mark loopBody96_76

def loopBody96_78 : HolLoopProg 64 :=
.seq loopBody96_15 loopBody96_77

def loopBody96_79 : HolLoopProg 64 :=
.mark loopBody96_78

def loopBody96_80 : HolLoopProg 64 :=
.seq loopBody96_11 loopBody96_79

def loopBody96_81 : HolLoopProg 64 :=
.mark loopBody96_80

def loopBody96_82 : HolLoopProg 64 :=
.seq loopBody96_9 loopBody96_81

def loopBody96_83 : HolLoopProg 64 :=
.mark loopBody96_82

def loopBody96_84 : HolLoopProg 64 :=
.seq loopBody96_7 loopBody96_83

def loopBody96_85 : HolLoopProg 64 :=
.mark loopBody96_84

def loopBody96_86 : HolLoopProg 64 :=
.seq loopBody96_3 loopBody96_85

def loopBody96_87 : HolLoopProg 64 :=
.mark loopBody96_86

def loopBody96_88 : HolLoopProg 64 :=
.seq loopBody96_1 loopBody96_87

def loopBody96_89 : HolLoopProg 64 :=
.mark loopBody96_88

def loopBody96_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody96_91 : HolLoopProg 64 :=
.mark loopBody96_90

def loopBody96_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody96_93 : HolLoopProg 64 :=
.mark loopBody96_92

def loopBody96_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody96_95 : HolLoopProg 64 :=
.mark loopBody96_94

def loopBody96_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody96_97 : HolLoopProg 64 :=
.mark loopBody96_96

def loopBody96_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody96_99 : HolLoopProg 64 :=
.mark loopBody96_98

def loopBody96_100 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.RegImm.reg 6) loopBody96_97 loopBody96_99 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody96_101 : HolLoopProg 64 :=
.mark loopBody96_100

def loopBody96_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody96_103 : HolLoopProg 64 :=
.mark loopBody96_102

def loopBody96_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3])

def loopBody96_105 : HolLoopProg 64 :=
.mark loopBody96_104

def loopBody96_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 4 4

def loopBody96_107 : HolLoopProg 64 :=
.mark loopBody96_106

def loopBody96_108 : HolLoopProg 64 :=
.seq loopBody96_107 loopBody96_41

def loopBody96_109 : HolLoopProg 64 :=
.mark loopBody96_108

def loopBody96_110 : HolLoopProg 64 :=
.seq loopBody96_105 loopBody96_109

def loopBody96_111 : HolLoopProg 64 :=
.mark loopBody96_110

def loopBody96_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 8#64),
      Flapjack.HolLoopExp.var 4])

def loopBody96_113 : HolLoopProg 64 :=
.mark loopBody96_112

def loopBody96_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 5)

def loopBody96_115 : HolLoopProg 64 :=
.mark loopBody96_114

def loopBody96_116 : HolLoopProg 64 :=
.seq loopBody96_115 loopBody96_41

def loopBody96_117 : HolLoopProg 64 :=
.mark loopBody96_116

def loopBody96_118 : HolLoopProg 64 :=
.seq loopBody96_117 loopBody96_41

def loopBody96_119 : HolLoopProg 64 :=
.mark loopBody96_118

def loopBody96_120 : HolLoopProg 64 :=
.seq loopBody96_113 loopBody96_119

def loopBody96_121 : HolLoopProg 64 :=
.mark loopBody96_120

def loopBody96_122 : HolLoopProg 64 :=
.seq loopBody96_111 loopBody96_121

def loopBody96_123 : HolLoopProg 64 :=
.mark loopBody96_122

def loopBody96_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody96_125 : HolLoopProg 64 :=
.mark loopBody96_124

def loopBody96_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 4)

def loopBody96_127 : HolLoopProg 64 :=
.mark loopBody96_126

def loopBody96_128 : HolLoopProg 64 :=
.seq loopBody96_127 loopBody96_41

def loopBody96_129 : HolLoopProg 64 :=
.mark loopBody96_128

def loopBody96_130 : HolLoopProg 64 :=
.seq loopBody96_129 loopBody96_41

def loopBody96_131 : HolLoopProg 64 :=
.mark loopBody96_130

def loopBody96_132 : HolLoopProg 64 :=
.seq loopBody96_125 loopBody96_131

def loopBody96_133 : HolLoopProg 64 :=
.mark loopBody96_132

def loopBody96_134 : HolLoopProg 64 :=
.seq loopBody96_41 loopBody96_133

def loopBody96_135 : HolLoopProg 64 :=
.mark loopBody96_134

def loopBody96_136 : HolLoopProg 64 :=
.seq loopBody96_123 loopBody96_135

def loopBody96_137 : HolLoopProg 64 :=
.mark loopBody96_136

def loopBody96_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody96_139 : HolLoopProg 64 :=
.mark loopBody96_138

def loopBody96_140 : HolLoopProg 64 :=
.seq loopBody96_137 loopBody96_139

def loopBody96_141 : HolLoopProg 64 :=
.mark loopBody96_140

def loopBody96_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody96_143 : HolLoopProg 64 :=
.mark loopBody96_142

def loopBody96_144 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody96_141 loopBody96_143 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody96_145 : HolLoopProg 64 :=
.mark loopBody96_144

def loopBody96_146 : HolLoopProg 64 :=
.seq loopBody96_145 loopBody96_41

def loopBody96_147 : HolLoopProg 64 :=
.mark loopBody96_146

def loopBody96_148 : HolLoopProg 64 :=
.seq loopBody96_103 loopBody96_147

def loopBody96_149 : HolLoopProg 64 :=
.mark loopBody96_148

def loopBody96_150 : HolLoopProg 64 :=
.seq loopBody96_101 loopBody96_149

def loopBody96_151 : HolLoopProg 64 :=
.mark loopBody96_150

def loopBody96_152 : HolLoopProg 64 :=
.seq loopBody96_95 loopBody96_151

def loopBody96_153 : HolLoopProg 64 :=
.mark loopBody96_152

def loopBody96_154 : HolLoopProg 64 :=
.seq loopBody96_93 loopBody96_153

def loopBody96_155 : HolLoopProg 64 :=
.mark loopBody96_154

def loopBody96_156 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody96_155 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody96_157 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody96_158 : HolLoopProg 64 :=
.mark loopBody96_157

def loopBody96_159 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody96_160 : HolLoopProg 64 :=
.mark loopBody96_159

def loopBody96_161 : HolLoopProg 64 :=
.seq loopBody96_160 loopBody96_41

def loopBody96_162 : HolLoopProg 64 :=
.mark loopBody96_161

def loopBody96_163 : HolLoopProg 64 :=
.seq loopBody96_158 loopBody96_162

def loopBody96_164 : HolLoopProg 64 :=
.mark loopBody96_163

def loopBody96_165 : HolLoopProg 64 :=
.seq loopBody96_156 loopBody96_164

def loopBody96_166 : HolLoopProg 64 :=
.seq loopBody96_5 loopBody96_165

def loopBody96_167 : HolLoopProg 64 :=
.seq loopBody96_41 loopBody96_166

def loopBody96_168 : HolLoopProg 64 :=
.seq loopBody96_91 loopBody96_167

def loopBody96_169 : HolLoopProg 64 :=
.seq loopBody96_41 loopBody96_168

def loopBody96_170 : HolLoopProg 64 :=
.seq loopBody96_89 loopBody96_169

def output96 : Nat × List Nat × HolLoopProg 64 :=
  (160, [0, 1], loopBody96_170)
end InitECandidate.Proofs.FrontendStages.Loop
