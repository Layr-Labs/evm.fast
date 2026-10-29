import InitECandidate.Proofs.FrontendStages.Loop.Translate686
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody702_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody702_1 : HolLoopProg 64 :=
.mark loopBody702_0

def loopBody702_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 0)

def loopBody702_3 : HolLoopProg 64 :=
.mark loopBody702_2

def loopBody702_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 8505329371266088957#64)

def loopBody702_5 : HolLoopProg 64 :=
.mark loopBody702_4

def loopBody702_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 17002214543764226050#64)

def loopBody702_7 : HolLoopProg 64 :=
.mark loopBody702_6

def loopBody702_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 6865905132761471162#64)

def loopBody702_9 : HolLoopProg 64 :=
.mark loopBody702_8

def loopBody702_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 8632934651105793861#64)

def loopBody702_11 : HolLoopProg 64 :=
.mark loopBody702_10

def loopBody702_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 6631298214892334189#64)

def loopBody702_13 : HolLoopProg 64 :=
.mark loopBody702_12

def loopBody702_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1582556514881692819#64)

def loopBody702_15 : HolLoopProg 64 :=
.mark loopBody702_14

def loopBody702_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody702_17 : HolLoopProg 64 :=
.mark loopBody702_16

def loopBody702_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 8

def loopBody702_19 : HolLoopProg 64 :=
.mark loopBody702_18

def loopBody702_20 : HolLoopProg 64 :=
.seq loopBody702_19 loopBody702_1

def loopBody702_21 : HolLoopProg 64 :=
.mark loopBody702_20

def loopBody702_22 : HolLoopProg 64 :=
.seq loopBody702_17 loopBody702_21

def loopBody702_23 : HolLoopProg 64 :=
.mark loopBody702_22

def loopBody702_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody702_25 : HolLoopProg 64 :=
.mark loopBody702_24

def loopBody702_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 8#64]) 8

def loopBody702_27 : HolLoopProg 64 :=
.mark loopBody702_26

def loopBody702_28 : HolLoopProg 64 :=
.seq loopBody702_27 loopBody702_1

def loopBody702_29 : HolLoopProg 64 :=
.mark loopBody702_28

def loopBody702_30 : HolLoopProg 64 :=
.seq loopBody702_25 loopBody702_29

def loopBody702_31 : HolLoopProg 64 :=
.mark loopBody702_30

def loopBody702_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody702_33 : HolLoopProg 64 :=
.mark loopBody702_32

def loopBody702_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 16#64]) 8

def loopBody702_35 : HolLoopProg 64 :=
.mark loopBody702_34

def loopBody702_36 : HolLoopProg 64 :=
.seq loopBody702_35 loopBody702_1

def loopBody702_37 : HolLoopProg 64 :=
.mark loopBody702_36

def loopBody702_38 : HolLoopProg 64 :=
.seq loopBody702_33 loopBody702_37

def loopBody702_39 : HolLoopProg 64 :=
.mark loopBody702_38

def loopBody702_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody702_41 : HolLoopProg 64 :=
.mark loopBody702_40

def loopBody702_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 24#64]) 8

def loopBody702_43 : HolLoopProg 64 :=
.mark loopBody702_42

def loopBody702_44 : HolLoopProg 64 :=
.seq loopBody702_43 loopBody702_1

def loopBody702_45 : HolLoopProg 64 :=
.mark loopBody702_44

def loopBody702_46 : HolLoopProg 64 :=
.seq loopBody702_41 loopBody702_45

def loopBody702_47 : HolLoopProg 64 :=
.mark loopBody702_46

def loopBody702_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody702_49 : HolLoopProg 64 :=
.mark loopBody702_48

def loopBody702_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 32#64]) 8

def loopBody702_51 : HolLoopProg 64 :=
.mark loopBody702_50

def loopBody702_52 : HolLoopProg 64 :=
.seq loopBody702_51 loopBody702_1

def loopBody702_53 : HolLoopProg 64 :=
.mark loopBody702_52

def loopBody702_54 : HolLoopProg 64 :=
.seq loopBody702_49 loopBody702_53

def loopBody702_55 : HolLoopProg 64 :=
.mark loopBody702_54

def loopBody702_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 7)

def loopBody702_57 : HolLoopProg 64 :=
.mark loopBody702_56

def loopBody702_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 40#64]) 8

def loopBody702_59 : HolLoopProg 64 :=
.mark loopBody702_58

def loopBody702_60 : HolLoopProg 64 :=
.seq loopBody702_59 loopBody702_1

def loopBody702_61 : HolLoopProg 64 :=
.mark loopBody702_60

def loopBody702_62 : HolLoopProg 64 :=
.seq loopBody702_57 loopBody702_61

def loopBody702_63 : HolLoopProg 64 :=
.mark loopBody702_62

def loopBody702_64 : HolLoopProg 64 :=
.seq loopBody702_63 loopBody702_1

def loopBody702_65 : HolLoopProg 64 :=
.mark loopBody702_64

def loopBody702_66 : HolLoopProg 64 :=
.seq loopBody702_55 loopBody702_65

def loopBody702_67 : HolLoopProg 64 :=
.mark loopBody702_66

def loopBody702_68 : HolLoopProg 64 :=
.seq loopBody702_47 loopBody702_67

def loopBody702_69 : HolLoopProg 64 :=
.mark loopBody702_68

def loopBody702_70 : HolLoopProg 64 :=
.seq loopBody702_39 loopBody702_69

def loopBody702_71 : HolLoopProg 64 :=
.mark loopBody702_70

def loopBody702_72 : HolLoopProg 64 :=
.seq loopBody702_31 loopBody702_71

def loopBody702_73 : HolLoopProg 64 :=
.mark loopBody702_72

def loopBody702_74 : HolLoopProg 64 :=
.seq loopBody702_23 loopBody702_73

def loopBody702_75 : HolLoopProg 64 :=
.mark loopBody702_74

def loopBody702_76 : HolLoopProg 64 :=
.seq loopBody702_15 loopBody702_75

def loopBody702_77 : HolLoopProg 64 :=
.mark loopBody702_76

def loopBody702_78 : HolLoopProg 64 :=
.seq loopBody702_1 loopBody702_77

def loopBody702_79 : HolLoopProg 64 :=
.mark loopBody702_78

def loopBody702_80 : HolLoopProg 64 :=
.seq loopBody702_13 loopBody702_79

def loopBody702_81 : HolLoopProg 64 :=
.mark loopBody702_80

def loopBody702_82 : HolLoopProg 64 :=
.seq loopBody702_1 loopBody702_81

def loopBody702_83 : HolLoopProg 64 :=
.mark loopBody702_82

def loopBody702_84 : HolLoopProg 64 :=
.seq loopBody702_11 loopBody702_83

def loopBody702_85 : HolLoopProg 64 :=
.mark loopBody702_84

def loopBody702_86 : HolLoopProg 64 :=
.seq loopBody702_1 loopBody702_85

def loopBody702_87 : HolLoopProg 64 :=
.mark loopBody702_86

def loopBody702_88 : HolLoopProg 64 :=
.seq loopBody702_9 loopBody702_87

def loopBody702_89 : HolLoopProg 64 :=
.mark loopBody702_88

def loopBody702_90 : HolLoopProg 64 :=
.seq loopBody702_1 loopBody702_89

def loopBody702_91 : HolLoopProg 64 :=
.mark loopBody702_90

def loopBody702_92 : HolLoopProg 64 :=
.seq loopBody702_7 loopBody702_91

def loopBody702_93 : HolLoopProg 64 :=
.mark loopBody702_92

def loopBody702_94 : HolLoopProg 64 :=
.seq loopBody702_1 loopBody702_93

def loopBody702_95 : HolLoopProg 64 :=
.mark loopBody702_94

def loopBody702_96 : HolLoopProg 64 :=
.seq loopBody702_5 loopBody702_95

def loopBody702_97 : HolLoopProg 64 :=
.mark loopBody702_96

def loopBody702_98 : HolLoopProg 64 :=
.seq loopBody702_1 loopBody702_97

def loopBody702_99 : HolLoopProg 64 :=
.mark loopBody702_98

def loopBody702_100 : HolLoopProg 64 :=
.seq loopBody702_3 loopBody702_99

def loopBody702_101 : HolLoopProg 64 :=
.mark loopBody702_100

def loopBody702_102 : HolLoopProg 64 :=
.seq loopBody702_1 loopBody702_101

def loopBody702_103 : HolLoopProg 64 :=
.mark loopBody702_102

def loopBody702_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64])

def loopBody702_105 : HolLoopProg 64 :=
.mark loopBody702_104

def loopBody702_106 : HolLoopProg 64 :=
.seq loopBody702_105 loopBody702_99

def loopBody702_107 : HolLoopProg 64 :=
.mark loopBody702_106

def loopBody702_108 : HolLoopProg 64 :=
.seq loopBody702_1 loopBody702_107

def loopBody702_109 : HolLoopProg 64 :=
.mark loopBody702_108

def loopBody702_110 : HolLoopProg 64 :=
.seq loopBody702_103 loopBody702_109

def loopBody702_111 : HolLoopProg 64 :=
.mark loopBody702_110

def loopBody702_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64])

def loopBody702_113 : HolLoopProg 64 :=
.mark loopBody702_112

def loopBody702_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody702_115 : HolLoopProg 64 :=
.mark loopBody702_114

def loopBody702_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody702_117 : HolLoopProg 64 :=
.mark loopBody702_116

def loopBody702_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody702_119 : HolLoopProg 64 :=
.mark loopBody702_118

def loopBody702_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody702_121 : HolLoopProg 64 :=
.mark loopBody702_120

def loopBody702_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody702_123 : HolLoopProg 64 :=
.mark loopBody702_122

def loopBody702_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody702_125 : HolLoopProg 64 :=
.mark loopBody702_124

def loopBody702_126 : HolLoopProg 64 :=
.seq loopBody702_125 loopBody702_75

def loopBody702_127 : HolLoopProg 64 :=
.mark loopBody702_126

def loopBody702_128 : HolLoopProg 64 :=
.seq loopBody702_1 loopBody702_127

def loopBody702_129 : HolLoopProg 64 :=
.mark loopBody702_128

def loopBody702_130 : HolLoopProg 64 :=
.seq loopBody702_123 loopBody702_129

def loopBody702_131 : HolLoopProg 64 :=
.mark loopBody702_130

def loopBody702_132 : HolLoopProg 64 :=
.seq loopBody702_1 loopBody702_131

def loopBody702_133 : HolLoopProg 64 :=
.mark loopBody702_132

def loopBody702_134 : HolLoopProg 64 :=
.seq loopBody702_121 loopBody702_133

def loopBody702_135 : HolLoopProg 64 :=
.mark loopBody702_134

def loopBody702_136 : HolLoopProg 64 :=
.seq loopBody702_1 loopBody702_135

def loopBody702_137 : HolLoopProg 64 :=
.mark loopBody702_136

def loopBody702_138 : HolLoopProg 64 :=
.seq loopBody702_119 loopBody702_137

def loopBody702_139 : HolLoopProg 64 :=
.mark loopBody702_138

def loopBody702_140 : HolLoopProg 64 :=
.seq loopBody702_1 loopBody702_139

def loopBody702_141 : HolLoopProg 64 :=
.mark loopBody702_140

def loopBody702_142 : HolLoopProg 64 :=
.seq loopBody702_117 loopBody702_141

def loopBody702_143 : HolLoopProg 64 :=
.mark loopBody702_142

def loopBody702_144 : HolLoopProg 64 :=
.seq loopBody702_1 loopBody702_143

def loopBody702_145 : HolLoopProg 64 :=
.mark loopBody702_144

def loopBody702_146 : HolLoopProg 64 :=
.seq loopBody702_115 loopBody702_145

def loopBody702_147 : HolLoopProg 64 :=
.mark loopBody702_146

def loopBody702_148 : HolLoopProg 64 :=
.seq loopBody702_1 loopBody702_147

def loopBody702_149 : HolLoopProg 64 :=
.mark loopBody702_148

def loopBody702_150 : HolLoopProg 64 :=
.seq loopBody702_113 loopBody702_149

def loopBody702_151 : HolLoopProg 64 :=
.mark loopBody702_150

def loopBody702_152 : HolLoopProg 64 :=
.seq loopBody702_1 loopBody702_151

def loopBody702_153 : HolLoopProg 64 :=
.mark loopBody702_152

def loopBody702_154 : HolLoopProg 64 :=
.seq loopBody702_111 loopBody702_153

def loopBody702_155 : HolLoopProg 64 :=
.mark loopBody702_154

def loopBody702_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody702_157 : HolLoopProg 64 :=
.mark loopBody702_156

def loopBody702_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody702_159 : HolLoopProg 64 :=
.mark loopBody702_158

def loopBody702_160 : HolLoopProg 64 :=
.seq loopBody702_159 loopBody702_1

def loopBody702_161 : HolLoopProg 64 :=
.mark loopBody702_160

def loopBody702_162 : HolLoopProg 64 :=
.seq loopBody702_157 loopBody702_161

def loopBody702_163 : HolLoopProg 64 :=
.mark loopBody702_162

def loopBody702_164 : HolLoopProg 64 :=
.seq loopBody702_155 loopBody702_163

def loopBody702_165 : HolLoopProg 64 :=
.mark loopBody702_164

def output702 : Nat × List Nat × HolLoopProg 64 :=
  (766, [0], loopBody702_165)
end InitECandidate.Proofs.FrontendStages.Loop
