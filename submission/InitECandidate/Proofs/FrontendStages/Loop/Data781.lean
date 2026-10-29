import InitECandidate.Proofs.FrontendStages.Loop.Translate765
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody781_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody781_1 : HolLoopProg 64 :=
.mark loopBody781_0

def loopBody781_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 64#64)

def loopBody781_3 : HolLoopProg 64 :=
.mark loopBody781_2

def loopBody781_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody781_5 : HolLoopProg 64 :=
.mark loopBody781_4

def loopBody781_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 68) ([2]) (some (2, loopBody781_5, loopBody781_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody781_7 : HolLoopProg 64 :=
.mark loopBody781_6

def loopBody781_8 : HolLoopProg 64 :=
.seq loopBody781_7 loopBody781_1

def loopBody781_9 : HolLoopProg 64 :=
.mark loopBody781_8

def loopBody781_10 : HolLoopProg 64 :=
.seq loopBody781_3 loopBody781_9

def loopBody781_11 : HolLoopProg 64 :=
.mark loopBody781_10

def loopBody781_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 9#64])

def loopBody781_13 : HolLoopProg 64 :=
.mark loopBody781_12

def loopBody781_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody781_15 : HolLoopProg 64 :=
.mark loopBody781_14

def loopBody781_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 4 4

def loopBody781_17 : HolLoopProg 64 :=
.mark loopBody781_16

def loopBody781_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody781_19 : HolLoopProg 64 :=
.mark loopBody781_18

def loopBody781_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 5 5

def loopBody781_21 : HolLoopProg 64 :=
.mark loopBody781_20

def loopBody781_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 2#64])

def loopBody781_23 : HolLoopProg 64 :=
.mark loopBody781_22

def loopBody781_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 6 6

def loopBody781_25 : HolLoopProg 64 :=
.mark loopBody781_24

def loopBody781_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 3#64])

def loopBody781_27 : HolLoopProg 64 :=
.mark loopBody781_26

def loopBody781_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 7 7

def loopBody781_29 : HolLoopProg 64 :=
.mark loopBody781_28

def loopBody781_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64])

def loopBody781_31 : HolLoopProg 64 :=
.mark loopBody781_30

def loopBody781_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 8 8

def loopBody781_33 : HolLoopProg 64 :=
.mark loopBody781_32

def loopBody781_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64, Flapjack.HolLoopExp.const 1#64])

def loopBody781_35 : HolLoopProg 64 :=
.mark loopBody781_34

def loopBody781_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 9 9

def loopBody781_37 : HolLoopProg 64 :=
.mark loopBody781_36

def loopBody781_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64, Flapjack.HolLoopExp.const 2#64])

def loopBody781_39 : HolLoopProg 64 :=
.mark loopBody781_38

def loopBody781_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 10 10

def loopBody781_41 : HolLoopProg 64 :=
.mark loopBody781_40

def loopBody781_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64, Flapjack.HolLoopExp.const 3#64])

def loopBody781_43 : HolLoopProg 64 :=
.mark loopBody781_42

def loopBody781_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 11 11

def loopBody781_45 : HolLoopProg 64 :=
.mark loopBody781_44

def loopBody781_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 2)

def loopBody781_47 : HolLoopProg 64 :=
.mark loopBody781_46

def loopBody781_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 4,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 8#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 16#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.const 24#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.op Flapjack.BinOp.or
          [Flapjack.HolLoopExp.var 8,
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 9) (Flapjack.HolLoopExp.const 8#64),
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 10) (Flapjack.HolLoopExp.const 16#64),
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 11)
              (Flapjack.HolLoopExp.const 24#64)])
        (Flapjack.HolLoopExp.const 32#64)])

def loopBody781_49 : HolLoopProg 64 :=
.mark loopBody781_48

def loopBody781_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody781_51 : HolLoopProg 64 :=
.mark loopBody781_50

def loopBody781_52 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 177) ([12, 13]) (some (4, loopBody781_51, loopBody781_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody781_53 : HolLoopProg 64 :=
.mark loopBody781_52

def loopBody781_54 : HolLoopProg 64 :=
.seq loopBody781_53 loopBody781_1

def loopBody781_55 : HolLoopProg 64 :=
.mark loopBody781_54

def loopBody781_56 : HolLoopProg 64 :=
.seq loopBody781_49 loopBody781_55

def loopBody781_57 : HolLoopProg 64 :=
.mark loopBody781_56

def loopBody781_58 : HolLoopProg 64 :=
.seq loopBody781_47 loopBody781_57

def loopBody781_59 : HolLoopProg 64 :=
.mark loopBody781_58

def loopBody781_60 : HolLoopProg 64 :=
.seq loopBody781_45 loopBody781_59

def loopBody781_61 : HolLoopProg 64 :=
.mark loopBody781_60

def loopBody781_62 : HolLoopProg 64 :=
.seq loopBody781_43 loopBody781_61

def loopBody781_63 : HolLoopProg 64 :=
.mark loopBody781_62

def loopBody781_64 : HolLoopProg 64 :=
.seq loopBody781_41 loopBody781_63

def loopBody781_65 : HolLoopProg 64 :=
.mark loopBody781_64

def loopBody781_66 : HolLoopProg 64 :=
.seq loopBody781_39 loopBody781_65

def loopBody781_67 : HolLoopProg 64 :=
.mark loopBody781_66

def loopBody781_68 : HolLoopProg 64 :=
.seq loopBody781_37 loopBody781_67

def loopBody781_69 : HolLoopProg 64 :=
.mark loopBody781_68

def loopBody781_70 : HolLoopProg 64 :=
.seq loopBody781_35 loopBody781_69

def loopBody781_71 : HolLoopProg 64 :=
.mark loopBody781_70

def loopBody781_72 : HolLoopProg 64 :=
.seq loopBody781_33 loopBody781_71

def loopBody781_73 : HolLoopProg 64 :=
.mark loopBody781_72

def loopBody781_74 : HolLoopProg 64 :=
.seq loopBody781_31 loopBody781_73

def loopBody781_75 : HolLoopProg 64 :=
.mark loopBody781_74

def loopBody781_76 : HolLoopProg 64 :=
.seq loopBody781_29 loopBody781_75

def loopBody781_77 : HolLoopProg 64 :=
.mark loopBody781_76

def loopBody781_78 : HolLoopProg 64 :=
.seq loopBody781_27 loopBody781_77

def loopBody781_79 : HolLoopProg 64 :=
.mark loopBody781_78

def loopBody781_80 : HolLoopProg 64 :=
.seq loopBody781_25 loopBody781_79

def loopBody781_81 : HolLoopProg 64 :=
.mark loopBody781_80

def loopBody781_82 : HolLoopProg 64 :=
.seq loopBody781_23 loopBody781_81

def loopBody781_83 : HolLoopProg 64 :=
.mark loopBody781_82

def loopBody781_84 : HolLoopProg 64 :=
.seq loopBody781_21 loopBody781_83

def loopBody781_85 : HolLoopProg 64 :=
.mark loopBody781_84

def loopBody781_86 : HolLoopProg 64 :=
.seq loopBody781_19 loopBody781_85

def loopBody781_87 : HolLoopProg 64 :=
.mark loopBody781_86

def loopBody781_88 : HolLoopProg 64 :=
.seq loopBody781_17 loopBody781_87

def loopBody781_89 : HolLoopProg 64 :=
.mark loopBody781_88

def loopBody781_90 : HolLoopProg 64 :=
.seq loopBody781_15 loopBody781_89

def loopBody781_91 : HolLoopProg 64 :=
.mark loopBody781_90

def loopBody781_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 3])

def loopBody781_93 : HolLoopProg 64 :=
.mark loopBody781_92

def loopBody781_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 4)

def loopBody781_95 : HolLoopProg 64 :=
.mark loopBody781_94

def loopBody781_96 : HolLoopProg 64 :=
.seq loopBody781_95 loopBody781_1

def loopBody781_97 : HolLoopProg 64 :=
.mark loopBody781_96

def loopBody781_98 : HolLoopProg 64 :=
.seq loopBody781_97 loopBody781_1

def loopBody781_99 : HolLoopProg 64 :=
.mark loopBody781_98

def loopBody781_100 : HolLoopProg 64 :=
.seq loopBody781_93 loopBody781_99

def loopBody781_101 : HolLoopProg 64 :=
.mark loopBody781_100

def loopBody781_102 : HolLoopProg 64 :=
.seq loopBody781_1 loopBody781_101

def loopBody781_103 : HolLoopProg 64 :=
.mark loopBody781_102

def loopBody781_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64])

def loopBody781_105 : HolLoopProg 64 :=
.mark loopBody781_104

def loopBody781_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64, Flapjack.HolLoopExp.const 1#64])

def loopBody781_107 : HolLoopProg 64 :=
.mark loopBody781_106

def loopBody781_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64, Flapjack.HolLoopExp.const 2#64])

def loopBody781_109 : HolLoopProg 64 :=
.mark loopBody781_108

def loopBody781_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64, Flapjack.HolLoopExp.const 3#64])

def loopBody781_111 : HolLoopProg 64 :=
.mark loopBody781_110

def loopBody781_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64, Flapjack.HolLoopExp.const 4#64])

def loopBody781_113 : HolLoopProg 64 :=
.mark loopBody781_112

def loopBody781_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64, Flapjack.HolLoopExp.const 4#64,
      Flapjack.HolLoopExp.const 1#64])

def loopBody781_115 : HolLoopProg 64 :=
.mark loopBody781_114

def loopBody781_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64, Flapjack.HolLoopExp.const 4#64,
      Flapjack.HolLoopExp.const 2#64])

def loopBody781_117 : HolLoopProg 64 :=
.mark loopBody781_116

def loopBody781_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64, Flapjack.HolLoopExp.const 4#64,
      Flapjack.HolLoopExp.const 3#64])

def loopBody781_119 : HolLoopProg 64 :=
.mark loopBody781_118

def loopBody781_120 : HolLoopProg 64 :=
.seq loopBody781_119 loopBody781_61

def loopBody781_121 : HolLoopProg 64 :=
.mark loopBody781_120

def loopBody781_122 : HolLoopProg 64 :=
.seq loopBody781_41 loopBody781_121

def loopBody781_123 : HolLoopProg 64 :=
.mark loopBody781_122

def loopBody781_124 : HolLoopProg 64 :=
.seq loopBody781_117 loopBody781_123

def loopBody781_125 : HolLoopProg 64 :=
.mark loopBody781_124

def loopBody781_126 : HolLoopProg 64 :=
.seq loopBody781_37 loopBody781_125

def loopBody781_127 : HolLoopProg 64 :=
.mark loopBody781_126

def loopBody781_128 : HolLoopProg 64 :=
.seq loopBody781_115 loopBody781_127

def loopBody781_129 : HolLoopProg 64 :=
.mark loopBody781_128

def loopBody781_130 : HolLoopProg 64 :=
.seq loopBody781_33 loopBody781_129

def loopBody781_131 : HolLoopProg 64 :=
.mark loopBody781_130

def loopBody781_132 : HolLoopProg 64 :=
.seq loopBody781_113 loopBody781_131

def loopBody781_133 : HolLoopProg 64 :=
.mark loopBody781_132

def loopBody781_134 : HolLoopProg 64 :=
.seq loopBody781_29 loopBody781_133

def loopBody781_135 : HolLoopProg 64 :=
.mark loopBody781_134

def loopBody781_136 : HolLoopProg 64 :=
.seq loopBody781_111 loopBody781_135

def loopBody781_137 : HolLoopProg 64 :=
.mark loopBody781_136

def loopBody781_138 : HolLoopProg 64 :=
.seq loopBody781_25 loopBody781_137

def loopBody781_139 : HolLoopProg 64 :=
.mark loopBody781_138

def loopBody781_140 : HolLoopProg 64 :=
.seq loopBody781_109 loopBody781_139

def loopBody781_141 : HolLoopProg 64 :=
.mark loopBody781_140

def loopBody781_142 : HolLoopProg 64 :=
.seq loopBody781_21 loopBody781_141

def loopBody781_143 : HolLoopProg 64 :=
.mark loopBody781_142

def loopBody781_144 : HolLoopProg 64 :=
.seq loopBody781_107 loopBody781_143

def loopBody781_145 : HolLoopProg 64 :=
.mark loopBody781_144

def loopBody781_146 : HolLoopProg 64 :=
.seq loopBody781_17 loopBody781_145

def loopBody781_147 : HolLoopProg 64 :=
.mark loopBody781_146

def loopBody781_148 : HolLoopProg 64 :=
.seq loopBody781_105 loopBody781_147

def loopBody781_149 : HolLoopProg 64 :=
.mark loopBody781_148

def loopBody781_150 : HolLoopProg 64 :=
.seq loopBody781_103 loopBody781_149

def loopBody781_151 : HolLoopProg 64 :=
.mark loopBody781_150

def loopBody781_152 : HolLoopProg 64 :=
.seq loopBody781_151 loopBody781_103

def loopBody781_153 : HolLoopProg 64 :=
.mark loopBody781_152

def loopBody781_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody781_155 : HolLoopProg 64 :=
.mark loopBody781_154

def loopBody781_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64])

def loopBody781_157 : HolLoopProg 64 :=
.mark loopBody781_156

def loopBody781_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 20#64)

def loopBody781_159 : HolLoopProg 64 :=
.mark loopBody781_158

def loopBody781_160 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 176) ([4, 5, 6]) (some (4, loopBody781_51, loopBody781_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody781_161 : HolLoopProg 64 :=
.mark loopBody781_160

def loopBody781_162 : HolLoopProg 64 :=
.seq loopBody781_161 loopBody781_1

def loopBody781_163 : HolLoopProg 64 :=
.mark loopBody781_162

def loopBody781_164 : HolLoopProg 64 :=
.seq loopBody781_159 loopBody781_163

def loopBody781_165 : HolLoopProg 64 :=
.mark loopBody781_164

def loopBody781_166 : HolLoopProg 64 :=
.seq loopBody781_157 loopBody781_165

def loopBody781_167 : HolLoopProg 64 :=
.mark loopBody781_166

def loopBody781_168 : HolLoopProg 64 :=
.seq loopBody781_155 loopBody781_167

def loopBody781_169 : HolLoopProg 64 :=
.mark loopBody781_168

def loopBody781_170 : HolLoopProg 64 :=
.seq loopBody781_153 loopBody781_169

def loopBody781_171 : HolLoopProg 64 :=
.mark loopBody781_170

def loopBody781_172 : HolLoopProg 64 :=
.seq loopBody781_171 loopBody781_103

def loopBody781_173 : HolLoopProg 64 :=
.mark loopBody781_172

def loopBody781_174 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64])

def loopBody781_175 : HolLoopProg 64 :=
.mark loopBody781_174

def loopBody781_176 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64, Flapjack.HolLoopExp.const 1#64])

def loopBody781_177 : HolLoopProg 64 :=
.mark loopBody781_176

def loopBody781_178 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64, Flapjack.HolLoopExp.const 2#64])

def loopBody781_179 : HolLoopProg 64 :=
.mark loopBody781_178

def loopBody781_180 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64, Flapjack.HolLoopExp.const 3#64])

def loopBody781_181 : HolLoopProg 64 :=
.mark loopBody781_180

def loopBody781_182 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64, Flapjack.HolLoopExp.const 4#64])

def loopBody781_183 : HolLoopProg 64 :=
.mark loopBody781_182

def loopBody781_184 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64, Flapjack.HolLoopExp.const 4#64,
      Flapjack.HolLoopExp.const 1#64])

def loopBody781_185 : HolLoopProg 64 :=
.mark loopBody781_184

def loopBody781_186 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64, Flapjack.HolLoopExp.const 4#64,
      Flapjack.HolLoopExp.const 2#64])

def loopBody781_187 : HolLoopProg 64 :=
.mark loopBody781_186

def loopBody781_188 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64, Flapjack.HolLoopExp.const 4#64,
      Flapjack.HolLoopExp.const 3#64])

def loopBody781_189 : HolLoopProg 64 :=
.mark loopBody781_188

def loopBody781_190 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 177) ([12, 13]) (some (4, loopBody781_51, loopBody781_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody781_191 : HolLoopProg 64 :=
.mark loopBody781_190

def loopBody781_192 : HolLoopProg 64 :=
.seq loopBody781_191 loopBody781_1

def loopBody781_193 : HolLoopProg 64 :=
.mark loopBody781_192

def loopBody781_194 : HolLoopProg 64 :=
.seq loopBody781_49 loopBody781_193

def loopBody781_195 : HolLoopProg 64 :=
.mark loopBody781_194

def loopBody781_196 : HolLoopProg 64 :=
.seq loopBody781_47 loopBody781_195

def loopBody781_197 : HolLoopProg 64 :=
.mark loopBody781_196

def loopBody781_198 : HolLoopProg 64 :=
.seq loopBody781_45 loopBody781_197

def loopBody781_199 : HolLoopProg 64 :=
.mark loopBody781_198

def loopBody781_200 : HolLoopProg 64 :=
.seq loopBody781_189 loopBody781_199

def loopBody781_201 : HolLoopProg 64 :=
.mark loopBody781_200

def loopBody781_202 : HolLoopProg 64 :=
.seq loopBody781_41 loopBody781_201

def loopBody781_203 : HolLoopProg 64 :=
.mark loopBody781_202

def loopBody781_204 : HolLoopProg 64 :=
.seq loopBody781_187 loopBody781_203

def loopBody781_205 : HolLoopProg 64 :=
.mark loopBody781_204

def loopBody781_206 : HolLoopProg 64 :=
.seq loopBody781_37 loopBody781_205

def loopBody781_207 : HolLoopProg 64 :=
.mark loopBody781_206

def loopBody781_208 : HolLoopProg 64 :=
.seq loopBody781_185 loopBody781_207

def loopBody781_209 : HolLoopProg 64 :=
.mark loopBody781_208

def loopBody781_210 : HolLoopProg 64 :=
.seq loopBody781_33 loopBody781_209

def loopBody781_211 : HolLoopProg 64 :=
.mark loopBody781_210

def loopBody781_212 : HolLoopProg 64 :=
.seq loopBody781_183 loopBody781_211

def loopBody781_213 : HolLoopProg 64 :=
.mark loopBody781_212

def loopBody781_214 : HolLoopProg 64 :=
.seq loopBody781_29 loopBody781_213

def loopBody781_215 : HolLoopProg 64 :=
.mark loopBody781_214

def loopBody781_216 : HolLoopProg 64 :=
.seq loopBody781_181 loopBody781_215

def loopBody781_217 : HolLoopProg 64 :=
.mark loopBody781_216

def loopBody781_218 : HolLoopProg 64 :=
.seq loopBody781_25 loopBody781_217

def loopBody781_219 : HolLoopProg 64 :=
.mark loopBody781_218

def loopBody781_220 : HolLoopProg 64 :=
.seq loopBody781_179 loopBody781_219

def loopBody781_221 : HolLoopProg 64 :=
.mark loopBody781_220

def loopBody781_222 : HolLoopProg 64 :=
.seq loopBody781_21 loopBody781_221

def loopBody781_223 : HolLoopProg 64 :=
.mark loopBody781_222

def loopBody781_224 : HolLoopProg 64 :=
.seq loopBody781_177 loopBody781_223

def loopBody781_225 : HolLoopProg 64 :=
.mark loopBody781_224

def loopBody781_226 : HolLoopProg 64 :=
.seq loopBody781_17 loopBody781_225

def loopBody781_227 : HolLoopProg 64 :=
.mark loopBody781_226

def loopBody781_228 : HolLoopProg 64 :=
.seq loopBody781_175 loopBody781_227

def loopBody781_229 : HolLoopProg 64 :=
.mark loopBody781_228

def loopBody781_230 : HolLoopProg 64 :=
.seq loopBody781_173 loopBody781_229

def loopBody781_231 : HolLoopProg 64 :=
.mark loopBody781_230

def loopBody781_232 : HolLoopProg 64 :=
.seq loopBody781_231 loopBody781_103

def loopBody781_233 : HolLoopProg 64 :=
.mark loopBody781_232

def loopBody781_234 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody781_235 : HolLoopProg 64 :=
.mark loopBody781_234

def loopBody781_236 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody781_237 : HolLoopProg 64 :=
.mark loopBody781_236

def loopBody781_238 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody781_239 : HolLoopProg 64 :=
.mark loopBody781_238

def loopBody781_240 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 840) ([5, 6]) (some (5, loopBody781_239, loopBody781_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))

def loopBody781_241 : HolLoopProg 64 :=
.mark loopBody781_240

def loopBody781_242 : HolLoopProg 64 :=
.seq loopBody781_241 loopBody781_1

def loopBody781_243 : HolLoopProg 64 :=
.mark loopBody781_242

def loopBody781_244 : HolLoopProg 64 :=
.seq loopBody781_237 loopBody781_243

def loopBody781_245 : HolLoopProg 64 :=
.mark loopBody781_244

def loopBody781_246 : HolLoopProg 64 :=
.seq loopBody781_235 loopBody781_245

def loopBody781_247 : HolLoopProg 64 :=
.mark loopBody781_246

def loopBody781_248 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody781_249 : HolLoopProg 64 :=
.mark loopBody781_248

def loopBody781_250 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5, 6]

def loopBody781_251 : HolLoopProg 64 :=
.mark loopBody781_250

def loopBody781_252 : HolLoopProg 64 :=
.seq loopBody781_251 loopBody781_1

def loopBody781_253 : HolLoopProg 64 :=
.mark loopBody781_252

def loopBody781_254 : HolLoopProg 64 :=
.seq loopBody781_249 loopBody781_253

def loopBody781_255 : HolLoopProg 64 :=
.mark loopBody781_254

def loopBody781_256 : HolLoopProg 64 :=
.seq loopBody781_235 loopBody781_255

def loopBody781_257 : HolLoopProg 64 :=
.mark loopBody781_256

def loopBody781_258 : HolLoopProg 64 :=
.seq loopBody781_247 loopBody781_257

def loopBody781_259 : HolLoopProg 64 :=
.mark loopBody781_258

def loopBody781_260 : HolLoopProg 64 :=
.seq loopBody781_1 loopBody781_259

def loopBody781_261 : HolLoopProg 64 :=
.mark loopBody781_260

def loopBody781_262 : HolLoopProg 64 :=
.seq loopBody781_1 loopBody781_261

def loopBody781_263 : HolLoopProg 64 :=
.mark loopBody781_262

def loopBody781_264 : HolLoopProg 64 :=
.seq loopBody781_233 loopBody781_263

def loopBody781_265 : HolLoopProg 64 :=
.mark loopBody781_264

def loopBody781_266 : HolLoopProg 64 :=
.seq loopBody781_91 loopBody781_265

def loopBody781_267 : HolLoopProg 64 :=
.mark loopBody781_266

def loopBody781_268 : HolLoopProg 64 :=
.seq loopBody781_1 loopBody781_267

def loopBody781_269 : HolLoopProg 64 :=
.mark loopBody781_268

def loopBody781_270 : HolLoopProg 64 :=
.seq loopBody781_1 loopBody781_269

def loopBody781_271 : HolLoopProg 64 :=
.mark loopBody781_270

def loopBody781_272 : HolLoopProg 64 :=
.seq loopBody781_13 loopBody781_271

def loopBody781_273 : HolLoopProg 64 :=
.mark loopBody781_272

def loopBody781_274 : HolLoopProg 64 :=
.seq loopBody781_1 loopBody781_273

def loopBody781_275 : HolLoopProg 64 :=
.mark loopBody781_274

def loopBody781_276 : HolLoopProg 64 :=
.seq loopBody781_11 loopBody781_275

def loopBody781_277 : HolLoopProg 64 :=
.mark loopBody781_276

def loopBody781_278 : HolLoopProg 64 :=
.seq loopBody781_1 loopBody781_277

def loopBody781_279 : HolLoopProg 64 :=
.mark loopBody781_278

def loopBody781_280 : HolLoopProg 64 :=
.seq loopBody781_1 loopBody781_279

def loopBody781_281 : HolLoopProg 64 :=
.mark loopBody781_280

def output781 : Nat × List Nat × HolLoopProg 64 :=
  (845, [0], loopBody781_281)
end InitECandidate.Proofs.FrontendStages.Loop
