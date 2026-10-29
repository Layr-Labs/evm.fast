import InitECandidate.Proofs.FrontendStages.Loop.Translate53
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody69_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.var 7])

def loopBody69_1 : HolLoopProg 64 :=
.mark loopBody69_0

def loopBody69_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody69_3 : HolLoopProg 64 :=
.mark loopBody69_2

def loopBody69_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody69_5 : HolLoopProg 64 :=
.mark loopBody69_4

def loopBody69_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody69_7 : HolLoopProg 64 :=
.mark loopBody69_6

def loopBody69_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 9 (Flapjack.RegImm.reg 10) loopBody69_5 loopBody69_7 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody69_9 : HolLoopProg 64 :=
.mark loopBody69_8

def loopBody69_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody69_11 : HolLoopProg 64 :=
.mark loopBody69_10

def loopBody69_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody69_13 : HolLoopProg 64 :=
.mark loopBody69_12

def loopBody69_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody69_15 : HolLoopProg 64 :=
.mark loopBody69_14

def loopBody69_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8, 9, 10, 11]

def loopBody69_17 : HolLoopProg 64 :=
.mark loopBody69_16

def loopBody69_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody69_19 : HolLoopProg 64 :=
.mark loopBody69_18

def loopBody69_20 : HolLoopProg 64 :=
.seq loopBody69_17 loopBody69_19

def loopBody69_21 : HolLoopProg 64 :=
.mark loopBody69_20

def loopBody69_22 : HolLoopProg 64 :=
.seq loopBody69_15 loopBody69_21

def loopBody69_23 : HolLoopProg 64 :=
.mark loopBody69_22

def loopBody69_24 : HolLoopProg 64 :=
.seq loopBody69_3 loopBody69_23

def loopBody69_25 : HolLoopProg 64 :=
.mark loopBody69_24

def loopBody69_26 : HolLoopProg 64 :=
.seq loopBody69_7 loopBody69_25

def loopBody69_27 : HolLoopProg 64 :=
.mark loopBody69_26

def loopBody69_28 : HolLoopProg 64 :=
.seq loopBody69_13 loopBody69_27

def loopBody69_29 : HolLoopProg 64 :=
.mark loopBody69_28

def loopBody69_30 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody69_29 loopBody69_19 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody69_31 : HolLoopProg 64 :=
.mark loopBody69_30

def loopBody69_32 : HolLoopProg 64 :=
.seq loopBody69_31 loopBody69_19

def loopBody69_33 : HolLoopProg 64 :=
.mark loopBody69_32

def loopBody69_34 : HolLoopProg 64 :=
.seq loopBody69_11 loopBody69_33

def loopBody69_35 : HolLoopProg 64 :=
.mark loopBody69_34

def loopBody69_36 : HolLoopProg 64 :=
.seq loopBody69_9 loopBody69_35

def loopBody69_37 : HolLoopProg 64 :=
.mark loopBody69_36

def loopBody69_38 : HolLoopProg 64 :=
.seq loopBody69_3 loopBody69_37

def loopBody69_39 : HolLoopProg 64 :=
.mark loopBody69_38

def loopBody69_40 : HolLoopProg 64 :=
.seq loopBody69_1 loopBody69_39

def loopBody69_41 : HolLoopProg 64 :=
.mark loopBody69_40

def loopBody69_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 0)

def loopBody69_43 : HolLoopProg 64 :=
.mark loopBody69_42

def loopBody69_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 1)

def loopBody69_45 : HolLoopProg 64 :=
.mark loopBody69_44

def loopBody69_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody69_47 : HolLoopProg 64 :=
.mark loopBody69_46

def loopBody69_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody69_49 : HolLoopProg 64 :=
.mark loopBody69_48

def loopBody69_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 12

def loopBody69_51 : HolLoopProg 64 :=
.mark loopBody69_50

def loopBody69_52 : HolLoopProg 64 :=
.call (some
  ([8, 9, 10, 11],
    Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 132) ([12, 13, 14, 15]) (some (12, loopBody69_51, loopBody69_19, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody69_53 : HolLoopProg 64 :=
.mark loopBody69_52

def loopBody69_54 : HolLoopProg 64 :=
.seq loopBody69_53 loopBody69_19

def loopBody69_55 : HolLoopProg 64 :=
.mark loopBody69_54

def loopBody69_56 : HolLoopProg 64 :=
.seq loopBody69_49 loopBody69_55

def loopBody69_57 : HolLoopProg 64 :=
.mark loopBody69_56

def loopBody69_58 : HolLoopProg 64 :=
.seq loopBody69_47 loopBody69_57

def loopBody69_59 : HolLoopProg 64 :=
.mark loopBody69_58

def loopBody69_60 : HolLoopProg 64 :=
.seq loopBody69_45 loopBody69_59

def loopBody69_61 : HolLoopProg 64 :=
.mark loopBody69_60

def loopBody69_62 : HolLoopProg 64 :=
.seq loopBody69_43 loopBody69_61

def loopBody69_63 : HolLoopProg 64 :=
.mark loopBody69_62

def loopBody69_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 4)

def loopBody69_65 : HolLoopProg 64 :=
.mark loopBody69_64

def loopBody69_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 5)

def loopBody69_67 : HolLoopProg 64 :=
.mark loopBody69_66

def loopBody69_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 6)

def loopBody69_69 : HolLoopProg 64 :=
.mark loopBody69_68

def loopBody69_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 7)

def loopBody69_71 : HolLoopProg 64 :=
.mark loopBody69_70

def loopBody69_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 16

def loopBody69_73 : HolLoopProg 64 :=
.mark loopBody69_72

def loopBody69_74 : HolLoopProg 64 :=
.call (some
  ([12, 13, 14, 15],
    Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 132) ([16, 17, 18, 19]) (some (16, loopBody69_73, loopBody69_19, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody69_75 : HolLoopProg 64 :=
.mark loopBody69_74

def loopBody69_76 : HolLoopProg 64 :=
.seq loopBody69_75 loopBody69_19

def loopBody69_77 : HolLoopProg 64 :=
.mark loopBody69_76

def loopBody69_78 : HolLoopProg 64 :=
.seq loopBody69_71 loopBody69_77

def loopBody69_79 : HolLoopProg 64 :=
.mark loopBody69_78

def loopBody69_80 : HolLoopProg 64 :=
.seq loopBody69_69 loopBody69_79

def loopBody69_81 : HolLoopProg 64 :=
.mark loopBody69_80

def loopBody69_82 : HolLoopProg 64 :=
.seq loopBody69_67 loopBody69_81

def loopBody69_83 : HolLoopProg 64 :=
.mark loopBody69_82

def loopBody69_84 : HolLoopProg 64 :=
.seq loopBody69_65 loopBody69_83

def loopBody69_85 : HolLoopProg 64 :=
.mark loopBody69_84

def loopBody69_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 8)

def loopBody69_87 : HolLoopProg 64 :=
.mark loopBody69_86

def loopBody69_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 9)

def loopBody69_89 : HolLoopProg 64 :=
.mark loopBody69_88

def loopBody69_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 10)

def loopBody69_91 : HolLoopProg 64 :=
.mark loopBody69_90

def loopBody69_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.var 11)

def loopBody69_93 : HolLoopProg 64 :=
.mark loopBody69_92

def loopBody69_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 24 (Flapjack.HolLoopExp.var 12)

def loopBody69_95 : HolLoopProg 64 :=
.mark loopBody69_94

def loopBody69_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 25 (Flapjack.HolLoopExp.var 13)

def loopBody69_97 : HolLoopProg 64 :=
.mark loopBody69_96

def loopBody69_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 26 (Flapjack.HolLoopExp.var 14)

def loopBody69_99 : HolLoopProg 64 :=
.mark loopBody69_98

def loopBody69_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 27 (Flapjack.HolLoopExp.var 15)

def loopBody69_101 : HolLoopProg 64 :=
.mark loopBody69_100

def loopBody69_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 20

def loopBody69_103 : HolLoopProg 64 :=
.mark loopBody69_102

def loopBody69_104 : HolLoopProg 64 :=
.call (some
  ([16, 17, 18, 19],
    Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 130) ([20, 21, 22, 23, 24, 25, 26, 27]) (some (20, loopBody69_103, loopBody69_19, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))))))

def loopBody69_105 : HolLoopProg 64 :=
.mark loopBody69_104

def loopBody69_106 : HolLoopProg 64 :=
.seq loopBody69_105 loopBody69_19

def loopBody69_107 : HolLoopProg 64 :=
.mark loopBody69_106

def loopBody69_108 : HolLoopProg 64 :=
.seq loopBody69_101 loopBody69_107

def loopBody69_109 : HolLoopProg 64 :=
.mark loopBody69_108

def loopBody69_110 : HolLoopProg 64 :=
.seq loopBody69_99 loopBody69_109

def loopBody69_111 : HolLoopProg 64 :=
.mark loopBody69_110

def loopBody69_112 : HolLoopProg 64 :=
.seq loopBody69_97 loopBody69_111

def loopBody69_113 : HolLoopProg 64 :=
.mark loopBody69_112

def loopBody69_114 : HolLoopProg 64 :=
.seq loopBody69_95 loopBody69_113

def loopBody69_115 : HolLoopProg 64 :=
.mark loopBody69_114

def loopBody69_116 : HolLoopProg 64 :=
.seq loopBody69_93 loopBody69_115

def loopBody69_117 : HolLoopProg 64 :=
.mark loopBody69_116

def loopBody69_118 : HolLoopProg 64 :=
.seq loopBody69_91 loopBody69_117

def loopBody69_119 : HolLoopProg 64 :=
.mark loopBody69_118

def loopBody69_120 : HolLoopProg 64 :=
.seq loopBody69_89 loopBody69_119

def loopBody69_121 : HolLoopProg 64 :=
.mark loopBody69_120

def loopBody69_122 : HolLoopProg 64 :=
.seq loopBody69_87 loopBody69_121

def loopBody69_123 : HolLoopProg 64 :=
.mark loopBody69_122

def loopBody69_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr
    (Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 7])
    (Flapjack.HolLoopExp.const 63#64))

def loopBody69_125 : HolLoopProg 64 :=
.mark loopBody69_124

def loopBody69_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.const 1#64)

def loopBody69_127 : HolLoopProg 64 :=
.mark loopBody69_126

def loopBody69_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.const 1#64)

def loopBody69_129 : HolLoopProg 64 :=
.mark loopBody69_128

def loopBody69_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.const 0#64)

def loopBody69_131 : HolLoopProg 64 :=
.mark loopBody69_130

def loopBody69_132 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 21 (Flapjack.RegImm.reg 22) loopBody69_129 loopBody69_131 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody69_133 : HolLoopProg 64 :=
.mark loopBody69_132

def loopBody69_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.var 21)

def loopBody69_135 : HolLoopProg 64 :=
.mark loopBody69_134

def loopBody69_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 16)

def loopBody69_137 : HolLoopProg 64 :=
.mark loopBody69_136

def loopBody69_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 17)

def loopBody69_139 : HolLoopProg 64 :=
.mark loopBody69_138

def loopBody69_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 18)

def loopBody69_141 : HolLoopProg 64 :=
.mark loopBody69_140

def loopBody69_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.var 19)

def loopBody69_143 : HolLoopProg 64 :=
.mark loopBody69_142

def loopBody69_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 118) [20, 21, 22, 23] none

def loopBody69_145 : HolLoopProg 64 :=
.mark loopBody69_144

def loopBody69_146 : HolLoopProg 64 :=
.seq loopBody69_145 loopBody69_19

def loopBody69_147 : HolLoopProg 64 :=
.mark loopBody69_146

def loopBody69_148 : HolLoopProg 64 :=
.seq loopBody69_143 loopBody69_147

def loopBody69_149 : HolLoopProg 64 :=
.mark loopBody69_148

def loopBody69_150 : HolLoopProg 64 :=
.seq loopBody69_141 loopBody69_149

def loopBody69_151 : HolLoopProg 64 :=
.mark loopBody69_150

def loopBody69_152 : HolLoopProg 64 :=
.seq loopBody69_139 loopBody69_151

def loopBody69_153 : HolLoopProg 64 :=
.mark loopBody69_152

def loopBody69_154 : HolLoopProg 64 :=
.seq loopBody69_137 loopBody69_153

def loopBody69_155 : HolLoopProg 64 :=
.mark loopBody69_154

def loopBody69_156 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 23 (Flapjack.RegImm.imm 0#64) loopBody69_155 loopBody69_19 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody69_157 : HolLoopProg 64 :=
.mark loopBody69_156

def loopBody69_158 : HolLoopProg 64 :=
.seq loopBody69_157 loopBody69_19

def loopBody69_159 : HolLoopProg 64 :=
.mark loopBody69_158

def loopBody69_160 : HolLoopProg 64 :=
.seq loopBody69_135 loopBody69_159

def loopBody69_161 : HolLoopProg 64 :=
.mark loopBody69_160

def loopBody69_162 : HolLoopProg 64 :=
.seq loopBody69_133 loopBody69_161

def loopBody69_163 : HolLoopProg 64 :=
.mark loopBody69_162

def loopBody69_164 : HolLoopProg 64 :=
.seq loopBody69_127 loopBody69_163

def loopBody69_165 : HolLoopProg 64 :=
.mark loopBody69_164

def loopBody69_166 : HolLoopProg 64 :=
.seq loopBody69_125 loopBody69_165

def loopBody69_167 : HolLoopProg 64 :=
.mark loopBody69_166

def loopBody69_168 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [20, 21, 22, 23]

def loopBody69_169 : HolLoopProg 64 :=
.mark loopBody69_168

def loopBody69_170 : HolLoopProg 64 :=
.seq loopBody69_169 loopBody69_19

def loopBody69_171 : HolLoopProg 64 :=
.mark loopBody69_170

def loopBody69_172 : HolLoopProg 64 :=
.seq loopBody69_143 loopBody69_171

def loopBody69_173 : HolLoopProg 64 :=
.mark loopBody69_172

def loopBody69_174 : HolLoopProg 64 :=
.seq loopBody69_141 loopBody69_173

def loopBody69_175 : HolLoopProg 64 :=
.mark loopBody69_174

def loopBody69_176 : HolLoopProg 64 :=
.seq loopBody69_139 loopBody69_175

def loopBody69_177 : HolLoopProg 64 :=
.mark loopBody69_176

def loopBody69_178 : HolLoopProg 64 :=
.seq loopBody69_137 loopBody69_177

def loopBody69_179 : HolLoopProg 64 :=
.mark loopBody69_178

def loopBody69_180 : HolLoopProg 64 :=
.seq loopBody69_167 loopBody69_179

def loopBody69_181 : HolLoopProg 64 :=
.mark loopBody69_180

def loopBody69_182 : HolLoopProg 64 :=
.seq loopBody69_123 loopBody69_181

def loopBody69_183 : HolLoopProg 64 :=
.mark loopBody69_182

def loopBody69_184 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_183

def loopBody69_185 : HolLoopProg 64 :=
.mark loopBody69_184

def loopBody69_186 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_185

def loopBody69_187 : HolLoopProg 64 :=
.mark loopBody69_186

def loopBody69_188 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_187

def loopBody69_189 : HolLoopProg 64 :=
.mark loopBody69_188

def loopBody69_190 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_189

def loopBody69_191 : HolLoopProg 64 :=
.mark loopBody69_190

def loopBody69_192 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_191

def loopBody69_193 : HolLoopProg 64 :=
.mark loopBody69_192

def loopBody69_194 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_193

def loopBody69_195 : HolLoopProg 64 :=
.mark loopBody69_194

def loopBody69_196 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_195

def loopBody69_197 : HolLoopProg 64 :=
.mark loopBody69_196

def loopBody69_198 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_197

def loopBody69_199 : HolLoopProg 64 :=
.mark loopBody69_198

def loopBody69_200 : HolLoopProg 64 :=
.seq loopBody69_85 loopBody69_199

def loopBody69_201 : HolLoopProg 64 :=
.mark loopBody69_200

def loopBody69_202 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_201

def loopBody69_203 : HolLoopProg 64 :=
.mark loopBody69_202

def loopBody69_204 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_203

def loopBody69_205 : HolLoopProg 64 :=
.mark loopBody69_204

def loopBody69_206 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_205

def loopBody69_207 : HolLoopProg 64 :=
.mark loopBody69_206

def loopBody69_208 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_207

def loopBody69_209 : HolLoopProg 64 :=
.mark loopBody69_208

def loopBody69_210 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_209

def loopBody69_211 : HolLoopProg 64 :=
.mark loopBody69_210

def loopBody69_212 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_211

def loopBody69_213 : HolLoopProg 64 :=
.mark loopBody69_212

def loopBody69_214 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_213

def loopBody69_215 : HolLoopProg 64 :=
.mark loopBody69_214

def loopBody69_216 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_215

def loopBody69_217 : HolLoopProg 64 :=
.mark loopBody69_216

def loopBody69_218 : HolLoopProg 64 :=
.seq loopBody69_63 loopBody69_217

def loopBody69_219 : HolLoopProg 64 :=
.mark loopBody69_218

def loopBody69_220 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_219

def loopBody69_221 : HolLoopProg 64 :=
.mark loopBody69_220

def loopBody69_222 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_221

def loopBody69_223 : HolLoopProg 64 :=
.mark loopBody69_222

def loopBody69_224 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_223

def loopBody69_225 : HolLoopProg 64 :=
.mark loopBody69_224

def loopBody69_226 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_225

def loopBody69_227 : HolLoopProg 64 :=
.mark loopBody69_226

def loopBody69_228 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_227

def loopBody69_229 : HolLoopProg 64 :=
.mark loopBody69_228

def loopBody69_230 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_229

def loopBody69_231 : HolLoopProg 64 :=
.mark loopBody69_230

def loopBody69_232 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_231

def loopBody69_233 : HolLoopProg 64 :=
.mark loopBody69_232

def loopBody69_234 : HolLoopProg 64 :=
.seq loopBody69_19 loopBody69_233

def loopBody69_235 : HolLoopProg 64 :=
.mark loopBody69_234

def loopBody69_236 : HolLoopProg 64 :=
.seq loopBody69_41 loopBody69_235

def loopBody69_237 : HolLoopProg 64 :=
.mark loopBody69_236

def output69 : Nat × List Nat × HolLoopProg 64 :=
  (133, [0, 1, 2, 3, 4, 5, 6, 7], loopBody69_237)
end InitECandidate.Proofs.FrontendStages.Loop
