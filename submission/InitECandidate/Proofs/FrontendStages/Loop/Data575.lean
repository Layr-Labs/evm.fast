import InitECandidate.Proofs.FrontendStages.Loop.Translate559
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody575_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody575_1 : HolLoopProg 64 :=
.mark loopBody575_0

def loopBody575_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody575_3 : HolLoopProg 64 :=
.mark loopBody575_2

def loopBody575_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody575_5 : HolLoopProg 64 :=
.mark loopBody575_4

def loopBody575_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody575_7 : HolLoopProg 64 :=
.mark loopBody575_6

def loopBody575_8 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 126) ([9, 10]) (some (9, loopBody575_7, loopBody575_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody575_9 : HolLoopProg 64 :=
.mark loopBody575_8

def loopBody575_10 : HolLoopProg 64 :=
.seq loopBody575_9 loopBody575_1

def loopBody575_11 : HolLoopProg 64 :=
.mark loopBody575_10

def loopBody575_12 : HolLoopProg 64 :=
.seq loopBody575_5 loopBody575_11

def loopBody575_13 : HolLoopProg 64 :=
.mark loopBody575_12

def loopBody575_14 : HolLoopProg 64 :=
.seq loopBody575_3 loopBody575_13

def loopBody575_15 : HolLoopProg 64 :=
.mark loopBody575_14

def loopBody575_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody575_17 : HolLoopProg 64 :=
.mark loopBody575_16

def loopBody575_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 3)

def loopBody575_19 : HolLoopProg 64 :=
.mark loopBody575_18

def loopBody575_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody575_21 : HolLoopProg 64 :=
.mark loopBody575_20

def loopBody575_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody575_23 : HolLoopProg 64 :=
.mark loopBody575_22

def loopBody575_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.RegImm.reg 11) loopBody575_21 loopBody575_23 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody575_25 : HolLoopProg 64 :=
.mark loopBody575_24

def loopBody575_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody575_27 : HolLoopProg 64 :=
.mark loopBody575_26

def loopBody575_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody575_29 : HolLoopProg 64 :=
.mark loopBody575_28

def loopBody575_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 0)

def loopBody575_31 : HolLoopProg 64 :=
.mark loopBody575_30

def loopBody575_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 8) (Flapjack.HolLoopExp.const 3#64))

def loopBody575_33 : HolLoopProg 64 :=
.mark loopBody575_32

def loopBody575_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody575_35 : HolLoopProg 64 :=
.mark loopBody575_34

def loopBody575_36 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([10, 11, 12]) (some (10, loopBody575_35, loopBody575_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody575_37 : HolLoopProg 64 :=
.mark loopBody575_36

def loopBody575_38 : HolLoopProg 64 :=
.seq loopBody575_37 loopBody575_1

def loopBody575_39 : HolLoopProg 64 :=
.mark loopBody575_38

def loopBody575_40 : HolLoopProg 64 :=
.seq loopBody575_33 loopBody575_39

def loopBody575_41 : HolLoopProg 64 :=
.mark loopBody575_40

def loopBody575_42 : HolLoopProg 64 :=
.seq loopBody575_31 loopBody575_41

def loopBody575_43 : HolLoopProg 64 :=
.mark loopBody575_42

def loopBody575_44 : HolLoopProg 64 :=
.seq loopBody575_29 loopBody575_43

def loopBody575_45 : HolLoopProg 64 :=
.mark loopBody575_44

def loopBody575_46 : HolLoopProg 64 :=
.seq loopBody575_1 loopBody575_45

def loopBody575_47 : HolLoopProg 64 :=
.mark loopBody575_46

def loopBody575_48 : HolLoopProg 64 :=
.seq loopBody575_1 loopBody575_47

def loopBody575_49 : HolLoopProg 64 :=
.mark loopBody575_48

def loopBody575_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 4,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 8) (Flapjack.HolLoopExp.const 3#64)])

def loopBody575_51 : HolLoopProg 64 :=
.mark loopBody575_50

def loopBody575_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 8])
    (Flapjack.HolLoopExp.const 3#64))

def loopBody575_53 : HolLoopProg 64 :=
.mark loopBody575_52

def loopBody575_54 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 78) ([10, 11]) (some (10, loopBody575_35, loopBody575_1, (Flapjack.Spt.ln)))

def loopBody575_55 : HolLoopProg 64 :=
.mark loopBody575_54

def loopBody575_56 : HolLoopProg 64 :=
.seq loopBody575_55 loopBody575_1

def loopBody575_57 : HolLoopProg 64 :=
.mark loopBody575_56

def loopBody575_58 : HolLoopProg 64 :=
.seq loopBody575_53 loopBody575_57

def loopBody575_59 : HolLoopProg 64 :=
.mark loopBody575_58

def loopBody575_60 : HolLoopProg 64 :=
.seq loopBody575_51 loopBody575_59

def loopBody575_61 : HolLoopProg 64 :=
.mark loopBody575_60

def loopBody575_62 : HolLoopProg 64 :=
.seq loopBody575_1 loopBody575_61

def loopBody575_63 : HolLoopProg 64 :=
.mark loopBody575_62

def loopBody575_64 : HolLoopProg 64 :=
.seq loopBody575_1 loopBody575_63

def loopBody575_65 : HolLoopProg 64 :=
.mark loopBody575_64

def loopBody575_66 : HolLoopProg 64 :=
.seq loopBody575_49 loopBody575_65

def loopBody575_67 : HolLoopProg 64 :=
.mark loopBody575_66

def loopBody575_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody575_69 : HolLoopProg 64 :=
.mark loopBody575_68

def loopBody575_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody575_71 : HolLoopProg 64 :=
.mark loopBody575_70

def loopBody575_72 : HolLoopProg 64 :=
.seq loopBody575_71 loopBody575_1

def loopBody575_73 : HolLoopProg 64 :=
.mark loopBody575_72

def loopBody575_74 : HolLoopProg 64 :=
.seq loopBody575_69 loopBody575_73

def loopBody575_75 : HolLoopProg 64 :=
.mark loopBody575_74

def loopBody575_76 : HolLoopProg 64 :=
.seq loopBody575_67 loopBody575_75

def loopBody575_77 : HolLoopProg 64 :=
.mark loopBody575_76

def loopBody575_78 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody575_77 loopBody575_1 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody575_79 : HolLoopProg 64 :=
.mark loopBody575_78

def loopBody575_80 : HolLoopProg 64 :=
.seq loopBody575_79 loopBody575_1

def loopBody575_81 : HolLoopProg 64 :=
.mark loopBody575_80

def loopBody575_82 : HolLoopProg 64 :=
.seq loopBody575_27 loopBody575_81

def loopBody575_83 : HolLoopProg 64 :=
.mark loopBody575_82

def loopBody575_84 : HolLoopProg 64 :=
.seq loopBody575_25 loopBody575_83

def loopBody575_85 : HolLoopProg 64 :=
.mark loopBody575_84

def loopBody575_86 : HolLoopProg 64 :=
.seq loopBody575_19 loopBody575_85

def loopBody575_87 : HolLoopProg 64 :=
.mark loopBody575_86

def loopBody575_88 : HolLoopProg 64 :=
.seq loopBody575_17 loopBody575_87

def loopBody575_89 : HolLoopProg 64 :=
.mark loopBody575_88

def loopBody575_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody575_91 : HolLoopProg 64 :=
.mark loopBody575_90

def loopBody575_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 4)

def loopBody575_93 : HolLoopProg 64 :=
.mark loopBody575_92

def loopBody575_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 0)

def loopBody575_95 : HolLoopProg 64 :=
.mark loopBody575_94

def loopBody575_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 8)

def loopBody575_97 : HolLoopProg 64 :=
.mark loopBody575_96

def loopBody575_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody575_99 : HolLoopProg 64 :=
.mark loopBody575_98

def loopBody575_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody575_101 : HolLoopProg 64 :=
.mark loopBody575_100

def loopBody575_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 6)

def loopBody575_103 : HolLoopProg 64 :=
.mark loopBody575_102

def loopBody575_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 7)

def loopBody575_105 : HolLoopProg 64 :=
.mark loopBody575_104

def loopBody575_106 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 638) ([10, 11, 12, 13, 14, 15, 16, 17]) (some (10, loopBody575_35, loopBody575_1, (Flapjack.Spt.ln)))

def loopBody575_107 : HolLoopProg 64 :=
.mark loopBody575_106

def loopBody575_108 : HolLoopProg 64 :=
.seq loopBody575_107 loopBody575_1

def loopBody575_109 : HolLoopProg 64 :=
.mark loopBody575_108

def loopBody575_110 : HolLoopProg 64 :=
.seq loopBody575_105 loopBody575_109

def loopBody575_111 : HolLoopProg 64 :=
.mark loopBody575_110

def loopBody575_112 : HolLoopProg 64 :=
.seq loopBody575_103 loopBody575_111

def loopBody575_113 : HolLoopProg 64 :=
.mark loopBody575_112

def loopBody575_114 : HolLoopProg 64 :=
.seq loopBody575_101 loopBody575_113

def loopBody575_115 : HolLoopProg 64 :=
.mark loopBody575_114

def loopBody575_116 : HolLoopProg 64 :=
.seq loopBody575_99 loopBody575_115

def loopBody575_117 : HolLoopProg 64 :=
.mark loopBody575_116

def loopBody575_118 : HolLoopProg 64 :=
.seq loopBody575_97 loopBody575_117

def loopBody575_119 : HolLoopProg 64 :=
.mark loopBody575_118

def loopBody575_120 : HolLoopProg 64 :=
.seq loopBody575_95 loopBody575_119

def loopBody575_121 : HolLoopProg 64 :=
.mark loopBody575_120

def loopBody575_122 : HolLoopProg 64 :=
.seq loopBody575_93 loopBody575_121

def loopBody575_123 : HolLoopProg 64 :=
.mark loopBody575_122

def loopBody575_124 : HolLoopProg 64 :=
.seq loopBody575_91 loopBody575_123

def loopBody575_125 : HolLoopProg 64 :=
.mark loopBody575_124

def loopBody575_126 : HolLoopProg 64 :=
.seq loopBody575_1 loopBody575_125

def loopBody575_127 : HolLoopProg 64 :=
.mark loopBody575_126

def loopBody575_128 : HolLoopProg 64 :=
.seq loopBody575_1 loopBody575_127

def loopBody575_129 : HolLoopProg 64 :=
.mark loopBody575_128

def loopBody575_130 : HolLoopProg 64 :=
.seq loopBody575_89 loopBody575_129

def loopBody575_131 : HolLoopProg 64 :=
.mark loopBody575_130

def loopBody575_132 : HolLoopProg 64 :=
.seq loopBody575_131 loopBody575_75

def loopBody575_133 : HolLoopProg 64 :=
.mark loopBody575_132

def loopBody575_134 : HolLoopProg 64 :=
.seq loopBody575_15 loopBody575_133

def loopBody575_135 : HolLoopProg 64 :=
.mark loopBody575_134

def loopBody575_136 : HolLoopProg 64 :=
.seq loopBody575_1 loopBody575_135

def loopBody575_137 : HolLoopProg 64 :=
.mark loopBody575_136

def loopBody575_138 : HolLoopProg 64 :=
.seq loopBody575_1 loopBody575_137

def loopBody575_139 : HolLoopProg 64 :=
.mark loopBody575_138

def output575 : Nat × List Nat × HolLoopProg 64 :=
  (639, [0, 1, 2, 3, 4, 5, 6, 7], loopBody575_139)
end InitECandidate.Proofs.FrontendStages.Loop
