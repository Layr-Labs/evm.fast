import InitECandidate.Proofs.FrontendStages.Loop.Translate123
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody139_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody139_1 : HolLoopProg 64 :=
.mark loopBody139_0

def loopBody139_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody139_3 : HolLoopProg 64 :=
.mark loopBody139_2

def loopBody139_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody139_5 : HolLoopProg 64 :=
.mark loopBody139_4

def loopBody139_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody139_7 : HolLoopProg 64 :=
.mark loopBody139_6

def loopBody139_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody139_9 : HolLoopProg 64 :=
.mark loopBody139_8

def loopBody139_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody139_11 : HolLoopProg 64 :=
.mark loopBody139_10

def loopBody139_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 5)

def loopBody139_13 : HolLoopProg 64 :=
.mark loopBody139_12

def loopBody139_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 6)

def loopBody139_15 : HolLoopProg 64 :=
.mark loopBody139_14

def loopBody139_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 7)

def loopBody139_17 : HolLoopProg 64 :=
.mark loopBody139_16

def loopBody139_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody139_19 : HolLoopProg 64 :=
.mark loopBody139_18

def loopBody139_20 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 106) ([9, 10, 11, 12, 13, 14, 15, 16]) (some (9, loopBody139_19, loopBody139_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody139_21 : HolLoopProg 64 :=
.mark loopBody139_20

def loopBody139_22 : HolLoopProg 64 :=
.seq loopBody139_21 loopBody139_1

def loopBody139_23 : HolLoopProg 64 :=
.mark loopBody139_22

def loopBody139_24 : HolLoopProg 64 :=
.seq loopBody139_17 loopBody139_23

def loopBody139_25 : HolLoopProg 64 :=
.mark loopBody139_24

def loopBody139_26 : HolLoopProg 64 :=
.seq loopBody139_15 loopBody139_25

def loopBody139_27 : HolLoopProg 64 :=
.mark loopBody139_26

def loopBody139_28 : HolLoopProg 64 :=
.seq loopBody139_13 loopBody139_27

def loopBody139_29 : HolLoopProg 64 :=
.mark loopBody139_28

def loopBody139_30 : HolLoopProg 64 :=
.seq loopBody139_11 loopBody139_29

def loopBody139_31 : HolLoopProg 64 :=
.mark loopBody139_30

def loopBody139_32 : HolLoopProg 64 :=
.seq loopBody139_9 loopBody139_31

def loopBody139_33 : HolLoopProg 64 :=
.mark loopBody139_32

def loopBody139_34 : HolLoopProg 64 :=
.seq loopBody139_7 loopBody139_33

def loopBody139_35 : HolLoopProg 64 :=
.mark loopBody139_34

def loopBody139_36 : HolLoopProg 64 :=
.seq loopBody139_5 loopBody139_35

def loopBody139_37 : HolLoopProg 64 :=
.mark loopBody139_36

def loopBody139_38 : HolLoopProg 64 :=
.seq loopBody139_3 loopBody139_37

def loopBody139_39 : HolLoopProg 64 :=
.mark loopBody139_38

def loopBody139_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 0)

def loopBody139_41 : HolLoopProg 64 :=
.mark loopBody139_40

def loopBody139_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 1)

def loopBody139_43 : HolLoopProg 64 :=
.mark loopBody139_42

def loopBody139_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 2)

def loopBody139_45 : HolLoopProg 64 :=
.mark loopBody139_44

def loopBody139_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 3)

def loopBody139_47 : HolLoopProg 64 :=
.mark loopBody139_46

def loopBody139_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 4)

def loopBody139_49 : HolLoopProg 64 :=
.mark loopBody139_48

def loopBody139_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 5)

def loopBody139_51 : HolLoopProg 64 :=
.mark loopBody139_50

def loopBody139_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 6)

def loopBody139_53 : HolLoopProg 64 :=
.mark loopBody139_52

def loopBody139_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 7)

def loopBody139_55 : HolLoopProg 64 :=
.mark loopBody139_54

def loopBody139_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody139_57 : HolLoopProg 64 :=
.mark loopBody139_56

def loopBody139_58 : HolLoopProg 64 :=
.call (some
  ([9, 10, 11, 12],
    Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)) (some 117) ([13, 14, 15, 16, 17, 18, 19, 20]) (some (13, loopBody139_57, loopBody139_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody139_59 : HolLoopProg 64 :=
.mark loopBody139_58

def loopBody139_60 : HolLoopProg 64 :=
.seq loopBody139_59 loopBody139_1

def loopBody139_61 : HolLoopProg 64 :=
.mark loopBody139_60

def loopBody139_62 : HolLoopProg 64 :=
.seq loopBody139_55 loopBody139_61

def loopBody139_63 : HolLoopProg 64 :=
.mark loopBody139_62

def loopBody139_64 : HolLoopProg 64 :=
.seq loopBody139_53 loopBody139_63

def loopBody139_65 : HolLoopProg 64 :=
.mark loopBody139_64

def loopBody139_66 : HolLoopProg 64 :=
.seq loopBody139_51 loopBody139_65

def loopBody139_67 : HolLoopProg 64 :=
.mark loopBody139_66

def loopBody139_68 : HolLoopProg 64 :=
.seq loopBody139_49 loopBody139_67

def loopBody139_69 : HolLoopProg 64 :=
.mark loopBody139_68

def loopBody139_70 : HolLoopProg 64 :=
.seq loopBody139_47 loopBody139_69

def loopBody139_71 : HolLoopProg 64 :=
.mark loopBody139_70

def loopBody139_72 : HolLoopProg 64 :=
.seq loopBody139_45 loopBody139_71

def loopBody139_73 : HolLoopProg 64 :=
.mark loopBody139_72

def loopBody139_74 : HolLoopProg 64 :=
.seq loopBody139_43 loopBody139_73

def loopBody139_75 : HolLoopProg 64 :=
.mark loopBody139_74

def loopBody139_76 : HolLoopProg 64 :=
.seq loopBody139_41 loopBody139_75

def loopBody139_77 : HolLoopProg 64 :=
.mark loopBody139_76

def loopBody139_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 8)

def loopBody139_79 : HolLoopProg 64 :=
.mark loopBody139_78

def loopBody139_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 1#64)

def loopBody139_81 : HolLoopProg 64 :=
.mark loopBody139_80

def loopBody139_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 1#64)

def loopBody139_83 : HolLoopProg 64 :=
.mark loopBody139_82

def loopBody139_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody139_85 : HolLoopProg 64 :=
.mark loopBody139_84

def loopBody139_86 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.RegImm.reg 15) loopBody139_83 loopBody139_85 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody139_87 : HolLoopProg 64 :=
.mark loopBody139_86

def loopBody139_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 14)

def loopBody139_89 : HolLoopProg 64 :=
.mark loopBody139_88

def loopBody139_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 9)

def loopBody139_91 : HolLoopProg 64 :=
.mark loopBody139_90

def loopBody139_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 10)

def loopBody139_93 : HolLoopProg 64 :=
.mark loopBody139_92

def loopBody139_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 11)

def loopBody139_95 : HolLoopProg 64 :=
.mark loopBody139_94

def loopBody139_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 12)

def loopBody139_97 : HolLoopProg 64 :=
.mark loopBody139_96

def loopBody139_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.const 18446744069414583343#64)

def loopBody139_99 : HolLoopProg 64 :=
.mark loopBody139_98

def loopBody139_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody139_101 : HolLoopProg 64 :=
.mark loopBody139_100

def loopBody139_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody139_103 : HolLoopProg 64 :=
.mark loopBody139_102

def loopBody139_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody139_105 : HolLoopProg 64 :=
.mark loopBody139_104

def loopBody139_106 : HolLoopProg 64 :=
.call (some ([9, 10, 11, 12], Flapjack.Spt.ln)) (some 116) ([13, 14, 15, 16, 17, 18, 19, 20]) (some (13, loopBody139_57, loopBody139_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody139_107 : HolLoopProg 64 :=
.mark loopBody139_106

def loopBody139_108 : HolLoopProg 64 :=
.seq loopBody139_107 loopBody139_1

def loopBody139_109 : HolLoopProg 64 :=
.mark loopBody139_108

def loopBody139_110 : HolLoopProg 64 :=
.seq loopBody139_105 loopBody139_109

def loopBody139_111 : HolLoopProg 64 :=
.mark loopBody139_110

def loopBody139_112 : HolLoopProg 64 :=
.seq loopBody139_103 loopBody139_111

def loopBody139_113 : HolLoopProg 64 :=
.mark loopBody139_112

def loopBody139_114 : HolLoopProg 64 :=
.seq loopBody139_101 loopBody139_113

def loopBody139_115 : HolLoopProg 64 :=
.mark loopBody139_114

def loopBody139_116 : HolLoopProg 64 :=
.seq loopBody139_99 loopBody139_115

def loopBody139_117 : HolLoopProg 64 :=
.mark loopBody139_116

def loopBody139_118 : HolLoopProg 64 :=
.seq loopBody139_97 loopBody139_117

def loopBody139_119 : HolLoopProg 64 :=
.mark loopBody139_118

def loopBody139_120 : HolLoopProg 64 :=
.seq loopBody139_95 loopBody139_119

def loopBody139_121 : HolLoopProg 64 :=
.mark loopBody139_120

def loopBody139_122 : HolLoopProg 64 :=
.seq loopBody139_93 loopBody139_121

def loopBody139_123 : HolLoopProg 64 :=
.mark loopBody139_122

def loopBody139_124 : HolLoopProg 64 :=
.seq loopBody139_91 loopBody139_123

def loopBody139_125 : HolLoopProg 64 :=
.mark loopBody139_124

def loopBody139_126 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.RegImm.imm 0#64) loopBody139_125 loopBody139_1 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody139_127 : HolLoopProg 64 :=
.mark loopBody139_126

def loopBody139_128 : HolLoopProg 64 :=
.seq loopBody139_127 loopBody139_1

def loopBody139_129 : HolLoopProg 64 :=
.mark loopBody139_128

def loopBody139_130 : HolLoopProg 64 :=
.seq loopBody139_89 loopBody139_129

def loopBody139_131 : HolLoopProg 64 :=
.mark loopBody139_130

def loopBody139_132 : HolLoopProg 64 :=
.seq loopBody139_87 loopBody139_131

def loopBody139_133 : HolLoopProg 64 :=
.mark loopBody139_132

def loopBody139_134 : HolLoopProg 64 :=
.seq loopBody139_81 loopBody139_133

def loopBody139_135 : HolLoopProg 64 :=
.mark loopBody139_134

def loopBody139_136 : HolLoopProg 64 :=
.seq loopBody139_79 loopBody139_135

def loopBody139_137 : HolLoopProg 64 :=
.mark loopBody139_136

def loopBody139_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [13, 14, 15, 16]

def loopBody139_139 : HolLoopProg 64 :=
.mark loopBody139_138

def loopBody139_140 : HolLoopProg 64 :=
.seq loopBody139_139 loopBody139_1

def loopBody139_141 : HolLoopProg 64 :=
.mark loopBody139_140

def loopBody139_142 : HolLoopProg 64 :=
.seq loopBody139_97 loopBody139_141

def loopBody139_143 : HolLoopProg 64 :=
.mark loopBody139_142

def loopBody139_144 : HolLoopProg 64 :=
.seq loopBody139_95 loopBody139_143

def loopBody139_145 : HolLoopProg 64 :=
.mark loopBody139_144

def loopBody139_146 : HolLoopProg 64 :=
.seq loopBody139_93 loopBody139_145

def loopBody139_147 : HolLoopProg 64 :=
.mark loopBody139_146

def loopBody139_148 : HolLoopProg 64 :=
.seq loopBody139_91 loopBody139_147

def loopBody139_149 : HolLoopProg 64 :=
.mark loopBody139_148

def loopBody139_150 : HolLoopProg 64 :=
.seq loopBody139_137 loopBody139_149

def loopBody139_151 : HolLoopProg 64 :=
.mark loopBody139_150

def loopBody139_152 : HolLoopProg 64 :=
.seq loopBody139_77 loopBody139_151

def loopBody139_153 : HolLoopProg 64 :=
.mark loopBody139_152

def loopBody139_154 : HolLoopProg 64 :=
.seq loopBody139_1 loopBody139_153

def loopBody139_155 : HolLoopProg 64 :=
.mark loopBody139_154

def loopBody139_156 : HolLoopProg 64 :=
.seq loopBody139_1 loopBody139_155

def loopBody139_157 : HolLoopProg 64 :=
.mark loopBody139_156

def loopBody139_158 : HolLoopProg 64 :=
.seq loopBody139_1 loopBody139_157

def loopBody139_159 : HolLoopProg 64 :=
.mark loopBody139_158

def loopBody139_160 : HolLoopProg 64 :=
.seq loopBody139_1 loopBody139_159

def loopBody139_161 : HolLoopProg 64 :=
.mark loopBody139_160

def loopBody139_162 : HolLoopProg 64 :=
.seq loopBody139_1 loopBody139_161

def loopBody139_163 : HolLoopProg 64 :=
.mark loopBody139_162

def loopBody139_164 : HolLoopProg 64 :=
.seq loopBody139_1 loopBody139_163

def loopBody139_165 : HolLoopProg 64 :=
.mark loopBody139_164

def loopBody139_166 : HolLoopProg 64 :=
.seq loopBody139_1 loopBody139_165

def loopBody139_167 : HolLoopProg 64 :=
.mark loopBody139_166

def loopBody139_168 : HolLoopProg 64 :=
.seq loopBody139_1 loopBody139_167

def loopBody139_169 : HolLoopProg 64 :=
.mark loopBody139_168

def loopBody139_170 : HolLoopProg 64 :=
.seq loopBody139_39 loopBody139_169

def loopBody139_171 : HolLoopProg 64 :=
.mark loopBody139_170

def loopBody139_172 : HolLoopProg 64 :=
.seq loopBody139_1 loopBody139_171

def loopBody139_173 : HolLoopProg 64 :=
.mark loopBody139_172

def loopBody139_174 : HolLoopProg 64 :=
.seq loopBody139_1 loopBody139_173

def loopBody139_175 : HolLoopProg 64 :=
.mark loopBody139_174

def output139 : Nat × List Nat × HolLoopProg 64 :=
  (203, [0, 1, 2, 3, 4, 5, 6, 7], loopBody139_175)
end InitECandidate.Proofs.FrontendStages.Loop
