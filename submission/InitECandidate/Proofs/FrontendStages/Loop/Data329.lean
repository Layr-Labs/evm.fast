import InitECandidate.Proofs.FrontendStages.Loop.Translate313
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody329_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody329_1 : HolLoopProg 64 :=
.mark loopBody329_0

def loopBody329_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 56#64)

def loopBody329_3 : HolLoopProg 64 :=
.mark loopBody329_2

def loopBody329_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody329_5 : HolLoopProg 64 :=
.mark loopBody329_4

def loopBody329_6 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([7]) (some (7, loopBody329_5, loopBody329_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody329_7 : HolLoopProg 64 :=
.mark loopBody329_6

def loopBody329_8 : HolLoopProg 64 :=
.seq loopBody329_7 loopBody329_1

def loopBody329_9 : HolLoopProg 64 :=
.mark loopBody329_8

def loopBody329_10 : HolLoopProg 64 :=
.seq loopBody329_3 loopBody329_9

def loopBody329_11 : HolLoopProg 64 :=
.mark loopBody329_10

def loopBody329_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 0#64])

def loopBody329_13 : HolLoopProg 64 :=
.mark loopBody329_12

def loopBody329_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 0)

def loopBody329_15 : HolLoopProg 64 :=
.mark loopBody329_14

def loopBody329_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 8)

def loopBody329_17 : HolLoopProg 64 :=
.mark loopBody329_16

def loopBody329_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 7) 9

def loopBody329_19 : HolLoopProg 64 :=
.mark loopBody329_18

def loopBody329_20 : HolLoopProg 64 :=
.seq loopBody329_19 loopBody329_1

def loopBody329_21 : HolLoopProg 64 :=
.mark loopBody329_20

def loopBody329_22 : HolLoopProg 64 :=
.seq loopBody329_17 loopBody329_21

def loopBody329_23 : HolLoopProg 64 :=
.mark loopBody329_22

def loopBody329_24 : HolLoopProg 64 :=
.seq loopBody329_23 loopBody329_1

def loopBody329_25 : HolLoopProg 64 :=
.mark loopBody329_24

def loopBody329_26 : HolLoopProg 64 :=
.seq loopBody329_15 loopBody329_25

def loopBody329_27 : HolLoopProg 64 :=
.mark loopBody329_26

def loopBody329_28 : HolLoopProg 64 :=
.seq loopBody329_1 loopBody329_27

def loopBody329_29 : HolLoopProg 64 :=
.mark loopBody329_28

def loopBody329_30 : HolLoopProg 64 :=
.seq loopBody329_13 loopBody329_29

def loopBody329_31 : HolLoopProg 64 :=
.mark loopBody329_30

def loopBody329_32 : HolLoopProg 64 :=
.seq loopBody329_1 loopBody329_31

def loopBody329_33 : HolLoopProg 64 :=
.mark loopBody329_32

def loopBody329_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 8#64])

def loopBody329_35 : HolLoopProg 64 :=
.mark loopBody329_34

def loopBody329_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody329_37 : HolLoopProg 64 :=
.mark loopBody329_36

def loopBody329_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody329_39 : HolLoopProg 64 :=
.mark loopBody329_38

def loopBody329_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody329_41 : HolLoopProg 64 :=
.mark loopBody329_40

def loopBody329_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 4)

def loopBody329_43 : HolLoopProg 64 :=
.mark loopBody329_42

def loopBody329_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 8)

def loopBody329_45 : HolLoopProg 64 :=
.mark loopBody329_44

def loopBody329_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 7) 12

def loopBody329_47 : HolLoopProg 64 :=
.mark loopBody329_46

def loopBody329_48 : HolLoopProg 64 :=
.seq loopBody329_47 loopBody329_1

def loopBody329_49 : HolLoopProg 64 :=
.mark loopBody329_48

def loopBody329_50 : HolLoopProg 64 :=
.seq loopBody329_45 loopBody329_49

def loopBody329_51 : HolLoopProg 64 :=
.mark loopBody329_50

def loopBody329_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 9)

def loopBody329_53 : HolLoopProg 64 :=
.mark loopBody329_52

def loopBody329_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 8#64]) 12

def loopBody329_55 : HolLoopProg 64 :=
.mark loopBody329_54

def loopBody329_56 : HolLoopProg 64 :=
.seq loopBody329_55 loopBody329_1

def loopBody329_57 : HolLoopProg 64 :=
.mark loopBody329_56

def loopBody329_58 : HolLoopProg 64 :=
.seq loopBody329_53 loopBody329_57

def loopBody329_59 : HolLoopProg 64 :=
.mark loopBody329_58

def loopBody329_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody329_61 : HolLoopProg 64 :=
.mark loopBody329_60

def loopBody329_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 16#64]) 12

def loopBody329_63 : HolLoopProg 64 :=
.mark loopBody329_62

def loopBody329_64 : HolLoopProg 64 :=
.seq loopBody329_63 loopBody329_1

def loopBody329_65 : HolLoopProg 64 :=
.mark loopBody329_64

def loopBody329_66 : HolLoopProg 64 :=
.seq loopBody329_61 loopBody329_65

def loopBody329_67 : HolLoopProg 64 :=
.mark loopBody329_66

def loopBody329_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 11)

def loopBody329_69 : HolLoopProg 64 :=
.mark loopBody329_68

def loopBody329_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 24#64]) 12

def loopBody329_71 : HolLoopProg 64 :=
.mark loopBody329_70

def loopBody329_72 : HolLoopProg 64 :=
.seq loopBody329_71 loopBody329_1

def loopBody329_73 : HolLoopProg 64 :=
.mark loopBody329_72

def loopBody329_74 : HolLoopProg 64 :=
.seq loopBody329_69 loopBody329_73

def loopBody329_75 : HolLoopProg 64 :=
.mark loopBody329_74

def loopBody329_76 : HolLoopProg 64 :=
.seq loopBody329_75 loopBody329_1

def loopBody329_77 : HolLoopProg 64 :=
.mark loopBody329_76

def loopBody329_78 : HolLoopProg 64 :=
.seq loopBody329_67 loopBody329_77

def loopBody329_79 : HolLoopProg 64 :=
.mark loopBody329_78

def loopBody329_80 : HolLoopProg 64 :=
.seq loopBody329_59 loopBody329_79

def loopBody329_81 : HolLoopProg 64 :=
.mark loopBody329_80

def loopBody329_82 : HolLoopProg 64 :=
.seq loopBody329_51 loopBody329_81

def loopBody329_83 : HolLoopProg 64 :=
.mark loopBody329_82

def loopBody329_84 : HolLoopProg 64 :=
.seq loopBody329_43 loopBody329_83

def loopBody329_85 : HolLoopProg 64 :=
.mark loopBody329_84

def loopBody329_86 : HolLoopProg 64 :=
.seq loopBody329_1 loopBody329_85

def loopBody329_87 : HolLoopProg 64 :=
.mark loopBody329_86

def loopBody329_88 : HolLoopProg 64 :=
.seq loopBody329_41 loopBody329_87

def loopBody329_89 : HolLoopProg 64 :=
.mark loopBody329_88

def loopBody329_90 : HolLoopProg 64 :=
.seq loopBody329_1 loopBody329_89

def loopBody329_91 : HolLoopProg 64 :=
.mark loopBody329_90

def loopBody329_92 : HolLoopProg 64 :=
.seq loopBody329_39 loopBody329_91

def loopBody329_93 : HolLoopProg 64 :=
.mark loopBody329_92

def loopBody329_94 : HolLoopProg 64 :=
.seq loopBody329_1 loopBody329_93

def loopBody329_95 : HolLoopProg 64 :=
.mark loopBody329_94

def loopBody329_96 : HolLoopProg 64 :=
.seq loopBody329_37 loopBody329_95

def loopBody329_97 : HolLoopProg 64 :=
.mark loopBody329_96

def loopBody329_98 : HolLoopProg 64 :=
.seq loopBody329_1 loopBody329_97

def loopBody329_99 : HolLoopProg 64 :=
.mark loopBody329_98

def loopBody329_100 : HolLoopProg 64 :=
.seq loopBody329_35 loopBody329_99

def loopBody329_101 : HolLoopProg 64 :=
.mark loopBody329_100

def loopBody329_102 : HolLoopProg 64 :=
.seq loopBody329_1 loopBody329_101

def loopBody329_103 : HolLoopProg 64 :=
.mark loopBody329_102

def loopBody329_104 : HolLoopProg 64 :=
.seq loopBody329_33 loopBody329_103

def loopBody329_105 : HolLoopProg 64 :=
.mark loopBody329_104

def loopBody329_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 40#64])

def loopBody329_107 : HolLoopProg 64 :=
.mark loopBody329_106

def loopBody329_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 128#64]))

def loopBody329_109 : HolLoopProg 64 :=
.mark loopBody329_108

def loopBody329_110 : HolLoopProg 64 :=
.seq loopBody329_109 loopBody329_25

def loopBody329_111 : HolLoopProg 64 :=
.mark loopBody329_110

def loopBody329_112 : HolLoopProg 64 :=
.seq loopBody329_1 loopBody329_111

def loopBody329_113 : HolLoopProg 64 :=
.mark loopBody329_112

def loopBody329_114 : HolLoopProg 64 :=
.seq loopBody329_107 loopBody329_113

def loopBody329_115 : HolLoopProg 64 :=
.mark loopBody329_114

def loopBody329_116 : HolLoopProg 64 :=
.seq loopBody329_1 loopBody329_115

def loopBody329_117 : HolLoopProg 64 :=
.mark loopBody329_116

def loopBody329_118 : HolLoopProg 64 :=
.seq loopBody329_105 loopBody329_117

def loopBody329_119 : HolLoopProg 64 :=
.mark loopBody329_118

def loopBody329_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 48#64])

def loopBody329_121 : HolLoopProg 64 :=
.mark loopBody329_120

def loopBody329_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody329_123 : HolLoopProg 64 :=
.mark loopBody329_122

def loopBody329_124 : HolLoopProg 64 :=
.seq loopBody329_123 loopBody329_25

def loopBody329_125 : HolLoopProg 64 :=
.mark loopBody329_124

def loopBody329_126 : HolLoopProg 64 :=
.seq loopBody329_1 loopBody329_125

def loopBody329_127 : HolLoopProg 64 :=
.mark loopBody329_126

def loopBody329_128 : HolLoopProg 64 :=
.seq loopBody329_121 loopBody329_127

def loopBody329_129 : HolLoopProg 64 :=
.mark loopBody329_128

def loopBody329_130 : HolLoopProg 64 :=
.seq loopBody329_1 loopBody329_129

def loopBody329_131 : HolLoopProg 64 :=
.mark loopBody329_130

def loopBody329_132 : HolLoopProg 64 :=
.seq loopBody329_119 loopBody329_131

def loopBody329_133 : HolLoopProg 64 :=
.mark loopBody329_132

def loopBody329_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody329_135 : HolLoopProg 64 :=
.mark loopBody329_134

def loopBody329_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody329_137 : HolLoopProg 64 :=
.mark loopBody329_136

def loopBody329_138 : HolLoopProg 64 :=
.seq loopBody329_137 loopBody329_1

def loopBody329_139 : HolLoopProg 64 :=
.mark loopBody329_138

def loopBody329_140 : HolLoopProg 64 :=
.seq loopBody329_135 loopBody329_139

def loopBody329_141 : HolLoopProg 64 :=
.mark loopBody329_140

def loopBody329_142 : HolLoopProg 64 :=
.seq loopBody329_133 loopBody329_141

def loopBody329_143 : HolLoopProg 64 :=
.mark loopBody329_142

def loopBody329_144 : HolLoopProg 64 :=
.seq loopBody329_11 loopBody329_143

def loopBody329_145 : HolLoopProg 64 :=
.mark loopBody329_144

def loopBody329_146 : HolLoopProg 64 :=
.seq loopBody329_1 loopBody329_145

def loopBody329_147 : HolLoopProg 64 :=
.mark loopBody329_146

def loopBody329_148 : HolLoopProg 64 :=
.seq loopBody329_1 loopBody329_147

def loopBody329_149 : HolLoopProg 64 :=
.mark loopBody329_148

def output329 : Nat × List Nat × HolLoopProg 64 :=
  (393, [0, 1, 2, 3, 4, 5], loopBody329_149)
end InitECandidate.Proofs.FrontendStages.Loop
