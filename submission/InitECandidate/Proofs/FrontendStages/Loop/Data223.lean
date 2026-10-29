import InitECandidate.Proofs.FrontendStages.Loop.Translate207
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody223_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody223_1 : HolLoopProg 64 :=
.mark loopBody223_0

def loopBody223_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 32#64)

def loopBody223_3 : HolLoopProg 64 :=
.mark loopBody223_2

def loopBody223_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody223_5 : HolLoopProg 64 :=
.mark loopBody223_4

def loopBody223_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 68) ([2]) (some (2, loopBody223_5, loopBody223_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody223_7 : HolLoopProg 64 :=
.mark loopBody223_6

def loopBody223_8 : HolLoopProg 64 :=
.seq loopBody223_7 loopBody223_1

def loopBody223_9 : HolLoopProg 64 :=
.mark loopBody223_8

def loopBody223_10 : HolLoopProg 64 :=
.seq loopBody223_3 loopBody223_9

def loopBody223_11 : HolLoopProg 64 :=
.mark loopBody223_10

def loopBody223_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 128#64])

def loopBody223_13 : HolLoopProg 64 :=
.mark loopBody223_12

def loopBody223_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody223_15 : HolLoopProg 64 :=
.mark loopBody223_14

def loopBody223_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody223_17 : HolLoopProg 64 :=
.mark loopBody223_16

def loopBody223_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 2) 4

def loopBody223_19 : HolLoopProg 64 :=
.mark loopBody223_18

def loopBody223_20 : HolLoopProg 64 :=
.seq loopBody223_19 loopBody223_1

def loopBody223_21 : HolLoopProg 64 :=
.mark loopBody223_20

def loopBody223_22 : HolLoopProg 64 :=
.seq loopBody223_17 loopBody223_21

def loopBody223_23 : HolLoopProg 64 :=
.mark loopBody223_22

def loopBody223_24 : HolLoopProg 64 :=
.seq loopBody223_23 loopBody223_1

def loopBody223_25 : HolLoopProg 64 :=
.mark loopBody223_24

def loopBody223_26 : HolLoopProg 64 :=
.seq loopBody223_15 loopBody223_25

def loopBody223_27 : HolLoopProg 64 :=
.mark loopBody223_26

def loopBody223_28 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_27

def loopBody223_29 : HolLoopProg 64 :=
.mark loopBody223_28

def loopBody223_30 : HolLoopProg 64 :=
.seq loopBody223_13 loopBody223_29

def loopBody223_31 : HolLoopProg 64 :=
.mark loopBody223_30

def loopBody223_32 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_31

def loopBody223_33 : HolLoopProg 64 :=
.mark loopBody223_32

def loopBody223_34 : HolLoopProg 64 :=
.seq loopBody223_11 loopBody223_33

def loopBody223_35 : HolLoopProg 64 :=
.mark loopBody223_34

def loopBody223_36 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_35

def loopBody223_37 : HolLoopProg 64 :=
.mark loopBody223_36

def loopBody223_38 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_37

def loopBody223_39 : HolLoopProg 64 :=
.mark loopBody223_38

def loopBody223_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 136#64])

def loopBody223_41 : HolLoopProg 64 :=
.mark loopBody223_40

def loopBody223_42 : HolLoopProg 64 :=
.seq loopBody223_41 loopBody223_29

def loopBody223_43 : HolLoopProg 64 :=
.mark loopBody223_42

def loopBody223_44 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_43

def loopBody223_45 : HolLoopProg 64 :=
.mark loopBody223_44

def loopBody223_46 : HolLoopProg 64 :=
.seq loopBody223_11 loopBody223_45

def loopBody223_47 : HolLoopProg 64 :=
.mark loopBody223_46

def loopBody223_48 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_47

def loopBody223_49 : HolLoopProg 64 :=
.mark loopBody223_48

def loopBody223_50 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_49

def loopBody223_51 : HolLoopProg 64 :=
.mark loopBody223_50

def loopBody223_52 : HolLoopProg 64 :=
.seq loopBody223_39 loopBody223_51

def loopBody223_53 : HolLoopProg 64 :=
.mark loopBody223_52

def loopBody223_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 64#64)

def loopBody223_55 : HolLoopProg 64 :=
.mark loopBody223_54

def loopBody223_56 : HolLoopProg 64 :=
.seq loopBody223_55 loopBody223_9

def loopBody223_57 : HolLoopProg 64 :=
.mark loopBody223_56

def loopBody223_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 144#64])

def loopBody223_59 : HolLoopProg 64 :=
.mark loopBody223_58

def loopBody223_60 : HolLoopProg 64 :=
.seq loopBody223_59 loopBody223_29

def loopBody223_61 : HolLoopProg 64 :=
.mark loopBody223_60

def loopBody223_62 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_61

def loopBody223_63 : HolLoopProg 64 :=
.mark loopBody223_62

def loopBody223_64 : HolLoopProg 64 :=
.seq loopBody223_57 loopBody223_63

def loopBody223_65 : HolLoopProg 64 :=
.mark loopBody223_64

def loopBody223_66 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_65

def loopBody223_67 : HolLoopProg 64 :=
.mark loopBody223_66

def loopBody223_68 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_67

def loopBody223_69 : HolLoopProg 64 :=
.mark loopBody223_68

def loopBody223_70 : HolLoopProg 64 :=
.seq loopBody223_53 loopBody223_69

def loopBody223_71 : HolLoopProg 64 :=
.mark loopBody223_70

def loopBody223_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 40#64)

def loopBody223_73 : HolLoopProg 64 :=
.mark loopBody223_72

def loopBody223_74 : HolLoopProg 64 :=
.seq loopBody223_73 loopBody223_9

def loopBody223_75 : HolLoopProg 64 :=
.mark loopBody223_74

def loopBody223_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 152#64])

def loopBody223_77 : HolLoopProg 64 :=
.mark loopBody223_76

def loopBody223_78 : HolLoopProg 64 :=
.seq loopBody223_77 loopBody223_29

def loopBody223_79 : HolLoopProg 64 :=
.mark loopBody223_78

def loopBody223_80 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_79

def loopBody223_81 : HolLoopProg 64 :=
.mark loopBody223_80

def loopBody223_82 : HolLoopProg 64 :=
.seq loopBody223_75 loopBody223_81

def loopBody223_83 : HolLoopProg 64 :=
.mark loopBody223_82

def loopBody223_84 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_83

def loopBody223_85 : HolLoopProg 64 :=
.mark loopBody223_84

def loopBody223_86 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_85

def loopBody223_87 : HolLoopProg 64 :=
.mark loopBody223_86

def loopBody223_88 : HolLoopProg 64 :=
.seq loopBody223_71 loopBody223_87

def loopBody223_89 : HolLoopProg 64 :=
.mark loopBody223_88

def loopBody223_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 16#64)

def loopBody223_91 : HolLoopProg 64 :=
.mark loopBody223_90

def loopBody223_92 : HolLoopProg 64 :=
.seq loopBody223_91 loopBody223_9

def loopBody223_93 : HolLoopProg 64 :=
.mark loopBody223_92

def loopBody223_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 160#64])

def loopBody223_95 : HolLoopProg 64 :=
.mark loopBody223_94

def loopBody223_96 : HolLoopProg 64 :=
.seq loopBody223_95 loopBody223_29

def loopBody223_97 : HolLoopProg 64 :=
.mark loopBody223_96

def loopBody223_98 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_97

def loopBody223_99 : HolLoopProg 64 :=
.mark loopBody223_98

def loopBody223_100 : HolLoopProg 64 :=
.seq loopBody223_93 loopBody223_99

def loopBody223_101 : HolLoopProg 64 :=
.mark loopBody223_100

def loopBody223_102 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_101

def loopBody223_103 : HolLoopProg 64 :=
.mark loopBody223_102

def loopBody223_104 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_103

def loopBody223_105 : HolLoopProg 64 :=
.mark loopBody223_104

def loopBody223_106 : HolLoopProg 64 :=
.seq loopBody223_89 loopBody223_105

def loopBody223_107 : HolLoopProg 64 :=
.mark loopBody223_106

def loopBody223_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 152#64]))

def loopBody223_109 : HolLoopProg 64 :=
.mark loopBody223_108

def loopBody223_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 128#64)

def loopBody223_111 : HolLoopProg 64 :=
.mark loopBody223_110

def loopBody223_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 1 2

def loopBody223_113 : HolLoopProg 64 :=
.mark loopBody223_112

def loopBody223_114 : HolLoopProg 64 :=
.seq loopBody223_113 loopBody223_1

def loopBody223_115 : HolLoopProg 64 :=
.mark loopBody223_114

def loopBody223_116 : HolLoopProg 64 :=
.seq loopBody223_111 loopBody223_115

def loopBody223_117 : HolLoopProg 64 :=
.mark loopBody223_116

def loopBody223_118 : HolLoopProg 64 :=
.seq loopBody223_109 loopBody223_117

def loopBody223_119 : HolLoopProg 64 :=
.mark loopBody223_118

def loopBody223_120 : HolLoopProg 64 :=
.seq loopBody223_107 loopBody223_119

def loopBody223_121 : HolLoopProg 64 :=
.mark loopBody223_120

def loopBody223_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 152#64]))

def loopBody223_123 : HolLoopProg 64 :=
.mark loopBody223_122

def loopBody223_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody223_125 : HolLoopProg 64 :=
.mark loopBody223_124

def loopBody223_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 128#64]))

def loopBody223_127 : HolLoopProg 64 :=
.mark loopBody223_126

def loopBody223_128 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 158) ([2, 3, 4]) (some (2, loopBody223_5, loopBody223_1, (Flapjack.Spt.ln)))

def loopBody223_129 : HolLoopProg 64 :=
.mark loopBody223_128

def loopBody223_130 : HolLoopProg 64 :=
.seq loopBody223_129 loopBody223_1

def loopBody223_131 : HolLoopProg 64 :=
.mark loopBody223_130

def loopBody223_132 : HolLoopProg 64 :=
.seq loopBody223_127 loopBody223_131

def loopBody223_133 : HolLoopProg 64 :=
.mark loopBody223_132

def loopBody223_134 : HolLoopProg 64 :=
.seq loopBody223_125 loopBody223_133

def loopBody223_135 : HolLoopProg 64 :=
.mark loopBody223_134

def loopBody223_136 : HolLoopProg 64 :=
.seq loopBody223_123 loopBody223_135

def loopBody223_137 : HolLoopProg 64 :=
.mark loopBody223_136

def loopBody223_138 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_137

def loopBody223_139 : HolLoopProg 64 :=
.mark loopBody223_138

def loopBody223_140 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_139

def loopBody223_141 : HolLoopProg 64 :=
.mark loopBody223_140

def loopBody223_142 : HolLoopProg 64 :=
.seq loopBody223_121 loopBody223_141

def loopBody223_143 : HolLoopProg 64 :=
.mark loopBody223_142

def loopBody223_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody223_145 : HolLoopProg 64 :=
.mark loopBody223_144

def loopBody223_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 136#64]))

def loopBody223_147 : HolLoopProg 64 :=
.mark loopBody223_146

def loopBody223_148 : HolLoopProg 64 :=
.seq loopBody223_147 loopBody223_131

def loopBody223_149 : HolLoopProg 64 :=
.mark loopBody223_148

def loopBody223_150 : HolLoopProg 64 :=
.seq loopBody223_145 loopBody223_149

def loopBody223_151 : HolLoopProg 64 :=
.mark loopBody223_150

def loopBody223_152 : HolLoopProg 64 :=
.seq loopBody223_123 loopBody223_151

def loopBody223_153 : HolLoopProg 64 :=
.mark loopBody223_152

def loopBody223_154 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_153

def loopBody223_155 : HolLoopProg 64 :=
.mark loopBody223_154

def loopBody223_156 : HolLoopProg 64 :=
.seq loopBody223_1 loopBody223_155

def loopBody223_157 : HolLoopProg 64 :=
.mark loopBody223_156

def loopBody223_158 : HolLoopProg 64 :=
.seq loopBody223_143 loopBody223_157

def loopBody223_159 : HolLoopProg 64 :=
.mark loopBody223_158

def loopBody223_160 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody223_161 : HolLoopProg 64 :=
.mark loopBody223_160

def loopBody223_162 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody223_163 : HolLoopProg 64 :=
.mark loopBody223_162

def loopBody223_164 : HolLoopProg 64 :=
.seq loopBody223_163 loopBody223_1

def loopBody223_165 : HolLoopProg 64 :=
.mark loopBody223_164

def loopBody223_166 : HolLoopProg 64 :=
.seq loopBody223_161 loopBody223_165

def loopBody223_167 : HolLoopProg 64 :=
.mark loopBody223_166

def loopBody223_168 : HolLoopProg 64 :=
.seq loopBody223_159 loopBody223_167

def loopBody223_169 : HolLoopProg 64 :=
.mark loopBody223_168

def output223 : Nat × List Nat × HolLoopProg 64 :=
  (287, [], loopBody223_169)
end InitECandidate.Proofs.FrontendStages.Loop
