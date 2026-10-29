import InitECandidate.Proofs.FrontendStages.Loop.Translate451
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody467_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody467_1 : HolLoopProg 64 :=
.mark loopBody467_0

def loopBody467_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody467_3 : HolLoopProg 64 :=
.mark loopBody467_2

def loopBody467_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody467_3, loopBody467_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody467_5 : HolLoopProg 64 :=
.mark loopBody467_4

def loopBody467_6 : HolLoopProg 64 :=
.seq loopBody467_5 loopBody467_1

def loopBody467_7 : HolLoopProg 64 :=
.mark loopBody467_6

def loopBody467_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody467_9 : HolLoopProg 64 :=
.mark loopBody467_8

def loopBody467_10 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody467_9, loopBody467_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody467_11 : HolLoopProg 64 :=
.mark loopBody467_10

def loopBody467_12 : HolLoopProg 64 :=
.seq loopBody467_11 loopBody467_1

def loopBody467_13 : HolLoopProg 64 :=
.mark loopBody467_12

def loopBody467_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 3#64)

def loopBody467_15 : HolLoopProg 64 :=
.mark loopBody467_14

def loopBody467_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 1)

def loopBody467_17 : HolLoopProg 64 :=
.mark loopBody467_16

def loopBody467_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 2)

def loopBody467_19 : HolLoopProg 64 :=
.mark loopBody467_18

def loopBody467_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 3)

def loopBody467_21 : HolLoopProg 64 :=
.mark loopBody467_20

def loopBody467_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 4)

def loopBody467_23 : HolLoopProg 64 :=
.mark loopBody467_22

def loopBody467_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 1#64)

def loopBody467_25 : HolLoopProg 64 :=
.mark loopBody467_24

def loopBody467_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 0#64)

def loopBody467_27 : HolLoopProg 64 :=
.mark loopBody467_26

def loopBody467_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.const 0#64)

def loopBody467_29 : HolLoopProg 64 :=
.mark loopBody467_28

def loopBody467_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.const 0#64)

def loopBody467_31 : HolLoopProg 64 :=
.mark loopBody467_30

def loopBody467_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody467_33 : HolLoopProg 64 :=
.mark loopBody467_32

def loopBody467_34 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 483) ([10, 11, 12, 13, 14, 15, 16, 17, 18]) (some (10, loopBody467_33, loopBody467_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody467_35 : HolLoopProg 64 :=
.mark loopBody467_34

def loopBody467_36 : HolLoopProg 64 :=
.seq loopBody467_35 loopBody467_1

def loopBody467_37 : HolLoopProg 64 :=
.mark loopBody467_36

def loopBody467_38 : HolLoopProg 64 :=
.seq loopBody467_31 loopBody467_37

def loopBody467_39 : HolLoopProg 64 :=
.mark loopBody467_38

def loopBody467_40 : HolLoopProg 64 :=
.seq loopBody467_29 loopBody467_39

def loopBody467_41 : HolLoopProg 64 :=
.mark loopBody467_40

def loopBody467_42 : HolLoopProg 64 :=
.seq loopBody467_27 loopBody467_41

def loopBody467_43 : HolLoopProg 64 :=
.mark loopBody467_42

def loopBody467_44 : HolLoopProg 64 :=
.seq loopBody467_25 loopBody467_43

def loopBody467_45 : HolLoopProg 64 :=
.mark loopBody467_44

def loopBody467_46 : HolLoopProg 64 :=
.seq loopBody467_23 loopBody467_45

def loopBody467_47 : HolLoopProg 64 :=
.mark loopBody467_46

def loopBody467_48 : HolLoopProg 64 :=
.seq loopBody467_21 loopBody467_47

def loopBody467_49 : HolLoopProg 64 :=
.mark loopBody467_48

def loopBody467_50 : HolLoopProg 64 :=
.seq loopBody467_19 loopBody467_49

def loopBody467_51 : HolLoopProg 64 :=
.mark loopBody467_50

def loopBody467_52 : HolLoopProg 64 :=
.seq loopBody467_17 loopBody467_51

def loopBody467_53 : HolLoopProg 64 :=
.mark loopBody467_52

def loopBody467_54 : HolLoopProg 64 :=
.seq loopBody467_15 loopBody467_53

def loopBody467_55 : HolLoopProg 64 :=
.mark loopBody467_54

def loopBody467_56 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_55

def loopBody467_57 : HolLoopProg 64 :=
.mark loopBody467_56

def loopBody467_58 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_57

def loopBody467_59 : HolLoopProg 64 :=
.mark loopBody467_58

def loopBody467_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody467_61 : HolLoopProg 64 :=
.mark loopBody467_60

def loopBody467_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody467_63 : HolLoopProg 64 :=
.mark loopBody467_62

def loopBody467_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody467_65 : HolLoopProg 64 :=
.mark loopBody467_64

def loopBody467_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody467_67 : HolLoopProg 64 :=
.mark loopBody467_66

def loopBody467_68 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 462) ([10, 11, 12, 13]) (some (10, loopBody467_33, loopBody467_1, (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))

def loopBody467_69 : HolLoopProg 64 :=
.mark loopBody467_68

def loopBody467_70 : HolLoopProg 64 :=
.seq loopBody467_69 loopBody467_1

def loopBody467_71 : HolLoopProg 64 :=
.mark loopBody467_70

def loopBody467_72 : HolLoopProg 64 :=
.seq loopBody467_67 loopBody467_71

def loopBody467_73 : HolLoopProg 64 :=
.mark loopBody467_72

def loopBody467_74 : HolLoopProg 64 :=
.seq loopBody467_65 loopBody467_73

def loopBody467_75 : HolLoopProg 64 :=
.mark loopBody467_74

def loopBody467_76 : HolLoopProg 64 :=
.seq loopBody467_63 loopBody467_75

def loopBody467_77 : HolLoopProg 64 :=
.mark loopBody467_76

def loopBody467_78 : HolLoopProg 64 :=
.seq loopBody467_61 loopBody467_77

def loopBody467_79 : HolLoopProg 64 :=
.mark loopBody467_78

def loopBody467_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 24#64]),
      Flapjack.HolLoopExp.var 9])

def loopBody467_81 : HolLoopProg 64 :=
.mark loopBody467_80

def loopBody467_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 255#64])

def loopBody467_83 : HolLoopProg 64 :=
.mark loopBody467_82

def loopBody467_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 10 11

def loopBody467_85 : HolLoopProg 64 :=
.mark loopBody467_84

def loopBody467_86 : HolLoopProg 64 :=
.seq loopBody467_85 loopBody467_1

def loopBody467_87 : HolLoopProg 64 :=
.mark loopBody467_86

def loopBody467_88 : HolLoopProg 64 :=
.seq loopBody467_83 loopBody467_87

def loopBody467_89 : HolLoopProg 64 :=
.mark loopBody467_88

def loopBody467_90 : HolLoopProg 64 :=
.seq loopBody467_81 loopBody467_89

def loopBody467_91 : HolLoopProg 64 :=
.mark loopBody467_90

def loopBody467_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 1#64)

def loopBody467_93 : HolLoopProg 64 :=
.mark loopBody467_92

def loopBody467_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody467_95 : HolLoopProg 64 :=
.mark loopBody467_94

def loopBody467_96 : HolLoopProg 64 :=
.call (some ([10], Flapjack.Spt.ln)) (some 490) ([11]) (some (11, loopBody467_95, loopBody467_1, (Flapjack.Spt.ln)))

def loopBody467_97 : HolLoopProg 64 :=
.mark loopBody467_96

def loopBody467_98 : HolLoopProg 64 :=
.seq loopBody467_97 loopBody467_1

def loopBody467_99 : HolLoopProg 64 :=
.mark loopBody467_98

def loopBody467_100 : HolLoopProg 64 :=
.seq loopBody467_93 loopBody467_99

def loopBody467_101 : HolLoopProg 64 :=
.mark loopBody467_100

def loopBody467_102 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_101

def loopBody467_103 : HolLoopProg 64 :=
.mark loopBody467_102

def loopBody467_104 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_103

def loopBody467_105 : HolLoopProg 64 :=
.mark loopBody467_104

def loopBody467_106 : HolLoopProg 64 :=
.seq loopBody467_91 loopBody467_105

def loopBody467_107 : HolLoopProg 64 :=
.mark loopBody467_106

def loopBody467_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody467_109 : HolLoopProg 64 :=
.mark loopBody467_108

def loopBody467_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [10]

def loopBody467_111 : HolLoopProg 64 :=
.mark loopBody467_110

def loopBody467_112 : HolLoopProg 64 :=
.seq loopBody467_111 loopBody467_1

def loopBody467_113 : HolLoopProg 64 :=
.mark loopBody467_112

def loopBody467_114 : HolLoopProg 64 :=
.seq loopBody467_109 loopBody467_113

def loopBody467_115 : HolLoopProg 64 :=
.mark loopBody467_114

def loopBody467_116 : HolLoopProg 64 :=
.seq loopBody467_107 loopBody467_115

def loopBody467_117 : HolLoopProg 64 :=
.mark loopBody467_116

def loopBody467_118 : HolLoopProg 64 :=
.seq loopBody467_79 loopBody467_117

def loopBody467_119 : HolLoopProg 64 :=
.mark loopBody467_118

def loopBody467_120 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_119

def loopBody467_121 : HolLoopProg 64 :=
.mark loopBody467_120

def loopBody467_122 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_121

def loopBody467_123 : HolLoopProg 64 :=
.mark loopBody467_122

def loopBody467_124 : HolLoopProg 64 :=
.seq loopBody467_59 loopBody467_123

def loopBody467_125 : HolLoopProg 64 :=
.mark loopBody467_124

def loopBody467_126 : HolLoopProg 64 :=
.seq loopBody467_13 loopBody467_125

def loopBody467_127 : HolLoopProg 64 :=
.mark loopBody467_126

def loopBody467_128 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_127

def loopBody467_129 : HolLoopProg 64 :=
.mark loopBody467_128

def loopBody467_130 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_129

def loopBody467_131 : HolLoopProg 64 :=
.mark loopBody467_130

def loopBody467_132 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_131

def loopBody467_133 : HolLoopProg 64 :=
.mark loopBody467_132

def loopBody467_134 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_133

def loopBody467_135 : HolLoopProg 64 :=
.mark loopBody467_134

def loopBody467_136 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_135

def loopBody467_137 : HolLoopProg 64 :=
.mark loopBody467_136

def loopBody467_138 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_137

def loopBody467_139 : HolLoopProg 64 :=
.mark loopBody467_138

def loopBody467_140 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_139

def loopBody467_141 : HolLoopProg 64 :=
.mark loopBody467_140

def loopBody467_142 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_141

def loopBody467_143 : HolLoopProg 64 :=
.mark loopBody467_142

def loopBody467_144 : HolLoopProg 64 :=
.seq loopBody467_7 loopBody467_143

def loopBody467_145 : HolLoopProg 64 :=
.mark loopBody467_144

def loopBody467_146 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_145

def loopBody467_147 : HolLoopProg 64 :=
.mark loopBody467_146

def loopBody467_148 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_147

def loopBody467_149 : HolLoopProg 64 :=
.mark loopBody467_148

def loopBody467_150 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_149

def loopBody467_151 : HolLoopProg 64 :=
.mark loopBody467_150

def loopBody467_152 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_151

def loopBody467_153 : HolLoopProg 64 :=
.mark loopBody467_152

def loopBody467_154 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_153

def loopBody467_155 : HolLoopProg 64 :=
.mark loopBody467_154

def loopBody467_156 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_155

def loopBody467_157 : HolLoopProg 64 :=
.mark loopBody467_156

def loopBody467_158 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_157

def loopBody467_159 : HolLoopProg 64 :=
.mark loopBody467_158

def loopBody467_160 : HolLoopProg 64 :=
.seq loopBody467_1 loopBody467_159

def loopBody467_161 : HolLoopProg 64 :=
.mark loopBody467_160

def output467 : Nat × List Nat × HolLoopProg 64 :=
  (531, [], loopBody467_161)
end InitECandidate.Proofs.FrontendStages.Loop
