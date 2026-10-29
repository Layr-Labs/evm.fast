import InitECandidate.Proofs.FrontendStages.Loop.Translate627
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody643_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 5)

def loopBody643_1 : HolLoopProg 64 :=
.mark loopBody643_0

def loopBody643_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 11)

def loopBody643_3 : HolLoopProg 64 :=
.mark loopBody643_2

def loopBody643_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 1#64)

def loopBody643_5 : HolLoopProg 64 :=
.mark loopBody643_4

def loopBody643_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody643_7 : HolLoopProg 64 :=
.mark loopBody643_6

def loopBody643_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.reg 14) loopBody643_5 loopBody643_7 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody643_9 : HolLoopProg 64 :=
.mark loopBody643_8

def loopBody643_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 13)

def loopBody643_11 : HolLoopProg 64 :=
.mark loopBody643_10

def loopBody643_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.RegImm.reg 14) loopBody643_5 loopBody643_7 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))

def loopBody643_13 : HolLoopProg 64 :=
.mark loopBody643_12

def loopBody643_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody643_15 : HolLoopProg 64 :=
.mark loopBody643_14

def loopBody643_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [12]

def loopBody643_17 : HolLoopProg 64 :=
.mark loopBody643_16

def loopBody643_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody643_19 : HolLoopProg 64 :=
.mark loopBody643_18

def loopBody643_20 : HolLoopProg 64 :=
.seq loopBody643_17 loopBody643_19

def loopBody643_21 : HolLoopProg 64 :=
.mark loopBody643_20

def loopBody643_22 : HolLoopProg 64 :=
.seq loopBody643_15 loopBody643_21

def loopBody643_23 : HolLoopProg 64 :=
.mark loopBody643_22

def loopBody643_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody643_23 loopBody643_19 (Flapjack.Spt.ln)

def loopBody643_25 : HolLoopProg 64 :=
.mark loopBody643_24

def loopBody643_26 : HolLoopProg 64 :=
.seq loopBody643_25 loopBody643_19

def loopBody643_27 : HolLoopProg 64 :=
.mark loopBody643_26

def loopBody643_28 : HolLoopProg 64 :=
.seq loopBody643_11 loopBody643_27

def loopBody643_29 : HolLoopProg 64 :=
.mark loopBody643_28

def loopBody643_30 : HolLoopProg 64 :=
.seq loopBody643_13 loopBody643_29

def loopBody643_31 : HolLoopProg 64 :=
.mark loopBody643_30

def loopBody643_32 : HolLoopProg 64 :=
.seq loopBody643_3 loopBody643_31

def loopBody643_33 : HolLoopProg 64 :=
.mark loopBody643_32

def loopBody643_34 : HolLoopProg 64 :=
.seq loopBody643_1 loopBody643_33

def loopBody643_35 : HolLoopProg 64 :=
.mark loopBody643_34

def loopBody643_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody643_37 : HolLoopProg 64 :=
.mark loopBody643_36

def loopBody643_38 : HolLoopProg 64 :=
.seq loopBody643_37 loopBody643_21

def loopBody643_39 : HolLoopProg 64 :=
.mark loopBody643_38

def loopBody643_40 : HolLoopProg 64 :=
.seq loopBody643_35 loopBody643_39

def loopBody643_41 : HolLoopProg 64 :=
.mark loopBody643_40

def loopBody643_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody643_41 loopBody643_19 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody643_43 : HolLoopProg 64 :=
.mark loopBody643_42

def loopBody643_44 : HolLoopProg 64 :=
.seq loopBody643_43 loopBody643_19

def loopBody643_45 : HolLoopProg 64 :=
.mark loopBody643_44

def loopBody643_46 : HolLoopProg 64 :=
.seq loopBody643_11 loopBody643_45

def loopBody643_47 : HolLoopProg 64 :=
.mark loopBody643_46

def loopBody643_48 : HolLoopProg 64 :=
.seq loopBody643_9 loopBody643_47

def loopBody643_49 : HolLoopProg 64 :=
.mark loopBody643_48

def loopBody643_50 : HolLoopProg 64 :=
.seq loopBody643_3 loopBody643_49

def loopBody643_51 : HolLoopProg 64 :=
.mark loopBody643_50

def loopBody643_52 : HolLoopProg 64 :=
.seq loopBody643_1 loopBody643_51

def loopBody643_53 : HolLoopProg 64 :=
.mark loopBody643_52

def loopBody643_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody643_55 : HolLoopProg 64 :=
.mark loopBody643_54

def loopBody643_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 10)

def loopBody643_57 : HolLoopProg 64 :=
.mark loopBody643_56

def loopBody643_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.reg 14) loopBody643_5 loopBody643_7 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody643_59 : HolLoopProg 64 :=
.mark loopBody643_58

def loopBody643_60 : HolLoopProg 64 :=
.seq loopBody643_57 loopBody643_31

def loopBody643_61 : HolLoopProg 64 :=
.mark loopBody643_60

def loopBody643_62 : HolLoopProg 64 :=
.seq loopBody643_55 loopBody643_61

def loopBody643_63 : HolLoopProg 64 :=
.mark loopBody643_62

def loopBody643_64 : HolLoopProg 64 :=
.seq loopBody643_63 loopBody643_39

def loopBody643_65 : HolLoopProg 64 :=
.mark loopBody643_64

def loopBody643_66 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody643_65 loopBody643_19 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody643_67 : HolLoopProg 64 :=
.mark loopBody643_66

def loopBody643_68 : HolLoopProg 64 :=
.seq loopBody643_67 loopBody643_19

def loopBody643_69 : HolLoopProg 64 :=
.mark loopBody643_68

def loopBody643_70 : HolLoopProg 64 :=
.seq loopBody643_11 loopBody643_69

def loopBody643_71 : HolLoopProg 64 :=
.mark loopBody643_70

def loopBody643_72 : HolLoopProg 64 :=
.seq loopBody643_59 loopBody643_71

def loopBody643_73 : HolLoopProg 64 :=
.mark loopBody643_72

def loopBody643_74 : HolLoopProg 64 :=
.seq loopBody643_57 loopBody643_73

def loopBody643_75 : HolLoopProg 64 :=
.mark loopBody643_74

def loopBody643_76 : HolLoopProg 64 :=
.seq loopBody643_55 loopBody643_75

def loopBody643_77 : HolLoopProg 64 :=
.mark loopBody643_76

def loopBody643_78 : HolLoopProg 64 :=
.seq loopBody643_53 loopBody643_77

def loopBody643_79 : HolLoopProg 64 :=
.mark loopBody643_78

def loopBody643_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 3)

def loopBody643_81 : HolLoopProg 64 :=
.mark loopBody643_80

def loopBody643_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody643_83 : HolLoopProg 64 :=
.mark loopBody643_82

def loopBody643_84 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.reg 14) loopBody643_5 loopBody643_7 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody643_85 : HolLoopProg 64 :=
.mark loopBody643_84

def loopBody643_86 : HolLoopProg 64 :=
.seq loopBody643_83 loopBody643_31

def loopBody643_87 : HolLoopProg 64 :=
.mark loopBody643_86

def loopBody643_88 : HolLoopProg 64 :=
.seq loopBody643_81 loopBody643_87

def loopBody643_89 : HolLoopProg 64 :=
.mark loopBody643_88

def loopBody643_90 : HolLoopProg 64 :=
.seq loopBody643_89 loopBody643_39

def loopBody643_91 : HolLoopProg 64 :=
.mark loopBody643_90

def loopBody643_92 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody643_91 loopBody643_19 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody643_93 : HolLoopProg 64 :=
.mark loopBody643_92

def loopBody643_94 : HolLoopProg 64 :=
.seq loopBody643_93 loopBody643_19

def loopBody643_95 : HolLoopProg 64 :=
.mark loopBody643_94

def loopBody643_96 : HolLoopProg 64 :=
.seq loopBody643_11 loopBody643_95

def loopBody643_97 : HolLoopProg 64 :=
.mark loopBody643_96

def loopBody643_98 : HolLoopProg 64 :=
.seq loopBody643_85 loopBody643_97

def loopBody643_99 : HolLoopProg 64 :=
.mark loopBody643_98

def loopBody643_100 : HolLoopProg 64 :=
.seq loopBody643_83 loopBody643_99

def loopBody643_101 : HolLoopProg 64 :=
.mark loopBody643_100

def loopBody643_102 : HolLoopProg 64 :=
.seq loopBody643_81 loopBody643_101

def loopBody643_103 : HolLoopProg 64 :=
.mark loopBody643_102

def loopBody643_104 : HolLoopProg 64 :=
.seq loopBody643_79 loopBody643_103

def loopBody643_105 : HolLoopProg 64 :=
.mark loopBody643_104

def loopBody643_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 2)

def loopBody643_107 : HolLoopProg 64 :=
.mark loopBody643_106

def loopBody643_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 8)

def loopBody643_109 : HolLoopProg 64 :=
.mark loopBody643_108

def loopBody643_110 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.reg 14) loopBody643_5 loopBody643_7 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody643_111 : HolLoopProg 64 :=
.mark loopBody643_110

def loopBody643_112 : HolLoopProg 64 :=
.seq loopBody643_109 loopBody643_31

def loopBody643_113 : HolLoopProg 64 :=
.mark loopBody643_112

def loopBody643_114 : HolLoopProg 64 :=
.seq loopBody643_107 loopBody643_113

def loopBody643_115 : HolLoopProg 64 :=
.mark loopBody643_114

def loopBody643_116 : HolLoopProg 64 :=
.seq loopBody643_115 loopBody643_39

def loopBody643_117 : HolLoopProg 64 :=
.mark loopBody643_116

def loopBody643_118 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody643_117 loopBody643_19 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody643_119 : HolLoopProg 64 :=
.mark loopBody643_118

def loopBody643_120 : HolLoopProg 64 :=
.seq loopBody643_119 loopBody643_19

def loopBody643_121 : HolLoopProg 64 :=
.mark loopBody643_120

def loopBody643_122 : HolLoopProg 64 :=
.seq loopBody643_11 loopBody643_121

def loopBody643_123 : HolLoopProg 64 :=
.mark loopBody643_122

def loopBody643_124 : HolLoopProg 64 :=
.seq loopBody643_111 loopBody643_123

def loopBody643_125 : HolLoopProg 64 :=
.mark loopBody643_124

def loopBody643_126 : HolLoopProg 64 :=
.seq loopBody643_109 loopBody643_125

def loopBody643_127 : HolLoopProg 64 :=
.mark loopBody643_126

def loopBody643_128 : HolLoopProg 64 :=
.seq loopBody643_107 loopBody643_127

def loopBody643_129 : HolLoopProg 64 :=
.mark loopBody643_128

def loopBody643_130 : HolLoopProg 64 :=
.seq loopBody643_105 loopBody643_129

def loopBody643_131 : HolLoopProg 64 :=
.mark loopBody643_130

def loopBody643_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 1)

def loopBody643_133 : HolLoopProg 64 :=
.mark loopBody643_132

def loopBody643_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 7)

def loopBody643_135 : HolLoopProg 64 :=
.mark loopBody643_134

def loopBody643_136 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.reg 14) loopBody643_5 loopBody643_7 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody643_137 : HolLoopProg 64 :=
.mark loopBody643_136

def loopBody643_138 : HolLoopProg 64 :=
.seq loopBody643_135 loopBody643_31

def loopBody643_139 : HolLoopProg 64 :=
.mark loopBody643_138

def loopBody643_140 : HolLoopProg 64 :=
.seq loopBody643_133 loopBody643_139

def loopBody643_141 : HolLoopProg 64 :=
.mark loopBody643_140

def loopBody643_142 : HolLoopProg 64 :=
.seq loopBody643_141 loopBody643_39

def loopBody643_143 : HolLoopProg 64 :=
.mark loopBody643_142

def loopBody643_144 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody643_143 loopBody643_19 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)

def loopBody643_145 : HolLoopProg 64 :=
.mark loopBody643_144

def loopBody643_146 : HolLoopProg 64 :=
.seq loopBody643_145 loopBody643_19

def loopBody643_147 : HolLoopProg 64 :=
.mark loopBody643_146

def loopBody643_148 : HolLoopProg 64 :=
.seq loopBody643_11 loopBody643_147

def loopBody643_149 : HolLoopProg 64 :=
.mark loopBody643_148

def loopBody643_150 : HolLoopProg 64 :=
.seq loopBody643_137 loopBody643_149

def loopBody643_151 : HolLoopProg 64 :=
.mark loopBody643_150

def loopBody643_152 : HolLoopProg 64 :=
.seq loopBody643_135 loopBody643_151

def loopBody643_153 : HolLoopProg 64 :=
.mark loopBody643_152

def loopBody643_154 : HolLoopProg 64 :=
.seq loopBody643_133 loopBody643_153

def loopBody643_155 : HolLoopProg 64 :=
.mark loopBody643_154

def loopBody643_156 : HolLoopProg 64 :=
.seq loopBody643_131 loopBody643_155

def loopBody643_157 : HolLoopProg 64 :=
.mark loopBody643_156

def loopBody643_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 0)

def loopBody643_159 : HolLoopProg 64 :=
.mark loopBody643_158

def loopBody643_160 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 6)

def loopBody643_161 : HolLoopProg 64 :=
.mark loopBody643_160

def loopBody643_162 : HolLoopProg 64 :=
.seq loopBody643_161 loopBody643_31

def loopBody643_163 : HolLoopProg 64 :=
.mark loopBody643_162

def loopBody643_164 : HolLoopProg 64 :=
.seq loopBody643_159 loopBody643_163

def loopBody643_165 : HolLoopProg 64 :=
.mark loopBody643_164

def loopBody643_166 : HolLoopProg 64 :=
.seq loopBody643_157 loopBody643_165

def loopBody643_167 : HolLoopProg 64 :=
.mark loopBody643_166

def loopBody643_168 : HolLoopProg 64 :=
.seq loopBody643_167 loopBody643_39

def loopBody643_169 : HolLoopProg 64 :=
.mark loopBody643_168

def output643 : Nat × List Nat × HolLoopProg 64 :=
  (707, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], loopBody643_169)
end InitECandidate.Proofs.FrontendStages.Loop
