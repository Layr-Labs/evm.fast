import InitECandidate.Proofs.FrontendStages.Loop.Translate683
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody699_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody699_1 : HolLoopProg 64 :=
.mark loopBody699_0

def loopBody699_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody699_3 : HolLoopProg 64 :=
.mark loopBody699_2

def loopBody699_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody699_3, loopBody699_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody699_5 : HolLoopProg 64 :=
.mark loopBody699_4

def loopBody699_6 : HolLoopProg 64 :=
.seq loopBody699_5 loopBody699_1

def loopBody699_7 : HolLoopProg 64 :=
.mark loopBody699_6

def loopBody699_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 576#64)

def loopBody699_9 : HolLoopProg 64 :=
.mark loopBody699_8

def loopBody699_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody699_11 : HolLoopProg 64 :=
.mark loopBody699_10

def loopBody699_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody699_11, loopBody699_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody699_13 : HolLoopProg 64 :=
.mark loopBody699_12

def loopBody699_14 : HolLoopProg 64 :=
.seq loopBody699_13 loopBody699_1

def loopBody699_15 : HolLoopProg 64 :=
.mark loopBody699_14

def loopBody699_16 : HolLoopProg 64 :=
.seq loopBody699_9 loopBody699_15

def loopBody699_17 : HolLoopProg 64 :=
.mark loopBody699_16

def loopBody699_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 576#64)

def loopBody699_19 : HolLoopProg 64 :=
.mark loopBody699_18

def loopBody699_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody699_21 : HolLoopProg 64 :=
.mark loopBody699_20

def loopBody699_22 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([5]) (some (5, loopBody699_21, loopBody699_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody699_23 : HolLoopProg 64 :=
.mark loopBody699_22

def loopBody699_24 : HolLoopProg 64 :=
.seq loopBody699_23 loopBody699_1

def loopBody699_25 : HolLoopProg 64 :=
.mark loopBody699_24

def loopBody699_26 : HolLoopProg 64 :=
.seq loopBody699_19 loopBody699_25

def loopBody699_27 : HolLoopProg 64 :=
.mark loopBody699_26

def loopBody699_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody699_29 : HolLoopProg 64 :=
.mark loopBody699_28

def loopBody699_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody699_31 : HolLoopProg 64 :=
.mark loopBody699_30

def loopBody699_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody699_33 : HolLoopProg 64 :=
.mark loopBody699_32

def loopBody699_34 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 755) ([6, 7]) (some (6, loopBody699_33, loopBody699_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody699_35 : HolLoopProg 64 :=
.mark loopBody699_34

def loopBody699_36 : HolLoopProg 64 :=
.seq loopBody699_35 loopBody699_1

def loopBody699_37 : HolLoopProg 64 :=
.mark loopBody699_36

def loopBody699_38 : HolLoopProg 64 :=
.seq loopBody699_31 loopBody699_37

def loopBody699_39 : HolLoopProg 64 :=
.mark loopBody699_38

def loopBody699_40 : HolLoopProg 64 :=
.seq loopBody699_29 loopBody699_39

def loopBody699_41 : HolLoopProg 64 :=
.mark loopBody699_40

def loopBody699_42 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_41

def loopBody699_43 : HolLoopProg 64 :=
.mark loopBody699_42

def loopBody699_44 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_43

def loopBody699_45 : HolLoopProg 64 :=
.mark loopBody699_44

def loopBody699_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody699_47 : HolLoopProg 64 :=
.mark loopBody699_46

def loopBody699_48 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 756) ([6]) (some (6, loopBody699_33, loopBody699_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody699_49 : HolLoopProg 64 :=
.mark loopBody699_48

def loopBody699_50 : HolLoopProg 64 :=
.seq loopBody699_49 loopBody699_1

def loopBody699_51 : HolLoopProg 64 :=
.mark loopBody699_50

def loopBody699_52 : HolLoopProg 64 :=
.seq loopBody699_47 loopBody699_51

def loopBody699_53 : HolLoopProg 64 :=
.mark loopBody699_52

def loopBody699_54 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_53

def loopBody699_55 : HolLoopProg 64 :=
.mark loopBody699_54

def loopBody699_56 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_55

def loopBody699_57 : HolLoopProg 64 :=
.mark loopBody699_56

def loopBody699_58 : HolLoopProg 64 :=
.seq loopBody699_45 loopBody699_57

def loopBody699_59 : HolLoopProg 64 :=
.mark loopBody699_58

def loopBody699_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 392#64]),
        Flapjack.HolLoopExp.const 1376#64]))

def loopBody699_61 : HolLoopProg 64 :=
.mark loopBody699_60

def loopBody699_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody699_63 : HolLoopProg 64 :=
.mark loopBody699_62

def loopBody699_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 64#64)

def loopBody699_65 : HolLoopProg 64 :=
.mark loopBody699_64

def loopBody699_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody699_67 : HolLoopProg 64 :=
.mark loopBody699_66

def loopBody699_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 7)

def loopBody699_69 : HolLoopProg 64 :=
.mark loopBody699_68

def loopBody699_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody699_71 : HolLoopProg 64 :=
.mark loopBody699_70

def loopBody699_72 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.RegImm.reg 10) loopBody699_71 loopBody699_67 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody699_73 : HolLoopProg 64 :=
.mark loopBody699_72

def loopBody699_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody699_75 : HolLoopProg 64 :=
.mark loopBody699_74

def loopBody699_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 1#64])

def loopBody699_77 : HolLoopProg 64 :=
.mark loopBody699_76

def loopBody699_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 8)

def loopBody699_79 : HolLoopProg 64 :=
.mark loopBody699_78

def loopBody699_80 : HolLoopProg 64 :=
.seq loopBody699_79 loopBody699_1

def loopBody699_81 : HolLoopProg 64 :=
.mark loopBody699_80

def loopBody699_82 : HolLoopProg 64 :=
.seq loopBody699_81 loopBody699_1

def loopBody699_83 : HolLoopProg 64 :=
.mark loopBody699_82

def loopBody699_84 : HolLoopProg 64 :=
.seq loopBody699_77 loopBody699_83

def loopBody699_85 : HolLoopProg 64 :=
.mark loopBody699_84

def loopBody699_86 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_85

def loopBody699_87 : HolLoopProg 64 :=
.mark loopBody699_86

def loopBody699_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 6)

def loopBody699_89 : HolLoopProg 64 :=
.mark loopBody699_88

def loopBody699_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody699_91 : HolLoopProg 64 :=
.mark loopBody699_90

def loopBody699_92 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 9 (Flapjack.RegImm.reg 10) loopBody699_71 loopBody699_67 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody699_93 : HolLoopProg 64 :=
.mark loopBody699_92

def loopBody699_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody699_95 : HolLoopProg 64 :=
.mark loopBody699_94

def loopBody699_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody699_97 : HolLoopProg 64 :=
.mark loopBody699_96

def loopBody699_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 4)

def loopBody699_99 : HolLoopProg 64 :=
.mark loopBody699_98

def loopBody699_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody699_101 : HolLoopProg 64 :=
.mark loopBody699_100

def loopBody699_102 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 758) ([9, 10, 11]) (some (9, loopBody699_101, loopBody699_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody699_103 : HolLoopProg 64 :=
.mark loopBody699_102

def loopBody699_104 : HolLoopProg 64 :=
.seq loopBody699_103 loopBody699_1

def loopBody699_105 : HolLoopProg 64 :=
.mark loopBody699_104

def loopBody699_106 : HolLoopProg 64 :=
.seq loopBody699_99 loopBody699_105

def loopBody699_107 : HolLoopProg 64 :=
.mark loopBody699_106

def loopBody699_108 : HolLoopProg 64 :=
.seq loopBody699_97 loopBody699_107

def loopBody699_109 : HolLoopProg 64 :=
.mark loopBody699_108

def loopBody699_110 : HolLoopProg 64 :=
.seq loopBody699_95 loopBody699_109

def loopBody699_111 : HolLoopProg 64 :=
.mark loopBody699_110

def loopBody699_112 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_111

def loopBody699_113 : HolLoopProg 64 :=
.mark loopBody699_112

def loopBody699_114 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_113

def loopBody699_115 : HolLoopProg 64 :=
.mark loopBody699_114

def loopBody699_116 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody699_115 loopBody699_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody699_117 : HolLoopProg 64 :=
.mark loopBody699_116

def loopBody699_118 : HolLoopProg 64 :=
.seq loopBody699_117 loopBody699_1

def loopBody699_119 : HolLoopProg 64 :=
.mark loopBody699_118

def loopBody699_120 : HolLoopProg 64 :=
.seq loopBody699_75 loopBody699_119

def loopBody699_121 : HolLoopProg 64 :=
.mark loopBody699_120

def loopBody699_122 : HolLoopProg 64 :=
.seq loopBody699_93 loopBody699_121

def loopBody699_123 : HolLoopProg 64 :=
.mark loopBody699_122

def loopBody699_124 : HolLoopProg 64 :=
.seq loopBody699_91 loopBody699_123

def loopBody699_125 : HolLoopProg 64 :=
.mark loopBody699_124

def loopBody699_126 : HolLoopProg 64 :=
.seq loopBody699_89 loopBody699_125

def loopBody699_127 : HolLoopProg 64 :=
.mark loopBody699_126

def loopBody699_128 : HolLoopProg 64 :=
.seq loopBody699_87 loopBody699_127

def loopBody699_129 : HolLoopProg 64 :=
.mark loopBody699_128

def loopBody699_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.var 7),
      Flapjack.HolLoopExp.const 1#64])

def loopBody699_131 : HolLoopProg 64 :=
.mark loopBody699_130

def loopBody699_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 3)

def loopBody699_133 : HolLoopProg 64 :=
.mark loopBody699_132

def loopBody699_134 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 758) ([9, 10, 11]) (some (9, loopBody699_101, loopBody699_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody699_135 : HolLoopProg 64 :=
.mark loopBody699_134

def loopBody699_136 : HolLoopProg 64 :=
.seq loopBody699_135 loopBody699_1

def loopBody699_137 : HolLoopProg 64 :=
.mark loopBody699_136

def loopBody699_138 : HolLoopProg 64 :=
.seq loopBody699_133 loopBody699_137

def loopBody699_139 : HolLoopProg 64 :=
.mark loopBody699_138

def loopBody699_140 : HolLoopProg 64 :=
.seq loopBody699_97 loopBody699_139

def loopBody699_141 : HolLoopProg 64 :=
.mark loopBody699_140

def loopBody699_142 : HolLoopProg 64 :=
.seq loopBody699_95 loopBody699_141

def loopBody699_143 : HolLoopProg 64 :=
.mark loopBody699_142

def loopBody699_144 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_143

def loopBody699_145 : HolLoopProg 64 :=
.mark loopBody699_144

def loopBody699_146 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_145

def loopBody699_147 : HolLoopProg 64 :=
.mark loopBody699_146

def loopBody699_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody699_149 : HolLoopProg 64 :=
.mark loopBody699_148

def loopBody699_150 : HolLoopProg 64 :=
.seq loopBody699_149 loopBody699_1

def loopBody699_151 : HolLoopProg 64 :=
.mark loopBody699_150

def loopBody699_152 : HolLoopProg 64 :=
.seq loopBody699_151 loopBody699_1

def loopBody699_153 : HolLoopProg 64 :=
.mark loopBody699_152

def loopBody699_154 : HolLoopProg 64 :=
.seq loopBody699_147 loopBody699_153

def loopBody699_155 : HolLoopProg 64 :=
.mark loopBody699_154

def loopBody699_156 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody699_155 loopBody699_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody699_157 : HolLoopProg 64 :=
.mark loopBody699_156

def loopBody699_158 : HolLoopProg 64 :=
.seq loopBody699_157 loopBody699_1

def loopBody699_159 : HolLoopProg 64 :=
.mark loopBody699_158

def loopBody699_160 : HolLoopProg 64 :=
.seq loopBody699_75 loopBody699_159

def loopBody699_161 : HolLoopProg 64 :=
.mark loopBody699_160

def loopBody699_162 : HolLoopProg 64 :=
.seq loopBody699_93 loopBody699_161

def loopBody699_163 : HolLoopProg 64 :=
.mark loopBody699_162

def loopBody699_164 : HolLoopProg 64 :=
.seq loopBody699_91 loopBody699_163

def loopBody699_165 : HolLoopProg 64 :=
.mark loopBody699_164

def loopBody699_166 : HolLoopProg 64 :=
.seq loopBody699_131 loopBody699_165

def loopBody699_167 : HolLoopProg 64 :=
.mark loopBody699_166

def loopBody699_168 : HolLoopProg 64 :=
.seq loopBody699_129 loopBody699_167

def loopBody699_169 : HolLoopProg 64 :=
.mark loopBody699_168

def loopBody699_170 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody699_171 : HolLoopProg 64 :=
.mark loopBody699_170

def loopBody699_172 : HolLoopProg 64 :=
.seq loopBody699_169 loopBody699_171

def loopBody699_173 : HolLoopProg 64 :=
.mark loopBody699_172

def loopBody699_174 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody699_175 : HolLoopProg 64 :=
.mark loopBody699_174

def loopBody699_176 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody699_173 loopBody699_175 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody699_177 : HolLoopProg 64 :=
.mark loopBody699_176

def loopBody699_178 : HolLoopProg 64 :=
.seq loopBody699_177 loopBody699_1

def loopBody699_179 : HolLoopProg 64 :=
.mark loopBody699_178

def loopBody699_180 : HolLoopProg 64 :=
.seq loopBody699_75 loopBody699_179

def loopBody699_181 : HolLoopProg 64 :=
.mark loopBody699_180

def loopBody699_182 : HolLoopProg 64 :=
.seq loopBody699_73 loopBody699_181

def loopBody699_183 : HolLoopProg 64 :=
.mark loopBody699_182

def loopBody699_184 : HolLoopProg 64 :=
.seq loopBody699_69 loopBody699_183

def loopBody699_185 : HolLoopProg 64 :=
.mark loopBody699_184

def loopBody699_186 : HolLoopProg 64 :=
.seq loopBody699_67 loopBody699_185

def loopBody699_187 : HolLoopProg 64 :=
.mark loopBody699_186

def loopBody699_188 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody699_187 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody699_189 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody699_190 : HolLoopProg 64 :=
.mark loopBody699_189

def loopBody699_191 : HolLoopProg 64 :=
.call (some ([8], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 755) ([9, 10]) (some (9, loopBody699_101, loopBody699_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody699_192 : HolLoopProg 64 :=
.mark loopBody699_191

def loopBody699_193 : HolLoopProg 64 :=
.seq loopBody699_192 loopBody699_1

def loopBody699_194 : HolLoopProg 64 :=
.mark loopBody699_193

def loopBody699_195 : HolLoopProg 64 :=
.seq loopBody699_97 loopBody699_194

def loopBody699_196 : HolLoopProg 64 :=
.mark loopBody699_195

def loopBody699_197 : HolLoopProg 64 :=
.seq loopBody699_190 loopBody699_196

def loopBody699_198 : HolLoopProg 64 :=
.mark loopBody699_197

def loopBody699_199 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_198

def loopBody699_200 : HolLoopProg 64 :=
.mark loopBody699_199

def loopBody699_201 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_200

def loopBody699_202 : HolLoopProg 64 :=
.mark loopBody699_201

def loopBody699_203 : HolLoopProg 64 :=
.seq loopBody699_188 loopBody699_202

def loopBody699_204 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody699_205 : HolLoopProg 64 :=
.mark loopBody699_204

def loopBody699_206 : HolLoopProg 64 :=
.call (some ([8], Flapjack.Spt.ln)) (some 70) ([9]) (some (9, loopBody699_101, loopBody699_1, (Flapjack.Spt.ln)))

def loopBody699_207 : HolLoopProg 64 :=
.mark loopBody699_206

def loopBody699_208 : HolLoopProg 64 :=
.seq loopBody699_207 loopBody699_1

def loopBody699_209 : HolLoopProg 64 :=
.mark loopBody699_208

def loopBody699_210 : HolLoopProg 64 :=
.seq loopBody699_205 loopBody699_209

def loopBody699_211 : HolLoopProg 64 :=
.mark loopBody699_210

def loopBody699_212 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_211

def loopBody699_213 : HolLoopProg 64 :=
.mark loopBody699_212

def loopBody699_214 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_213

def loopBody699_215 : HolLoopProg 64 :=
.mark loopBody699_214

def loopBody699_216 : HolLoopProg 64 :=
.seq loopBody699_203 loopBody699_215

def loopBody699_217 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody699_218 : HolLoopProg 64 :=
.mark loopBody699_217

def loopBody699_219 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody699_220 : HolLoopProg 64 :=
.mark loopBody699_219

def loopBody699_221 : HolLoopProg 64 :=
.seq loopBody699_220 loopBody699_1

def loopBody699_222 : HolLoopProg 64 :=
.mark loopBody699_221

def loopBody699_223 : HolLoopProg 64 :=
.seq loopBody699_218 loopBody699_222

def loopBody699_224 : HolLoopProg 64 :=
.mark loopBody699_223

def loopBody699_225 : HolLoopProg 64 :=
.seq loopBody699_216 loopBody699_224

def loopBody699_226 : HolLoopProg 64 :=
.seq loopBody699_65 loopBody699_225

def loopBody699_227 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_226

def loopBody699_228 : HolLoopProg 64 :=
.seq loopBody699_63 loopBody699_227

def loopBody699_229 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_228

def loopBody699_230 : HolLoopProg 64 :=
.seq loopBody699_61 loopBody699_229

def loopBody699_231 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_230

def loopBody699_232 : HolLoopProg 64 :=
.seq loopBody699_59 loopBody699_231

def loopBody699_233 : HolLoopProg 64 :=
.seq loopBody699_27 loopBody699_232

def loopBody699_234 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_233

def loopBody699_235 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_234

def loopBody699_236 : HolLoopProg 64 :=
.seq loopBody699_17 loopBody699_235

def loopBody699_237 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_236

def loopBody699_238 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_237

def loopBody699_239 : HolLoopProg 64 :=
.seq loopBody699_7 loopBody699_238

def loopBody699_240 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_239

def loopBody699_241 : HolLoopProg 64 :=
.seq loopBody699_1 loopBody699_240

def output699 : Nat × List Nat × HolLoopProg 64 :=
  (763, [0, 1], loopBody699_241)
end InitECandidate.Proofs.FrontendStages.Loop
