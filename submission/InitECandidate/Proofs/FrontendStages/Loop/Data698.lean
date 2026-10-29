import InitECandidate.Proofs.FrontendStages.Loop.Translate682
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody698_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody698_1 : HolLoopProg 64 :=
.mark loopBody698_0

def loopBody698_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody698_3 : HolLoopProg 64 :=
.mark loopBody698_2

def loopBody698_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody698_5 : HolLoopProg 64 :=
.mark loopBody698_4

def loopBody698_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody698_7 : HolLoopProg 64 :=
.mark loopBody698_6

def loopBody698_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 738) ([3, 4]) (some (3, loopBody698_7, loopBody698_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody698_9 : HolLoopProg 64 :=
.mark loopBody698_8

def loopBody698_10 : HolLoopProg 64 :=
.seq loopBody698_9 loopBody698_1

def loopBody698_11 : HolLoopProg 64 :=
.mark loopBody698_10

def loopBody698_12 : HolLoopProg 64 :=
.seq loopBody698_5 loopBody698_11

def loopBody698_13 : HolLoopProg 64 :=
.mark loopBody698_12

def loopBody698_14 : HolLoopProg 64 :=
.seq loopBody698_3 loopBody698_13

def loopBody698_15 : HolLoopProg 64 :=
.mark loopBody698_14

def loopBody698_16 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_15

def loopBody698_17 : HolLoopProg 64 :=
.mark loopBody698_16

def loopBody698_18 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_17

def loopBody698_19 : HolLoopProg 64 :=
.mark loopBody698_18

def loopBody698_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64])

def loopBody698_21 : HolLoopProg 64 :=
.mark loopBody698_20

def loopBody698_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64])

def loopBody698_23 : HolLoopProg 64 :=
.mark loopBody698_22

def loopBody698_24 : HolLoopProg 64 :=
.seq loopBody698_23 loopBody698_11

def loopBody698_25 : HolLoopProg 64 :=
.mark loopBody698_24

def loopBody698_26 : HolLoopProg 64 :=
.seq loopBody698_21 loopBody698_25

def loopBody698_27 : HolLoopProg 64 :=
.mark loopBody698_26

def loopBody698_28 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_27

def loopBody698_29 : HolLoopProg 64 :=
.mark loopBody698_28

def loopBody698_30 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_29

def loopBody698_31 : HolLoopProg 64 :=
.mark loopBody698_30

def loopBody698_32 : HolLoopProg 64 :=
.seq loopBody698_19 loopBody698_31

def loopBody698_33 : HolLoopProg 64 :=
.mark loopBody698_32

def loopBody698_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64])

def loopBody698_35 : HolLoopProg 64 :=
.mark loopBody698_34

def loopBody698_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 392#64]),
      Flapjack.HolLoopExp.const 960#64])

def loopBody698_37 : HolLoopProg 64 :=
.mark loopBody698_36

def loopBody698_38 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 739) ([3, 4, 5]) (some (3, loopBody698_7, loopBody698_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody698_39 : HolLoopProg 64 :=
.mark loopBody698_38

def loopBody698_40 : HolLoopProg 64 :=
.seq loopBody698_39 loopBody698_1

def loopBody698_41 : HolLoopProg 64 :=
.mark loopBody698_40

def loopBody698_42 : HolLoopProg 64 :=
.seq loopBody698_37 loopBody698_41

def loopBody698_43 : HolLoopProg 64 :=
.mark loopBody698_42

def loopBody698_44 : HolLoopProg 64 :=
.seq loopBody698_35 loopBody698_43

def loopBody698_45 : HolLoopProg 64 :=
.mark loopBody698_44

def loopBody698_46 : HolLoopProg 64 :=
.seq loopBody698_21 loopBody698_45

def loopBody698_47 : HolLoopProg 64 :=
.mark loopBody698_46

def loopBody698_48 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_47

def loopBody698_49 : HolLoopProg 64 :=
.mark loopBody698_48

def loopBody698_50 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_49

def loopBody698_51 : HolLoopProg 64 :=
.mark loopBody698_50

def loopBody698_52 : HolLoopProg 64 :=
.seq loopBody698_33 loopBody698_51

def loopBody698_53 : HolLoopProg 64 :=
.mark loopBody698_52

def loopBody698_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 192#64])

def loopBody698_55 : HolLoopProg 64 :=
.mark loopBody698_54

def loopBody698_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 192#64])

def loopBody698_57 : HolLoopProg 64 :=
.mark loopBody698_56

def loopBody698_58 : HolLoopProg 64 :=
.seq loopBody698_57 loopBody698_11

def loopBody698_59 : HolLoopProg 64 :=
.mark loopBody698_58

def loopBody698_60 : HolLoopProg 64 :=
.seq loopBody698_55 loopBody698_59

def loopBody698_61 : HolLoopProg 64 :=
.mark loopBody698_60

def loopBody698_62 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_61

def loopBody698_63 : HolLoopProg 64 :=
.mark loopBody698_62

def loopBody698_64 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_63

def loopBody698_65 : HolLoopProg 64 :=
.mark loopBody698_64

def loopBody698_66 : HolLoopProg 64 :=
.seq loopBody698_53 loopBody698_65

def loopBody698_67 : HolLoopProg 64 :=
.mark loopBody698_66

def loopBody698_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 192#64])

def loopBody698_69 : HolLoopProg 64 :=
.mark loopBody698_68

def loopBody698_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 392#64]),
      Flapjack.HolLoopExp.const 1152#64])

def loopBody698_71 : HolLoopProg 64 :=
.mark loopBody698_70

def loopBody698_72 : HolLoopProg 64 :=
.seq loopBody698_71 loopBody698_41

def loopBody698_73 : HolLoopProg 64 :=
.mark loopBody698_72

def loopBody698_74 : HolLoopProg 64 :=
.seq loopBody698_69 loopBody698_73

def loopBody698_75 : HolLoopProg 64 :=
.mark loopBody698_74

def loopBody698_76 : HolLoopProg 64 :=
.seq loopBody698_55 loopBody698_75

def loopBody698_77 : HolLoopProg 64 :=
.mark loopBody698_76

def loopBody698_78 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_77

def loopBody698_79 : HolLoopProg 64 :=
.mark loopBody698_78

def loopBody698_80 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_79

def loopBody698_81 : HolLoopProg 64 :=
.mark loopBody698_80

def loopBody698_82 : HolLoopProg 64 :=
.seq loopBody698_67 loopBody698_81

def loopBody698_83 : HolLoopProg 64 :=
.mark loopBody698_82

def loopBody698_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 288#64])

def loopBody698_85 : HolLoopProg 64 :=
.mark loopBody698_84

def loopBody698_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 288#64])

def loopBody698_87 : HolLoopProg 64 :=
.mark loopBody698_86

def loopBody698_88 : HolLoopProg 64 :=
.seq loopBody698_87 loopBody698_11

def loopBody698_89 : HolLoopProg 64 :=
.mark loopBody698_88

def loopBody698_90 : HolLoopProg 64 :=
.seq loopBody698_85 loopBody698_89

def loopBody698_91 : HolLoopProg 64 :=
.mark loopBody698_90

def loopBody698_92 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_91

def loopBody698_93 : HolLoopProg 64 :=
.mark loopBody698_92

def loopBody698_94 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_93

def loopBody698_95 : HolLoopProg 64 :=
.mark loopBody698_94

def loopBody698_96 : HolLoopProg 64 :=
.seq loopBody698_83 loopBody698_95

def loopBody698_97 : HolLoopProg 64 :=
.mark loopBody698_96

def loopBody698_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 288#64])

def loopBody698_99 : HolLoopProg 64 :=
.mark loopBody698_98

def loopBody698_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 392#64]),
      Flapjack.HolLoopExp.const 864#64])

def loopBody698_101 : HolLoopProg 64 :=
.mark loopBody698_100

def loopBody698_102 : HolLoopProg 64 :=
.seq loopBody698_101 loopBody698_41

def loopBody698_103 : HolLoopProg 64 :=
.mark loopBody698_102

def loopBody698_104 : HolLoopProg 64 :=
.seq loopBody698_99 loopBody698_103

def loopBody698_105 : HolLoopProg 64 :=
.mark loopBody698_104

def loopBody698_106 : HolLoopProg 64 :=
.seq loopBody698_85 loopBody698_105

def loopBody698_107 : HolLoopProg 64 :=
.mark loopBody698_106

def loopBody698_108 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_107

def loopBody698_109 : HolLoopProg 64 :=
.mark loopBody698_108

def loopBody698_110 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_109

def loopBody698_111 : HolLoopProg 64 :=
.mark loopBody698_110

def loopBody698_112 : HolLoopProg 64 :=
.seq loopBody698_97 loopBody698_111

def loopBody698_113 : HolLoopProg 64 :=
.mark loopBody698_112

def loopBody698_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 384#64])

def loopBody698_115 : HolLoopProg 64 :=
.mark loopBody698_114

def loopBody698_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 384#64])

def loopBody698_117 : HolLoopProg 64 :=
.mark loopBody698_116

def loopBody698_118 : HolLoopProg 64 :=
.seq loopBody698_117 loopBody698_11

def loopBody698_119 : HolLoopProg 64 :=
.mark loopBody698_118

def loopBody698_120 : HolLoopProg 64 :=
.seq loopBody698_115 loopBody698_119

def loopBody698_121 : HolLoopProg 64 :=
.mark loopBody698_120

def loopBody698_122 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_121

def loopBody698_123 : HolLoopProg 64 :=
.mark loopBody698_122

def loopBody698_124 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_123

def loopBody698_125 : HolLoopProg 64 :=
.mark loopBody698_124

def loopBody698_126 : HolLoopProg 64 :=
.seq loopBody698_113 loopBody698_125

def loopBody698_127 : HolLoopProg 64 :=
.mark loopBody698_126

def loopBody698_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 384#64])

def loopBody698_129 : HolLoopProg 64 :=
.mark loopBody698_128

def loopBody698_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 392#64]),
      Flapjack.HolLoopExp.const 1056#64])

def loopBody698_131 : HolLoopProg 64 :=
.mark loopBody698_130

def loopBody698_132 : HolLoopProg 64 :=
.seq loopBody698_131 loopBody698_41

def loopBody698_133 : HolLoopProg 64 :=
.mark loopBody698_132

def loopBody698_134 : HolLoopProg 64 :=
.seq loopBody698_129 loopBody698_133

def loopBody698_135 : HolLoopProg 64 :=
.mark loopBody698_134

def loopBody698_136 : HolLoopProg 64 :=
.seq loopBody698_115 loopBody698_135

def loopBody698_137 : HolLoopProg 64 :=
.mark loopBody698_136

def loopBody698_138 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_137

def loopBody698_139 : HolLoopProg 64 :=
.mark loopBody698_138

def loopBody698_140 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_139

def loopBody698_141 : HolLoopProg 64 :=
.mark loopBody698_140

def loopBody698_142 : HolLoopProg 64 :=
.seq loopBody698_127 loopBody698_141

def loopBody698_143 : HolLoopProg 64 :=
.mark loopBody698_142

def loopBody698_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 480#64])

def loopBody698_145 : HolLoopProg 64 :=
.mark loopBody698_144

def loopBody698_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 480#64])

def loopBody698_147 : HolLoopProg 64 :=
.mark loopBody698_146

def loopBody698_148 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ls PUnit.unit)) (some 738) ([3, 4]) (some (3, loopBody698_7, loopBody698_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody698_149 : HolLoopProg 64 :=
.mark loopBody698_148

def loopBody698_150 : HolLoopProg 64 :=
.seq loopBody698_149 loopBody698_1

def loopBody698_151 : HolLoopProg 64 :=
.mark loopBody698_150

def loopBody698_152 : HolLoopProg 64 :=
.seq loopBody698_147 loopBody698_151

def loopBody698_153 : HolLoopProg 64 :=
.mark loopBody698_152

def loopBody698_154 : HolLoopProg 64 :=
.seq loopBody698_145 loopBody698_153

def loopBody698_155 : HolLoopProg 64 :=
.mark loopBody698_154

def loopBody698_156 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_155

def loopBody698_157 : HolLoopProg 64 :=
.mark loopBody698_156

def loopBody698_158 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_157

def loopBody698_159 : HolLoopProg 64 :=
.mark loopBody698_158

def loopBody698_160 : HolLoopProg 64 :=
.seq loopBody698_143 loopBody698_159

def loopBody698_161 : HolLoopProg 64 :=
.mark loopBody698_160

def loopBody698_162 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 480#64])

def loopBody698_163 : HolLoopProg 64 :=
.mark loopBody698_162

def loopBody698_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 392#64]),
      Flapjack.HolLoopExp.const 1248#64])

def loopBody698_165 : HolLoopProg 64 :=
.mark loopBody698_164

def loopBody698_166 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 739) ([3, 4, 5]) (some (3, loopBody698_7, loopBody698_1, (Flapjack.Spt.ln)))

def loopBody698_167 : HolLoopProg 64 :=
.mark loopBody698_166

def loopBody698_168 : HolLoopProg 64 :=
.seq loopBody698_167 loopBody698_1

def loopBody698_169 : HolLoopProg 64 :=
.mark loopBody698_168

def loopBody698_170 : HolLoopProg 64 :=
.seq loopBody698_165 loopBody698_169

def loopBody698_171 : HolLoopProg 64 :=
.mark loopBody698_170

def loopBody698_172 : HolLoopProg 64 :=
.seq loopBody698_163 loopBody698_171

def loopBody698_173 : HolLoopProg 64 :=
.mark loopBody698_172

def loopBody698_174 : HolLoopProg 64 :=
.seq loopBody698_145 loopBody698_173

def loopBody698_175 : HolLoopProg 64 :=
.mark loopBody698_174

def loopBody698_176 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_175

def loopBody698_177 : HolLoopProg 64 :=
.mark loopBody698_176

def loopBody698_178 : HolLoopProg 64 :=
.seq loopBody698_1 loopBody698_177

def loopBody698_179 : HolLoopProg 64 :=
.mark loopBody698_178

def loopBody698_180 : HolLoopProg 64 :=
.seq loopBody698_161 loopBody698_179

def loopBody698_181 : HolLoopProg 64 :=
.mark loopBody698_180

def loopBody698_182 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody698_183 : HolLoopProg 64 :=
.mark loopBody698_182

def loopBody698_184 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody698_185 : HolLoopProg 64 :=
.mark loopBody698_184

def loopBody698_186 : HolLoopProg 64 :=
.seq loopBody698_185 loopBody698_1

def loopBody698_187 : HolLoopProg 64 :=
.mark loopBody698_186

def loopBody698_188 : HolLoopProg 64 :=
.seq loopBody698_183 loopBody698_187

def loopBody698_189 : HolLoopProg 64 :=
.mark loopBody698_188

def loopBody698_190 : HolLoopProg 64 :=
.seq loopBody698_181 loopBody698_189

def loopBody698_191 : HolLoopProg 64 :=
.mark loopBody698_190

def output698 : Nat × List Nat × HolLoopProg 64 :=
  (762, [0, 1], loopBody698_191)
end InitECandidate.Proofs.FrontendStages.Loop
