import InitECandidate.Proofs.FrontendStages.Loop.Translate563
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody579_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody579_1 : HolLoopProg 64 :=
.mark loopBody579_0

def loopBody579_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody579_3 : HolLoopProg 64 :=
.mark loopBody579_2

def loopBody579_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody579_5 : HolLoopProg 64 :=
.mark loopBody579_4

def loopBody579_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody579_7 : HolLoopProg 64 :=
.mark loopBody579_6

def loopBody579_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody579_9 : HolLoopProg 64 :=
.mark loopBody579_8

def loopBody579_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody579_11 : HolLoopProg 64 :=
.mark loopBody579_10

def loopBody579_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 5)

def loopBody579_13 : HolLoopProg 64 :=
.mark loopBody579_12

def loopBody579_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 6)

def loopBody579_15 : HolLoopProg 64 :=
.mark loopBody579_14

def loopBody579_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 7)

def loopBody579_17 : HolLoopProg 64 :=
.mark loopBody579_16

def loopBody579_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody579_19 : HolLoopProg 64 :=
.mark loopBody579_18

def loopBody579_20 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 106) ([9, 10, 11, 12, 13, 14, 15, 16]) (some (9, loopBody579_19, loopBody579_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody579_21 : HolLoopProg 64 :=
.mark loopBody579_20

def loopBody579_22 : HolLoopProg 64 :=
.seq loopBody579_21 loopBody579_1

def loopBody579_23 : HolLoopProg 64 :=
.mark loopBody579_22

def loopBody579_24 : HolLoopProg 64 :=
.seq loopBody579_17 loopBody579_23

def loopBody579_25 : HolLoopProg 64 :=
.mark loopBody579_24

def loopBody579_26 : HolLoopProg 64 :=
.seq loopBody579_15 loopBody579_25

def loopBody579_27 : HolLoopProg 64 :=
.mark loopBody579_26

def loopBody579_28 : HolLoopProg 64 :=
.seq loopBody579_13 loopBody579_27

def loopBody579_29 : HolLoopProg 64 :=
.mark loopBody579_28

def loopBody579_30 : HolLoopProg 64 :=
.seq loopBody579_11 loopBody579_29

def loopBody579_31 : HolLoopProg 64 :=
.mark loopBody579_30

def loopBody579_32 : HolLoopProg 64 :=
.seq loopBody579_9 loopBody579_31

def loopBody579_33 : HolLoopProg 64 :=
.mark loopBody579_32

def loopBody579_34 : HolLoopProg 64 :=
.seq loopBody579_7 loopBody579_33

def loopBody579_35 : HolLoopProg 64 :=
.mark loopBody579_34

def loopBody579_36 : HolLoopProg 64 :=
.seq loopBody579_5 loopBody579_35

def loopBody579_37 : HolLoopProg 64 :=
.mark loopBody579_36

def loopBody579_38 : HolLoopProg 64 :=
.seq loopBody579_3 loopBody579_37

def loopBody579_39 : HolLoopProg 64 :=
.mark loopBody579_38

def loopBody579_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 0)

def loopBody579_41 : HolLoopProg 64 :=
.mark loopBody579_40

def loopBody579_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 1)

def loopBody579_43 : HolLoopProg 64 :=
.mark loopBody579_42

def loopBody579_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 2)

def loopBody579_45 : HolLoopProg 64 :=
.mark loopBody579_44

def loopBody579_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 3)

def loopBody579_47 : HolLoopProg 64 :=
.mark loopBody579_46

def loopBody579_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 4)

def loopBody579_49 : HolLoopProg 64 :=
.mark loopBody579_48

def loopBody579_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 5)

def loopBody579_51 : HolLoopProg 64 :=
.mark loopBody579_50

def loopBody579_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 6)

def loopBody579_53 : HolLoopProg 64 :=
.mark loopBody579_52

def loopBody579_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 7)

def loopBody579_55 : HolLoopProg 64 :=
.mark loopBody579_54

def loopBody579_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody579_57 : HolLoopProg 64 :=
.mark loopBody579_56

def loopBody579_58 : HolLoopProg 64 :=
.call (some
  ([9, 10, 11, 12],
    Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)) (some 117) ([13, 14, 15, 16, 17, 18, 19, 20]) (some (13, loopBody579_57, loopBody579_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody579_59 : HolLoopProg 64 :=
.mark loopBody579_58

def loopBody579_60 : HolLoopProg 64 :=
.seq loopBody579_59 loopBody579_1

def loopBody579_61 : HolLoopProg 64 :=
.mark loopBody579_60

def loopBody579_62 : HolLoopProg 64 :=
.seq loopBody579_55 loopBody579_61

def loopBody579_63 : HolLoopProg 64 :=
.mark loopBody579_62

def loopBody579_64 : HolLoopProg 64 :=
.seq loopBody579_53 loopBody579_63

def loopBody579_65 : HolLoopProg 64 :=
.mark loopBody579_64

def loopBody579_66 : HolLoopProg 64 :=
.seq loopBody579_51 loopBody579_65

def loopBody579_67 : HolLoopProg 64 :=
.mark loopBody579_66

def loopBody579_68 : HolLoopProg 64 :=
.seq loopBody579_49 loopBody579_67

def loopBody579_69 : HolLoopProg 64 :=
.mark loopBody579_68

def loopBody579_70 : HolLoopProg 64 :=
.seq loopBody579_47 loopBody579_69

def loopBody579_71 : HolLoopProg 64 :=
.mark loopBody579_70

def loopBody579_72 : HolLoopProg 64 :=
.seq loopBody579_45 loopBody579_71

def loopBody579_73 : HolLoopProg 64 :=
.mark loopBody579_72

def loopBody579_74 : HolLoopProg 64 :=
.seq loopBody579_43 loopBody579_73

def loopBody579_75 : HolLoopProg 64 :=
.mark loopBody579_74

def loopBody579_76 : HolLoopProg 64 :=
.seq loopBody579_41 loopBody579_75

def loopBody579_77 : HolLoopProg 64 :=
.mark loopBody579_76

def loopBody579_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 8)

def loopBody579_79 : HolLoopProg 64 :=
.mark loopBody579_78

def loopBody579_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 1#64)

def loopBody579_81 : HolLoopProg 64 :=
.mark loopBody579_80

def loopBody579_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 1#64)

def loopBody579_83 : HolLoopProg 64 :=
.mark loopBody579_82

def loopBody579_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody579_85 : HolLoopProg 64 :=
.mark loopBody579_84

def loopBody579_86 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.RegImm.reg 15) loopBody579_83 loopBody579_85 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody579_87 : HolLoopProg 64 :=
.mark loopBody579_86

def loopBody579_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 14)

def loopBody579_89 : HolLoopProg 64 :=
.mark loopBody579_88

def loopBody579_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 9)

def loopBody579_91 : HolLoopProg 64 :=
.mark loopBody579_90

def loopBody579_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 10)

def loopBody579_93 : HolLoopProg 64 :=
.mark loopBody579_92

def loopBody579_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 11)

def loopBody579_95 : HolLoopProg 64 :=
.mark loopBody579_94

def loopBody579_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 12)

def loopBody579_97 : HolLoopProg 64 :=
.mark loopBody579_96

def loopBody579_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody579_99 : HolLoopProg 64 :=
.mark loopBody579_98

def loopBody579_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.const 4294967295#64)

def loopBody579_101 : HolLoopProg 64 :=
.mark loopBody579_100

def loopBody579_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.const 0#64)

def loopBody579_103 : HolLoopProg 64 :=
.mark loopBody579_102

def loopBody579_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.const 18446744069414584321#64)

def loopBody579_105 : HolLoopProg 64 :=
.mark loopBody579_104

def loopBody579_106 : HolLoopProg 64 :=
.call (some ([9, 10, 11, 12], Flapjack.Spt.ln)) (some 116) ([13, 14, 15, 16, 17, 18, 19, 20]) (some (13, loopBody579_57, loopBody579_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody579_107 : HolLoopProg 64 :=
.mark loopBody579_106

def loopBody579_108 : HolLoopProg 64 :=
.seq loopBody579_107 loopBody579_1

def loopBody579_109 : HolLoopProg 64 :=
.mark loopBody579_108

def loopBody579_110 : HolLoopProg 64 :=
.seq loopBody579_105 loopBody579_109

def loopBody579_111 : HolLoopProg 64 :=
.mark loopBody579_110

def loopBody579_112 : HolLoopProg 64 :=
.seq loopBody579_103 loopBody579_111

def loopBody579_113 : HolLoopProg 64 :=
.mark loopBody579_112

def loopBody579_114 : HolLoopProg 64 :=
.seq loopBody579_101 loopBody579_113

def loopBody579_115 : HolLoopProg 64 :=
.mark loopBody579_114

def loopBody579_116 : HolLoopProg 64 :=
.seq loopBody579_99 loopBody579_115

def loopBody579_117 : HolLoopProg 64 :=
.mark loopBody579_116

def loopBody579_118 : HolLoopProg 64 :=
.seq loopBody579_97 loopBody579_117

def loopBody579_119 : HolLoopProg 64 :=
.mark loopBody579_118

def loopBody579_120 : HolLoopProg 64 :=
.seq loopBody579_95 loopBody579_119

def loopBody579_121 : HolLoopProg 64 :=
.mark loopBody579_120

def loopBody579_122 : HolLoopProg 64 :=
.seq loopBody579_93 loopBody579_121

def loopBody579_123 : HolLoopProg 64 :=
.mark loopBody579_122

def loopBody579_124 : HolLoopProg 64 :=
.seq loopBody579_91 loopBody579_123

def loopBody579_125 : HolLoopProg 64 :=
.mark loopBody579_124

def loopBody579_126 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.RegImm.imm 0#64) loopBody579_125 loopBody579_1 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody579_127 : HolLoopProg 64 :=
.mark loopBody579_126

def loopBody579_128 : HolLoopProg 64 :=
.seq loopBody579_127 loopBody579_1

def loopBody579_129 : HolLoopProg 64 :=
.mark loopBody579_128

def loopBody579_130 : HolLoopProg 64 :=
.seq loopBody579_89 loopBody579_129

def loopBody579_131 : HolLoopProg 64 :=
.mark loopBody579_130

def loopBody579_132 : HolLoopProg 64 :=
.seq loopBody579_87 loopBody579_131

def loopBody579_133 : HolLoopProg 64 :=
.mark loopBody579_132

def loopBody579_134 : HolLoopProg 64 :=
.seq loopBody579_81 loopBody579_133

def loopBody579_135 : HolLoopProg 64 :=
.mark loopBody579_134

def loopBody579_136 : HolLoopProg 64 :=
.seq loopBody579_79 loopBody579_135

def loopBody579_137 : HolLoopProg 64 :=
.mark loopBody579_136

def loopBody579_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [13, 14, 15, 16]

def loopBody579_139 : HolLoopProg 64 :=
.mark loopBody579_138

def loopBody579_140 : HolLoopProg 64 :=
.seq loopBody579_139 loopBody579_1

def loopBody579_141 : HolLoopProg 64 :=
.mark loopBody579_140

def loopBody579_142 : HolLoopProg 64 :=
.seq loopBody579_97 loopBody579_141

def loopBody579_143 : HolLoopProg 64 :=
.mark loopBody579_142

def loopBody579_144 : HolLoopProg 64 :=
.seq loopBody579_95 loopBody579_143

def loopBody579_145 : HolLoopProg 64 :=
.mark loopBody579_144

def loopBody579_146 : HolLoopProg 64 :=
.seq loopBody579_93 loopBody579_145

def loopBody579_147 : HolLoopProg 64 :=
.mark loopBody579_146

def loopBody579_148 : HolLoopProg 64 :=
.seq loopBody579_91 loopBody579_147

def loopBody579_149 : HolLoopProg 64 :=
.mark loopBody579_148

def loopBody579_150 : HolLoopProg 64 :=
.seq loopBody579_137 loopBody579_149

def loopBody579_151 : HolLoopProg 64 :=
.mark loopBody579_150

def loopBody579_152 : HolLoopProg 64 :=
.seq loopBody579_77 loopBody579_151

def loopBody579_153 : HolLoopProg 64 :=
.mark loopBody579_152

def loopBody579_154 : HolLoopProg 64 :=
.seq loopBody579_1 loopBody579_153

def loopBody579_155 : HolLoopProg 64 :=
.mark loopBody579_154

def loopBody579_156 : HolLoopProg 64 :=
.seq loopBody579_1 loopBody579_155

def loopBody579_157 : HolLoopProg 64 :=
.mark loopBody579_156

def loopBody579_158 : HolLoopProg 64 :=
.seq loopBody579_1 loopBody579_157

def loopBody579_159 : HolLoopProg 64 :=
.mark loopBody579_158

def loopBody579_160 : HolLoopProg 64 :=
.seq loopBody579_1 loopBody579_159

def loopBody579_161 : HolLoopProg 64 :=
.mark loopBody579_160

def loopBody579_162 : HolLoopProg 64 :=
.seq loopBody579_1 loopBody579_161

def loopBody579_163 : HolLoopProg 64 :=
.mark loopBody579_162

def loopBody579_164 : HolLoopProg 64 :=
.seq loopBody579_1 loopBody579_163

def loopBody579_165 : HolLoopProg 64 :=
.mark loopBody579_164

def loopBody579_166 : HolLoopProg 64 :=
.seq loopBody579_1 loopBody579_165

def loopBody579_167 : HolLoopProg 64 :=
.mark loopBody579_166

def loopBody579_168 : HolLoopProg 64 :=
.seq loopBody579_1 loopBody579_167

def loopBody579_169 : HolLoopProg 64 :=
.mark loopBody579_168

def loopBody579_170 : HolLoopProg 64 :=
.seq loopBody579_39 loopBody579_169

def loopBody579_171 : HolLoopProg 64 :=
.mark loopBody579_170

def loopBody579_172 : HolLoopProg 64 :=
.seq loopBody579_1 loopBody579_171

def loopBody579_173 : HolLoopProg 64 :=
.mark loopBody579_172

def loopBody579_174 : HolLoopProg 64 :=
.seq loopBody579_1 loopBody579_173

def loopBody579_175 : HolLoopProg 64 :=
.mark loopBody579_174

def output579 : Nat × List Nat × HolLoopProg 64 :=
  (643, [0, 1, 2, 3, 4, 5, 6, 7], loopBody579_175)
end InitECandidate.Proofs.FrontendStages.Loop
