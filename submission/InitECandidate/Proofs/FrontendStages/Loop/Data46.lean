import InitECandidate.Proofs.FrontendStages.Loop.Translate30
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody46_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody46_1 : HolLoopProg 64 :=
.mark loopBody46_0

def loopBody46_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody46_3 : HolLoopProg 64 :=
.mark loopBody46_2

def loopBody46_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody46_5 : HolLoopProg 64 :=
.mark loopBody46_4

def loopBody46_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody46_7 : HolLoopProg 64 :=
.mark loopBody46_6

def loopBody46_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody46_9 : HolLoopProg 64 :=
.mark loopBody46_8

def loopBody46_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody46_11 : HolLoopProg 64 :=
.mark loopBody46_10

def loopBody46_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 5)

def loopBody46_13 : HolLoopProg 64 :=
.mark loopBody46_12

def loopBody46_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 6)

def loopBody46_15 : HolLoopProg 64 :=
.mark loopBody46_14

def loopBody46_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 7)

def loopBody46_17 : HolLoopProg 64 :=
.mark loopBody46_16

def loopBody46_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody46_19 : HolLoopProg 64 :=
.mark loopBody46_18

def loopBody46_20 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 106) ([9, 10, 11, 12, 13, 14, 15, 16]) (some (9, loopBody46_19, loopBody46_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody46_21 : HolLoopProg 64 :=
.mark loopBody46_20

def loopBody46_22 : HolLoopProg 64 :=
.seq loopBody46_21 loopBody46_1

def loopBody46_23 : HolLoopProg 64 :=
.mark loopBody46_22

def loopBody46_24 : HolLoopProg 64 :=
.seq loopBody46_17 loopBody46_23

def loopBody46_25 : HolLoopProg 64 :=
.mark loopBody46_24

def loopBody46_26 : HolLoopProg 64 :=
.seq loopBody46_15 loopBody46_25

def loopBody46_27 : HolLoopProg 64 :=
.mark loopBody46_26

def loopBody46_28 : HolLoopProg 64 :=
.seq loopBody46_13 loopBody46_27

def loopBody46_29 : HolLoopProg 64 :=
.mark loopBody46_28

def loopBody46_30 : HolLoopProg 64 :=
.seq loopBody46_11 loopBody46_29

def loopBody46_31 : HolLoopProg 64 :=
.mark loopBody46_30

def loopBody46_32 : HolLoopProg 64 :=
.seq loopBody46_9 loopBody46_31

def loopBody46_33 : HolLoopProg 64 :=
.mark loopBody46_32

def loopBody46_34 : HolLoopProg 64 :=
.seq loopBody46_7 loopBody46_33

def loopBody46_35 : HolLoopProg 64 :=
.mark loopBody46_34

def loopBody46_36 : HolLoopProg 64 :=
.seq loopBody46_5 loopBody46_35

def loopBody46_37 : HolLoopProg 64 :=
.mark loopBody46_36

def loopBody46_38 : HolLoopProg 64 :=
.seq loopBody46_3 loopBody46_37

def loopBody46_39 : HolLoopProg 64 :=
.mark loopBody46_38

def loopBody46_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody46_41 : HolLoopProg 64 :=
.mark loopBody46_40

def loopBody46_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 1#64)

def loopBody46_43 : HolLoopProg 64 :=
.mark loopBody46_42

def loopBody46_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody46_45 : HolLoopProg 64 :=
.mark loopBody46_44

def loopBody46_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody46_47 : HolLoopProg 64 :=
.mark loopBody46_46

def loopBody46_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.RegImm.reg 11) loopBody46_45 loopBody46_47 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody46_49 : HolLoopProg 64 :=
.mark loopBody46_48

def loopBody46_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody46_51 : HolLoopProg 64 :=
.mark loopBody46_50

def loopBody46_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody46_53 : HolLoopProg 64 :=
.mark loopBody46_52

def loopBody46_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody46_55 : HolLoopProg 64 :=
.mark loopBody46_54

def loopBody46_56 : HolLoopProg 64 :=
.seq loopBody46_55 loopBody46_1

def loopBody46_57 : HolLoopProg 64 :=
.mark loopBody46_56

def loopBody46_58 : HolLoopProg 64 :=
.seq loopBody46_53 loopBody46_57

def loopBody46_59 : HolLoopProg 64 :=
.mark loopBody46_58

def loopBody46_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody46_59 loopBody46_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody46_61 : HolLoopProg 64 :=
.mark loopBody46_60

def loopBody46_62 : HolLoopProg 64 :=
.seq loopBody46_61 loopBody46_1

def loopBody46_63 : HolLoopProg 64 :=
.mark loopBody46_62

def loopBody46_64 : HolLoopProg 64 :=
.seq loopBody46_51 loopBody46_63

def loopBody46_65 : HolLoopProg 64 :=
.mark loopBody46_64

def loopBody46_66 : HolLoopProg 64 :=
.seq loopBody46_49 loopBody46_65

def loopBody46_67 : HolLoopProg 64 :=
.mark loopBody46_66

def loopBody46_68 : HolLoopProg 64 :=
.seq loopBody46_43 loopBody46_67

def loopBody46_69 : HolLoopProg 64 :=
.mark loopBody46_68

def loopBody46_70 : HolLoopProg 64 :=
.seq loopBody46_41 loopBody46_69

def loopBody46_71 : HolLoopProg 64 :=
.mark loopBody46_70

def loopBody46_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 0)

def loopBody46_73 : HolLoopProg 64 :=
.mark loopBody46_72

def loopBody46_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 1)

def loopBody46_75 : HolLoopProg 64 :=
.mark loopBody46_74

def loopBody46_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 2)

def loopBody46_77 : HolLoopProg 64 :=
.mark loopBody46_76

def loopBody46_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 3)

def loopBody46_79 : HolLoopProg 64 :=
.mark loopBody46_78

def loopBody46_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 4)

def loopBody46_81 : HolLoopProg 64 :=
.mark loopBody46_80

def loopBody46_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 5)

def loopBody46_83 : HolLoopProg 64 :=
.mark loopBody46_82

def loopBody46_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 6)

def loopBody46_85 : HolLoopProg 64 :=
.mark loopBody46_84

def loopBody46_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 7)

def loopBody46_87 : HolLoopProg 64 :=
.mark loopBody46_86

def loopBody46_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody46_89 : HolLoopProg 64 :=
.mark loopBody46_88

def loopBody46_90 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 105) ([10, 11, 12, 13, 14, 15, 16, 17]) (some (10, loopBody46_89, loopBody46_1, (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))

def loopBody46_91 : HolLoopProg 64 :=
.mark loopBody46_90

def loopBody46_92 : HolLoopProg 64 :=
.seq loopBody46_91 loopBody46_1

def loopBody46_93 : HolLoopProg 64 :=
.mark loopBody46_92

def loopBody46_94 : HolLoopProg 64 :=
.seq loopBody46_87 loopBody46_93

def loopBody46_95 : HolLoopProg 64 :=
.mark loopBody46_94

def loopBody46_96 : HolLoopProg 64 :=
.seq loopBody46_85 loopBody46_95

def loopBody46_97 : HolLoopProg 64 :=
.mark loopBody46_96

def loopBody46_98 : HolLoopProg 64 :=
.seq loopBody46_83 loopBody46_97

def loopBody46_99 : HolLoopProg 64 :=
.mark loopBody46_98

def loopBody46_100 : HolLoopProg 64 :=
.seq loopBody46_81 loopBody46_99

def loopBody46_101 : HolLoopProg 64 :=
.mark loopBody46_100

def loopBody46_102 : HolLoopProg 64 :=
.seq loopBody46_79 loopBody46_101

def loopBody46_103 : HolLoopProg 64 :=
.mark loopBody46_102

def loopBody46_104 : HolLoopProg 64 :=
.seq loopBody46_77 loopBody46_103

def loopBody46_105 : HolLoopProg 64 :=
.mark loopBody46_104

def loopBody46_106 : HolLoopProg 64 :=
.seq loopBody46_75 loopBody46_105

def loopBody46_107 : HolLoopProg 64 :=
.mark loopBody46_106

def loopBody46_108 : HolLoopProg 64 :=
.seq loopBody46_73 loopBody46_107

def loopBody46_109 : HolLoopProg 64 :=
.mark loopBody46_108

def loopBody46_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody46_111 : HolLoopProg 64 :=
.mark loopBody46_110

def loopBody46_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody46_113 : HolLoopProg 64 :=
.mark loopBody46_112

def loopBody46_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody46_115 : HolLoopProg 64 :=
.mark loopBody46_114

def loopBody46_116 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.RegImm.reg 12) loopBody46_43 loopBody46_115 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody46_117 : HolLoopProg 64 :=
.mark loopBody46_116

def loopBody46_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 11)

def loopBody46_119 : HolLoopProg 64 :=
.mark loopBody46_118

def loopBody46_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [10]

def loopBody46_121 : HolLoopProg 64 :=
.mark loopBody46_120

def loopBody46_122 : HolLoopProg 64 :=
.seq loopBody46_121 loopBody46_1

def loopBody46_123 : HolLoopProg 64 :=
.mark loopBody46_122

def loopBody46_124 : HolLoopProg 64 :=
.seq loopBody46_45 loopBody46_123

def loopBody46_125 : HolLoopProg 64 :=
.mark loopBody46_124

def loopBody46_126 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.imm 0#64) loopBody46_125 loopBody46_1 (Flapjack.Spt.ln)

def loopBody46_127 : HolLoopProg 64 :=
.mark loopBody46_126

def loopBody46_128 : HolLoopProg 64 :=
.seq loopBody46_127 loopBody46_1

def loopBody46_129 : HolLoopProg 64 :=
.mark loopBody46_128

def loopBody46_130 : HolLoopProg 64 :=
.seq loopBody46_119 loopBody46_129

def loopBody46_131 : HolLoopProg 64 :=
.mark loopBody46_130

def loopBody46_132 : HolLoopProg 64 :=
.seq loopBody46_117 loopBody46_131

def loopBody46_133 : HolLoopProg 64 :=
.mark loopBody46_132

def loopBody46_134 : HolLoopProg 64 :=
.seq loopBody46_113 loopBody46_133

def loopBody46_135 : HolLoopProg 64 :=
.mark loopBody46_134

def loopBody46_136 : HolLoopProg 64 :=
.seq loopBody46_111 loopBody46_135

def loopBody46_137 : HolLoopProg 64 :=
.mark loopBody46_136

def loopBody46_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 2#64)

def loopBody46_139 : HolLoopProg 64 :=
.mark loopBody46_138

def loopBody46_140 : HolLoopProg 64 :=
.seq loopBody46_139 loopBody46_123

def loopBody46_141 : HolLoopProg 64 :=
.mark loopBody46_140

def loopBody46_142 : HolLoopProg 64 :=
.seq loopBody46_137 loopBody46_141

def loopBody46_143 : HolLoopProg 64 :=
.mark loopBody46_142

def loopBody46_144 : HolLoopProg 64 :=
.seq loopBody46_109 loopBody46_143

def loopBody46_145 : HolLoopProg 64 :=
.mark loopBody46_144

def loopBody46_146 : HolLoopProg 64 :=
.seq loopBody46_1 loopBody46_145

def loopBody46_147 : HolLoopProg 64 :=
.mark loopBody46_146

def loopBody46_148 : HolLoopProg 64 :=
.seq loopBody46_1 loopBody46_147

def loopBody46_149 : HolLoopProg 64 :=
.mark loopBody46_148

def loopBody46_150 : HolLoopProg 64 :=
.seq loopBody46_71 loopBody46_149

def loopBody46_151 : HolLoopProg 64 :=
.mark loopBody46_150

def loopBody46_152 : HolLoopProg 64 :=
.seq loopBody46_39 loopBody46_151

def loopBody46_153 : HolLoopProg 64 :=
.mark loopBody46_152

def loopBody46_154 : HolLoopProg 64 :=
.seq loopBody46_1 loopBody46_153

def loopBody46_155 : HolLoopProg 64 :=
.mark loopBody46_154

def loopBody46_156 : HolLoopProg 64 :=
.seq loopBody46_1 loopBody46_155

def loopBody46_157 : HolLoopProg 64 :=
.mark loopBody46_156

def output46 : Nat × List Nat × HolLoopProg 64 :=
  (110, [0, 1, 2, 3, 4, 5, 6, 7], loopBody46_157)
end InitECandidate.Proofs.FrontendStages.Loop
