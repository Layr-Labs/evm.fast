import InitECandidate.Proofs.FrontendStages.Loop.Translate77
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody93_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody93_1 : HolLoopProg 64 :=
.mark loopBody93_0

def loopBody93_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody93_3 : HolLoopProg 64 :=
.mark loopBody93_2

def loopBody93_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 7#64])

def loopBody93_5 : HolLoopProg 64 :=
.mark loopBody93_4

def loopBody93_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody93_7 : HolLoopProg 64 :=
.mark loopBody93_6

def loopBody93_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody93_9 : HolLoopProg 64 :=
.mark loopBody93_8

def loopBody93_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody93_11 : HolLoopProg 64 :=
.mark loopBody93_10

def loopBody93_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody93_9 loopBody93_11 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody93_13 : HolLoopProg 64 :=
.mark loopBody93_12

def loopBody93_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody93_15 : HolLoopProg 64 :=
.mark loopBody93_14

def loopBody93_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody93_17 : HolLoopProg 64 :=
.mark loopBody93_16

def loopBody93_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 136#64)

def loopBody93_19 : HolLoopProg 64 :=
.mark loopBody93_18

def loopBody93_20 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.RegImm.reg 5) loopBody93_9 loopBody93_11 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody93_21 : HolLoopProg 64 :=
.mark loopBody93_20

def loopBody93_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2])

def loopBody93_23 : HolLoopProg 64 :=
.mark loopBody93_22

def loopBody93_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2]),
      Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2])])

def loopBody93_25 : HolLoopProg 64 :=
.mark loopBody93_24

def loopBody93_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody93_27 : HolLoopProg 64 :=
.mark loopBody93_26

def loopBody93_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 3) 5

def loopBody93_29 : HolLoopProg 64 :=
.mark loopBody93_28

def loopBody93_30 : HolLoopProg 64 :=
.seq loopBody93_29 loopBody93_1

def loopBody93_31 : HolLoopProg 64 :=
.mark loopBody93_30

def loopBody93_32 : HolLoopProg 64 :=
.seq loopBody93_27 loopBody93_31

def loopBody93_33 : HolLoopProg 64 :=
.mark loopBody93_32

def loopBody93_34 : HolLoopProg 64 :=
.seq loopBody93_33 loopBody93_1

def loopBody93_35 : HolLoopProg 64 :=
.mark loopBody93_34

def loopBody93_36 : HolLoopProg 64 :=
.seq loopBody93_25 loopBody93_35

def loopBody93_37 : HolLoopProg 64 :=
.mark loopBody93_36

def loopBody93_38 : HolLoopProg 64 :=
.seq loopBody93_1 loopBody93_37

def loopBody93_39 : HolLoopProg 64 :=
.mark loopBody93_38

def loopBody93_40 : HolLoopProg 64 :=
.seq loopBody93_23 loopBody93_39

def loopBody93_41 : HolLoopProg 64 :=
.mark loopBody93_40

def loopBody93_42 : HolLoopProg 64 :=
.seq loopBody93_1 loopBody93_41

def loopBody93_43 : HolLoopProg 64 :=
.mark loopBody93_42

def loopBody93_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 8#64])

def loopBody93_45 : HolLoopProg 64 :=
.mark loopBody93_44

def loopBody93_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 3)

def loopBody93_47 : HolLoopProg 64 :=
.mark loopBody93_46

def loopBody93_48 : HolLoopProg 64 :=
.seq loopBody93_47 loopBody93_1

def loopBody93_49 : HolLoopProg 64 :=
.mark loopBody93_48

def loopBody93_50 : HolLoopProg 64 :=
.seq loopBody93_49 loopBody93_1

def loopBody93_51 : HolLoopProg 64 :=
.mark loopBody93_50

def loopBody93_52 : HolLoopProg 64 :=
.seq loopBody93_45 loopBody93_51

def loopBody93_53 : HolLoopProg 64 :=
.mark loopBody93_52

def loopBody93_54 : HolLoopProg 64 :=
.seq loopBody93_1 loopBody93_53

def loopBody93_55 : HolLoopProg 64 :=
.mark loopBody93_54

def loopBody93_56 : HolLoopProg 64 :=
.seq loopBody93_43 loopBody93_55

def loopBody93_57 : HolLoopProg 64 :=
.mark loopBody93_56

def loopBody93_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody93_59 : HolLoopProg 64 :=
.mark loopBody93_58

def loopBody93_60 : HolLoopProg 64 :=
.seq loopBody93_57 loopBody93_59

def loopBody93_61 : HolLoopProg 64 :=
.mark loopBody93_60

def loopBody93_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody93_63 : HolLoopProg 64 :=
.mark loopBody93_62

def loopBody93_64 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody93_61 loopBody93_63 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody93_65 : HolLoopProg 64 :=
.mark loopBody93_64

def loopBody93_66 : HolLoopProg 64 :=
.seq loopBody93_65 loopBody93_1

def loopBody93_67 : HolLoopProg 64 :=
.mark loopBody93_66

def loopBody93_68 : HolLoopProg 64 :=
.seq loopBody93_15 loopBody93_67

def loopBody93_69 : HolLoopProg 64 :=
.mark loopBody93_68

def loopBody93_70 : HolLoopProg 64 :=
.seq loopBody93_21 loopBody93_69

def loopBody93_71 : HolLoopProg 64 :=
.mark loopBody93_70

def loopBody93_72 : HolLoopProg 64 :=
.seq loopBody93_19 loopBody93_71

def loopBody93_73 : HolLoopProg 64 :=
.mark loopBody93_72

def loopBody93_74 : HolLoopProg 64 :=
.seq loopBody93_17 loopBody93_73

def loopBody93_75 : HolLoopProg 64 :=
.mark loopBody93_74

def loopBody93_76 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) loopBody93_75 (Flapjack.Spt.ls PUnit.unit)

def loopBody93_77 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2])

def loopBody93_78 : HolLoopProg 64 :=
.mark loopBody93_77

def loopBody93_79 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 4 4

def loopBody93_80 : HolLoopProg 64 :=
.mark loopBody93_79

def loopBody93_81 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64])

def loopBody93_82 : HolLoopProg 64 :=
.mark loopBody93_81

def loopBody93_83 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 5 5

def loopBody93_84 : HolLoopProg 64 :=
.mark loopBody93_83

def loopBody93_85 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 2#64])

def loopBody93_86 : HolLoopProg 64 :=
.mark loopBody93_85

def loopBody93_87 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 6 6

def loopBody93_88 : HolLoopProg 64 :=
.mark loopBody93_87

def loopBody93_89 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 3#64])

def loopBody93_90 : HolLoopProg 64 :=
.mark loopBody93_89

def loopBody93_91 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 7 7

def loopBody93_92 : HolLoopProg 64 :=
.mark loopBody93_91

def loopBody93_93 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 4#64])

def loopBody93_94 : HolLoopProg 64 :=
.mark loopBody93_93

def loopBody93_95 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 8 8

def loopBody93_96 : HolLoopProg 64 :=
.mark loopBody93_95

def loopBody93_97 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 4#64,
      Flapjack.HolLoopExp.const 1#64])

def loopBody93_98 : HolLoopProg 64 :=
.mark loopBody93_97

def loopBody93_99 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 9 9

def loopBody93_100 : HolLoopProg 64 :=
.mark loopBody93_99

def loopBody93_101 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 4#64,
      Flapjack.HolLoopExp.const 2#64])

def loopBody93_102 : HolLoopProg 64 :=
.mark loopBody93_101

def loopBody93_103 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 10 10

def loopBody93_104 : HolLoopProg 64 :=
.mark loopBody93_103

def loopBody93_105 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 4#64,
      Flapjack.HolLoopExp.const 3#64])

def loopBody93_106 : HolLoopProg 64 :=
.mark loopBody93_105

def loopBody93_107 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 11 11

def loopBody93_108 : HolLoopProg 64 :=
.mark loopBody93_107

def loopBody93_109 : HolLoopProg 64 :=
.seq loopBody93_108 loopBody93_1

def loopBody93_110 : HolLoopProg 64 :=
.mark loopBody93_109

def loopBody93_111 : HolLoopProg 64 :=
.seq loopBody93_106 loopBody93_110

def loopBody93_112 : HolLoopProg 64 :=
.mark loopBody93_111

def loopBody93_113 : HolLoopProg 64 :=
.seq loopBody93_104 loopBody93_112

def loopBody93_114 : HolLoopProg 64 :=
.mark loopBody93_113

def loopBody93_115 : HolLoopProg 64 :=
.seq loopBody93_102 loopBody93_114

def loopBody93_116 : HolLoopProg 64 :=
.mark loopBody93_115

def loopBody93_117 : HolLoopProg 64 :=
.seq loopBody93_100 loopBody93_116

def loopBody93_118 : HolLoopProg 64 :=
.mark loopBody93_117

def loopBody93_119 : HolLoopProg 64 :=
.seq loopBody93_98 loopBody93_118

def loopBody93_120 : HolLoopProg 64 :=
.mark loopBody93_119

def loopBody93_121 : HolLoopProg 64 :=
.seq loopBody93_96 loopBody93_120

def loopBody93_122 : HolLoopProg 64 :=
.mark loopBody93_121

def loopBody93_123 : HolLoopProg 64 :=
.seq loopBody93_94 loopBody93_122

def loopBody93_124 : HolLoopProg 64 :=
.mark loopBody93_123

def loopBody93_125 : HolLoopProg 64 :=
.seq loopBody93_92 loopBody93_124

def loopBody93_126 : HolLoopProg 64 :=
.mark loopBody93_125

def loopBody93_127 : HolLoopProg 64 :=
.seq loopBody93_90 loopBody93_126

def loopBody93_128 : HolLoopProg 64 :=
.mark loopBody93_127

def loopBody93_129 : HolLoopProg 64 :=
.seq loopBody93_88 loopBody93_128

def loopBody93_130 : HolLoopProg 64 :=
.mark loopBody93_129

def loopBody93_131 : HolLoopProg 64 :=
.seq loopBody93_86 loopBody93_130

def loopBody93_132 : HolLoopProg 64 :=
.mark loopBody93_131

def loopBody93_133 : HolLoopProg 64 :=
.seq loopBody93_84 loopBody93_132

def loopBody93_134 : HolLoopProg 64 :=
.mark loopBody93_133

def loopBody93_135 : HolLoopProg 64 :=
.seq loopBody93_82 loopBody93_134

def loopBody93_136 : HolLoopProg 64 :=
.mark loopBody93_135

def loopBody93_137 : HolLoopProg 64 :=
.seq loopBody93_80 loopBody93_136

def loopBody93_138 : HolLoopProg 64 :=
.mark loopBody93_137

def loopBody93_139 : HolLoopProg 64 :=
.seq loopBody93_78 loopBody93_138

def loopBody93_140 : HolLoopProg 64 :=
.mark loopBody93_139

def loopBody93_141 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2]),
      Flapjack.HolLoopExp.op Flapjack.BinOp.or
        [Flapjack.HolLoopExp.var 4,
          Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 8#64),
          Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 16#64),
          Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.const 24#64),
          Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
            (Flapjack.HolLoopExp.op Flapjack.BinOp.or
              [Flapjack.HolLoopExp.var 8,
                Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 9)
                  (Flapjack.HolLoopExp.const 8#64),
                Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 10)
                  (Flapjack.HolLoopExp.const 16#64),
                Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 11)
                  (Flapjack.HolLoopExp.const 24#64)])
            (Flapjack.HolLoopExp.const 32#64)]])

def loopBody93_142 : HolLoopProg 64 :=
.mark loopBody93_141

def loopBody93_143 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 12)

def loopBody93_144 : HolLoopProg 64 :=
.mark loopBody93_143

def loopBody93_145 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 3) 13

def loopBody93_146 : HolLoopProg 64 :=
.mark loopBody93_145

def loopBody93_147 : HolLoopProg 64 :=
.seq loopBody93_146 loopBody93_1

def loopBody93_148 : HolLoopProg 64 :=
.mark loopBody93_147

def loopBody93_149 : HolLoopProg 64 :=
.seq loopBody93_144 loopBody93_148

def loopBody93_150 : HolLoopProg 64 :=
.mark loopBody93_149

def loopBody93_151 : HolLoopProg 64 :=
.seq loopBody93_150 loopBody93_1

def loopBody93_152 : HolLoopProg 64 :=
.mark loopBody93_151

def loopBody93_153 : HolLoopProg 64 :=
.seq loopBody93_142 loopBody93_152

def loopBody93_154 : HolLoopProg 64 :=
.mark loopBody93_153

def loopBody93_155 : HolLoopProg 64 :=
.seq loopBody93_140 loopBody93_154

def loopBody93_156 : HolLoopProg 64 :=
.mark loopBody93_155

def loopBody93_157 : HolLoopProg 64 :=
.seq loopBody93_23 loopBody93_156

def loopBody93_158 : HolLoopProg 64 :=
.mark loopBody93_157

def loopBody93_159 : HolLoopProg 64 :=
.seq loopBody93_1 loopBody93_158

def loopBody93_160 : HolLoopProg 64 :=
.mark loopBody93_159

def loopBody93_161 : HolLoopProg 64 :=
.seq loopBody93_160 loopBody93_55

def loopBody93_162 : HolLoopProg 64 :=
.mark loopBody93_161

def loopBody93_163 : HolLoopProg 64 :=
.seq loopBody93_162 loopBody93_59

def loopBody93_164 : HolLoopProg 64 :=
.mark loopBody93_163

def loopBody93_165 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody93_164 loopBody93_63 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody93_166 : HolLoopProg 64 :=
.mark loopBody93_165

def loopBody93_167 : HolLoopProg 64 :=
.seq loopBody93_166 loopBody93_1

def loopBody93_168 : HolLoopProg 64 :=
.mark loopBody93_167

def loopBody93_169 : HolLoopProg 64 :=
.seq loopBody93_15 loopBody93_168

def loopBody93_170 : HolLoopProg 64 :=
.mark loopBody93_169

def loopBody93_171 : HolLoopProg 64 :=
.seq loopBody93_21 loopBody93_170

def loopBody93_172 : HolLoopProg 64 :=
.mark loopBody93_171

def loopBody93_173 : HolLoopProg 64 :=
.seq loopBody93_19 loopBody93_172

def loopBody93_174 : HolLoopProg 64 :=
.mark loopBody93_173

def loopBody93_175 : HolLoopProg 64 :=
.seq loopBody93_17 loopBody93_174

def loopBody93_176 : HolLoopProg 64 :=
.mark loopBody93_175

def loopBody93_177 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) loopBody93_176 (Flapjack.Spt.ls PUnit.unit)

def loopBody93_178 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody93_76 loopBody93_177 (Flapjack.Spt.ls PUnit.unit)

def loopBody93_179 : HolLoopProg 64 :=
.seq loopBody93_178 loopBody93_1

def loopBody93_180 : HolLoopProg 64 :=
.seq loopBody93_15 loopBody93_179

def loopBody93_181 : HolLoopProg 64 :=
.seq loopBody93_13 loopBody93_180

def loopBody93_182 : HolLoopProg 64 :=
.seq loopBody93_7 loopBody93_181

def loopBody93_183 : HolLoopProg 64 :=
.seq loopBody93_5 loopBody93_182

def loopBody93_184 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody93_185 : HolLoopProg 64 :=
.mark loopBody93_184

def loopBody93_186 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody93_187 : HolLoopProg 64 :=
.mark loopBody93_186

def loopBody93_188 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 156) ([4]) (some (4, loopBody93_187, loopBody93_1, (Flapjack.Spt.ln)))

def loopBody93_189 : HolLoopProg 64 :=
.mark loopBody93_188

def loopBody93_190 : HolLoopProg 64 :=
.seq loopBody93_189 loopBody93_1

def loopBody93_191 : HolLoopProg 64 :=
.mark loopBody93_190

def loopBody93_192 : HolLoopProg 64 :=
.seq loopBody93_185 loopBody93_191

def loopBody93_193 : HolLoopProg 64 :=
.mark loopBody93_192

def loopBody93_194 : HolLoopProg 64 :=
.seq loopBody93_1 loopBody93_193

def loopBody93_195 : HolLoopProg 64 :=
.mark loopBody93_194

def loopBody93_196 : HolLoopProg 64 :=
.seq loopBody93_1 loopBody93_195

def loopBody93_197 : HolLoopProg 64 :=
.mark loopBody93_196

def loopBody93_198 : HolLoopProg 64 :=
.seq loopBody93_183 loopBody93_197

def loopBody93_199 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody93_200 : HolLoopProg 64 :=
.mark loopBody93_199

def loopBody93_201 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody93_202 : HolLoopProg 64 :=
.mark loopBody93_201

def loopBody93_203 : HolLoopProg 64 :=
.seq loopBody93_202 loopBody93_1

def loopBody93_204 : HolLoopProg 64 :=
.mark loopBody93_203

def loopBody93_205 : HolLoopProg 64 :=
.seq loopBody93_200 loopBody93_204

def loopBody93_206 : HolLoopProg 64 :=
.mark loopBody93_205

def loopBody93_207 : HolLoopProg 64 :=
.seq loopBody93_198 loopBody93_206

def loopBody93_208 : HolLoopProg 64 :=
.seq loopBody93_3 loopBody93_207

def loopBody93_209 : HolLoopProg 64 :=
.seq loopBody93_1 loopBody93_208

def output93 : Nat × List Nat × HolLoopProg 64 :=
  (157, [0, 1], loopBody93_209)
end InitECandidate.Proofs.FrontendStages.Loop
