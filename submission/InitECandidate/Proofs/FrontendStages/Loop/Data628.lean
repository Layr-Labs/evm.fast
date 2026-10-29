import InitECandidate.Proofs.FrontendStages.Loop.Translate612
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody628_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody628_1 : HolLoopProg 64 :=
.mark loopBody628_0

def loopBody628_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 12#64)

def loopBody628_3 : HolLoopProg 64 :=
.mark loopBody628_2

def loopBody628_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody628_5 : HolLoopProg 64 :=
.mark loopBody628_4

def loopBody628_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody628_7 : HolLoopProg 64 :=
.mark loopBody628_6

def loopBody628_8 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 679) ([5, 6]) (some (5, loopBody628_7, loopBody628_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody628_9 : HolLoopProg 64 :=
.mark loopBody628_8

def loopBody628_10 : HolLoopProg 64 :=
.seq loopBody628_9 loopBody628_1

def loopBody628_11 : HolLoopProg 64 :=
.mark loopBody628_10

def loopBody628_12 : HolLoopProg 64 :=
.seq loopBody628_5 loopBody628_11

def loopBody628_13 : HolLoopProg 64 :=
.mark loopBody628_12

def loopBody628_14 : HolLoopProg 64 :=
.seq loopBody628_3 loopBody628_13

def loopBody628_15 : HolLoopProg 64 :=
.mark loopBody628_14

def loopBody628_16 : HolLoopProg 64 :=
.seq loopBody628_1 loopBody628_15

def loopBody628_17 : HolLoopProg 64 :=
.mark loopBody628_16

def loopBody628_18 : HolLoopProg 64 :=
.seq loopBody628_1 loopBody628_17

def loopBody628_19 : HolLoopProg 64 :=
.mark loopBody628_18

def loopBody628_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody628_21 : HolLoopProg 64 :=
.mark loopBody628_20

def loopBody628_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 6#64))

def loopBody628_23 : HolLoopProg 64 :=
.mark loopBody628_22

def loopBody628_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody628_25 : HolLoopProg 64 :=
.mark loopBody628_24

def loopBody628_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody628_27 : HolLoopProg 64 :=
.mark loopBody628_26

def loopBody628_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody628_29 : HolLoopProg 64 :=
.mark loopBody628_28

def loopBody628_30 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.RegImm.reg 8) loopBody628_29 loopBody628_25 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody628_31 : HolLoopProg 64 :=
.mark loopBody628_30

def loopBody628_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody628_33 : HolLoopProg 64 :=
.mark loopBody628_32

def loopBody628_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 1#64])

def loopBody628_35 : HolLoopProg 64 :=
.mark loopBody628_34

def loopBody628_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 6)

def loopBody628_37 : HolLoopProg 64 :=
.mark loopBody628_36

def loopBody628_38 : HolLoopProg 64 :=
.seq loopBody628_37 loopBody628_1

def loopBody628_39 : HolLoopProg 64 :=
.mark loopBody628_38

def loopBody628_40 : HolLoopProg 64 :=
.seq loopBody628_39 loopBody628_1

def loopBody628_41 : HolLoopProg 64 :=
.mark loopBody628_40

def loopBody628_42 : HolLoopProg 64 :=
.seq loopBody628_35 loopBody628_41

def loopBody628_43 : HolLoopProg 64 :=
.mark loopBody628_42

def loopBody628_44 : HolLoopProg 64 :=
.seq loopBody628_1 loopBody628_43

def loopBody628_45 : HolLoopProg 64 :=
.mark loopBody628_44

def loopBody628_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody628_47 : HolLoopProg 64 :=
.mark loopBody628_46

def loopBody628_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody628_49 : HolLoopProg 64 :=
.mark loopBody628_48

def loopBody628_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody628_29 loopBody628_25 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody628_51 : HolLoopProg 64 :=
.mark loopBody628_50

def loopBody628_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody628_53 : HolLoopProg 64 :=
.mark loopBody628_52

def loopBody628_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 0)

def loopBody628_55 : HolLoopProg 64 :=
.mark loopBody628_54

def loopBody628_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody628_57 : HolLoopProg 64 :=
.mark loopBody628_56

def loopBody628_58 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 669) ([7, 8]) (some (7, loopBody628_57, loopBody628_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody628_59 : HolLoopProg 64 :=
.mark loopBody628_58

def loopBody628_60 : HolLoopProg 64 :=
.seq loopBody628_59 loopBody628_1

def loopBody628_61 : HolLoopProg 64 :=
.mark loopBody628_60

def loopBody628_62 : HolLoopProg 64 :=
.seq loopBody628_55 loopBody628_61

def loopBody628_63 : HolLoopProg 64 :=
.mark loopBody628_62

def loopBody628_64 : HolLoopProg 64 :=
.seq loopBody628_53 loopBody628_63

def loopBody628_65 : HolLoopProg 64 :=
.mark loopBody628_64

def loopBody628_66 : HolLoopProg 64 :=
.seq loopBody628_1 loopBody628_65

def loopBody628_67 : HolLoopProg 64 :=
.mark loopBody628_66

def loopBody628_68 : HolLoopProg 64 :=
.seq loopBody628_1 loopBody628_67

def loopBody628_69 : HolLoopProg 64 :=
.mark loopBody628_68

def loopBody628_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody628_69 loopBody628_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody628_71 : HolLoopProg 64 :=
.mark loopBody628_70

def loopBody628_72 : HolLoopProg 64 :=
.seq loopBody628_71 loopBody628_1

def loopBody628_73 : HolLoopProg 64 :=
.mark loopBody628_72

def loopBody628_74 : HolLoopProg 64 :=
.seq loopBody628_33 loopBody628_73

def loopBody628_75 : HolLoopProg 64 :=
.mark loopBody628_74

def loopBody628_76 : HolLoopProg 64 :=
.seq loopBody628_51 loopBody628_75

def loopBody628_77 : HolLoopProg 64 :=
.mark loopBody628_76

def loopBody628_78 : HolLoopProg 64 :=
.seq loopBody628_49 loopBody628_77

def loopBody628_79 : HolLoopProg 64 :=
.mark loopBody628_78

def loopBody628_80 : HolLoopProg 64 :=
.seq loopBody628_47 loopBody628_79

def loopBody628_81 : HolLoopProg 64 :=
.mark loopBody628_80

def loopBody628_82 : HolLoopProg 64 :=
.seq loopBody628_45 loopBody628_81

def loopBody628_83 : HolLoopProg 64 :=
.mark loopBody628_82

def loopBody628_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr
        (Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.var 2,
              Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
                (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 5)
                  (Flapjack.HolLoopExp.const 6#64))
                (Flapjack.HolLoopExp.const 3#64)]))
        (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 63#64]),
      Flapjack.HolLoopExp.const 1#64])

def loopBody628_85 : HolLoopProg 64 :=
.mark loopBody628_84

def loopBody628_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody628_87 : HolLoopProg 64 :=
.mark loopBody628_86

def loopBody628_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody628_89 : HolLoopProg 64 :=
.mark loopBody628_88

def loopBody628_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody628_91 : HolLoopProg 64 :=
.mark loopBody628_90

def loopBody628_92 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.RegImm.reg 9) loopBody628_49 loopBody628_91 (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody628_93 : HolLoopProg 64 :=
.mark loopBody628_92

def loopBody628_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody628_95 : HolLoopProg 64 :=
.mark loopBody628_94

def loopBody628_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody628_97 : HolLoopProg 64 :=
.mark loopBody628_96

def loopBody628_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody628_99 : HolLoopProg 64 :=
.mark loopBody628_98

def loopBody628_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody628_101 : HolLoopProg 64 :=
.mark loopBody628_100

def loopBody628_102 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 668) ([8, 9, 10]) (some (8, loopBody628_101, loopBody628_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody628_103 : HolLoopProg 64 :=
.mark loopBody628_102

def loopBody628_104 : HolLoopProg 64 :=
.seq loopBody628_103 loopBody628_1

def loopBody628_105 : HolLoopProg 64 :=
.mark loopBody628_104

def loopBody628_106 : HolLoopProg 64 :=
.seq loopBody628_99 loopBody628_105

def loopBody628_107 : HolLoopProg 64 :=
.mark loopBody628_106

def loopBody628_108 : HolLoopProg 64 :=
.seq loopBody628_97 loopBody628_107

def loopBody628_109 : HolLoopProg 64 :=
.mark loopBody628_108

def loopBody628_110 : HolLoopProg 64 :=
.seq loopBody628_55 loopBody628_109

def loopBody628_111 : HolLoopProg 64 :=
.mark loopBody628_110

def loopBody628_112 : HolLoopProg 64 :=
.seq loopBody628_1 loopBody628_111

def loopBody628_113 : HolLoopProg 64 :=
.mark loopBody628_112

def loopBody628_114 : HolLoopProg 64 :=
.seq loopBody628_1 loopBody628_113

def loopBody628_115 : HolLoopProg 64 :=
.mark loopBody628_114

def loopBody628_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody628_117 : HolLoopProg 64 :=
.mark loopBody628_116

def loopBody628_118 : HolLoopProg 64 :=
.seq loopBody628_117 loopBody628_1

def loopBody628_119 : HolLoopProg 64 :=
.mark loopBody628_118

def loopBody628_120 : HolLoopProg 64 :=
.seq loopBody628_119 loopBody628_1

def loopBody628_121 : HolLoopProg 64 :=
.mark loopBody628_120

def loopBody628_122 : HolLoopProg 64 :=
.seq loopBody628_115 loopBody628_121

def loopBody628_123 : HolLoopProg 64 :=
.mark loopBody628_122

def loopBody628_124 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody628_123 loopBody628_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody628_125 : HolLoopProg 64 :=
.mark loopBody628_124

def loopBody628_126 : HolLoopProg 64 :=
.seq loopBody628_125 loopBody628_1

def loopBody628_127 : HolLoopProg 64 :=
.mark loopBody628_126

def loopBody628_128 : HolLoopProg 64 :=
.seq loopBody628_95 loopBody628_127

def loopBody628_129 : HolLoopProg 64 :=
.mark loopBody628_128

def loopBody628_130 : HolLoopProg 64 :=
.seq loopBody628_93 loopBody628_129

def loopBody628_131 : HolLoopProg 64 :=
.mark loopBody628_130

def loopBody628_132 : HolLoopProg 64 :=
.seq loopBody628_89 loopBody628_131

def loopBody628_133 : HolLoopProg 64 :=
.mark loopBody628_132

def loopBody628_134 : HolLoopProg 64 :=
.seq loopBody628_87 loopBody628_133

def loopBody628_135 : HolLoopProg 64 :=
.mark loopBody628_134

def loopBody628_136 : HolLoopProg 64 :=
.seq loopBody628_85 loopBody628_135

def loopBody628_137 : HolLoopProg 64 :=
.mark loopBody628_136

def loopBody628_138 : HolLoopProg 64 :=
.seq loopBody628_1 loopBody628_137

def loopBody628_139 : HolLoopProg 64 :=
.mark loopBody628_138

def loopBody628_140 : HolLoopProg 64 :=
.seq loopBody628_83 loopBody628_139

def loopBody628_141 : HolLoopProg 64 :=
.mark loopBody628_140

def loopBody628_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody628_143 : HolLoopProg 64 :=
.mark loopBody628_142

def loopBody628_144 : HolLoopProg 64 :=
.seq loopBody628_141 loopBody628_143

def loopBody628_145 : HolLoopProg 64 :=
.mark loopBody628_144

def loopBody628_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody628_147 : HolLoopProg 64 :=
.mark loopBody628_146

def loopBody628_148 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody628_145 loopBody628_147 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody628_149 : HolLoopProg 64 :=
.mark loopBody628_148

def loopBody628_150 : HolLoopProg 64 :=
.seq loopBody628_149 loopBody628_1

def loopBody628_151 : HolLoopProg 64 :=
.mark loopBody628_150

def loopBody628_152 : HolLoopProg 64 :=
.seq loopBody628_33 loopBody628_151

def loopBody628_153 : HolLoopProg 64 :=
.mark loopBody628_152

def loopBody628_154 : HolLoopProg 64 :=
.seq loopBody628_31 loopBody628_153

def loopBody628_155 : HolLoopProg 64 :=
.mark loopBody628_154

def loopBody628_156 : HolLoopProg 64 :=
.seq loopBody628_27 loopBody628_155

def loopBody628_157 : HolLoopProg 64 :=
.mark loopBody628_156

def loopBody628_158 : HolLoopProg 64 :=
.seq loopBody628_25 loopBody628_157

def loopBody628_159 : HolLoopProg 64 :=
.mark loopBody628_158

def loopBody628_160 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody628_159 (Flapjack.Spt.ln)

def loopBody628_161 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody628_162 : HolLoopProg 64 :=
.mark loopBody628_161

def loopBody628_163 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody628_164 : HolLoopProg 64 :=
.mark loopBody628_163

def loopBody628_165 : HolLoopProg 64 :=
.seq loopBody628_164 loopBody628_1

def loopBody628_166 : HolLoopProg 64 :=
.mark loopBody628_165

def loopBody628_167 : HolLoopProg 64 :=
.seq loopBody628_162 loopBody628_166

def loopBody628_168 : HolLoopProg 64 :=
.mark loopBody628_167

def loopBody628_169 : HolLoopProg 64 :=
.seq loopBody628_160 loopBody628_168

def loopBody628_170 : HolLoopProg 64 :=
.seq loopBody628_23 loopBody628_169

def loopBody628_171 : HolLoopProg 64 :=
.seq loopBody628_1 loopBody628_170

def loopBody628_172 : HolLoopProg 64 :=
.seq loopBody628_21 loopBody628_171

def loopBody628_173 : HolLoopProg 64 :=
.seq loopBody628_1 loopBody628_172

def loopBody628_174 : HolLoopProg 64 :=
.seq loopBody628_19 loopBody628_173

def output628 : Nat × List Nat × HolLoopProg 64 :=
  (692, [0, 1, 2, 3], loopBody628_174)
end InitECandidate.Proofs.FrontendStages.Loop
