import InitECandidate.Proofs.FrontendStages.Loop.Translate96
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody112_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody112_1 : HolLoopProg 64 :=
.mark loopBody112_0

def loopBody112_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody112_3 : HolLoopProg 64 :=
.mark loopBody112_2

def loopBody112_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody112_5 : HolLoopProg 64 :=
.mark loopBody112_4

def loopBody112_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody112_7 : HolLoopProg 64 :=
.mark loopBody112_6

def loopBody112_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody112_5 loopBody112_7 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody112_9 : HolLoopProg 64 :=
.mark loopBody112_8

def loopBody112_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody112_11 : HolLoopProg 64 :=
.mark loopBody112_10

def loopBody112_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody112_13 : HolLoopProg 64 :=
.mark loopBody112_12

def loopBody112_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 3 3

def loopBody112_15 : HolLoopProg 64 :=
.mark loopBody112_14

def loopBody112_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody112_17 : HolLoopProg 64 :=
.mark loopBody112_16

def loopBody112_18 : HolLoopProg 64 :=
.seq loopBody112_15 loopBody112_17

def loopBody112_19 : HolLoopProg 64 :=
.mark loopBody112_18

def loopBody112_20 : HolLoopProg 64 :=
.seq loopBody112_13 loopBody112_19

def loopBody112_21 : HolLoopProg 64 :=
.mark loopBody112_20

def loopBody112_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody112_23 : HolLoopProg 64 :=
.mark loopBody112_22

def loopBody112_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 128#64)

def loopBody112_25 : HolLoopProg 64 :=
.mark loopBody112_24

def loopBody112_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody112_27 : HolLoopProg 64 :=
.mark loopBody112_26

def loopBody112_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody112_29 : HolLoopProg 64 :=
.mark loopBody112_28

def loopBody112_30 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.RegImm.reg 7) loopBody112_27 loopBody112_29 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody112_31 : HolLoopProg 64 :=
.mark loopBody112_30

def loopBody112_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody112_33 : HolLoopProg 64 :=
.mark loopBody112_32

def loopBody112_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody112_35 : HolLoopProg 64 :=
.mark loopBody112_34

def loopBody112_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 5 6

def loopBody112_37 : HolLoopProg 64 :=
.mark loopBody112_36

def loopBody112_38 : HolLoopProg 64 :=
.seq loopBody112_37 loopBody112_17

def loopBody112_39 : HolLoopProg 64 :=
.mark loopBody112_38

def loopBody112_40 : HolLoopProg 64 :=
.seq loopBody112_11 loopBody112_39

def loopBody112_41 : HolLoopProg 64 :=
.mark loopBody112_40

def loopBody112_42 : HolLoopProg 64 :=
.seq loopBody112_35 loopBody112_41

def loopBody112_43 : HolLoopProg 64 :=
.mark loopBody112_42

def loopBody112_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody112_45 : HolLoopProg 64 :=
.mark loopBody112_44

def loopBody112_46 : HolLoopProg 64 :=
.seq loopBody112_45 loopBody112_17

def loopBody112_47 : HolLoopProg 64 :=
.mark loopBody112_46

def loopBody112_48 : HolLoopProg 64 :=
.seq loopBody112_3 loopBody112_47

def loopBody112_49 : HolLoopProg 64 :=
.mark loopBody112_48

def loopBody112_50 : HolLoopProg 64 :=
.seq loopBody112_43 loopBody112_49

def loopBody112_51 : HolLoopProg 64 :=
.mark loopBody112_50

def loopBody112_52 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody112_51 loopBody112_17 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody112_53 : HolLoopProg 64 :=
.mark loopBody112_52

def loopBody112_54 : HolLoopProg 64 :=
.seq loopBody112_53 loopBody112_17

def loopBody112_55 : HolLoopProg 64 :=
.mark loopBody112_54

def loopBody112_56 : HolLoopProg 64 :=
.seq loopBody112_33 loopBody112_55

def loopBody112_57 : HolLoopProg 64 :=
.mark loopBody112_56

def loopBody112_58 : HolLoopProg 64 :=
.seq loopBody112_31 loopBody112_57

def loopBody112_59 : HolLoopProg 64 :=
.mark loopBody112_58

def loopBody112_60 : HolLoopProg 64 :=
.seq loopBody112_25 loopBody112_59

def loopBody112_61 : HolLoopProg 64 :=
.mark loopBody112_60

def loopBody112_62 : HolLoopProg 64 :=
.seq loopBody112_11 loopBody112_61

def loopBody112_63 : HolLoopProg 64 :=
.mark loopBody112_62

def loopBody112_64 : HolLoopProg 64 :=
.seq loopBody112_23 loopBody112_63

def loopBody112_65 : HolLoopProg 64 :=
.mark loopBody112_64

def loopBody112_66 : HolLoopProg 64 :=
.seq loopBody112_21 loopBody112_65

def loopBody112_67 : HolLoopProg 64 :=
.mark loopBody112_66

def loopBody112_68 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody112_67 loopBody112_17 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody112_69 : HolLoopProg 64 :=
.mark loopBody112_68

def loopBody112_70 : HolLoopProg 64 :=
.seq loopBody112_69 loopBody112_17

def loopBody112_71 : HolLoopProg 64 :=
.mark loopBody112_70

def loopBody112_72 : HolLoopProg 64 :=
.seq loopBody112_11 loopBody112_71

def loopBody112_73 : HolLoopProg 64 :=
.mark loopBody112_72

def loopBody112_74 : HolLoopProg 64 :=
.seq loopBody112_9 loopBody112_73

def loopBody112_75 : HolLoopProg 64 :=
.mark loopBody112_74

def loopBody112_76 : HolLoopProg 64 :=
.seq loopBody112_3 loopBody112_75

def loopBody112_77 : HolLoopProg 64 :=
.mark loopBody112_76

def loopBody112_78 : HolLoopProg 64 :=
.seq loopBody112_1 loopBody112_77

def loopBody112_79 : HolLoopProg 64 :=
.mark loopBody112_78

def loopBody112_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody112_81 : HolLoopProg 64 :=
.mark loopBody112_80

def loopBody112_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 128#64)

def loopBody112_83 : HolLoopProg 64 :=
.mark loopBody112_82

def loopBody112_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody112_85 : HolLoopProg 64 :=
.mark loopBody112_84

def loopBody112_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody112_87 : HolLoopProg 64 :=
.mark loopBody112_86

def loopBody112_88 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 174) ([4, 5, 6]) (some (4, loopBody112_87, loopBody112_17, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody112_89 : HolLoopProg 64 :=
.mark loopBody112_88

def loopBody112_90 : HolLoopProg 64 :=
.seq loopBody112_89 loopBody112_17

def loopBody112_91 : HolLoopProg 64 :=
.mark loopBody112_90

def loopBody112_92 : HolLoopProg 64 :=
.seq loopBody112_85 loopBody112_91

def loopBody112_93 : HolLoopProg 64 :=
.mark loopBody112_92

def loopBody112_94 : HolLoopProg 64 :=
.seq loopBody112_83 loopBody112_93

def loopBody112_95 : HolLoopProg 64 :=
.mark loopBody112_94

def loopBody112_96 : HolLoopProg 64 :=
.seq loopBody112_81 loopBody112_95

def loopBody112_97 : HolLoopProg 64 :=
.mark loopBody112_96

def loopBody112_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3])

def loopBody112_99 : HolLoopProg 64 :=
.mark loopBody112_98

def loopBody112_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody112_101 : HolLoopProg 64 :=
.mark loopBody112_100

def loopBody112_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody112_103 : HolLoopProg 64 :=
.mark loopBody112_102

def loopBody112_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody112_105 : HolLoopProg 64 :=
.mark loopBody112_104

def loopBody112_106 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([5, 6, 7]) (some (5, loopBody112_105, loopBody112_17, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody112_107 : HolLoopProg 64 :=
.mark loopBody112_106

def loopBody112_108 : HolLoopProg 64 :=
.seq loopBody112_107 loopBody112_17

def loopBody112_109 : HolLoopProg 64 :=
.mark loopBody112_108

def loopBody112_110 : HolLoopProg 64 :=
.seq loopBody112_103 loopBody112_109

def loopBody112_111 : HolLoopProg 64 :=
.mark loopBody112_110

def loopBody112_112 : HolLoopProg 64 :=
.seq loopBody112_101 loopBody112_111

def loopBody112_113 : HolLoopProg 64 :=
.mark loopBody112_112

def loopBody112_114 : HolLoopProg 64 :=
.seq loopBody112_99 loopBody112_113

def loopBody112_115 : HolLoopProg 64 :=
.mark loopBody112_114

def loopBody112_116 : HolLoopProg 64 :=
.seq loopBody112_17 loopBody112_115

def loopBody112_117 : HolLoopProg 64 :=
.mark loopBody112_116

def loopBody112_118 : HolLoopProg 64 :=
.seq loopBody112_17 loopBody112_117

def loopBody112_119 : HolLoopProg 64 :=
.mark loopBody112_118

def loopBody112_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 2])

def loopBody112_121 : HolLoopProg 64 :=
.mark loopBody112_120

def loopBody112_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody112_123 : HolLoopProg 64 :=
.mark loopBody112_122

def loopBody112_124 : HolLoopProg 64 :=
.seq loopBody112_123 loopBody112_17

def loopBody112_125 : HolLoopProg 64 :=
.mark loopBody112_124

def loopBody112_126 : HolLoopProg 64 :=
.seq loopBody112_121 loopBody112_125

def loopBody112_127 : HolLoopProg 64 :=
.mark loopBody112_126

def loopBody112_128 : HolLoopProg 64 :=
.seq loopBody112_119 loopBody112_127

def loopBody112_129 : HolLoopProg 64 :=
.mark loopBody112_128

def loopBody112_130 : HolLoopProg 64 :=
.seq loopBody112_97 loopBody112_129

def loopBody112_131 : HolLoopProg 64 :=
.mark loopBody112_130

def loopBody112_132 : HolLoopProg 64 :=
.seq loopBody112_17 loopBody112_131

def loopBody112_133 : HolLoopProg 64 :=
.mark loopBody112_132

def loopBody112_134 : HolLoopProg 64 :=
.seq loopBody112_17 loopBody112_133

def loopBody112_135 : HolLoopProg 64 :=
.mark loopBody112_134

def loopBody112_136 : HolLoopProg 64 :=
.seq loopBody112_79 loopBody112_135

def loopBody112_137 : HolLoopProg 64 :=
.mark loopBody112_136

def output112 : Nat × List Nat × HolLoopProg 64 :=
  (176, [0, 1, 2], loopBody112_137)
end InitECandidate.Proofs.FrontendStages.Loop
