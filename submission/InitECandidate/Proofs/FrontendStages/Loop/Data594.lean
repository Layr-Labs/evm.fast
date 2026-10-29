import InitECandidate.Proofs.FrontendStages.Loop.Translate578
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody594_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody594_1 : HolLoopProg 64 :=
.mark loopBody594_0

def loopBody594_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 0)

def loopBody594_3 : HolLoopProg 64 :=
.mark loopBody594_2

def loopBody594_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 1)

def loopBody594_5 : HolLoopProg 64 :=
.mark loopBody594_4

def loopBody594_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody594_7 : HolLoopProg 64 :=
.mark loopBody594_6

def loopBody594_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody594_9 : HolLoopProg 64 :=
.mark loopBody594_8

def loopBody594_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 4)

def loopBody594_11 : HolLoopProg 64 :=
.mark loopBody594_10

def loopBody594_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 5)

def loopBody594_13 : HolLoopProg 64 :=
.mark loopBody594_12

def loopBody594_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 6)

def loopBody594_15 : HolLoopProg 64 :=
.mark loopBody594_14

def loopBody594_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 7)

def loopBody594_17 : HolLoopProg 64 :=
.mark loopBody594_16

def loopBody594_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 12

def loopBody594_19 : HolLoopProg 64 :=
.mark loopBody594_18

def loopBody594_20 : HolLoopProg 64 :=
.call (some ([8, 9, 10, 11], Flapjack.Spt.ln)) (some 116) ([12, 13, 14, 15, 16, 17, 18, 19]) (some (12, loopBody594_19, loopBody594_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody594_21 : HolLoopProg 64 :=
.mark loopBody594_20

def loopBody594_22 : HolLoopProg 64 :=
.seq loopBody594_21 loopBody594_1

def loopBody594_23 : HolLoopProg 64 :=
.mark loopBody594_22

def loopBody594_24 : HolLoopProg 64 :=
.seq loopBody594_17 loopBody594_23

def loopBody594_25 : HolLoopProg 64 :=
.mark loopBody594_24

def loopBody594_26 : HolLoopProg 64 :=
.seq loopBody594_15 loopBody594_25

def loopBody594_27 : HolLoopProg 64 :=
.mark loopBody594_26

def loopBody594_28 : HolLoopProg 64 :=
.seq loopBody594_13 loopBody594_27

def loopBody594_29 : HolLoopProg 64 :=
.mark loopBody594_28

def loopBody594_30 : HolLoopProg 64 :=
.seq loopBody594_11 loopBody594_29

def loopBody594_31 : HolLoopProg 64 :=
.mark loopBody594_30

def loopBody594_32 : HolLoopProg 64 :=
.seq loopBody594_9 loopBody594_31

def loopBody594_33 : HolLoopProg 64 :=
.mark loopBody594_32

def loopBody594_34 : HolLoopProg 64 :=
.seq loopBody594_7 loopBody594_33

def loopBody594_35 : HolLoopProg 64 :=
.mark loopBody594_34

def loopBody594_36 : HolLoopProg 64 :=
.seq loopBody594_5 loopBody594_35

def loopBody594_37 : HolLoopProg 64 :=
.mark loopBody594_36

def loopBody594_38 : HolLoopProg 64 :=
.seq loopBody594_3 loopBody594_37

def loopBody594_39 : HolLoopProg 64 :=
.mark loopBody594_38

def loopBody594_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 8)

def loopBody594_41 : HolLoopProg 64 :=
.mark loopBody594_40

def loopBody594_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody594_43 : HolLoopProg 64 :=
.mark loopBody594_42

def loopBody594_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 10)

def loopBody594_45 : HolLoopProg 64 :=
.mark loopBody594_44

def loopBody594_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 11)

def loopBody594_47 : HolLoopProg 64 :=
.mark loopBody594_46

def loopBody594_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.const 4332616871279656263#64)

def loopBody594_49 : HolLoopProg 64 :=
.mark loopBody594_48

def loopBody594_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.const 10917124144477883021#64)

def loopBody594_51 : HolLoopProg 64 :=
.mark loopBody594_50

def loopBody594_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.const 13281191951274694749#64)

def loopBody594_53 : HolLoopProg 64 :=
.mark loopBody594_52

def loopBody594_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.const 3486998266802970665#64)

def loopBody594_55 : HolLoopProg 64 :=
.mark loopBody594_54

def loopBody594_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody594_57 : HolLoopProg 64 :=
.mark loopBody594_56

def loopBody594_58 : HolLoopProg 64 :=
.call (some
  ([12],
    Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))) (some 106) ([13, 14, 15, 16, 17, 18, 19, 20]) (some (13, loopBody594_57, loopBody594_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody594_59 : HolLoopProg 64 :=
.mark loopBody594_58

def loopBody594_60 : HolLoopProg 64 :=
.seq loopBody594_59 loopBody594_1

def loopBody594_61 : HolLoopProg 64 :=
.mark loopBody594_60

def loopBody594_62 : HolLoopProg 64 :=
.seq loopBody594_55 loopBody594_61

def loopBody594_63 : HolLoopProg 64 :=
.mark loopBody594_62

def loopBody594_64 : HolLoopProg 64 :=
.seq loopBody594_53 loopBody594_63

def loopBody594_65 : HolLoopProg 64 :=
.mark loopBody594_64

def loopBody594_66 : HolLoopProg 64 :=
.seq loopBody594_51 loopBody594_65

def loopBody594_67 : HolLoopProg 64 :=
.mark loopBody594_66

def loopBody594_68 : HolLoopProg 64 :=
.seq loopBody594_49 loopBody594_67

def loopBody594_69 : HolLoopProg 64 :=
.mark loopBody594_68

def loopBody594_70 : HolLoopProg 64 :=
.seq loopBody594_47 loopBody594_69

def loopBody594_71 : HolLoopProg 64 :=
.mark loopBody594_70

def loopBody594_72 : HolLoopProg 64 :=
.seq loopBody594_45 loopBody594_71

def loopBody594_73 : HolLoopProg 64 :=
.mark loopBody594_72

def loopBody594_74 : HolLoopProg 64 :=
.seq loopBody594_43 loopBody594_73

def loopBody594_75 : HolLoopProg 64 :=
.mark loopBody594_74

def loopBody594_76 : HolLoopProg 64 :=
.seq loopBody594_41 loopBody594_75

def loopBody594_77 : HolLoopProg 64 :=
.mark loopBody594_76

def loopBody594_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 12)

def loopBody594_79 : HolLoopProg 64 :=
.mark loopBody594_78

def loopBody594_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 0#64)

def loopBody594_81 : HolLoopProg 64 :=
.mark loopBody594_80

def loopBody594_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 1#64)

def loopBody594_83 : HolLoopProg 64 :=
.mark loopBody594_82

def loopBody594_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody594_85 : HolLoopProg 64 :=
.mark loopBody594_84

def loopBody594_86 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.RegImm.reg 15) loopBody594_83 loopBody594_85 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody594_87 : HolLoopProg 64 :=
.mark loopBody594_86

def loopBody594_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 14)

def loopBody594_89 : HolLoopProg 64 :=
.mark loopBody594_88

def loopBody594_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 117) [13, 14, 15, 16, 17, 18, 19, 20] none

def loopBody594_91 : HolLoopProg 64 :=
.mark loopBody594_90

def loopBody594_92 : HolLoopProg 64 :=
.seq loopBody594_91 loopBody594_1

def loopBody594_93 : HolLoopProg 64 :=
.mark loopBody594_92

def loopBody594_94 : HolLoopProg 64 :=
.seq loopBody594_55 loopBody594_93

def loopBody594_95 : HolLoopProg 64 :=
.mark loopBody594_94

def loopBody594_96 : HolLoopProg 64 :=
.seq loopBody594_53 loopBody594_95

def loopBody594_97 : HolLoopProg 64 :=
.mark loopBody594_96

def loopBody594_98 : HolLoopProg 64 :=
.seq loopBody594_51 loopBody594_97

def loopBody594_99 : HolLoopProg 64 :=
.mark loopBody594_98

def loopBody594_100 : HolLoopProg 64 :=
.seq loopBody594_49 loopBody594_99

def loopBody594_101 : HolLoopProg 64 :=
.mark loopBody594_100

def loopBody594_102 : HolLoopProg 64 :=
.seq loopBody594_47 loopBody594_101

def loopBody594_103 : HolLoopProg 64 :=
.mark loopBody594_102

def loopBody594_104 : HolLoopProg 64 :=
.seq loopBody594_45 loopBody594_103

def loopBody594_105 : HolLoopProg 64 :=
.mark loopBody594_104

def loopBody594_106 : HolLoopProg 64 :=
.seq loopBody594_43 loopBody594_105

def loopBody594_107 : HolLoopProg 64 :=
.mark loopBody594_106

def loopBody594_108 : HolLoopProg 64 :=
.seq loopBody594_41 loopBody594_107

def loopBody594_109 : HolLoopProg 64 :=
.mark loopBody594_108

def loopBody594_110 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.RegImm.imm 0#64) loopBody594_109 loopBody594_1 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody594_111 : HolLoopProg 64 :=
.mark loopBody594_110

def loopBody594_112 : HolLoopProg 64 :=
.seq loopBody594_111 loopBody594_1

def loopBody594_113 : HolLoopProg 64 :=
.mark loopBody594_112

def loopBody594_114 : HolLoopProg 64 :=
.seq loopBody594_89 loopBody594_113

def loopBody594_115 : HolLoopProg 64 :=
.mark loopBody594_114

def loopBody594_116 : HolLoopProg 64 :=
.seq loopBody594_87 loopBody594_115

def loopBody594_117 : HolLoopProg 64 :=
.mark loopBody594_116

def loopBody594_118 : HolLoopProg 64 :=
.seq loopBody594_81 loopBody594_117

def loopBody594_119 : HolLoopProg 64 :=
.mark loopBody594_118

def loopBody594_120 : HolLoopProg 64 :=
.seq loopBody594_79 loopBody594_119

def loopBody594_121 : HolLoopProg 64 :=
.mark loopBody594_120

def loopBody594_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [13, 14, 15, 16]

def loopBody594_123 : HolLoopProg 64 :=
.mark loopBody594_122

def loopBody594_124 : HolLoopProg 64 :=
.seq loopBody594_123 loopBody594_1

def loopBody594_125 : HolLoopProg 64 :=
.mark loopBody594_124

def loopBody594_126 : HolLoopProg 64 :=
.seq loopBody594_47 loopBody594_125

def loopBody594_127 : HolLoopProg 64 :=
.mark loopBody594_126

def loopBody594_128 : HolLoopProg 64 :=
.seq loopBody594_45 loopBody594_127

def loopBody594_129 : HolLoopProg 64 :=
.mark loopBody594_128

def loopBody594_130 : HolLoopProg 64 :=
.seq loopBody594_43 loopBody594_129

def loopBody594_131 : HolLoopProg 64 :=
.mark loopBody594_130

def loopBody594_132 : HolLoopProg 64 :=
.seq loopBody594_41 loopBody594_131

def loopBody594_133 : HolLoopProg 64 :=
.mark loopBody594_132

def loopBody594_134 : HolLoopProg 64 :=
.seq loopBody594_121 loopBody594_133

def loopBody594_135 : HolLoopProg 64 :=
.mark loopBody594_134

def loopBody594_136 : HolLoopProg 64 :=
.seq loopBody594_77 loopBody594_135

def loopBody594_137 : HolLoopProg 64 :=
.mark loopBody594_136

def loopBody594_138 : HolLoopProg 64 :=
.seq loopBody594_1 loopBody594_137

def loopBody594_139 : HolLoopProg 64 :=
.mark loopBody594_138

def loopBody594_140 : HolLoopProg 64 :=
.seq loopBody594_1 loopBody594_139

def loopBody594_141 : HolLoopProg 64 :=
.mark loopBody594_140

def loopBody594_142 : HolLoopProg 64 :=
.seq loopBody594_39 loopBody594_141

def loopBody594_143 : HolLoopProg 64 :=
.mark loopBody594_142

def loopBody594_144 : HolLoopProg 64 :=
.seq loopBody594_1 loopBody594_143

def loopBody594_145 : HolLoopProg 64 :=
.mark loopBody594_144

def loopBody594_146 : HolLoopProg 64 :=
.seq loopBody594_1 loopBody594_145

def loopBody594_147 : HolLoopProg 64 :=
.mark loopBody594_146

def loopBody594_148 : HolLoopProg 64 :=
.seq loopBody594_1 loopBody594_147

def loopBody594_149 : HolLoopProg 64 :=
.mark loopBody594_148

def loopBody594_150 : HolLoopProg 64 :=
.seq loopBody594_1 loopBody594_149

def loopBody594_151 : HolLoopProg 64 :=
.mark loopBody594_150

def loopBody594_152 : HolLoopProg 64 :=
.seq loopBody594_1 loopBody594_151

def loopBody594_153 : HolLoopProg 64 :=
.mark loopBody594_152

def loopBody594_154 : HolLoopProg 64 :=
.seq loopBody594_1 loopBody594_153

def loopBody594_155 : HolLoopProg 64 :=
.mark loopBody594_154

def loopBody594_156 : HolLoopProg 64 :=
.seq loopBody594_1 loopBody594_155

def loopBody594_157 : HolLoopProg 64 :=
.mark loopBody594_156

def loopBody594_158 : HolLoopProg 64 :=
.seq loopBody594_1 loopBody594_157

def loopBody594_159 : HolLoopProg 64 :=
.mark loopBody594_158

def output594 : Nat × List Nat × HolLoopProg 64 :=
  (658, [0, 1, 2, 3, 4, 5, 6, 7], loopBody594_159)
end InitECandidate.Proofs.FrontendStages.Loop
