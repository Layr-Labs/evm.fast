import InitECandidate.Proofs.FrontendStages.Loop.Translate106
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody122_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody122_1 : HolLoopProg 64 :=
.mark loopBody122_0

def loopBody122_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody122_3 : HolLoopProg 64 :=
.mark loopBody122_2

def loopBody122_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody122_5 : HolLoopProg 64 :=
.mark loopBody122_4

def loopBody122_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody122_7 : HolLoopProg 64 :=
.mark loopBody122_6

def loopBody122_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 185) ([3, 4]) (some (3, loopBody122_7, loopBody122_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody122_9 : HolLoopProg 64 :=
.mark loopBody122_8

def loopBody122_10 : HolLoopProg 64 :=
.seq loopBody122_9 loopBody122_1

def loopBody122_11 : HolLoopProg 64 :=
.mark loopBody122_10

def loopBody122_12 : HolLoopProg 64 :=
.seq loopBody122_5 loopBody122_11

def loopBody122_13 : HolLoopProg 64 :=
.mark loopBody122_12

def loopBody122_14 : HolLoopProg 64 :=
.seq loopBody122_3 loopBody122_13

def loopBody122_15 : HolLoopProg 64 :=
.mark loopBody122_14

def loopBody122_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody122_17 : HolLoopProg 64 :=
.mark loopBody122_16

def loopBody122_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody122_19 : HolLoopProg 64 :=
.mark loopBody122_18

def loopBody122_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody122_21 : HolLoopProg 64 :=
.mark loopBody122_20

def loopBody122_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody122_23 : HolLoopProg 64 :=
.mark loopBody122_22

def loopBody122_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody122_21 loopBody122_23 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody122_25 : HolLoopProg 64 :=
.mark loopBody122_24

def loopBody122_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody122_27 : HolLoopProg 64 :=
.mark loopBody122_26

def loopBody122_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody122_29 : HolLoopProg 64 :=
.mark loopBody122_28

def loopBody122_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3, 4]

def loopBody122_31 : HolLoopProg 64 :=
.mark loopBody122_30

def loopBody122_32 : HolLoopProg 64 :=
.seq loopBody122_31 loopBody122_1

def loopBody122_33 : HolLoopProg 64 :=
.mark loopBody122_32

def loopBody122_34 : HolLoopProg 64 :=
.seq loopBody122_23 loopBody122_33

def loopBody122_35 : HolLoopProg 64 :=
.mark loopBody122_34

def loopBody122_36 : HolLoopProg 64 :=
.seq loopBody122_29 loopBody122_35

def loopBody122_37 : HolLoopProg 64 :=
.mark loopBody122_36

def loopBody122_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody122_37 loopBody122_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody122_39 : HolLoopProg 64 :=
.mark loopBody122_38

def loopBody122_40 : HolLoopProg 64 :=
.seq loopBody122_39 loopBody122_1

def loopBody122_41 : HolLoopProg 64 :=
.mark loopBody122_40

def loopBody122_42 : HolLoopProg 64 :=
.seq loopBody122_27 loopBody122_41

def loopBody122_43 : HolLoopProg 64 :=
.mark loopBody122_42

def loopBody122_44 : HolLoopProg 64 :=
.seq loopBody122_25 loopBody122_43

def loopBody122_45 : HolLoopProg 64 :=
.mark loopBody122_44

def loopBody122_46 : HolLoopProg 64 :=
.seq loopBody122_19 loopBody122_45

def loopBody122_47 : HolLoopProg 64 :=
.mark loopBody122_46

def loopBody122_48 : HolLoopProg 64 :=
.seq loopBody122_17 loopBody122_47

def loopBody122_49 : HolLoopProg 64 :=
.mark loopBody122_48

def loopBody122_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody122_51 : HolLoopProg 64 :=
.mark loopBody122_50

def loopBody122_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody122_53 : HolLoopProg 64 :=
.mark loopBody122_52

def loopBody122_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64]))

def loopBody122_55 : HolLoopProg 64 :=
.mark loopBody122_54

def loopBody122_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody122_57 : HolLoopProg 64 :=
.mark loopBody122_56

def loopBody122_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody122_59 : HolLoopProg 64 :=
.mark loopBody122_58

def loopBody122_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 9 9 7 8)

def loopBody122_61 : HolLoopProg 64 :=
.mark loopBody122_60

def loopBody122_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 9])

def loopBody122_63 : HolLoopProg 64 :=
.mark loopBody122_62

def loopBody122_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 1)

def loopBody122_65 : HolLoopProg 64 :=
.mark loopBody122_64

def loopBody122_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody122_67 : HolLoopProg 64 :=
.mark loopBody122_66

def loopBody122_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody122_69 : HolLoopProg 64 :=
.mark loopBody122_68

def loopBody122_70 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)) (some 79) ([10, 11, 12]) (some (7, loopBody122_69, loopBody122_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)))

def loopBody122_71 : HolLoopProg 64 :=
.mark loopBody122_70

def loopBody122_72 : HolLoopProg 64 :=
.seq loopBody122_71 loopBody122_1

def loopBody122_73 : HolLoopProg 64 :=
.mark loopBody122_72

def loopBody122_74 : HolLoopProg 64 :=
.seq loopBody122_67 loopBody122_73

def loopBody122_75 : HolLoopProg 64 :=
.mark loopBody122_74

def loopBody122_76 : HolLoopProg 64 :=
.seq loopBody122_65 loopBody122_75

def loopBody122_77 : HolLoopProg 64 :=
.mark loopBody122_76

def loopBody122_78 : HolLoopProg 64 :=
.seq loopBody122_63 loopBody122_77

def loopBody122_79 : HolLoopProg 64 :=
.mark loopBody122_78

def loopBody122_80 : HolLoopProg 64 :=
.seq loopBody122_61 loopBody122_79

def loopBody122_81 : HolLoopProg 64 :=
.mark loopBody122_80

def loopBody122_82 : HolLoopProg 64 :=
.seq loopBody122_59 loopBody122_81

def loopBody122_83 : HolLoopProg 64 :=
.mark loopBody122_82

def loopBody122_84 : HolLoopProg 64 :=
.seq loopBody122_57 loopBody122_83

def loopBody122_85 : HolLoopProg 64 :=
.mark loopBody122_84

def loopBody122_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody122_87 : HolLoopProg 64 :=
.mark loopBody122_86

def loopBody122_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody122_89 : HolLoopProg 64 :=
.mark loopBody122_88

def loopBody122_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody122_91 : HolLoopProg 64 :=
.mark loopBody122_90

def loopBody122_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody122_93 : HolLoopProg 64 :=
.mark loopBody122_92

def loopBody122_94 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.RegImm.reg 9) loopBody122_91 loopBody122_93 (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
  Flapjack.Spt.ln)

def loopBody122_95 : HolLoopProg 64 :=
.mark loopBody122_94

def loopBody122_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody122_97 : HolLoopProg 64 :=
.mark loopBody122_96

def loopBody122_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody122_99 : HolLoopProg 64 :=
.mark loopBody122_98

def loopBody122_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7, 8]

def loopBody122_101 : HolLoopProg 64 :=
.mark loopBody122_100

def loopBody122_102 : HolLoopProg 64 :=
.seq loopBody122_101 loopBody122_1

def loopBody122_103 : HolLoopProg 64 :=
.mark loopBody122_102

def loopBody122_104 : HolLoopProg 64 :=
.seq loopBody122_93 loopBody122_103

def loopBody122_105 : HolLoopProg 64 :=
.mark loopBody122_104

def loopBody122_106 : HolLoopProg 64 :=
.seq loopBody122_99 loopBody122_105

def loopBody122_107 : HolLoopProg 64 :=
.mark loopBody122_106

def loopBody122_108 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody122_107 loopBody122_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody122_109 : HolLoopProg 64 :=
.mark loopBody122_108

def loopBody122_110 : HolLoopProg 64 :=
.seq loopBody122_109 loopBody122_1

def loopBody122_111 : HolLoopProg 64 :=
.mark loopBody122_110

def loopBody122_112 : HolLoopProg 64 :=
.seq loopBody122_97 loopBody122_111

def loopBody122_113 : HolLoopProg 64 :=
.mark loopBody122_112

def loopBody122_114 : HolLoopProg 64 :=
.seq loopBody122_95 loopBody122_113

def loopBody122_115 : HolLoopProg 64 :=
.mark loopBody122_114

def loopBody122_116 : HolLoopProg 64 :=
.seq loopBody122_89 loopBody122_115

def loopBody122_117 : HolLoopProg 64 :=
.mark loopBody122_116

def loopBody122_118 : HolLoopProg 64 :=
.seq loopBody122_87 loopBody122_117

def loopBody122_119 : HolLoopProg 64 :=
.mark loopBody122_118

def loopBody122_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody122_121 : HolLoopProg 64 :=
.mark loopBody122_120

def loopBody122_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 40#64]),
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 5#64),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody122_123 : HolLoopProg 64 :=
.mark loopBody122_122

def loopBody122_124 : HolLoopProg 64 :=
.seq loopBody122_123 loopBody122_103

def loopBody122_125 : HolLoopProg 64 :=
.mark loopBody122_124

def loopBody122_126 : HolLoopProg 64 :=
.seq loopBody122_121 loopBody122_125

def loopBody122_127 : HolLoopProg 64 :=
.mark loopBody122_126

def loopBody122_128 : HolLoopProg 64 :=
.seq loopBody122_119 loopBody122_127

def loopBody122_129 : HolLoopProg 64 :=
.mark loopBody122_128

def loopBody122_130 : HolLoopProg 64 :=
.seq loopBody122_85 loopBody122_129

def loopBody122_131 : HolLoopProg 64 :=
.mark loopBody122_130

def loopBody122_132 : HolLoopProg 64 :=
.seq loopBody122_1 loopBody122_131

def loopBody122_133 : HolLoopProg 64 :=
.mark loopBody122_132

def loopBody122_134 : HolLoopProg 64 :=
.seq loopBody122_1 loopBody122_133

def loopBody122_135 : HolLoopProg 64 :=
.mark loopBody122_134

def loopBody122_136 : HolLoopProg 64 :=
.seq loopBody122_55 loopBody122_135

def loopBody122_137 : HolLoopProg 64 :=
.mark loopBody122_136

def loopBody122_138 : HolLoopProg 64 :=
.seq loopBody122_1 loopBody122_137

def loopBody122_139 : HolLoopProg 64 :=
.mark loopBody122_138

def loopBody122_140 : HolLoopProg 64 :=
.seq loopBody122_53 loopBody122_139

def loopBody122_141 : HolLoopProg 64 :=
.mark loopBody122_140

def loopBody122_142 : HolLoopProg 64 :=
.seq loopBody122_1 loopBody122_141

def loopBody122_143 : HolLoopProg 64 :=
.mark loopBody122_142

def loopBody122_144 : HolLoopProg 64 :=
.seq loopBody122_51 loopBody122_143

def loopBody122_145 : HolLoopProg 64 :=
.mark loopBody122_144

def loopBody122_146 : HolLoopProg 64 :=
.seq loopBody122_1 loopBody122_145

def loopBody122_147 : HolLoopProg 64 :=
.mark loopBody122_146

def loopBody122_148 : HolLoopProg 64 :=
.seq loopBody122_49 loopBody122_147

def loopBody122_149 : HolLoopProg 64 :=
.mark loopBody122_148

def loopBody122_150 : HolLoopProg 64 :=
.seq loopBody122_15 loopBody122_149

def loopBody122_151 : HolLoopProg 64 :=
.mark loopBody122_150

def loopBody122_152 : HolLoopProg 64 :=
.seq loopBody122_1 loopBody122_151

def loopBody122_153 : HolLoopProg 64 :=
.mark loopBody122_152

def loopBody122_154 : HolLoopProg 64 :=
.seq loopBody122_1 loopBody122_153

def loopBody122_155 : HolLoopProg 64 :=
.mark loopBody122_154

def output122 : Nat × List Nat × HolLoopProg 64 :=
  (186, [0, 1], loopBody122_155)
end InitECandidate.Proofs.FrontendStages.Loop
