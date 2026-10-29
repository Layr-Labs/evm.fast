import InitECandidate.Proofs.FrontendStages.Loop.Translate555
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody571_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody571_1 : HolLoopProg 64 :=
.mark loopBody571_0

def loopBody571_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 3#64])
    (Flapjack.HolLoopExp.const 2#64))

def loopBody571_3 : HolLoopProg 64 :=
.mark loopBody571_2

def loopBody571_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody571_5 : HolLoopProg 64 :=
.mark loopBody571_4

def loopBody571_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody571_7 : HolLoopProg 64 :=
.mark loopBody571_6

def loopBody571_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody571_9 : HolLoopProg 64 :=
.mark loopBody571_8

def loopBody571_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody571_11 : HolLoopProg 64 :=
.mark loopBody571_10

def loopBody571_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody571_13 : HolLoopProg 64 :=
.mark loopBody571_12

def loopBody571_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.RegImm.reg 7) loopBody571_11 loopBody571_13 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody571_15 : HolLoopProg 64 :=
.mark loopBody571_14

def loopBody571_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody571_17 : HolLoopProg 64 :=
.mark loopBody571_16

def loopBody571_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 3#64)])

def loopBody571_19 : HolLoopProg 64 :=
.mark loopBody571_18

def loopBody571_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody571_21 : HolLoopProg 64 :=
.mark loopBody571_20

def loopBody571_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 5) 7

def loopBody571_23 : HolLoopProg 64 :=
.mark loopBody571_22

def loopBody571_24 : HolLoopProg 64 :=
.seq loopBody571_23 loopBody571_1

def loopBody571_25 : HolLoopProg 64 :=
.mark loopBody571_24

def loopBody571_26 : HolLoopProg 64 :=
.seq loopBody571_21 loopBody571_25

def loopBody571_27 : HolLoopProg 64 :=
.mark loopBody571_26

def loopBody571_28 : HolLoopProg 64 :=
.seq loopBody571_27 loopBody571_1

def loopBody571_29 : HolLoopProg 64 :=
.mark loopBody571_28

def loopBody571_30 : HolLoopProg 64 :=
.seq loopBody571_13 loopBody571_29

def loopBody571_31 : HolLoopProg 64 :=
.mark loopBody571_30

def loopBody571_32 : HolLoopProg 64 :=
.seq loopBody571_1 loopBody571_31

def loopBody571_33 : HolLoopProg 64 :=
.mark loopBody571_32

def loopBody571_34 : HolLoopProg 64 :=
.seq loopBody571_19 loopBody571_33

def loopBody571_35 : HolLoopProg 64 :=
.mark loopBody571_34

def loopBody571_36 : HolLoopProg 64 :=
.seq loopBody571_1 loopBody571_35

def loopBody571_37 : HolLoopProg 64 :=
.mark loopBody571_36

def loopBody571_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody571_39 : HolLoopProg 64 :=
.mark loopBody571_38

def loopBody571_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 5)

def loopBody571_41 : HolLoopProg 64 :=
.mark loopBody571_40

def loopBody571_42 : HolLoopProg 64 :=
.seq loopBody571_41 loopBody571_1

def loopBody571_43 : HolLoopProg 64 :=
.mark loopBody571_42

def loopBody571_44 : HolLoopProg 64 :=
.seq loopBody571_43 loopBody571_1

def loopBody571_45 : HolLoopProg 64 :=
.mark loopBody571_44

def loopBody571_46 : HolLoopProg 64 :=
.seq loopBody571_39 loopBody571_45

def loopBody571_47 : HolLoopProg 64 :=
.mark loopBody571_46

def loopBody571_48 : HolLoopProg 64 :=
.seq loopBody571_1 loopBody571_47

def loopBody571_49 : HolLoopProg 64 :=
.mark loopBody571_48

def loopBody571_50 : HolLoopProg 64 :=
.seq loopBody571_37 loopBody571_49

def loopBody571_51 : HolLoopProg 64 :=
.mark loopBody571_50

def loopBody571_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody571_53 : HolLoopProg 64 :=
.mark loopBody571_52

def loopBody571_54 : HolLoopProg 64 :=
.seq loopBody571_51 loopBody571_53

def loopBody571_55 : HolLoopProg 64 :=
.mark loopBody571_54

def loopBody571_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody571_57 : HolLoopProg 64 :=
.mark loopBody571_56

def loopBody571_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody571_55 loopBody571_57 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody571_59 : HolLoopProg 64 :=
.mark loopBody571_58

def loopBody571_60 : HolLoopProg 64 :=
.seq loopBody571_59 loopBody571_1

def loopBody571_61 : HolLoopProg 64 :=
.mark loopBody571_60

def loopBody571_62 : HolLoopProg 64 :=
.seq loopBody571_17 loopBody571_61

def loopBody571_63 : HolLoopProg 64 :=
.mark loopBody571_62

def loopBody571_64 : HolLoopProg 64 :=
.seq loopBody571_15 loopBody571_63

def loopBody571_65 : HolLoopProg 64 :=
.mark loopBody571_64

def loopBody571_66 : HolLoopProg 64 :=
.seq loopBody571_9 loopBody571_65

def loopBody571_67 : HolLoopProg 64 :=
.mark loopBody571_66

def loopBody571_68 : HolLoopProg 64 :=
.seq loopBody571_7 loopBody571_67

def loopBody571_69 : HolLoopProg 64 :=
.mark loopBody571_68

def loopBody571_70 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody571_69 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody571_71 : HolLoopProg 64 :=
.seq loopBody571_5 loopBody571_1

def loopBody571_72 : HolLoopProg 64 :=
.mark loopBody571_71

def loopBody571_73 : HolLoopProg 64 :=
.seq loopBody571_72 loopBody571_1

def loopBody571_74 : HolLoopProg 64 :=
.mark loopBody571_73

def loopBody571_75 : HolLoopProg 64 :=
.seq loopBody571_70 loopBody571_74

def loopBody571_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody571_77 : HolLoopProg 64 :=
.mark loopBody571_76

def loopBody571_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 1#64],
      Flapjack.HolLoopExp.var 4])

def loopBody571_79 : HolLoopProg 64 :=
.mark loopBody571_78

def loopBody571_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 2#64))
        (Flapjack.HolLoopExp.const 3#64)])

def loopBody571_81 : HolLoopProg 64 :=
.mark loopBody571_80

def loopBody571_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 4])

def loopBody571_83 : HolLoopProg 64 :=
.mark loopBody571_82

def loopBody571_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 8 8

def loopBody571_85 : HolLoopProg 64 :=
.mark loopBody571_84

def loopBody571_86 : HolLoopProg 64 :=
.seq loopBody571_85 loopBody571_1

def loopBody571_87 : HolLoopProg 64 :=
.mark loopBody571_86

def loopBody571_88 : HolLoopProg 64 :=
.seq loopBody571_83 loopBody571_87

def loopBody571_89 : HolLoopProg 64 :=
.mark loopBody571_88

def loopBody571_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 6),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 8)
        (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
          (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 3#64])
          (Flapjack.HolLoopExp.const 3#64))])

def loopBody571_91 : HolLoopProg 64 :=
.mark loopBody571_90

def loopBody571_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 9)

def loopBody571_93 : HolLoopProg 64 :=
.mark loopBody571_92

def loopBody571_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 7) 10

def loopBody571_95 : HolLoopProg 64 :=
.mark loopBody571_94

def loopBody571_96 : HolLoopProg 64 :=
.seq loopBody571_95 loopBody571_1

def loopBody571_97 : HolLoopProg 64 :=
.mark loopBody571_96

def loopBody571_98 : HolLoopProg 64 :=
.seq loopBody571_93 loopBody571_97

def loopBody571_99 : HolLoopProg 64 :=
.mark loopBody571_98

def loopBody571_100 : HolLoopProg 64 :=
.seq loopBody571_99 loopBody571_1

def loopBody571_101 : HolLoopProg 64 :=
.mark loopBody571_100

def loopBody571_102 : HolLoopProg 64 :=
.seq loopBody571_91 loopBody571_101

def loopBody571_103 : HolLoopProg 64 :=
.mark loopBody571_102

def loopBody571_104 : HolLoopProg 64 :=
.seq loopBody571_89 loopBody571_103

def loopBody571_105 : HolLoopProg 64 :=
.mark loopBody571_104

def loopBody571_106 : HolLoopProg 64 :=
.seq loopBody571_21 loopBody571_105

def loopBody571_107 : HolLoopProg 64 :=
.mark loopBody571_106

def loopBody571_108 : HolLoopProg 64 :=
.seq loopBody571_1 loopBody571_107

def loopBody571_109 : HolLoopProg 64 :=
.mark loopBody571_108

def loopBody571_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody571_111 : HolLoopProg 64 :=
.mark loopBody571_110

def loopBody571_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 7)

def loopBody571_113 : HolLoopProg 64 :=
.mark loopBody571_112

def loopBody571_114 : HolLoopProg 64 :=
.seq loopBody571_113 loopBody571_1

def loopBody571_115 : HolLoopProg 64 :=
.mark loopBody571_114

def loopBody571_116 : HolLoopProg 64 :=
.seq loopBody571_115 loopBody571_1

def loopBody571_117 : HolLoopProg 64 :=
.mark loopBody571_116

def loopBody571_118 : HolLoopProg 64 :=
.seq loopBody571_111 loopBody571_117

def loopBody571_119 : HolLoopProg 64 :=
.mark loopBody571_118

def loopBody571_120 : HolLoopProg 64 :=
.seq loopBody571_1 loopBody571_119

def loopBody571_121 : HolLoopProg 64 :=
.mark loopBody571_120

def loopBody571_122 : HolLoopProg 64 :=
.seq loopBody571_109 loopBody571_121

def loopBody571_123 : HolLoopProg 64 :=
.mark loopBody571_122

def loopBody571_124 : HolLoopProg 64 :=
.seq loopBody571_81 loopBody571_123

def loopBody571_125 : HolLoopProg 64 :=
.mark loopBody571_124

def loopBody571_126 : HolLoopProg 64 :=
.seq loopBody571_1 loopBody571_125

def loopBody571_127 : HolLoopProg 64 :=
.mark loopBody571_126

def loopBody571_128 : HolLoopProg 64 :=
.seq loopBody571_79 loopBody571_127

def loopBody571_129 : HolLoopProg 64 :=
.mark loopBody571_128

def loopBody571_130 : HolLoopProg 64 :=
.seq loopBody571_1 loopBody571_129

def loopBody571_131 : HolLoopProg 64 :=
.mark loopBody571_130

def loopBody571_132 : HolLoopProg 64 :=
.seq loopBody571_131 loopBody571_53

def loopBody571_133 : HolLoopProg 64 :=
.mark loopBody571_132

def loopBody571_134 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody571_133 loopBody571_57 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody571_135 : HolLoopProg 64 :=
.mark loopBody571_134

def loopBody571_136 : HolLoopProg 64 :=
.seq loopBody571_135 loopBody571_1

def loopBody571_137 : HolLoopProg 64 :=
.mark loopBody571_136

def loopBody571_138 : HolLoopProg 64 :=
.seq loopBody571_17 loopBody571_137

def loopBody571_139 : HolLoopProg 64 :=
.mark loopBody571_138

def loopBody571_140 : HolLoopProg 64 :=
.seq loopBody571_15 loopBody571_139

def loopBody571_141 : HolLoopProg 64 :=
.mark loopBody571_140

def loopBody571_142 : HolLoopProg 64 :=
.seq loopBody571_77 loopBody571_141

def loopBody571_143 : HolLoopProg 64 :=
.mark loopBody571_142

def loopBody571_144 : HolLoopProg 64 :=
.seq loopBody571_7 loopBody571_143

def loopBody571_145 : HolLoopProg 64 :=
.mark loopBody571_144

def loopBody571_146 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody571_145 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody571_147 : HolLoopProg 64 :=
.seq loopBody571_75 loopBody571_146

def loopBody571_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody571_149 : HolLoopProg 64 :=
.mark loopBody571_148

def loopBody571_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody571_151 : HolLoopProg 64 :=
.mark loopBody571_150

def loopBody571_152 : HolLoopProg 64 :=
.seq loopBody571_151 loopBody571_1

def loopBody571_153 : HolLoopProg 64 :=
.mark loopBody571_152

def loopBody571_154 : HolLoopProg 64 :=
.seq loopBody571_149 loopBody571_153

def loopBody571_155 : HolLoopProg 64 :=
.mark loopBody571_154

def loopBody571_156 : HolLoopProg 64 :=
.seq loopBody571_147 loopBody571_155

def loopBody571_157 : HolLoopProg 64 :=
.seq loopBody571_5 loopBody571_156

def loopBody571_158 : HolLoopProg 64 :=
.seq loopBody571_1 loopBody571_157

def loopBody571_159 : HolLoopProg 64 :=
.seq loopBody571_3 loopBody571_158

def loopBody571_160 : HolLoopProg 64 :=
.seq loopBody571_1 loopBody571_159

def output571 : Nat × List Nat × HolLoopProg 64 :=
  (635, [0, 1, 2], loopBody571_160)
end InitECandidate.Proofs.FrontendStages.Loop
