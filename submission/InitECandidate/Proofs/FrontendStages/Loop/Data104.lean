import InitECandidate.Proofs.FrontendStages.Loop.Translate88
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody104_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 0)

def loopBody104_1 : HolLoopProg 64 :=
.mark loopBody104_0

def loopBody104_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 1 1

def loopBody104_3 : HolLoopProg 64 :=
.mark loopBody104_2

def loopBody104_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody104_5 : HolLoopProg 64 :=
.mark loopBody104_4

def loopBody104_6 : HolLoopProg 64 :=
.seq loopBody104_3 loopBody104_5

def loopBody104_7 : HolLoopProg 64 :=
.mark loopBody104_6

def loopBody104_8 : HolLoopProg 64 :=
.seq loopBody104_1 loopBody104_7

def loopBody104_9 : HolLoopProg 64 :=
.mark loopBody104_8

def loopBody104_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody104_11 : HolLoopProg 64 :=
.mark loopBody104_10

def loopBody104_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody104_13 : HolLoopProg 64 :=
.mark loopBody104_12

def loopBody104_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 128#64)

def loopBody104_15 : HolLoopProg 64 :=
.mark loopBody104_14

def loopBody104_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody104_17 : HolLoopProg 64 :=
.mark loopBody104_16

def loopBody104_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody104_19 : HolLoopProg 64 :=
.mark loopBody104_18

def loopBody104_20 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody104_17 loopBody104_19 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody104_21 : HolLoopProg 64 :=
.mark loopBody104_20

def loopBody104_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody104_23 : HolLoopProg 64 :=
.mark loopBody104_22

def loopBody104_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody104_25 : HolLoopProg 64 :=
.mark loopBody104_24

def loopBody104_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody104_27 : HolLoopProg 64 :=
.mark loopBody104_26

def loopBody104_28 : HolLoopProg 64 :=
.seq loopBody104_27 loopBody104_5

def loopBody104_29 : HolLoopProg 64 :=
.mark loopBody104_28

def loopBody104_30 : HolLoopProg 64 :=
.seq loopBody104_25 loopBody104_29

def loopBody104_31 : HolLoopProg 64 :=
.mark loopBody104_30

def loopBody104_32 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody104_31 loopBody104_5 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody104_33 : HolLoopProg 64 :=
.mark loopBody104_32

def loopBody104_34 : HolLoopProg 64 :=
.seq loopBody104_33 loopBody104_5

def loopBody104_35 : HolLoopProg 64 :=
.mark loopBody104_34

def loopBody104_36 : HolLoopProg 64 :=
.seq loopBody104_23 loopBody104_35

def loopBody104_37 : HolLoopProg 64 :=
.mark loopBody104_36

def loopBody104_38 : HolLoopProg 64 :=
.seq loopBody104_21 loopBody104_37

def loopBody104_39 : HolLoopProg 64 :=
.mark loopBody104_38

def loopBody104_40 : HolLoopProg 64 :=
.seq loopBody104_15 loopBody104_39

def loopBody104_41 : HolLoopProg 64 :=
.mark loopBody104_40

def loopBody104_42 : HolLoopProg 64 :=
.seq loopBody104_13 loopBody104_41

def loopBody104_43 : HolLoopProg 64 :=
.mark loopBody104_42

def loopBody104_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 183#64)

def loopBody104_45 : HolLoopProg 64 :=
.mark loopBody104_44

def loopBody104_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody104_47 : HolLoopProg 64 :=
.mark loopBody104_46

def loopBody104_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.RegImm.reg 5) loopBody104_17 loopBody104_19 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody104_49 : HolLoopProg 64 :=
.mark loopBody104_48

def loopBody104_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 1#64, Flapjack.HolLoopExp.var 2],
      Flapjack.HolLoopExp.const 128#64])

def loopBody104_51 : HolLoopProg 64 :=
.mark loopBody104_50

def loopBody104_52 : HolLoopProg 64 :=
.seq loopBody104_51 loopBody104_29

def loopBody104_53 : HolLoopProg 64 :=
.mark loopBody104_52

def loopBody104_54 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody104_53 loopBody104_5 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody104_55 : HolLoopProg 64 :=
.mark loopBody104_54

def loopBody104_56 : HolLoopProg 64 :=
.seq loopBody104_55 loopBody104_5

def loopBody104_57 : HolLoopProg 64 :=
.mark loopBody104_56

def loopBody104_58 : HolLoopProg 64 :=
.seq loopBody104_23 loopBody104_57

def loopBody104_59 : HolLoopProg 64 :=
.mark loopBody104_58

def loopBody104_60 : HolLoopProg 64 :=
.seq loopBody104_49 loopBody104_59

def loopBody104_61 : HolLoopProg 64 :=
.mark loopBody104_60

def loopBody104_62 : HolLoopProg 64 :=
.seq loopBody104_47 loopBody104_61

def loopBody104_63 : HolLoopProg 64 :=
.mark loopBody104_62

def loopBody104_64 : HolLoopProg 64 :=
.seq loopBody104_45 loopBody104_63

def loopBody104_65 : HolLoopProg 64 :=
.mark loopBody104_64

def loopBody104_66 : HolLoopProg 64 :=
.seq loopBody104_43 loopBody104_65

def loopBody104_67 : HolLoopProg 64 :=
.mark loopBody104_66

def loopBody104_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 191#64)

def loopBody104_69 : HolLoopProg 64 :=
.mark loopBody104_68

def loopBody104_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 183#64])

def loopBody104_71 : HolLoopProg 64 :=
.mark loopBody104_70

def loopBody104_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody104_73 : HolLoopProg 64 :=
.mark loopBody104_72

def loopBody104_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody104_75 : HolLoopProg 64 :=
.mark loopBody104_74

def loopBody104_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody104_77 : HolLoopProg 64 :=
.mark loopBody104_76

def loopBody104_78 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 160) ([5, 6]) (some (5, loopBody104_77, loopBody104_5, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody104_79 : HolLoopProg 64 :=
.mark loopBody104_78

def loopBody104_80 : HolLoopProg 64 :=
.seq loopBody104_79 loopBody104_5

def loopBody104_81 : HolLoopProg 64 :=
.mark loopBody104_80

def loopBody104_82 : HolLoopProg 64 :=
.seq loopBody104_75 loopBody104_81

def loopBody104_83 : HolLoopProg 64 :=
.mark loopBody104_82

def loopBody104_84 : HolLoopProg 64 :=
.seq loopBody104_73 loopBody104_83

def loopBody104_85 : HolLoopProg 64 :=
.mark loopBody104_84

def loopBody104_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.const 1#64, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 4])

def loopBody104_87 : HolLoopProg 64 :=
.mark loopBody104_86

def loopBody104_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody104_89 : HolLoopProg 64 :=
.mark loopBody104_88

def loopBody104_90 : HolLoopProg 64 :=
.seq loopBody104_89 loopBody104_5

def loopBody104_91 : HolLoopProg 64 :=
.mark loopBody104_90

def loopBody104_92 : HolLoopProg 64 :=
.seq loopBody104_87 loopBody104_91

def loopBody104_93 : HolLoopProg 64 :=
.mark loopBody104_92

def loopBody104_94 : HolLoopProg 64 :=
.seq loopBody104_85 loopBody104_93

def loopBody104_95 : HolLoopProg 64 :=
.mark loopBody104_94

def loopBody104_96 : HolLoopProg 64 :=
.seq loopBody104_5 loopBody104_95

def loopBody104_97 : HolLoopProg 64 :=
.mark loopBody104_96

def loopBody104_98 : HolLoopProg 64 :=
.seq loopBody104_5 loopBody104_97

def loopBody104_99 : HolLoopProg 64 :=
.mark loopBody104_98

def loopBody104_100 : HolLoopProg 64 :=
.seq loopBody104_71 loopBody104_99

def loopBody104_101 : HolLoopProg 64 :=
.mark loopBody104_100

def loopBody104_102 : HolLoopProg 64 :=
.seq loopBody104_5 loopBody104_101

def loopBody104_103 : HolLoopProg 64 :=
.mark loopBody104_102

def loopBody104_104 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody104_103 loopBody104_5 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody104_105 : HolLoopProg 64 :=
.mark loopBody104_104

def loopBody104_106 : HolLoopProg 64 :=
.seq loopBody104_105 loopBody104_5

def loopBody104_107 : HolLoopProg 64 :=
.mark loopBody104_106

def loopBody104_108 : HolLoopProg 64 :=
.seq loopBody104_23 loopBody104_107

def loopBody104_109 : HolLoopProg 64 :=
.mark loopBody104_108

def loopBody104_110 : HolLoopProg 64 :=
.seq loopBody104_49 loopBody104_109

def loopBody104_111 : HolLoopProg 64 :=
.mark loopBody104_110

def loopBody104_112 : HolLoopProg 64 :=
.seq loopBody104_47 loopBody104_111

def loopBody104_113 : HolLoopProg 64 :=
.mark loopBody104_112

def loopBody104_114 : HolLoopProg 64 :=
.seq loopBody104_69 loopBody104_113

def loopBody104_115 : HolLoopProg 64 :=
.mark loopBody104_114

def loopBody104_116 : HolLoopProg 64 :=
.seq loopBody104_67 loopBody104_115

def loopBody104_117 : HolLoopProg 64 :=
.mark loopBody104_116

def loopBody104_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 247#64)

def loopBody104_119 : HolLoopProg 64 :=
.mark loopBody104_118

def loopBody104_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 1#64, Flapjack.HolLoopExp.var 2],
      Flapjack.HolLoopExp.const 192#64])

def loopBody104_121 : HolLoopProg 64 :=
.mark loopBody104_120

def loopBody104_122 : HolLoopProg 64 :=
.seq loopBody104_121 loopBody104_29

def loopBody104_123 : HolLoopProg 64 :=
.mark loopBody104_122

def loopBody104_124 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody104_123 loopBody104_5 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody104_125 : HolLoopProg 64 :=
.mark loopBody104_124

def loopBody104_126 : HolLoopProg 64 :=
.seq loopBody104_125 loopBody104_5

def loopBody104_127 : HolLoopProg 64 :=
.mark loopBody104_126

def loopBody104_128 : HolLoopProg 64 :=
.seq loopBody104_23 loopBody104_127

def loopBody104_129 : HolLoopProg 64 :=
.mark loopBody104_128

def loopBody104_130 : HolLoopProg 64 :=
.seq loopBody104_49 loopBody104_129

def loopBody104_131 : HolLoopProg 64 :=
.mark loopBody104_130

def loopBody104_132 : HolLoopProg 64 :=
.seq loopBody104_47 loopBody104_131

def loopBody104_133 : HolLoopProg 64 :=
.mark loopBody104_132

def loopBody104_134 : HolLoopProg 64 :=
.seq loopBody104_119 loopBody104_133

def loopBody104_135 : HolLoopProg 64 :=
.mark loopBody104_134

def loopBody104_136 : HolLoopProg 64 :=
.seq loopBody104_117 loopBody104_135

def loopBody104_137 : HolLoopProg 64 :=
.mark loopBody104_136

def loopBody104_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 247#64])

def loopBody104_139 : HolLoopProg 64 :=
.mark loopBody104_138

def loopBody104_140 : HolLoopProg 64 :=
.seq loopBody104_139 loopBody104_99

def loopBody104_141 : HolLoopProg 64 :=
.mark loopBody104_140

def loopBody104_142 : HolLoopProg 64 :=
.seq loopBody104_5 loopBody104_141

def loopBody104_143 : HolLoopProg 64 :=
.mark loopBody104_142

def loopBody104_144 : HolLoopProg 64 :=
.seq loopBody104_137 loopBody104_143

def loopBody104_145 : HolLoopProg 64 :=
.mark loopBody104_144

def loopBody104_146 : HolLoopProg 64 :=
.seq loopBody104_11 loopBody104_145

def loopBody104_147 : HolLoopProg 64 :=
.mark loopBody104_146

def loopBody104_148 : HolLoopProg 64 :=
.seq loopBody104_9 loopBody104_147

def loopBody104_149 : HolLoopProg 64 :=
.mark loopBody104_148

def output104 : Nat × List Nat × HolLoopProg 64 :=
  (168, [0], loopBody104_149)
end InitECandidate.Proofs.FrontendStages.Loop
