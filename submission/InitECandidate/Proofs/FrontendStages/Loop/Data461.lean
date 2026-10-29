import InitECandidate.Proofs.FrontendStages.Loop.Translate445
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody461_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody461_1 : HolLoopProg 64 :=
.mark loopBody461_0

def loopBody461_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody461_3 : HolLoopProg 64 :=
.mark loopBody461_2

def loopBody461_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody461_3, loopBody461_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody461_5 : HolLoopProg 64 :=
.mark loopBody461_4

def loopBody461_6 : HolLoopProg 64 :=
.seq loopBody461_5 loopBody461_1

def loopBody461_7 : HolLoopProg 64 :=
.mark loopBody461_6

def loopBody461_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 8#64)

def loopBody461_9 : HolLoopProg 64 :=
.mark loopBody461_8

def loopBody461_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody461_11 : HolLoopProg 64 :=
.mark loopBody461_10

def loopBody461_12 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 470) ([6]) (some (6, loopBody461_11, loopBody461_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody461_13 : HolLoopProg 64 :=
.mark loopBody461_12

def loopBody461_14 : HolLoopProg 64 :=
.seq loopBody461_13 loopBody461_1

def loopBody461_15 : HolLoopProg 64 :=
.mark loopBody461_14

def loopBody461_16 : HolLoopProg 64 :=
.seq loopBody461_9 loopBody461_15

def loopBody461_17 : HolLoopProg 64 :=
.mark loopBody461_16

def loopBody461_18 : HolLoopProg 64 :=
.seq loopBody461_1 loopBody461_17

def loopBody461_19 : HolLoopProg 64 :=
.mark loopBody461_18

def loopBody461_20 : HolLoopProg 64 :=
.seq loopBody461_1 loopBody461_19

def loopBody461_21 : HolLoopProg 64 :=
.mark loopBody461_20

def loopBody461_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody461_23 : HolLoopProg 64 :=
.mark loopBody461_22

def loopBody461_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody461_25 : HolLoopProg 64 :=
.mark loopBody461_24

def loopBody461_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody461_27 : HolLoopProg 64 :=
.mark loopBody461_26

def loopBody461_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody461_29 : HolLoopProg 64 :=
.mark loopBody461_28

def loopBody461_30 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 486) ([6, 7, 8, 9]) (some (6, loopBody461_11, loopBody461_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))

def loopBody461_31 : HolLoopProg 64 :=
.mark loopBody461_30

def loopBody461_32 : HolLoopProg 64 :=
.seq loopBody461_31 loopBody461_1

def loopBody461_33 : HolLoopProg 64 :=
.mark loopBody461_32

def loopBody461_34 : HolLoopProg 64 :=
.seq loopBody461_29 loopBody461_33

def loopBody461_35 : HolLoopProg 64 :=
.mark loopBody461_34

def loopBody461_36 : HolLoopProg 64 :=
.seq loopBody461_27 loopBody461_35

def loopBody461_37 : HolLoopProg 64 :=
.mark loopBody461_36

def loopBody461_38 : HolLoopProg 64 :=
.seq loopBody461_25 loopBody461_37

def loopBody461_39 : HolLoopProg 64 :=
.mark loopBody461_38

def loopBody461_40 : HolLoopProg 64 :=
.seq loopBody461_23 loopBody461_39

def loopBody461_41 : HolLoopProg 64 :=
.mark loopBody461_40

def loopBody461_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody461_43 : HolLoopProg 64 :=
.mark loopBody461_42

def loopBody461_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody461_45 : HolLoopProg 64 :=
.mark loopBody461_44

def loopBody461_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody461_47 : HolLoopProg 64 :=
.mark loopBody461_46

def loopBody461_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody461_49 : HolLoopProg 64 :=
.mark loopBody461_48

def loopBody461_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody461_47 loopBody461_49 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody461_51 : HolLoopProg 64 :=
.mark loopBody461_50

def loopBody461_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody461_53 : HolLoopProg 64 :=
.mark loopBody461_52

def loopBody461_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 6#64)

def loopBody461_55 : HolLoopProg 64 :=
.mark loopBody461_54

def loopBody461_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 6)

def loopBody461_57 : HolLoopProg 64 :=
.mark loopBody461_56

def loopBody461_58 : HolLoopProg 64 :=
.seq loopBody461_57 loopBody461_1

def loopBody461_59 : HolLoopProg 64 :=
.mark loopBody461_58

def loopBody461_60 : HolLoopProg 64 :=
.seq loopBody461_59 loopBody461_1

def loopBody461_61 : HolLoopProg 64 :=
.mark loopBody461_60

def loopBody461_62 : HolLoopProg 64 :=
.seq loopBody461_55 loopBody461_61

def loopBody461_63 : HolLoopProg 64 :=
.mark loopBody461_62

def loopBody461_64 : HolLoopProg 64 :=
.seq loopBody461_1 loopBody461_63

def loopBody461_65 : HolLoopProg 64 :=
.mark loopBody461_64

def loopBody461_66 : HolLoopProg 64 :=
.seq loopBody461_9 loopBody461_11

def loopBody461_67 : HolLoopProg 64 :=
.mark loopBody461_66

def loopBody461_68 : HolLoopProg 64 :=
.seq loopBody461_65 loopBody461_67

def loopBody461_69 : HolLoopProg 64 :=
.mark loopBody461_68

def loopBody461_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody461_69 loopBody461_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody461_71 : HolLoopProg 64 :=
.mark loopBody461_70

def loopBody461_72 : HolLoopProg 64 :=
.seq loopBody461_71 loopBody461_1

def loopBody461_73 : HolLoopProg 64 :=
.mark loopBody461_72

def loopBody461_74 : HolLoopProg 64 :=
.seq loopBody461_53 loopBody461_73

def loopBody461_75 : HolLoopProg 64 :=
.mark loopBody461_74

def loopBody461_76 : HolLoopProg 64 :=
.seq loopBody461_51 loopBody461_75

def loopBody461_77 : HolLoopProg 64 :=
.mark loopBody461_76

def loopBody461_78 : HolLoopProg 64 :=
.seq loopBody461_45 loopBody461_77

def loopBody461_79 : HolLoopProg 64 :=
.mark loopBody461_78

def loopBody461_80 : HolLoopProg 64 :=
.seq loopBody461_43 loopBody461_79

def loopBody461_81 : HolLoopProg 64 :=
.mark loopBody461_80

def loopBody461_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 0#64])

def loopBody461_83 : HolLoopProg 64 :=
.mark loopBody461_82

def loopBody461_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody461_85 : HolLoopProg 64 :=
.mark loopBody461_84

def loopBody461_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 7)

def loopBody461_87 : HolLoopProg 64 :=
.mark loopBody461_86

def loopBody461_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 6) 8

def loopBody461_89 : HolLoopProg 64 :=
.mark loopBody461_88

def loopBody461_90 : HolLoopProg 64 :=
.seq loopBody461_89 loopBody461_1

def loopBody461_91 : HolLoopProg 64 :=
.mark loopBody461_90

def loopBody461_92 : HolLoopProg 64 :=
.seq loopBody461_87 loopBody461_91

def loopBody461_93 : HolLoopProg 64 :=
.mark loopBody461_92

def loopBody461_94 : HolLoopProg 64 :=
.seq loopBody461_93 loopBody461_1

def loopBody461_95 : HolLoopProg 64 :=
.mark loopBody461_94

def loopBody461_96 : HolLoopProg 64 :=
.seq loopBody461_85 loopBody461_95

def loopBody461_97 : HolLoopProg 64 :=
.mark loopBody461_96

def loopBody461_98 : HolLoopProg 64 :=
.seq loopBody461_1 loopBody461_97

def loopBody461_99 : HolLoopProg 64 :=
.mark loopBody461_98

def loopBody461_100 : HolLoopProg 64 :=
.seq loopBody461_83 loopBody461_99

def loopBody461_101 : HolLoopProg 64 :=
.mark loopBody461_100

def loopBody461_102 : HolLoopProg 64 :=
.seq loopBody461_1 loopBody461_101

def loopBody461_103 : HolLoopProg 64 :=
.mark loopBody461_102

def loopBody461_104 : HolLoopProg 64 :=
.seq loopBody461_81 loopBody461_103

def loopBody461_105 : HolLoopProg 64 :=
.mark loopBody461_104

def loopBody461_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody461_107 : HolLoopProg 64 :=
.mark loopBody461_106

def loopBody461_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody461_109 : HolLoopProg 64 :=
.mark loopBody461_108

def loopBody461_110 : HolLoopProg 64 :=
.seq loopBody461_109 loopBody461_1

def loopBody461_111 : HolLoopProg 64 :=
.mark loopBody461_110

def loopBody461_112 : HolLoopProg 64 :=
.seq loopBody461_107 loopBody461_111

def loopBody461_113 : HolLoopProg 64 :=
.mark loopBody461_112

def loopBody461_114 : HolLoopProg 64 :=
.seq loopBody461_105 loopBody461_113

def loopBody461_115 : HolLoopProg 64 :=
.mark loopBody461_114

def loopBody461_116 : HolLoopProg 64 :=
.seq loopBody461_41 loopBody461_115

def loopBody461_117 : HolLoopProg 64 :=
.mark loopBody461_116

def loopBody461_118 : HolLoopProg 64 :=
.seq loopBody461_1 loopBody461_117

def loopBody461_119 : HolLoopProg 64 :=
.mark loopBody461_118

def loopBody461_120 : HolLoopProg 64 :=
.seq loopBody461_1 loopBody461_119

def loopBody461_121 : HolLoopProg 64 :=
.mark loopBody461_120

def loopBody461_122 : HolLoopProg 64 :=
.seq loopBody461_21 loopBody461_121

def loopBody461_123 : HolLoopProg 64 :=
.mark loopBody461_122

def loopBody461_124 : HolLoopProg 64 :=
.seq loopBody461_7 loopBody461_123

def loopBody461_125 : HolLoopProg 64 :=
.mark loopBody461_124

def loopBody461_126 : HolLoopProg 64 :=
.seq loopBody461_1 loopBody461_125

def loopBody461_127 : HolLoopProg 64 :=
.mark loopBody461_126

def loopBody461_128 : HolLoopProg 64 :=
.seq loopBody461_1 loopBody461_127

def loopBody461_129 : HolLoopProg 64 :=
.mark loopBody461_128

def loopBody461_130 : HolLoopProg 64 :=
.seq loopBody461_1 loopBody461_129

def loopBody461_131 : HolLoopProg 64 :=
.mark loopBody461_130

def loopBody461_132 : HolLoopProg 64 :=
.seq loopBody461_1 loopBody461_131

def loopBody461_133 : HolLoopProg 64 :=
.mark loopBody461_132

def loopBody461_134 : HolLoopProg 64 :=
.seq loopBody461_1 loopBody461_133

def loopBody461_135 : HolLoopProg 64 :=
.mark loopBody461_134

def loopBody461_136 : HolLoopProg 64 :=
.seq loopBody461_1 loopBody461_135

def loopBody461_137 : HolLoopProg 64 :=
.mark loopBody461_136

def loopBody461_138 : HolLoopProg 64 :=
.seq loopBody461_1 loopBody461_137

def loopBody461_139 : HolLoopProg 64 :=
.mark loopBody461_138

def loopBody461_140 : HolLoopProg 64 :=
.seq loopBody461_1 loopBody461_139

def loopBody461_141 : HolLoopProg 64 :=
.mark loopBody461_140

def output461 : Nat × List Nat × HolLoopProg 64 :=
  (525, [], loopBody461_141)
end InitECandidate.Proofs.FrontendStages.Loop
