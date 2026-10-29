import InitECandidate.Proofs.FrontendStages.Loop.Translate396
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody412_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody412_1 : HolLoopProg 64 :=
.mark loopBody412_0

def loopBody412_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody412_3 : HolLoopProg 64 :=
.mark loopBody412_2

def loopBody412_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 232#64]))

def loopBody412_5 : HolLoopProg 64 :=
.mark loopBody412_4

def loopBody412_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody412_7 : HolLoopProg 64 :=
.mark loopBody412_6

def loopBody412_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody412_9 : HolLoopProg 64 :=
.mark loopBody412_8

def loopBody412_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody412_11 : HolLoopProg 64 :=
.mark loopBody412_10

def loopBody412_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody412_13 : HolLoopProg 64 :=
.mark loopBody412_12

def loopBody412_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 7 (Flapjack.RegImm.reg 8) loopBody412_11 loopBody412_13 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody412_15 : HolLoopProg 64 :=
.mark loopBody412_14

def loopBody412_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody412_17 : HolLoopProg 64 :=
.mark loopBody412_16

def loopBody412_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody412_19 : HolLoopProg 64 :=
.mark loopBody412_18

def loopBody412_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1024#64)

def loopBody412_21 : HolLoopProg 64 :=
.mark loopBody412_20

def loopBody412_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 3#64)

def loopBody412_23 : HolLoopProg 64 :=
.mark loopBody412_22

def loopBody412_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 6)

def loopBody412_25 : HolLoopProg 64 :=
.mark loopBody412_24

def loopBody412_26 : HolLoopProg 64 :=
.seq loopBody412_25 loopBody412_1

def loopBody412_27 : HolLoopProg 64 :=
.mark loopBody412_26

def loopBody412_28 : HolLoopProg 64 :=
.seq loopBody412_27 loopBody412_1

def loopBody412_29 : HolLoopProg 64 :=
.mark loopBody412_28

def loopBody412_30 : HolLoopProg 64 :=
.seq loopBody412_23 loopBody412_29

def loopBody412_31 : HolLoopProg 64 :=
.mark loopBody412_30

def loopBody412_32 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_31

def loopBody412_33 : HolLoopProg 64 :=
.mark loopBody412_32

def loopBody412_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 8#64)

def loopBody412_35 : HolLoopProg 64 :=
.mark loopBody412_34

def loopBody412_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody412_37 : HolLoopProg 64 :=
.mark loopBody412_36

def loopBody412_38 : HolLoopProg 64 :=
.seq loopBody412_35 loopBody412_37

def loopBody412_39 : HolLoopProg 64 :=
.mark loopBody412_38

def loopBody412_40 : HolLoopProg 64 :=
.seq loopBody412_33 loopBody412_39

def loopBody412_41 : HolLoopProg 64 :=
.mark loopBody412_40

def loopBody412_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody412_41 loopBody412_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody412_43 : HolLoopProg 64 :=
.mark loopBody412_42

def loopBody412_44 : HolLoopProg 64 :=
.seq loopBody412_43 loopBody412_1

def loopBody412_45 : HolLoopProg 64 :=
.mark loopBody412_44

def loopBody412_46 : HolLoopProg 64 :=
.seq loopBody412_17 loopBody412_45

def loopBody412_47 : HolLoopProg 64 :=
.mark loopBody412_46

def loopBody412_48 : HolLoopProg 64 :=
.seq loopBody412_15 loopBody412_47

def loopBody412_49 : HolLoopProg 64 :=
.mark loopBody412_48

def loopBody412_50 : HolLoopProg 64 :=
.seq loopBody412_21 loopBody412_49

def loopBody412_51 : HolLoopProg 64 :=
.mark loopBody412_50

def loopBody412_52 : HolLoopProg 64 :=
.seq loopBody412_19 loopBody412_51

def loopBody412_53 : HolLoopProg 64 :=
.mark loopBody412_52

def loopBody412_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 1#64))

def loopBody412_55 : HolLoopProg 64 :=
.mark loopBody412_54

def loopBody412_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 6)

def loopBody412_57 : HolLoopProg 64 :=
.mark loopBody412_56

def loopBody412_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody412_59 : HolLoopProg 64 :=
.mark loopBody412_58

def loopBody412_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody412_61 : HolLoopProg 64 :=
.mark loopBody412_60

def loopBody412_62 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.RegImm.reg 9) loopBody412_59 loopBody412_61 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody412_63 : HolLoopProg 64 :=
.mark loopBody412_62

def loopBody412_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody412_65 : HolLoopProg 64 :=
.mark loopBody412_64

def loopBody412_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1024#64)

def loopBody412_67 : HolLoopProg 64 :=
.mark loopBody412_66

def loopBody412_68 : HolLoopProg 64 :=
.seq loopBody412_67 loopBody412_1

def loopBody412_69 : HolLoopProg 64 :=
.mark loopBody412_68

def loopBody412_70 : HolLoopProg 64 :=
.seq loopBody412_69 loopBody412_1

def loopBody412_71 : HolLoopProg 64 :=
.mark loopBody412_70

def loopBody412_72 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody412_71 loopBody412_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody412_73 : HolLoopProg 64 :=
.mark loopBody412_72

def loopBody412_74 : HolLoopProg 64 :=
.seq loopBody412_73 loopBody412_1

def loopBody412_75 : HolLoopProg 64 :=
.mark loopBody412_74

def loopBody412_76 : HolLoopProg 64 :=
.seq loopBody412_65 loopBody412_75

def loopBody412_77 : HolLoopProg 64 :=
.mark loopBody412_76

def loopBody412_78 : HolLoopProg 64 :=
.seq loopBody412_63 loopBody412_77

def loopBody412_79 : HolLoopProg 64 :=
.mark loopBody412_78

def loopBody412_80 : HolLoopProg 64 :=
.seq loopBody412_57 loopBody412_79

def loopBody412_81 : HolLoopProg 64 :=
.mark loopBody412_80

def loopBody412_82 : HolLoopProg 64 :=
.seq loopBody412_21 loopBody412_81

def loopBody412_83 : HolLoopProg 64 :=
.mark loopBody412_82

def loopBody412_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 5#64))

def loopBody412_85 : HolLoopProg 64 :=
.mark loopBody412_84

def loopBody412_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody412_87 : HolLoopProg 64 :=
.mark loopBody412_86

def loopBody412_88 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 74) ([8]) (some (8, loopBody412_87, loopBody412_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody412_89 : HolLoopProg 64 :=
.mark loopBody412_88

def loopBody412_90 : HolLoopProg 64 :=
.seq loopBody412_89 loopBody412_1

def loopBody412_91 : HolLoopProg 64 :=
.mark loopBody412_90

def loopBody412_92 : HolLoopProg 64 :=
.seq loopBody412_85 loopBody412_91

def loopBody412_93 : HolLoopProg 64 :=
.mark loopBody412_92

def loopBody412_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody412_95 : HolLoopProg 64 :=
.mark loopBody412_94

def loopBody412_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 5#64))

def loopBody412_97 : HolLoopProg 64 :=
.mark loopBody412_96

def loopBody412_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody412_99 : HolLoopProg 64 :=
.mark loopBody412_98

def loopBody412_100 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 77) ([9, 10, 11]) (some (9, loopBody412_99, loopBody412_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody412_101 : HolLoopProg 64 :=
.mark loopBody412_100

def loopBody412_102 : HolLoopProg 64 :=
.seq loopBody412_101 loopBody412_1

def loopBody412_103 : HolLoopProg 64 :=
.mark loopBody412_102

def loopBody412_104 : HolLoopProg 64 :=
.seq loopBody412_97 loopBody412_103

def loopBody412_105 : HolLoopProg 64 :=
.mark loopBody412_104

def loopBody412_106 : HolLoopProg 64 :=
.seq loopBody412_95 loopBody412_105

def loopBody412_107 : HolLoopProg 64 :=
.mark loopBody412_106

def loopBody412_108 : HolLoopProg 64 :=
.seq loopBody412_17 loopBody412_107

def loopBody412_109 : HolLoopProg 64 :=
.mark loopBody412_108

def loopBody412_110 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_109

def loopBody412_111 : HolLoopProg 64 :=
.mark loopBody412_110

def loopBody412_112 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_111

def loopBody412_113 : HolLoopProg 64 :=
.mark loopBody412_112

def loopBody412_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 8#64])

def loopBody412_115 : HolLoopProg 64 :=
.mark loopBody412_114

def loopBody412_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 9)

def loopBody412_117 : HolLoopProg 64 :=
.mark loopBody412_116

def loopBody412_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 8) 10

def loopBody412_119 : HolLoopProg 64 :=
.mark loopBody412_118

def loopBody412_120 : HolLoopProg 64 :=
.seq loopBody412_119 loopBody412_1

def loopBody412_121 : HolLoopProg 64 :=
.mark loopBody412_120

def loopBody412_122 : HolLoopProg 64 :=
.seq loopBody412_117 loopBody412_121

def loopBody412_123 : HolLoopProg 64 :=
.mark loopBody412_122

def loopBody412_124 : HolLoopProg 64 :=
.seq loopBody412_123 loopBody412_1

def loopBody412_125 : HolLoopProg 64 :=
.mark loopBody412_124

def loopBody412_126 : HolLoopProg 64 :=
.seq loopBody412_17 loopBody412_125

def loopBody412_127 : HolLoopProg 64 :=
.mark loopBody412_126

def loopBody412_128 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_127

def loopBody412_129 : HolLoopProg 64 :=
.mark loopBody412_128

def loopBody412_130 : HolLoopProg 64 :=
.seq loopBody412_115 loopBody412_129

def loopBody412_131 : HolLoopProg 64 :=
.mark loopBody412_130

def loopBody412_132 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_131

def loopBody412_133 : HolLoopProg 64 :=
.mark loopBody412_132

def loopBody412_134 : HolLoopProg 64 :=
.seq loopBody412_113 loopBody412_133

def loopBody412_135 : HolLoopProg 64 :=
.mark loopBody412_134

def loopBody412_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 232#64])

def loopBody412_137 : HolLoopProg 64 :=
.mark loopBody412_136

def loopBody412_138 : HolLoopProg 64 :=
.seq loopBody412_57 loopBody412_125

def loopBody412_139 : HolLoopProg 64 :=
.mark loopBody412_138

def loopBody412_140 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_139

def loopBody412_141 : HolLoopProg 64 :=
.mark loopBody412_140

def loopBody412_142 : HolLoopProg 64 :=
.seq loopBody412_137 loopBody412_141

def loopBody412_143 : HolLoopProg 64 :=
.mark loopBody412_142

def loopBody412_144 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_143

def loopBody412_145 : HolLoopProg 64 :=
.mark loopBody412_144

def loopBody412_146 : HolLoopProg 64 :=
.seq loopBody412_135 loopBody412_145

def loopBody412_147 : HolLoopProg 64 :=
.mark loopBody412_146

def loopBody412_148 : HolLoopProg 64 :=
.seq loopBody412_93 loopBody412_147

def loopBody412_149 : HolLoopProg 64 :=
.mark loopBody412_148

def loopBody412_150 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_149

def loopBody412_151 : HolLoopProg 64 :=
.mark loopBody412_150

def loopBody412_152 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_151

def loopBody412_153 : HolLoopProg 64 :=
.mark loopBody412_152

def loopBody412_154 : HolLoopProg 64 :=
.seq loopBody412_83 loopBody412_153

def loopBody412_155 : HolLoopProg 64 :=
.mark loopBody412_154

def loopBody412_156 : HolLoopProg 64 :=
.seq loopBody412_55 loopBody412_155

def loopBody412_157 : HolLoopProg 64 :=
.mark loopBody412_156

def loopBody412_158 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_157

def loopBody412_159 : HolLoopProg 64 :=
.mark loopBody412_158

def loopBody412_160 : HolLoopProg 64 :=
.seq loopBody412_53 loopBody412_159

def loopBody412_161 : HolLoopProg 64 :=
.mark loopBody412_160

def loopBody412_162 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody412_161 loopBody412_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody412_163 : HolLoopProg 64 :=
.mark loopBody412_162

def loopBody412_164 : HolLoopProg 64 :=
.seq loopBody412_163 loopBody412_1

def loopBody412_165 : HolLoopProg 64 :=
.mark loopBody412_164

def loopBody412_166 : HolLoopProg 64 :=
.seq loopBody412_17 loopBody412_165

def loopBody412_167 : HolLoopProg 64 :=
.mark loopBody412_166

def loopBody412_168 : HolLoopProg 64 :=
.seq loopBody412_15 loopBody412_167

def loopBody412_169 : HolLoopProg 64 :=
.mark loopBody412_168

def loopBody412_170 : HolLoopProg 64 :=
.seq loopBody412_9 loopBody412_169

def loopBody412_171 : HolLoopProg 64 :=
.mark loopBody412_170

def loopBody412_172 : HolLoopProg 64 :=
.seq loopBody412_7 loopBody412_171

def loopBody412_173 : HolLoopProg 64 :=
.mark loopBody412_172

def loopBody412_174 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody412_11 loopBody412_13 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody412_175 : HolLoopProg 64 :=
.mark loopBody412_174

def loopBody412_176 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody412_41 loopBody412_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody412_177 : HolLoopProg 64 :=
.mark loopBody412_176

def loopBody412_178 : HolLoopProg 64 :=
.seq loopBody412_177 loopBody412_1

def loopBody412_179 : HolLoopProg 64 :=
.mark loopBody412_178

def loopBody412_180 : HolLoopProg 64 :=
.seq loopBody412_17 loopBody412_179

def loopBody412_181 : HolLoopProg 64 :=
.mark loopBody412_180

def loopBody412_182 : HolLoopProg 64 :=
.seq loopBody412_175 loopBody412_181

def loopBody412_183 : HolLoopProg 64 :=
.mark loopBody412_182

def loopBody412_184 : HolLoopProg 64 :=
.seq loopBody412_21 loopBody412_183

def loopBody412_185 : HolLoopProg 64 :=
.mark loopBody412_184

def loopBody412_186 : HolLoopProg 64 :=
.seq loopBody412_7 loopBody412_185

def loopBody412_187 : HolLoopProg 64 :=
.mark loopBody412_186

def loopBody412_188 : HolLoopProg 64 :=
.seq loopBody412_173 loopBody412_187

def loopBody412_189 : HolLoopProg 64 :=
.mark loopBody412_188

def loopBody412_190 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 8#64]),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 5#64)])

def loopBody412_191 : HolLoopProg 64 :=
.mark loopBody412_190

def loopBody412_192 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody412_193 : HolLoopProg 64 :=
.mark loopBody412_192

def loopBody412_194 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody412_195 : HolLoopProg 64 :=
.mark loopBody412_194

def loopBody412_196 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody412_197 : HolLoopProg 64 :=
.mark loopBody412_196

def loopBody412_198 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody412_199 : HolLoopProg 64 :=
.mark loopBody412_198

def loopBody412_200 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 7)

def loopBody412_201 : HolLoopProg 64 :=
.mark loopBody412_200

def loopBody412_202 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 6) 11

def loopBody412_203 : HolLoopProg 64 :=
.mark loopBody412_202

def loopBody412_204 : HolLoopProg 64 :=
.seq loopBody412_203 loopBody412_1

def loopBody412_205 : HolLoopProg 64 :=
.mark loopBody412_204

def loopBody412_206 : HolLoopProg 64 :=
.seq loopBody412_201 loopBody412_205

def loopBody412_207 : HolLoopProg 64 :=
.mark loopBody412_206

def loopBody412_208 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 8)

def loopBody412_209 : HolLoopProg 64 :=
.mark loopBody412_208

def loopBody412_210 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 8#64]) 11

def loopBody412_211 : HolLoopProg 64 :=
.mark loopBody412_210

def loopBody412_212 : HolLoopProg 64 :=
.seq loopBody412_211 loopBody412_1

def loopBody412_213 : HolLoopProg 64 :=
.mark loopBody412_212

def loopBody412_214 : HolLoopProg 64 :=
.seq loopBody412_209 loopBody412_213

def loopBody412_215 : HolLoopProg 64 :=
.mark loopBody412_214

def loopBody412_216 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody412_217 : HolLoopProg 64 :=
.mark loopBody412_216

def loopBody412_218 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 16#64]) 11

def loopBody412_219 : HolLoopProg 64 :=
.mark loopBody412_218

def loopBody412_220 : HolLoopProg 64 :=
.seq loopBody412_219 loopBody412_1

def loopBody412_221 : HolLoopProg 64 :=
.mark loopBody412_220

def loopBody412_222 : HolLoopProg 64 :=
.seq loopBody412_217 loopBody412_221

def loopBody412_223 : HolLoopProg 64 :=
.mark loopBody412_222

def loopBody412_224 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 10)

def loopBody412_225 : HolLoopProg 64 :=
.mark loopBody412_224

def loopBody412_226 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 24#64]) 11

def loopBody412_227 : HolLoopProg 64 :=
.mark loopBody412_226

def loopBody412_228 : HolLoopProg 64 :=
.seq loopBody412_227 loopBody412_1

def loopBody412_229 : HolLoopProg 64 :=
.mark loopBody412_228

def loopBody412_230 : HolLoopProg 64 :=
.seq loopBody412_225 loopBody412_229

def loopBody412_231 : HolLoopProg 64 :=
.mark loopBody412_230

def loopBody412_232 : HolLoopProg 64 :=
.seq loopBody412_231 loopBody412_1

def loopBody412_233 : HolLoopProg 64 :=
.mark loopBody412_232

def loopBody412_234 : HolLoopProg 64 :=
.seq loopBody412_223 loopBody412_233

def loopBody412_235 : HolLoopProg 64 :=
.mark loopBody412_234

def loopBody412_236 : HolLoopProg 64 :=
.seq loopBody412_215 loopBody412_235

def loopBody412_237 : HolLoopProg 64 :=
.mark loopBody412_236

def loopBody412_238 : HolLoopProg 64 :=
.seq loopBody412_207 loopBody412_237

def loopBody412_239 : HolLoopProg 64 :=
.mark loopBody412_238

def loopBody412_240 : HolLoopProg 64 :=
.seq loopBody412_199 loopBody412_239

def loopBody412_241 : HolLoopProg 64 :=
.mark loopBody412_240

def loopBody412_242 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_241

def loopBody412_243 : HolLoopProg 64 :=
.mark loopBody412_242

def loopBody412_244 : HolLoopProg 64 :=
.seq loopBody412_197 loopBody412_243

def loopBody412_245 : HolLoopProg 64 :=
.mark loopBody412_244

def loopBody412_246 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_245

def loopBody412_247 : HolLoopProg 64 :=
.mark loopBody412_246

def loopBody412_248 : HolLoopProg 64 :=
.seq loopBody412_195 loopBody412_247

def loopBody412_249 : HolLoopProg 64 :=
.mark loopBody412_248

def loopBody412_250 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_249

def loopBody412_251 : HolLoopProg 64 :=
.mark loopBody412_250

def loopBody412_252 : HolLoopProg 64 :=
.seq loopBody412_193 loopBody412_251

def loopBody412_253 : HolLoopProg 64 :=
.mark loopBody412_252

def loopBody412_254 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_253

def loopBody412_255 : HolLoopProg 64 :=
.mark loopBody412_254

def loopBody412_256 : HolLoopProg 64 :=
.seq loopBody412_191 loopBody412_255

def loopBody412_257 : HolLoopProg 64 :=
.mark loopBody412_256

def loopBody412_258 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_257

def loopBody412_259 : HolLoopProg 64 :=
.mark loopBody412_258

def loopBody412_260 : HolLoopProg 64 :=
.seq loopBody412_189 loopBody412_259

def loopBody412_261 : HolLoopProg 64 :=
.mark loopBody412_260

def loopBody412_262 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 16#64])

def loopBody412_263 : HolLoopProg 64 :=
.mark loopBody412_262

def loopBody412_264 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody412_265 : HolLoopProg 64 :=
.mark loopBody412_264

def loopBody412_266 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 7)

def loopBody412_267 : HolLoopProg 64 :=
.mark loopBody412_266

def loopBody412_268 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 6) 8

def loopBody412_269 : HolLoopProg 64 :=
.mark loopBody412_268

def loopBody412_270 : HolLoopProg 64 :=
.seq loopBody412_269 loopBody412_1

def loopBody412_271 : HolLoopProg 64 :=
.mark loopBody412_270

def loopBody412_272 : HolLoopProg 64 :=
.seq loopBody412_267 loopBody412_271

def loopBody412_273 : HolLoopProg 64 :=
.mark loopBody412_272

def loopBody412_274 : HolLoopProg 64 :=
.seq loopBody412_273 loopBody412_1

def loopBody412_275 : HolLoopProg 64 :=
.mark loopBody412_274

def loopBody412_276 : HolLoopProg 64 :=
.seq loopBody412_265 loopBody412_275

def loopBody412_277 : HolLoopProg 64 :=
.mark loopBody412_276

def loopBody412_278 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_277

def loopBody412_279 : HolLoopProg 64 :=
.mark loopBody412_278

def loopBody412_280 : HolLoopProg 64 :=
.seq loopBody412_263 loopBody412_279

def loopBody412_281 : HolLoopProg 64 :=
.mark loopBody412_280

def loopBody412_282 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_281

def loopBody412_283 : HolLoopProg 64 :=
.mark loopBody412_282

def loopBody412_284 : HolLoopProg 64 :=
.seq loopBody412_261 loopBody412_283

def loopBody412_285 : HolLoopProg 64 :=
.mark loopBody412_284

def loopBody412_286 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody412_287 : HolLoopProg 64 :=
.mark loopBody412_286

def loopBody412_288 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody412_289 : HolLoopProg 64 :=
.mark loopBody412_288

def loopBody412_290 : HolLoopProg 64 :=
.seq loopBody412_289 loopBody412_1

def loopBody412_291 : HolLoopProg 64 :=
.mark loopBody412_290

def loopBody412_292 : HolLoopProg 64 :=
.seq loopBody412_287 loopBody412_291

def loopBody412_293 : HolLoopProg 64 :=
.mark loopBody412_292

def loopBody412_294 : HolLoopProg 64 :=
.seq loopBody412_285 loopBody412_293

def loopBody412_295 : HolLoopProg 64 :=
.mark loopBody412_294

def loopBody412_296 : HolLoopProg 64 :=
.seq loopBody412_5 loopBody412_295

def loopBody412_297 : HolLoopProg 64 :=
.mark loopBody412_296

def loopBody412_298 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_297

def loopBody412_299 : HolLoopProg 64 :=
.mark loopBody412_298

def loopBody412_300 : HolLoopProg 64 :=
.seq loopBody412_3 loopBody412_299

def loopBody412_301 : HolLoopProg 64 :=
.mark loopBody412_300

def loopBody412_302 : HolLoopProg 64 :=
.seq loopBody412_1 loopBody412_301

def loopBody412_303 : HolLoopProg 64 :=
.mark loopBody412_302

def output412 : Nat × List Nat × HolLoopProg 64 :=
  (476, [0, 1, 2, 3], loopBody412_303)
end InitECandidate.Proofs.FrontendStages.Loop
