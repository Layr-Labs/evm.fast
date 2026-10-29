import InitECandidate.Proofs.FrontendStages.Loop.Translate388
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody404_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody404_1 : HolLoopProg 64 :=
.mark loopBody404_0

def loopBody404_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 23#64)

def loopBody404_3 : HolLoopProg 64 :=
.mark loopBody404_2

def loopBody404_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody404_5 : HolLoopProg 64 :=
.mark loopBody404_4

def loopBody404_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody404_7 : HolLoopProg 64 :=
.mark loopBody404_6

def loopBody404_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.reg 4) loopBody404_5 loopBody404_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody404_9 : HolLoopProg 64 :=
.mark loopBody404_8

def loopBody404_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody404_11 : HolLoopProg 64 :=
.mark loopBody404_10

def loopBody404_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody404_13 : HolLoopProg 64 :=
.mark loopBody404_12

def loopBody404_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody404_15 : HolLoopProg 64 :=
.mark loopBody404_14

def loopBody404_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody404_17 : HolLoopProg 64 :=
.mark loopBody404_16

def loopBody404_18 : HolLoopProg 64 :=
.seq loopBody404_15 loopBody404_17

def loopBody404_19 : HolLoopProg 64 :=
.mark loopBody404_18

def loopBody404_20 : HolLoopProg 64 :=
.seq loopBody404_13 loopBody404_19

def loopBody404_21 : HolLoopProg 64 :=
.mark loopBody404_20

def loopBody404_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody404_21 loopBody404_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody404_23 : HolLoopProg 64 :=
.mark loopBody404_22

def loopBody404_24 : HolLoopProg 64 :=
.seq loopBody404_23 loopBody404_17

def loopBody404_25 : HolLoopProg 64 :=
.mark loopBody404_24

def loopBody404_26 : HolLoopProg 64 :=
.seq loopBody404_11 loopBody404_25

def loopBody404_27 : HolLoopProg 64 :=
.mark loopBody404_26

def loopBody404_28 : HolLoopProg 64 :=
.seq loopBody404_9 loopBody404_27

def loopBody404_29 : HolLoopProg 64 :=
.mark loopBody404_28

def loopBody404_30 : HolLoopProg 64 :=
.seq loopBody404_3 loopBody404_29

def loopBody404_31 : HolLoopProg 64 :=
.mark loopBody404_30

def loopBody404_32 : HolLoopProg 64 :=
.seq loopBody404_1 loopBody404_31

def loopBody404_33 : HolLoopProg 64 :=
.mark loopBody404_32

def loopBody404_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody404_35 : HolLoopProg 64 :=
.mark loopBody404_34

def loopBody404_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 2 2

def loopBody404_37 : HolLoopProg 64 :=
.mark loopBody404_36

def loopBody404_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody404_39 : HolLoopProg 64 :=
.mark loopBody404_38

def loopBody404_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 239#64)

def loopBody404_41 : HolLoopProg 64 :=
.mark loopBody404_40

def loopBody404_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody404_43 : HolLoopProg 64 :=
.mark loopBody404_42

def loopBody404_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody404_45 : HolLoopProg 64 :=
.mark loopBody404_44

def loopBody404_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody404_43 loopBody404_45 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody404_47 : HolLoopProg 64 :=
.mark loopBody404_46

def loopBody404_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody404_49 : HolLoopProg 64 :=
.mark loopBody404_48

def loopBody404_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody404_51 : HolLoopProg 64 :=
.mark loopBody404_50

def loopBody404_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody404_53 : HolLoopProg 64 :=
.mark loopBody404_52

def loopBody404_54 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.reg 8) loopBody404_53 loopBody404_49 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody404_55 : HolLoopProg 64 :=
.mark loopBody404_54

def loopBody404_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody404_57 : HolLoopProg 64 :=
.mark loopBody404_56

def loopBody404_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 9 9

def loopBody404_59 : HolLoopProg 64 :=
.mark loopBody404_58

def loopBody404_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody404_61 : HolLoopProg 64 :=
.mark loopBody404_60

def loopBody404_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody404_63 : HolLoopProg 64 :=
.mark loopBody404_62

def loopBody404_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 1#64)

def loopBody404_65 : HolLoopProg 64 :=
.mark loopBody404_64

def loopBody404_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody404_67 : HolLoopProg 64 :=
.mark loopBody404_66

def loopBody404_68 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.RegImm.reg 12) loopBody404_65 loopBody404_67 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody404_69 : HolLoopProg 64 :=
.mark loopBody404_68

def loopBody404_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody404_71 : HolLoopProg 64 :=
.mark loopBody404_70

def loopBody404_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 11)

def loopBody404_73 : HolLoopProg 64 :=
.mark loopBody404_72

def loopBody404_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 1#64)

def loopBody404_75 : HolLoopProg 64 :=
.mark loopBody404_74

def loopBody404_76 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.reg 15) loopBody404_75 loopBody404_71 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
  PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody404_77 : HolLoopProg 64 :=
.mark loopBody404_76

def loopBody404_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 2#64])

def loopBody404_79 : HolLoopProg 64 :=
.mark loopBody404_78

def loopBody404_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 16 16

def loopBody404_81 : HolLoopProg 64 :=
.mark loopBody404_80

def loopBody404_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 16)

def loopBody404_83 : HolLoopProg 64 :=
.mark loopBody404_82

def loopBody404_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.const 0#64)

def loopBody404_85 : HolLoopProg 64 :=
.mark loopBody404_84

def loopBody404_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.const 1#64)

def loopBody404_87 : HolLoopProg 64 :=
.mark loopBody404_86

def loopBody404_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.const 0#64)

def loopBody404_89 : HolLoopProg 64 :=
.mark loopBody404_88

def loopBody404_90 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.RegImm.reg 19) loopBody404_87 loopBody404_89 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    Flapjack.Spt.ln)
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody404_91 : HolLoopProg 64 :=
.mark loopBody404_90

def loopBody404_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.const 0#64)

def loopBody404_93 : HolLoopProg 64 :=
.mark loopBody404_92

def loopBody404_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 18)

def loopBody404_95 : HolLoopProg 64 :=
.mark loopBody404_94

def loopBody404_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.const 1#64)

def loopBody404_97 : HolLoopProg 64 :=
.mark loopBody404_96

def loopBody404_98 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 21 (Flapjack.RegImm.reg 22) loopBody404_97 loopBody404_93 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody404_99 : HolLoopProg 64 :=
.mark loopBody404_98

def loopBody404_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.var 14, Flapjack.HolLoopExp.var 21])

def loopBody404_101 : HolLoopProg 64 :=
.mark loopBody404_100

def loopBody404_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody404_103 : HolLoopProg 64 :=
.mark loopBody404_102

def loopBody404_104 : HolLoopProg 64 :=
.seq loopBody404_103 loopBody404_19

def loopBody404_105 : HolLoopProg 64 :=
.mark loopBody404_104

def loopBody404_106 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 23 (Flapjack.RegImm.imm 0#64) loopBody404_105 loopBody404_17 (Flapjack.Spt.ln)

def loopBody404_107 : HolLoopProg 64 :=
.mark loopBody404_106

def loopBody404_108 : HolLoopProg 64 :=
.seq loopBody404_107 loopBody404_17

def loopBody404_109 : HolLoopProg 64 :=
.mark loopBody404_108

def loopBody404_110 : HolLoopProg 64 :=
.seq loopBody404_101 loopBody404_109

def loopBody404_111 : HolLoopProg 64 :=
.mark loopBody404_110

def loopBody404_112 : HolLoopProg 64 :=
.seq loopBody404_99 loopBody404_111

def loopBody404_113 : HolLoopProg 64 :=
.mark loopBody404_112

def loopBody404_114 : HolLoopProg 64 :=
.seq loopBody404_95 loopBody404_113

def loopBody404_115 : HolLoopProg 64 :=
.mark loopBody404_114

def loopBody404_116 : HolLoopProg 64 :=
.seq loopBody404_93 loopBody404_115

def loopBody404_117 : HolLoopProg 64 :=
.mark loopBody404_116

def loopBody404_118 : HolLoopProg 64 :=
.seq loopBody404_91 loopBody404_117

def loopBody404_119 : HolLoopProg 64 :=
.mark loopBody404_118

def loopBody404_120 : HolLoopProg 64 :=
.seq loopBody404_85 loopBody404_119

def loopBody404_121 : HolLoopProg 64 :=
.mark loopBody404_120

def loopBody404_122 : HolLoopProg 64 :=
.seq loopBody404_83 loopBody404_121

def loopBody404_123 : HolLoopProg 64 :=
.mark loopBody404_122

def loopBody404_124 : HolLoopProg 64 :=
.seq loopBody404_81 loopBody404_123

def loopBody404_125 : HolLoopProg 64 :=
.mark loopBody404_124

def loopBody404_126 : HolLoopProg 64 :=
.seq loopBody404_79 loopBody404_125

def loopBody404_127 : HolLoopProg 64 :=
.mark loopBody404_126

def loopBody404_128 : HolLoopProg 64 :=
.seq loopBody404_77 loopBody404_127

def loopBody404_129 : HolLoopProg 64 :=
.mark loopBody404_128

def loopBody404_130 : HolLoopProg 64 :=
.seq loopBody404_73 loopBody404_129

def loopBody404_131 : HolLoopProg 64 :=
.mark loopBody404_130

def loopBody404_132 : HolLoopProg 64 :=
.seq loopBody404_71 loopBody404_131

def loopBody404_133 : HolLoopProg 64 :=
.mark loopBody404_132

def loopBody404_134 : HolLoopProg 64 :=
.seq loopBody404_69 loopBody404_133

def loopBody404_135 : HolLoopProg 64 :=
.mark loopBody404_134

def loopBody404_136 : HolLoopProg 64 :=
.seq loopBody404_63 loopBody404_135

def loopBody404_137 : HolLoopProg 64 :=
.mark loopBody404_136

def loopBody404_138 : HolLoopProg 64 :=
.seq loopBody404_61 loopBody404_137

def loopBody404_139 : HolLoopProg 64 :=
.mark loopBody404_138

def loopBody404_140 : HolLoopProg 64 :=
.seq loopBody404_59 loopBody404_139

def loopBody404_141 : HolLoopProg 64 :=
.mark loopBody404_140

def loopBody404_142 : HolLoopProg 64 :=
.seq loopBody404_57 loopBody404_141

def loopBody404_143 : HolLoopProg 64 :=
.mark loopBody404_142

def loopBody404_144 : HolLoopProg 64 :=
.seq loopBody404_55 loopBody404_143

def loopBody404_145 : HolLoopProg 64 :=
.mark loopBody404_144

def loopBody404_146 : HolLoopProg 64 :=
.seq loopBody404_51 loopBody404_145

def loopBody404_147 : HolLoopProg 64 :=
.mark loopBody404_146

def loopBody404_148 : HolLoopProg 64 :=
.seq loopBody404_49 loopBody404_147

def loopBody404_149 : HolLoopProg 64 :=
.mark loopBody404_148

def loopBody404_150 : HolLoopProg 64 :=
.seq loopBody404_47 loopBody404_149

def loopBody404_151 : HolLoopProg 64 :=
.mark loopBody404_150

def loopBody404_152 : HolLoopProg 64 :=
.seq loopBody404_41 loopBody404_151

def loopBody404_153 : HolLoopProg 64 :=
.mark loopBody404_152

def loopBody404_154 : HolLoopProg 64 :=
.seq loopBody404_39 loopBody404_153

def loopBody404_155 : HolLoopProg 64 :=
.mark loopBody404_154

def loopBody404_156 : HolLoopProg 64 :=
.seq loopBody404_37 loopBody404_155

def loopBody404_157 : HolLoopProg 64 :=
.mark loopBody404_156

def loopBody404_158 : HolLoopProg 64 :=
.seq loopBody404_35 loopBody404_157

def loopBody404_159 : HolLoopProg 64 :=
.mark loopBody404_158

def loopBody404_160 : HolLoopProg 64 :=
.seq loopBody404_33 loopBody404_159

def loopBody404_161 : HolLoopProg 64 :=
.mark loopBody404_160

def loopBody404_162 : HolLoopProg 64 :=
.seq loopBody404_161 loopBody404_21

def loopBody404_163 : HolLoopProg 64 :=
.mark loopBody404_162

def output404 : Nat × List Nat × HolLoopProg 64 :=
  (468, [0, 1], loopBody404_163)
end InitECandidate.Proofs.FrontendStages.Loop
