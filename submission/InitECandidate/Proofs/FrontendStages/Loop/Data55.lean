import InitECandidate.Proofs.FrontendStages.Loop.Translate39
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody55_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody55_1 : HolLoopProg 64 :=
.mark loopBody55_0

def loopBody55_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4294967295#64])

def loopBody55_3 : HolLoopProg 64 :=
.mark loopBody55_2

def loopBody55_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 32#64))

def loopBody55_5 : HolLoopProg 64 :=
.mark loopBody55_4

def loopBody55_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 4294967295#64])

def loopBody55_7 : HolLoopProg 64 :=
.mark loopBody55_6

def loopBody55_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 32#64))

def loopBody55_9 : HolLoopProg 64 :=
.mark loopBody55_8

def loopBody55_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody55_11 : HolLoopProg 64 :=
.mark loopBody55_10

def loopBody55_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody55_13 : HolLoopProg 64 :=
.mark loopBody55_12

def loopBody55_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 8 8 6 7)

def loopBody55_15 : HolLoopProg 64 :=
.mark loopBody55_14

def loopBody55_16 : HolLoopProg 64 :=
.seq loopBody55_15 loopBody55_1

def loopBody55_17 : HolLoopProg 64 :=
.mark loopBody55_16

def loopBody55_18 : HolLoopProg 64 :=
.seq loopBody55_13 loopBody55_17

def loopBody55_19 : HolLoopProg 64 :=
.mark loopBody55_18

def loopBody55_20 : HolLoopProg 64 :=
.seq loopBody55_11 loopBody55_19

def loopBody55_21 : HolLoopProg 64 :=
.mark loopBody55_20

def loopBody55_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 8)

def loopBody55_23 : HolLoopProg 64 :=
.mark loopBody55_22

def loopBody55_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody55_25 : HolLoopProg 64 :=
.mark loopBody55_24

def loopBody55_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody55_27 : HolLoopProg 64 :=
.mark loopBody55_26

def loopBody55_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 12 12 10 11)

def loopBody55_29 : HolLoopProg 64 :=
.mark loopBody55_28

def loopBody55_30 : HolLoopProg 64 :=
.seq loopBody55_29 loopBody55_1

def loopBody55_31 : HolLoopProg 64 :=
.mark loopBody55_30

def loopBody55_32 : HolLoopProg 64 :=
.seq loopBody55_27 loopBody55_31

def loopBody55_33 : HolLoopProg 64 :=
.mark loopBody55_32

def loopBody55_34 : HolLoopProg 64 :=
.seq loopBody55_25 loopBody55_33

def loopBody55_35 : HolLoopProg 64 :=
.mark loopBody55_34

def loopBody55_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 12)

def loopBody55_37 : HolLoopProg 64 :=
.mark loopBody55_36

def loopBody55_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 2)

def loopBody55_39 : HolLoopProg 64 :=
.mark loopBody55_38

def loopBody55_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 5)

def loopBody55_41 : HolLoopProg 64 :=
.mark loopBody55_40

def loopBody55_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 18 18 16 17)

def loopBody55_43 : HolLoopProg 64 :=
.mark loopBody55_42

def loopBody55_44 : HolLoopProg 64 :=
.seq loopBody55_43 loopBody55_1

def loopBody55_45 : HolLoopProg 64 :=
.mark loopBody55_44

def loopBody55_46 : HolLoopProg 64 :=
.seq loopBody55_41 loopBody55_45

def loopBody55_47 : HolLoopProg 64 :=
.mark loopBody55_46

def loopBody55_48 : HolLoopProg 64 :=
.seq loopBody55_39 loopBody55_47

def loopBody55_49 : HolLoopProg 64 :=
.mark loopBody55_48

def loopBody55_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 18)

def loopBody55_51 : HolLoopProg 64 :=
.mark loopBody55_50

def loopBody55_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 3)

def loopBody55_53 : HolLoopProg 64 :=
.mark loopBody55_52

def loopBody55_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 4)

def loopBody55_55 : HolLoopProg 64 :=
.mark loopBody55_54

def loopBody55_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 22 22 20 21)

def loopBody55_57 : HolLoopProg 64 :=
.mark loopBody55_56

def loopBody55_58 : HolLoopProg 64 :=
.seq loopBody55_57 loopBody55_1

def loopBody55_59 : HolLoopProg 64 :=
.mark loopBody55_58

def loopBody55_60 : HolLoopProg 64 :=
.seq loopBody55_55 loopBody55_59

def loopBody55_61 : HolLoopProg 64 :=
.mark loopBody55_60

def loopBody55_62 : HolLoopProg 64 :=
.seq loopBody55_53 loopBody55_61

def loopBody55_63 : HolLoopProg 64 :=
.mark loopBody55_62

def loopBody55_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.var 22)

def loopBody55_65 : HolLoopProg 64 :=
.mark loopBody55_64

def loopBody55_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 24 (Flapjack.HolLoopExp.const 0#64)

def loopBody55_67 : HolLoopProg 64 :=
.mark loopBody55_66

def loopBody55_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [14, 15] Flapjack.PrimOp.addCarry [19, 23, 24]

def loopBody55_69 : HolLoopProg 64 :=
.mark loopBody55_68

def loopBody55_70 : HolLoopProg 64 :=
.seq loopBody55_67 loopBody55_69

def loopBody55_71 : HolLoopProg 64 :=
.mark loopBody55_70

def loopBody55_72 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_71

def loopBody55_73 : HolLoopProg 64 :=
.mark loopBody55_72

def loopBody55_74 : HolLoopProg 64 :=
.seq loopBody55_65 loopBody55_73

def loopBody55_75 : HolLoopProg 64 :=
.mark loopBody55_74

def loopBody55_76 : HolLoopProg 64 :=
.seq loopBody55_63 loopBody55_75

def loopBody55_77 : HolLoopProg 64 :=
.mark loopBody55_76

def loopBody55_78 : HolLoopProg 64 :=
.seq loopBody55_51 loopBody55_77

def loopBody55_79 : HolLoopProg 64 :=
.mark loopBody55_78

def loopBody55_80 : HolLoopProg 64 :=
.seq loopBody55_49 loopBody55_79

def loopBody55_81 : HolLoopProg 64 :=
.mark loopBody55_80

def loopBody55_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 9)

def loopBody55_83 : HolLoopProg 64 :=
.mark loopBody55_82

def loopBody55_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 14) (Flapjack.HolLoopExp.const 32#64))

def loopBody55_85 : HolLoopProg 64 :=
.mark loopBody55_84

def loopBody55_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.const 0#64)

def loopBody55_87 : HolLoopProg 64 :=
.mark loopBody55_86

def loopBody55_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [16, 17] Flapjack.PrimOp.addCarry [18, 19, 20]

def loopBody55_89 : HolLoopProg 64 :=
.mark loopBody55_88

def loopBody55_90 : HolLoopProg 64 :=
.seq loopBody55_87 loopBody55_89

def loopBody55_91 : HolLoopProg 64 :=
.mark loopBody55_90

def loopBody55_92 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_91

def loopBody55_93 : HolLoopProg 64 :=
.mark loopBody55_92

def loopBody55_94 : HolLoopProg 64 :=
.seq loopBody55_85 loopBody55_93

def loopBody55_95 : HolLoopProg 64 :=
.mark loopBody55_94

def loopBody55_96 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_95

def loopBody55_97 : HolLoopProg 64 :=
.mark loopBody55_96

def loopBody55_98 : HolLoopProg 64 :=
.seq loopBody55_83 loopBody55_97

def loopBody55_99 : HolLoopProg 64 :=
.mark loopBody55_98

def loopBody55_100 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_99

def loopBody55_101 : HolLoopProg 64 :=
.mark loopBody55_100

def loopBody55_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 13,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 14) (Flapjack.HolLoopExp.const 32#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 15) (Flapjack.HolLoopExp.const 32#64),
      Flapjack.HolLoopExp.var 17])

def loopBody55_103 : HolLoopProg 64 :=
.mark loopBody55_102

def loopBody55_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 16)

def loopBody55_105 : HolLoopProg 64 :=
.mark loopBody55_104

def loopBody55_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 18)

def loopBody55_107 : HolLoopProg 64 :=
.mark loopBody55_106

def loopBody55_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [19, 20]

def loopBody55_109 : HolLoopProg 64 :=
.mark loopBody55_108

def loopBody55_110 : HolLoopProg 64 :=
.seq loopBody55_109 loopBody55_1

def loopBody55_111 : HolLoopProg 64 :=
.mark loopBody55_110

def loopBody55_112 : HolLoopProg 64 :=
.seq loopBody55_107 loopBody55_111

def loopBody55_113 : HolLoopProg 64 :=
.mark loopBody55_112

def loopBody55_114 : HolLoopProg 64 :=
.seq loopBody55_105 loopBody55_113

def loopBody55_115 : HolLoopProg 64 :=
.mark loopBody55_114

def loopBody55_116 : HolLoopProg 64 :=
.seq loopBody55_103 loopBody55_115

def loopBody55_117 : HolLoopProg 64 :=
.mark loopBody55_116

def loopBody55_118 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_117

def loopBody55_119 : HolLoopProg 64 :=
.mark loopBody55_118

def loopBody55_120 : HolLoopProg 64 :=
.seq loopBody55_101 loopBody55_119

def loopBody55_121 : HolLoopProg 64 :=
.mark loopBody55_120

def loopBody55_122 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_121

def loopBody55_123 : HolLoopProg 64 :=
.mark loopBody55_122

def loopBody55_124 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_123

def loopBody55_125 : HolLoopProg 64 :=
.mark loopBody55_124

def loopBody55_126 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_125

def loopBody55_127 : HolLoopProg 64 :=
.mark loopBody55_126

def loopBody55_128 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_127

def loopBody55_129 : HolLoopProg 64 :=
.mark loopBody55_128

def loopBody55_130 : HolLoopProg 64 :=
.seq loopBody55_81 loopBody55_129

def loopBody55_131 : HolLoopProg 64 :=
.mark loopBody55_130

def loopBody55_132 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_131

def loopBody55_133 : HolLoopProg 64 :=
.mark loopBody55_132

def loopBody55_134 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_133

def loopBody55_135 : HolLoopProg 64 :=
.mark loopBody55_134

def loopBody55_136 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_135

def loopBody55_137 : HolLoopProg 64 :=
.mark loopBody55_136

def loopBody55_138 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_137

def loopBody55_139 : HolLoopProg 64 :=
.mark loopBody55_138

def loopBody55_140 : HolLoopProg 64 :=
.seq loopBody55_37 loopBody55_139

def loopBody55_141 : HolLoopProg 64 :=
.mark loopBody55_140

def loopBody55_142 : HolLoopProg 64 :=
.seq loopBody55_35 loopBody55_141

def loopBody55_143 : HolLoopProg 64 :=
.mark loopBody55_142

def loopBody55_144 : HolLoopProg 64 :=
.seq loopBody55_23 loopBody55_143

def loopBody55_145 : HolLoopProg 64 :=
.mark loopBody55_144

def loopBody55_146 : HolLoopProg 64 :=
.seq loopBody55_21 loopBody55_145

def loopBody55_147 : HolLoopProg 64 :=
.mark loopBody55_146

def loopBody55_148 : HolLoopProg 64 :=
.seq loopBody55_9 loopBody55_147

def loopBody55_149 : HolLoopProg 64 :=
.mark loopBody55_148

def loopBody55_150 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_149

def loopBody55_151 : HolLoopProg 64 :=
.mark loopBody55_150

def loopBody55_152 : HolLoopProg 64 :=
.seq loopBody55_7 loopBody55_151

def loopBody55_153 : HolLoopProg 64 :=
.mark loopBody55_152

def loopBody55_154 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_153

def loopBody55_155 : HolLoopProg 64 :=
.mark loopBody55_154

def loopBody55_156 : HolLoopProg 64 :=
.seq loopBody55_5 loopBody55_155

def loopBody55_157 : HolLoopProg 64 :=
.mark loopBody55_156

def loopBody55_158 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_157

def loopBody55_159 : HolLoopProg 64 :=
.mark loopBody55_158

def loopBody55_160 : HolLoopProg 64 :=
.seq loopBody55_3 loopBody55_159

def loopBody55_161 : HolLoopProg 64 :=
.mark loopBody55_160

def loopBody55_162 : HolLoopProg 64 :=
.seq loopBody55_1 loopBody55_161

def loopBody55_163 : HolLoopProg 64 :=
.mark loopBody55_162

def output55 : Nat × List Nat × HolLoopProg 64 :=
  (119, [0, 1], loopBody55_163)
end InitECandidate.Proofs.FrontendStages.Loop
