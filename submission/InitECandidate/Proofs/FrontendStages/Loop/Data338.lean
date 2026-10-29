import InitECandidate.Proofs.FrontendStages.Loop.Translate322
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody338_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody338_1 : HolLoopProg 64 :=
.mark loopBody338_0

def loopBody338_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody338_3 : HolLoopProg 64 :=
.mark loopBody338_2

def loopBody338_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 136#64]))

def loopBody338_5 : HolLoopProg 64 :=
.mark loopBody338_4

def loopBody338_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 32#64)

def loopBody338_7 : HolLoopProg 64 :=
.mark loopBody338_6

def loopBody338_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody338_9 : HolLoopProg 64 :=
.mark loopBody338_8

def loopBody338_10 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 79) ([2, 3, 4]) (some (2, loopBody338_9, loopBody338_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody338_11 : HolLoopProg 64 :=
.mark loopBody338_10

def loopBody338_12 : HolLoopProg 64 :=
.seq loopBody338_11 loopBody338_1

def loopBody338_13 : HolLoopProg 64 :=
.mark loopBody338_12

def loopBody338_14 : HolLoopProg 64 :=
.seq loopBody338_7 loopBody338_13

def loopBody338_15 : HolLoopProg 64 :=
.mark loopBody338_14

def loopBody338_16 : HolLoopProg 64 :=
.seq loopBody338_5 loopBody338_15

def loopBody338_17 : HolLoopProg 64 :=
.mark loopBody338_16

def loopBody338_18 : HolLoopProg 64 :=
.seq loopBody338_3 loopBody338_17

def loopBody338_19 : HolLoopProg 64 :=
.mark loopBody338_18

def loopBody338_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody338_21 : HolLoopProg 64 :=
.mark loopBody338_20

def loopBody338_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody338_23 : HolLoopProg 64 :=
.mark loopBody338_22

def loopBody338_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody338_25 : HolLoopProg 64 :=
.mark loopBody338_24

def loopBody338_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody338_27 : HolLoopProg 64 :=
.mark loopBody338_26

def loopBody338_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.reg 4) loopBody338_25 loopBody338_27 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody338_29 : HolLoopProg 64 :=
.mark loopBody338_28

def loopBody338_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody338_31 : HolLoopProg 64 :=
.mark loopBody338_30

def loopBody338_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody338_33 : HolLoopProg 64 :=
.mark loopBody338_32

def loopBody338_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2, 3]

def loopBody338_35 : HolLoopProg 64 :=
.mark loopBody338_34

def loopBody338_36 : HolLoopProg 64 :=
.seq loopBody338_35 loopBody338_1

def loopBody338_37 : HolLoopProg 64 :=
.mark loopBody338_36

def loopBody338_38 : HolLoopProg 64 :=
.seq loopBody338_27 loopBody338_37

def loopBody338_39 : HolLoopProg 64 :=
.mark loopBody338_38

def loopBody338_40 : HolLoopProg 64 :=
.seq loopBody338_33 loopBody338_39

def loopBody338_41 : HolLoopProg 64 :=
.mark loopBody338_40

def loopBody338_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody338_41 loopBody338_1 (Flapjack.Spt.ls PUnit.unit)

def loopBody338_43 : HolLoopProg 64 :=
.mark loopBody338_42

def loopBody338_44 : HolLoopProg 64 :=
.seq loopBody338_43 loopBody338_1

def loopBody338_45 : HolLoopProg 64 :=
.mark loopBody338_44

def loopBody338_46 : HolLoopProg 64 :=
.seq loopBody338_31 loopBody338_45

def loopBody338_47 : HolLoopProg 64 :=
.mark loopBody338_46

def loopBody338_48 : HolLoopProg 64 :=
.seq loopBody338_29 loopBody338_47

def loopBody338_49 : HolLoopProg 64 :=
.mark loopBody338_48

def loopBody338_50 : HolLoopProg 64 :=
.seq loopBody338_23 loopBody338_49

def loopBody338_51 : HolLoopProg 64 :=
.mark loopBody338_50

def loopBody338_52 : HolLoopProg 64 :=
.seq loopBody338_21 loopBody338_51

def loopBody338_53 : HolLoopProg 64 :=
.mark loopBody338_52

def loopBody338_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 168#64]),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody338_55 : HolLoopProg 64 :=
.mark loopBody338_54

def loopBody338_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody338_57 : HolLoopProg 64 :=
.mark loopBody338_56

def loopBody338_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody338_59 : HolLoopProg 64 :=
.mark loopBody338_58

def loopBody338_60 : HolLoopProg 64 :=
.call (some ([2, 3, 4], Flapjack.Spt.ln)) (some 294) ([5, 6]) (some (5, loopBody338_59, loopBody338_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody338_61 : HolLoopProg 64 :=
.mark loopBody338_60

def loopBody338_62 : HolLoopProg 64 :=
.seq loopBody338_61 loopBody338_1

def loopBody338_63 : HolLoopProg 64 :=
.mark loopBody338_62

def loopBody338_64 : HolLoopProg 64 :=
.seq loopBody338_57 loopBody338_63

def loopBody338_65 : HolLoopProg 64 :=
.mark loopBody338_64

def loopBody338_66 : HolLoopProg 64 :=
.seq loopBody338_55 loopBody338_65

def loopBody338_67 : HolLoopProg 64 :=
.mark loopBody338_66

def loopBody338_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody338_69 : HolLoopProg 64 :=
.mark loopBody338_68

def loopBody338_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody338_71 : HolLoopProg 64 :=
.mark loopBody338_70

def loopBody338_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody338_73 : HolLoopProg 64 :=
.mark loopBody338_72

def loopBody338_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody338_75 : HolLoopProg 64 :=
.mark loopBody338_74

def loopBody338_76 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody338_73 loopBody338_75 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody338_77 : HolLoopProg 64 :=
.mark loopBody338_76

def loopBody338_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody338_79 : HolLoopProg 64 :=
.mark loopBody338_78

def loopBody338_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 2#64)

def loopBody338_81 : HolLoopProg 64 :=
.mark loopBody338_80

def loopBody338_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 5)

def loopBody338_83 : HolLoopProg 64 :=
.mark loopBody338_82

def loopBody338_84 : HolLoopProg 64 :=
.seq loopBody338_83 loopBody338_1

def loopBody338_85 : HolLoopProg 64 :=
.mark loopBody338_84

def loopBody338_86 : HolLoopProg 64 :=
.seq loopBody338_85 loopBody338_1

def loopBody338_87 : HolLoopProg 64 :=
.mark loopBody338_86

def loopBody338_88 : HolLoopProg 64 :=
.seq loopBody338_81 loopBody338_87

def loopBody338_89 : HolLoopProg 64 :=
.mark loopBody338_88

def loopBody338_90 : HolLoopProg 64 :=
.seq loopBody338_1 loopBody338_89

def loopBody338_91 : HolLoopProg 64 :=
.mark loopBody338_90

def loopBody338_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 7#64)

def loopBody338_93 : HolLoopProg 64 :=
.mark loopBody338_92

def loopBody338_94 : HolLoopProg 64 :=
.seq loopBody338_93 loopBody338_59

def loopBody338_95 : HolLoopProg 64 :=
.mark loopBody338_94

def loopBody338_96 : HolLoopProg 64 :=
.seq loopBody338_91 loopBody338_95

def loopBody338_97 : HolLoopProg 64 :=
.mark loopBody338_96

def loopBody338_98 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody338_97 loopBody338_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody338_99 : HolLoopProg 64 :=
.mark loopBody338_98

def loopBody338_100 : HolLoopProg 64 :=
.seq loopBody338_99 loopBody338_1

def loopBody338_101 : HolLoopProg 64 :=
.mark loopBody338_100

def loopBody338_102 : HolLoopProg 64 :=
.seq loopBody338_79 loopBody338_101

def loopBody338_103 : HolLoopProg 64 :=
.mark loopBody338_102

def loopBody338_104 : HolLoopProg 64 :=
.seq loopBody338_77 loopBody338_103

def loopBody338_105 : HolLoopProg 64 :=
.mark loopBody338_104

def loopBody338_106 : HolLoopProg 64 :=
.seq loopBody338_71 loopBody338_105

def loopBody338_107 : HolLoopProg 64 :=
.mark loopBody338_106

def loopBody338_108 : HolLoopProg 64 :=
.seq loopBody338_69 loopBody338_107

def loopBody338_109 : HolLoopProg 64 :=
.mark loopBody338_108

def loopBody338_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody338_111 : HolLoopProg 64 :=
.mark loopBody338_110

def loopBody338_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5, 6]

def loopBody338_113 : HolLoopProg 64 :=
.mark loopBody338_112

def loopBody338_114 : HolLoopProg 64 :=
.seq loopBody338_113 loopBody338_1

def loopBody338_115 : HolLoopProg 64 :=
.mark loopBody338_114

def loopBody338_116 : HolLoopProg 64 :=
.seq loopBody338_111 loopBody338_115

def loopBody338_117 : HolLoopProg 64 :=
.mark loopBody338_116

def loopBody338_118 : HolLoopProg 64 :=
.seq loopBody338_31 loopBody338_117

def loopBody338_119 : HolLoopProg 64 :=
.mark loopBody338_118

def loopBody338_120 : HolLoopProg 64 :=
.seq loopBody338_109 loopBody338_119

def loopBody338_121 : HolLoopProg 64 :=
.mark loopBody338_120

def loopBody338_122 : HolLoopProg 64 :=
.seq loopBody338_67 loopBody338_121

def loopBody338_123 : HolLoopProg 64 :=
.mark loopBody338_122

def loopBody338_124 : HolLoopProg 64 :=
.seq loopBody338_1 loopBody338_123

def loopBody338_125 : HolLoopProg 64 :=
.mark loopBody338_124

def loopBody338_126 : HolLoopProg 64 :=
.seq loopBody338_1 loopBody338_125

def loopBody338_127 : HolLoopProg 64 :=
.mark loopBody338_126

def loopBody338_128 : HolLoopProg 64 :=
.seq loopBody338_1 loopBody338_127

def loopBody338_129 : HolLoopProg 64 :=
.mark loopBody338_128

def loopBody338_130 : HolLoopProg 64 :=
.seq loopBody338_1 loopBody338_129

def loopBody338_131 : HolLoopProg 64 :=
.mark loopBody338_130

def loopBody338_132 : HolLoopProg 64 :=
.seq loopBody338_1 loopBody338_131

def loopBody338_133 : HolLoopProg 64 :=
.mark loopBody338_132

def loopBody338_134 : HolLoopProg 64 :=
.seq loopBody338_1 loopBody338_133

def loopBody338_135 : HolLoopProg 64 :=
.mark loopBody338_134

def loopBody338_136 : HolLoopProg 64 :=
.seq loopBody338_53 loopBody338_135

def loopBody338_137 : HolLoopProg 64 :=
.mark loopBody338_136

def loopBody338_138 : HolLoopProg 64 :=
.seq loopBody338_19 loopBody338_137

def loopBody338_139 : HolLoopProg 64 :=
.mark loopBody338_138

def loopBody338_140 : HolLoopProg 64 :=
.seq loopBody338_1 loopBody338_139

def loopBody338_141 : HolLoopProg 64 :=
.mark loopBody338_140

def loopBody338_142 : HolLoopProg 64 :=
.seq loopBody338_1 loopBody338_141

def loopBody338_143 : HolLoopProg 64 :=
.mark loopBody338_142

def output338 : Nat × List Nat × HolLoopProg 64 :=
  (402, [0], loopBody338_143)
end InitECandidate.Proofs.FrontendStages.Loop
