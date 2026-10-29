import InitECandidate.Proofs.FrontendStages.Loop.Translate104
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody120_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody120_1 : HolLoopProg 64 :=
.mark loopBody120_0

def loopBody120_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody120_3 : HolLoopProg 64 :=
.mark loopBody120_2

def loopBody120_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody120_5 : HolLoopProg 64 :=
.mark loopBody120_4

def loopBody120_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody120_7 : HolLoopProg 64 :=
.mark loopBody120_6

def loopBody120_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody120_9 : HolLoopProg 64 :=
.mark loopBody120_8

def loopBody120_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody120_11 : HolLoopProg 64 :=
.mark loopBody120_10

def loopBody120_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.RegImm.reg 6) loopBody120_9 loopBody120_11 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody120_13 : HolLoopProg 64 :=
.mark loopBody120_12

def loopBody120_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody120_15 : HolLoopProg 64 :=
.mark loopBody120_14

def loopBody120_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3])

def loopBody120_17 : HolLoopProg 64 :=
.mark loopBody120_16

def loopBody120_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 4 4

def loopBody120_19 : HolLoopProg 64 :=
.mark loopBody120_18

def loopBody120_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3])

def loopBody120_21 : HolLoopProg 64 :=
.mark loopBody120_20

def loopBody120_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 5 5

def loopBody120_23 : HolLoopProg 64 :=
.mark loopBody120_22

def loopBody120_24 : HolLoopProg 64 :=
.seq loopBody120_23 loopBody120_1

def loopBody120_25 : HolLoopProg 64 :=
.mark loopBody120_24

def loopBody120_26 : HolLoopProg 64 :=
.seq loopBody120_21 loopBody120_25

def loopBody120_27 : HolLoopProg 64 :=
.mark loopBody120_26

def loopBody120_28 : HolLoopProg 64 :=
.seq loopBody120_19 loopBody120_27

def loopBody120_29 : HolLoopProg 64 :=
.mark loopBody120_28

def loopBody120_30 : HolLoopProg 64 :=
.seq loopBody120_17 loopBody120_29

def loopBody120_31 : HolLoopProg 64 :=
.mark loopBody120_30

def loopBody120_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 5])

def loopBody120_33 : HolLoopProg 64 :=
.mark loopBody120_32

def loopBody120_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody120_35 : HolLoopProg 64 :=
.mark loopBody120_34

def loopBody120_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody120_37 : HolLoopProg 64 :=
.mark loopBody120_36

def loopBody120_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody120_39 : HolLoopProg 64 :=
.mark loopBody120_38

def loopBody120_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody120_41 : HolLoopProg 64 :=
.mark loopBody120_40

def loopBody120_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.reg 9) loopBody120_39 loopBody120_41 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody120_43 : HolLoopProg 64 :=
.mark loopBody120_42

def loopBody120_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody120_45 : HolLoopProg 64 :=
.mark loopBody120_44

def loopBody120_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody120_47 : HolLoopProg 64 :=
.mark loopBody120_46

def loopBody120_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody120_49 : HolLoopProg 64 :=
.mark loopBody120_48

def loopBody120_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 8#64)

def loopBody120_51 : HolLoopProg 64 :=
.mark loopBody120_50

def loopBody120_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody120_53 : HolLoopProg 64 :=
.mark loopBody120_52

def loopBody120_54 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 9 (Flapjack.RegImm.reg 10) loopBody120_53 loopBody120_37 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody120_55 : HolLoopProg 64 :=
.mark loopBody120_54

def loopBody120_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody120_57 : HolLoopProg 64 :=
.mark loopBody120_56

def loopBody120_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 6)
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 7#64, Flapjack.HolLoopExp.var 7]),
      Flapjack.HolLoopExp.const 1#64])

def loopBody120_59 : HolLoopProg 64 :=
.mark loopBody120_58

def loopBody120_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody120_61 : HolLoopProg 64 :=
.mark loopBody120_60

def loopBody120_62 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.reg 10) loopBody120_53 loopBody120_37 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody120_63 : HolLoopProg 64 :=
.mark loopBody120_62

def loopBody120_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 3#64),
      Flapjack.HolLoopExp.var 7])

def loopBody120_65 : HolLoopProg 64 :=
.mark loopBody120_64

def loopBody120_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody120_67 : HolLoopProg 64 :=
.mark loopBody120_66

def loopBody120_68 : HolLoopProg 64 :=
.seq loopBody120_67 loopBody120_1

def loopBody120_69 : HolLoopProg 64 :=
.mark loopBody120_68

def loopBody120_70 : HolLoopProg 64 :=
.seq loopBody120_65 loopBody120_69

def loopBody120_71 : HolLoopProg 64 :=
.mark loopBody120_70

def loopBody120_72 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody120_71 loopBody120_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody120_73 : HolLoopProg 64 :=
.mark loopBody120_72

def loopBody120_74 : HolLoopProg 64 :=
.seq loopBody120_73 loopBody120_1

def loopBody120_75 : HolLoopProg 64 :=
.mark loopBody120_74

def loopBody120_76 : HolLoopProg 64 :=
.seq loopBody120_57 loopBody120_75

def loopBody120_77 : HolLoopProg 64 :=
.mark loopBody120_76

def loopBody120_78 : HolLoopProg 64 :=
.seq loopBody120_63 loopBody120_77

def loopBody120_79 : HolLoopProg 64 :=
.mark loopBody120_78

def loopBody120_80 : HolLoopProg 64 :=
.seq loopBody120_61 loopBody120_79

def loopBody120_81 : HolLoopProg 64 :=
.mark loopBody120_80

def loopBody120_82 : HolLoopProg 64 :=
.seq loopBody120_59 loopBody120_81

def loopBody120_83 : HolLoopProg 64 :=
.mark loopBody120_82

def loopBody120_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 1#64])

def loopBody120_85 : HolLoopProg 64 :=
.mark loopBody120_84

def loopBody120_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 8)

def loopBody120_87 : HolLoopProg 64 :=
.mark loopBody120_86

def loopBody120_88 : HolLoopProg 64 :=
.seq loopBody120_87 loopBody120_1

def loopBody120_89 : HolLoopProg 64 :=
.mark loopBody120_88

def loopBody120_90 : HolLoopProg 64 :=
.seq loopBody120_89 loopBody120_1

def loopBody120_91 : HolLoopProg 64 :=
.mark loopBody120_90

def loopBody120_92 : HolLoopProg 64 :=
.seq loopBody120_85 loopBody120_91

def loopBody120_93 : HolLoopProg 64 :=
.mark loopBody120_92

def loopBody120_94 : HolLoopProg 64 :=
.seq loopBody120_1 loopBody120_93

def loopBody120_95 : HolLoopProg 64 :=
.mark loopBody120_94

def loopBody120_96 : HolLoopProg 64 :=
.seq loopBody120_83 loopBody120_95

def loopBody120_97 : HolLoopProg 64 :=
.mark loopBody120_96

def loopBody120_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody120_99 : HolLoopProg 64 :=
.mark loopBody120_98

def loopBody120_100 : HolLoopProg 64 :=
.seq loopBody120_97 loopBody120_99

def loopBody120_101 : HolLoopProg 64 :=
.mark loopBody120_100

def loopBody120_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody120_103 : HolLoopProg 64 :=
.mark loopBody120_102

def loopBody120_104 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody120_101 loopBody120_103 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody120_105 : HolLoopProg 64 :=
.mark loopBody120_104

def loopBody120_106 : HolLoopProg 64 :=
.seq loopBody120_105 loopBody120_1

def loopBody120_107 : HolLoopProg 64 :=
.mark loopBody120_106

def loopBody120_108 : HolLoopProg 64 :=
.seq loopBody120_57 loopBody120_107

def loopBody120_109 : HolLoopProg 64 :=
.mark loopBody120_108

def loopBody120_110 : HolLoopProg 64 :=
.seq loopBody120_55 loopBody120_109

def loopBody120_111 : HolLoopProg 64 :=
.mark loopBody120_110

def loopBody120_112 : HolLoopProg 64 :=
.seq loopBody120_51 loopBody120_111

def loopBody120_113 : HolLoopProg 64 :=
.mark loopBody120_112

def loopBody120_114 : HolLoopProg 64 :=
.seq loopBody120_49 loopBody120_113

def loopBody120_115 : HolLoopProg 64 :=
.mark loopBody120_114

def loopBody120_116 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody120_115 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody120_117 : HolLoopProg 64 :=
.seq loopBody120_47 loopBody120_116

def loopBody120_118 : HolLoopProg 64 :=
.seq loopBody120_1 loopBody120_117

def loopBody120_119 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody120_118 loopBody120_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody120_120 : HolLoopProg 64 :=
.seq loopBody120_119 loopBody120_1

def loopBody120_121 : HolLoopProg 64 :=
.seq loopBody120_45 loopBody120_120

def loopBody120_122 : HolLoopProg 64 :=
.seq loopBody120_43 loopBody120_121

def loopBody120_123 : HolLoopProg 64 :=
.seq loopBody120_37 loopBody120_122

def loopBody120_124 : HolLoopProg 64 :=
.seq loopBody120_35 loopBody120_123

def loopBody120_125 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody120_126 : HolLoopProg 64 :=
.mark loopBody120_125

def loopBody120_127 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 7)

def loopBody120_128 : HolLoopProg 64 :=
.mark loopBody120_127

def loopBody120_129 : HolLoopProg 64 :=
.seq loopBody120_128 loopBody120_1

def loopBody120_130 : HolLoopProg 64 :=
.mark loopBody120_129

def loopBody120_131 : HolLoopProg 64 :=
.seq loopBody120_130 loopBody120_1

def loopBody120_132 : HolLoopProg 64 :=
.mark loopBody120_131

def loopBody120_133 : HolLoopProg 64 :=
.seq loopBody120_126 loopBody120_132

def loopBody120_134 : HolLoopProg 64 :=
.mark loopBody120_133

def loopBody120_135 : HolLoopProg 64 :=
.seq loopBody120_1 loopBody120_134

def loopBody120_136 : HolLoopProg 64 :=
.mark loopBody120_135

def loopBody120_137 : HolLoopProg 64 :=
.seq loopBody120_124 loopBody120_136

def loopBody120_138 : HolLoopProg 64 :=
.seq loopBody120_33 loopBody120_137

def loopBody120_139 : HolLoopProg 64 :=
.seq loopBody120_31 loopBody120_138

def loopBody120_140 : HolLoopProg 64 :=
.seq loopBody120_139 loopBody120_99

def loopBody120_141 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody120_140 loopBody120_103 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody120_142 : HolLoopProg 64 :=
.seq loopBody120_141 loopBody120_1

def loopBody120_143 : HolLoopProg 64 :=
.seq loopBody120_15 loopBody120_142

def loopBody120_144 : HolLoopProg 64 :=
.seq loopBody120_13 loopBody120_143

def loopBody120_145 : HolLoopProg 64 :=
.seq loopBody120_7 loopBody120_144

def loopBody120_146 : HolLoopProg 64 :=
.seq loopBody120_5 loopBody120_145

def loopBody120_147 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody120_146 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody120_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 3#64))

def loopBody120_149 : HolLoopProg 64 :=
.mark loopBody120_148

def loopBody120_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody120_151 : HolLoopProg 64 :=
.mark loopBody120_150

def loopBody120_152 : HolLoopProg 64 :=
.seq loopBody120_151 loopBody120_1

def loopBody120_153 : HolLoopProg 64 :=
.mark loopBody120_152

def loopBody120_154 : HolLoopProg 64 :=
.seq loopBody120_149 loopBody120_153

def loopBody120_155 : HolLoopProg 64 :=
.mark loopBody120_154

def loopBody120_156 : HolLoopProg 64 :=
.seq loopBody120_147 loopBody120_155

def loopBody120_157 : HolLoopProg 64 :=
.seq loopBody120_3 loopBody120_156

def loopBody120_158 : HolLoopProg 64 :=
.seq loopBody120_1 loopBody120_157

def output120 : Nat × List Nat × HolLoopProg 64 :=
  (184, [0, 1, 2], loopBody120_158)
end InitECandidate.Proofs.FrontendStages.Loop
