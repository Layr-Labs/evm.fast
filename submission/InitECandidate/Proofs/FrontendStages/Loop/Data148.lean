import InitECandidate.Proofs.FrontendStages.Loop.Translate132
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody148_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody148_1 : HolLoopProg 64 :=
.mark loopBody148_0

def loopBody148_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 0)

def loopBody148_3 : HolLoopProg 64 :=
.mark loopBody148_2

def loopBody148_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 1)

def loopBody148_5 : HolLoopProg 64 :=
.mark loopBody148_4

def loopBody148_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 2)

def loopBody148_7 : HolLoopProg 64 :=
.mark loopBody148_6

def loopBody148_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 3)

def loopBody148_9 : HolLoopProg 64 :=
.mark loopBody148_8

def loopBody148_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 4)

def loopBody148_11 : HolLoopProg 64 :=
.mark loopBody148_10

def loopBody148_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 5)

def loopBody148_13 : HolLoopProg 64 :=
.mark loopBody148_12

def loopBody148_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 6)

def loopBody148_15 : HolLoopProg 64 :=
.mark loopBody148_14

def loopBody148_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 7)

def loopBody148_17 : HolLoopProg 64 :=
.mark loopBody148_16

def loopBody148_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody148_19 : HolLoopProg 64 :=
.mark loopBody148_18

def loopBody148_20 : HolLoopProg 64 :=
.call (some
  ([12],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 106) ([13, 14, 15, 16, 17, 18, 19, 20]) (some (13, loopBody148_19, loopBody148_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody148_21 : HolLoopProg 64 :=
.mark loopBody148_20

def loopBody148_22 : HolLoopProg 64 :=
.seq loopBody148_21 loopBody148_1

def loopBody148_23 : HolLoopProg 64 :=
.mark loopBody148_22

def loopBody148_24 : HolLoopProg 64 :=
.seq loopBody148_17 loopBody148_23

def loopBody148_25 : HolLoopProg 64 :=
.mark loopBody148_24

def loopBody148_26 : HolLoopProg 64 :=
.seq loopBody148_15 loopBody148_25

def loopBody148_27 : HolLoopProg 64 :=
.mark loopBody148_26

def loopBody148_28 : HolLoopProg 64 :=
.seq loopBody148_13 loopBody148_27

def loopBody148_29 : HolLoopProg 64 :=
.mark loopBody148_28

def loopBody148_30 : HolLoopProg 64 :=
.seq loopBody148_11 loopBody148_29

def loopBody148_31 : HolLoopProg 64 :=
.mark loopBody148_30

def loopBody148_32 : HolLoopProg 64 :=
.seq loopBody148_9 loopBody148_31

def loopBody148_33 : HolLoopProg 64 :=
.mark loopBody148_32

def loopBody148_34 : HolLoopProg 64 :=
.seq loopBody148_7 loopBody148_33

def loopBody148_35 : HolLoopProg 64 :=
.mark loopBody148_34

def loopBody148_36 : HolLoopProg 64 :=
.seq loopBody148_5 loopBody148_35

def loopBody148_37 : HolLoopProg 64 :=
.mark loopBody148_36

def loopBody148_38 : HolLoopProg 64 :=
.seq loopBody148_3 loopBody148_37

def loopBody148_39 : HolLoopProg 64 :=
.mark loopBody148_38

def loopBody148_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 0)

def loopBody148_41 : HolLoopProg 64 :=
.mark loopBody148_40

def loopBody148_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 1)

def loopBody148_43 : HolLoopProg 64 :=
.mark loopBody148_42

def loopBody148_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 2)

def loopBody148_45 : HolLoopProg 64 :=
.mark loopBody148_44

def loopBody148_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 3)

def loopBody148_47 : HolLoopProg 64 :=
.mark loopBody148_46

def loopBody148_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 4)

def loopBody148_49 : HolLoopProg 64 :=
.mark loopBody148_48

def loopBody148_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 5)

def loopBody148_51 : HolLoopProg 64 :=
.mark loopBody148_50

def loopBody148_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.var 6)

def loopBody148_53 : HolLoopProg 64 :=
.mark loopBody148_52

def loopBody148_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 24 (Flapjack.HolLoopExp.var 7)

def loopBody148_55 : HolLoopProg 64 :=
.mark loopBody148_54

def loopBody148_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 17

def loopBody148_57 : HolLoopProg 64 :=
.mark loopBody148_56

def loopBody148_58 : HolLoopProg 64 :=
.call (some
  ([13, 14, 15, 16],
    Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))) (some 117) ([17, 18, 19, 20, 21, 22, 23, 24]) (some (17, loopBody148_57, loopBody148_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody148_59 : HolLoopProg 64 :=
.mark loopBody148_58

def loopBody148_60 : HolLoopProg 64 :=
.seq loopBody148_59 loopBody148_1

def loopBody148_61 : HolLoopProg 64 :=
.mark loopBody148_60

def loopBody148_62 : HolLoopProg 64 :=
.seq loopBody148_55 loopBody148_61

def loopBody148_63 : HolLoopProg 64 :=
.mark loopBody148_62

def loopBody148_64 : HolLoopProg 64 :=
.seq loopBody148_53 loopBody148_63

def loopBody148_65 : HolLoopProg 64 :=
.mark loopBody148_64

def loopBody148_66 : HolLoopProg 64 :=
.seq loopBody148_51 loopBody148_65

def loopBody148_67 : HolLoopProg 64 :=
.mark loopBody148_66

def loopBody148_68 : HolLoopProg 64 :=
.seq loopBody148_49 loopBody148_67

def loopBody148_69 : HolLoopProg 64 :=
.mark loopBody148_68

def loopBody148_70 : HolLoopProg 64 :=
.seq loopBody148_47 loopBody148_69

def loopBody148_71 : HolLoopProg 64 :=
.mark loopBody148_70

def loopBody148_72 : HolLoopProg 64 :=
.seq loopBody148_45 loopBody148_71

def loopBody148_73 : HolLoopProg 64 :=
.mark loopBody148_72

def loopBody148_74 : HolLoopProg 64 :=
.seq loopBody148_43 loopBody148_73

def loopBody148_75 : HolLoopProg 64 :=
.mark loopBody148_74

def loopBody148_76 : HolLoopProg 64 :=
.seq loopBody148_41 loopBody148_75

def loopBody148_77 : HolLoopProg 64 :=
.mark loopBody148_76

def loopBody148_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 12)

def loopBody148_79 : HolLoopProg 64 :=
.mark loopBody148_78

def loopBody148_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.const 1#64)

def loopBody148_81 : HolLoopProg 64 :=
.mark loopBody148_80

def loopBody148_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.const 1#64)

def loopBody148_83 : HolLoopProg 64 :=
.mark loopBody148_82

def loopBody148_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.const 0#64)

def loopBody148_85 : HolLoopProg 64 :=
.mark loopBody148_84

def loopBody148_86 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.RegImm.reg 19) loopBody148_83 loopBody148_85 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody148_87 : HolLoopProg 64 :=
.mark loopBody148_86

def loopBody148_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 18)

def loopBody148_89 : HolLoopProg 64 :=
.mark loopBody148_88

def loopBody148_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 13)

def loopBody148_91 : HolLoopProg 64 :=
.mark loopBody148_90

def loopBody148_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 14)

def loopBody148_93 : HolLoopProg 64 :=
.mark loopBody148_92

def loopBody148_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 15)

def loopBody148_95 : HolLoopProg 64 :=
.mark loopBody148_94

def loopBody148_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 16)

def loopBody148_97 : HolLoopProg 64 :=
.mark loopBody148_96

def loopBody148_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 8)

def loopBody148_99 : HolLoopProg 64 :=
.mark loopBody148_98

def loopBody148_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 9)

def loopBody148_101 : HolLoopProg 64 :=
.mark loopBody148_100

def loopBody148_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.var 10)

def loopBody148_103 : HolLoopProg 64 :=
.mark loopBody148_102

def loopBody148_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 24 (Flapjack.HolLoopExp.var 11)

def loopBody148_105 : HolLoopProg 64 :=
.mark loopBody148_104

def loopBody148_106 : HolLoopProg 64 :=
.call (some ([13, 14, 15, 16], Flapjack.Spt.ln)) (some 116) ([17, 18, 19, 20, 21, 22, 23, 24]) (some (17, loopBody148_57, loopBody148_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody148_107 : HolLoopProg 64 :=
.mark loopBody148_106

def loopBody148_108 : HolLoopProg 64 :=
.seq loopBody148_107 loopBody148_1

def loopBody148_109 : HolLoopProg 64 :=
.mark loopBody148_108

def loopBody148_110 : HolLoopProg 64 :=
.seq loopBody148_105 loopBody148_109

def loopBody148_111 : HolLoopProg 64 :=
.mark loopBody148_110

def loopBody148_112 : HolLoopProg 64 :=
.seq loopBody148_103 loopBody148_111

def loopBody148_113 : HolLoopProg 64 :=
.mark loopBody148_112

def loopBody148_114 : HolLoopProg 64 :=
.seq loopBody148_101 loopBody148_113

def loopBody148_115 : HolLoopProg 64 :=
.mark loopBody148_114

def loopBody148_116 : HolLoopProg 64 :=
.seq loopBody148_99 loopBody148_115

def loopBody148_117 : HolLoopProg 64 :=
.mark loopBody148_116

def loopBody148_118 : HolLoopProg 64 :=
.seq loopBody148_97 loopBody148_117

def loopBody148_119 : HolLoopProg 64 :=
.mark loopBody148_118

def loopBody148_120 : HolLoopProg 64 :=
.seq loopBody148_95 loopBody148_119

def loopBody148_121 : HolLoopProg 64 :=
.mark loopBody148_120

def loopBody148_122 : HolLoopProg 64 :=
.seq loopBody148_93 loopBody148_121

def loopBody148_123 : HolLoopProg 64 :=
.mark loopBody148_122

def loopBody148_124 : HolLoopProg 64 :=
.seq loopBody148_91 loopBody148_123

def loopBody148_125 : HolLoopProg 64 :=
.mark loopBody148_124

def loopBody148_126 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.RegImm.imm 0#64) loopBody148_125 loopBody148_1 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody148_127 : HolLoopProg 64 :=
.mark loopBody148_126

def loopBody148_128 : HolLoopProg 64 :=
.seq loopBody148_127 loopBody148_1

def loopBody148_129 : HolLoopProg 64 :=
.mark loopBody148_128

def loopBody148_130 : HolLoopProg 64 :=
.seq loopBody148_89 loopBody148_129

def loopBody148_131 : HolLoopProg 64 :=
.mark loopBody148_130

def loopBody148_132 : HolLoopProg 64 :=
.seq loopBody148_87 loopBody148_131

def loopBody148_133 : HolLoopProg 64 :=
.mark loopBody148_132

def loopBody148_134 : HolLoopProg 64 :=
.seq loopBody148_81 loopBody148_133

def loopBody148_135 : HolLoopProg 64 :=
.mark loopBody148_134

def loopBody148_136 : HolLoopProg 64 :=
.seq loopBody148_79 loopBody148_135

def loopBody148_137 : HolLoopProg 64 :=
.mark loopBody148_136

def loopBody148_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [17, 18, 19, 20]

def loopBody148_139 : HolLoopProg 64 :=
.mark loopBody148_138

def loopBody148_140 : HolLoopProg 64 :=
.seq loopBody148_139 loopBody148_1

def loopBody148_141 : HolLoopProg 64 :=
.mark loopBody148_140

def loopBody148_142 : HolLoopProg 64 :=
.seq loopBody148_97 loopBody148_141

def loopBody148_143 : HolLoopProg 64 :=
.mark loopBody148_142

def loopBody148_144 : HolLoopProg 64 :=
.seq loopBody148_95 loopBody148_143

def loopBody148_145 : HolLoopProg 64 :=
.mark loopBody148_144

def loopBody148_146 : HolLoopProg 64 :=
.seq loopBody148_93 loopBody148_145

def loopBody148_147 : HolLoopProg 64 :=
.mark loopBody148_146

def loopBody148_148 : HolLoopProg 64 :=
.seq loopBody148_91 loopBody148_147

def loopBody148_149 : HolLoopProg 64 :=
.mark loopBody148_148

def loopBody148_150 : HolLoopProg 64 :=
.seq loopBody148_137 loopBody148_149

def loopBody148_151 : HolLoopProg 64 :=
.mark loopBody148_150

def loopBody148_152 : HolLoopProg 64 :=
.seq loopBody148_77 loopBody148_151

def loopBody148_153 : HolLoopProg 64 :=
.mark loopBody148_152

def loopBody148_154 : HolLoopProg 64 :=
.seq loopBody148_1 loopBody148_153

def loopBody148_155 : HolLoopProg 64 :=
.mark loopBody148_154

def loopBody148_156 : HolLoopProg 64 :=
.seq loopBody148_1 loopBody148_155

def loopBody148_157 : HolLoopProg 64 :=
.mark loopBody148_156

def loopBody148_158 : HolLoopProg 64 :=
.seq loopBody148_1 loopBody148_157

def loopBody148_159 : HolLoopProg 64 :=
.mark loopBody148_158

def loopBody148_160 : HolLoopProg 64 :=
.seq loopBody148_1 loopBody148_159

def loopBody148_161 : HolLoopProg 64 :=
.mark loopBody148_160

def loopBody148_162 : HolLoopProg 64 :=
.seq loopBody148_1 loopBody148_161

def loopBody148_163 : HolLoopProg 64 :=
.mark loopBody148_162

def loopBody148_164 : HolLoopProg 64 :=
.seq loopBody148_1 loopBody148_163

def loopBody148_165 : HolLoopProg 64 :=
.mark loopBody148_164

def loopBody148_166 : HolLoopProg 64 :=
.seq loopBody148_1 loopBody148_165

def loopBody148_167 : HolLoopProg 64 :=
.mark loopBody148_166

def loopBody148_168 : HolLoopProg 64 :=
.seq loopBody148_1 loopBody148_167

def loopBody148_169 : HolLoopProg 64 :=
.mark loopBody148_168

def loopBody148_170 : HolLoopProg 64 :=
.seq loopBody148_39 loopBody148_169

def loopBody148_171 : HolLoopProg 64 :=
.mark loopBody148_170

def loopBody148_172 : HolLoopProg 64 :=
.seq loopBody148_1 loopBody148_171

def loopBody148_173 : HolLoopProg 64 :=
.mark loopBody148_172

def loopBody148_174 : HolLoopProg 64 :=
.seq loopBody148_1 loopBody148_173

def loopBody148_175 : HolLoopProg 64 :=
.mark loopBody148_174

def output148 : Nat × List Nat × HolLoopProg 64 :=
  (212, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], loopBody148_175)
end InitECandidate.Proofs.FrontendStages.Loop
