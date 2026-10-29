import InitECandidate.Proofs.FrontendStages.Loop.Translate767
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody783_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody783_1 : HolLoopProg 64 :=
.mark loopBody783_0

def loopBody783_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody783_3 : HolLoopProg 64 :=
.mark loopBody783_2

def loopBody783_4 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (4, loopBody783_3, loopBody783_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody783_5 : HolLoopProg 64 :=
.mark loopBody783_4

def loopBody783_6 : HolLoopProg 64 :=
.seq loopBody783_5 loopBody783_1

def loopBody783_7 : HolLoopProg 64 :=
.mark loopBody783_6

def loopBody783_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 5#64),
      Flapjack.HolLoopExp.const 8#64])

def loopBody783_9 : HolLoopProg 64 :=
.mark loopBody783_8

def loopBody783_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody783_11 : HolLoopProg 64 :=
.mark loopBody783_10

def loopBody783_12 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([5]) (some (5, loopBody783_11, loopBody783_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody783_13 : HolLoopProg 64 :=
.mark loopBody783_12

def loopBody783_14 : HolLoopProg 64 :=
.seq loopBody783_13 loopBody783_1

def loopBody783_15 : HolLoopProg 64 :=
.mark loopBody783_14

def loopBody783_16 : HolLoopProg 64 :=
.seq loopBody783_9 loopBody783_15

def loopBody783_17 : HolLoopProg 64 :=
.mark loopBody783_16

def loopBody783_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody783_19 : HolLoopProg 64 :=
.mark loopBody783_18

def loopBody783_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody783_21 : HolLoopProg 64 :=
.mark loopBody783_20

def loopBody783_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody783_23 : HolLoopProg 64 :=
.mark loopBody783_22

def loopBody783_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody783_25 : HolLoopProg 64 :=
.mark loopBody783_24

def loopBody783_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody783_27 : HolLoopProg 64 :=
.mark loopBody783_26

def loopBody783_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.RegImm.reg 8) loopBody783_25 loopBody783_27 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody783_29 : HolLoopProg 64 :=
.mark loopBody783_28

def loopBody783_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody783_31 : HolLoopProg 64 :=
.mark loopBody783_30

def loopBody783_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 4#64)]))

def loopBody783_33 : HolLoopProg 64 :=
.mark loopBody783_32

def loopBody783_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 4#64),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody783_35 : HolLoopProg 64 :=
.mark loopBody783_34

def loopBody783_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 4,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 5#64)])

def loopBody783_37 : HolLoopProg 64 :=
.mark loopBody783_36

def loopBody783_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody783_39 : HolLoopProg 64 :=
.mark loopBody783_38

def loopBody783_40 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 153) ([7, 8, 9]) (some (7, loopBody783_39, loopBody783_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody783_41 : HolLoopProg 64 :=
.mark loopBody783_40

def loopBody783_42 : HolLoopProg 64 :=
.seq loopBody783_41 loopBody783_1

def loopBody783_43 : HolLoopProg 64 :=
.mark loopBody783_42

def loopBody783_44 : HolLoopProg 64 :=
.seq loopBody783_37 loopBody783_43

def loopBody783_45 : HolLoopProg 64 :=
.mark loopBody783_44

def loopBody783_46 : HolLoopProg 64 :=
.seq loopBody783_35 loopBody783_45

def loopBody783_47 : HolLoopProg 64 :=
.mark loopBody783_46

def loopBody783_48 : HolLoopProg 64 :=
.seq loopBody783_33 loopBody783_47

def loopBody783_49 : HolLoopProg 64 :=
.mark loopBody783_48

def loopBody783_50 : HolLoopProg 64 :=
.seq loopBody783_1 loopBody783_49

def loopBody783_51 : HolLoopProg 64 :=
.mark loopBody783_50

def loopBody783_52 : HolLoopProg 64 :=
.seq loopBody783_1 loopBody783_51

def loopBody783_53 : HolLoopProg 64 :=
.mark loopBody783_52

def loopBody783_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 1#64])

def loopBody783_55 : HolLoopProg 64 :=
.mark loopBody783_54

def loopBody783_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 6)

def loopBody783_57 : HolLoopProg 64 :=
.mark loopBody783_56

def loopBody783_58 : HolLoopProg 64 :=
.seq loopBody783_57 loopBody783_1

def loopBody783_59 : HolLoopProg 64 :=
.mark loopBody783_58

def loopBody783_60 : HolLoopProg 64 :=
.seq loopBody783_59 loopBody783_1

def loopBody783_61 : HolLoopProg 64 :=
.mark loopBody783_60

def loopBody783_62 : HolLoopProg 64 :=
.seq loopBody783_55 loopBody783_61

def loopBody783_63 : HolLoopProg 64 :=
.mark loopBody783_62

def loopBody783_64 : HolLoopProg 64 :=
.seq loopBody783_1 loopBody783_63

def loopBody783_65 : HolLoopProg 64 :=
.mark loopBody783_64

def loopBody783_66 : HolLoopProg 64 :=
.seq loopBody783_53 loopBody783_65

def loopBody783_67 : HolLoopProg 64 :=
.mark loopBody783_66

def loopBody783_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody783_69 : HolLoopProg 64 :=
.mark loopBody783_68

def loopBody783_70 : HolLoopProg 64 :=
.seq loopBody783_67 loopBody783_69

def loopBody783_71 : HolLoopProg 64 :=
.mark loopBody783_70

def loopBody783_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody783_73 : HolLoopProg 64 :=
.mark loopBody783_72

def loopBody783_74 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody783_71 loopBody783_73 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody783_75 : HolLoopProg 64 :=
.mark loopBody783_74

def loopBody783_76 : HolLoopProg 64 :=
.seq loopBody783_75 loopBody783_1

def loopBody783_77 : HolLoopProg 64 :=
.mark loopBody783_76

def loopBody783_78 : HolLoopProg 64 :=
.seq loopBody783_31 loopBody783_77

def loopBody783_79 : HolLoopProg 64 :=
.mark loopBody783_78

def loopBody783_80 : HolLoopProg 64 :=
.seq loopBody783_29 loopBody783_79

def loopBody783_81 : HolLoopProg 64 :=
.mark loopBody783_80

def loopBody783_82 : HolLoopProg 64 :=
.seq loopBody783_23 loopBody783_81

def loopBody783_83 : HolLoopProg 64 :=
.mark loopBody783_82

def loopBody783_84 : HolLoopProg 64 :=
.seq loopBody783_21 loopBody783_83

def loopBody783_85 : HolLoopProg 64 :=
.mark loopBody783_84

def loopBody783_86 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody783_85 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody783_87 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody783_88 : HolLoopProg 64 :=
.mark loopBody783_87

def loopBody783_89 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 5#64))

def loopBody783_90 : HolLoopProg 64 :=
.mark loopBody783_89

def loopBody783_91 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody783_92 : HolLoopProg 64 :=
.mark loopBody783_91

def loopBody783_93 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 153) ([7, 8, 9]) (some (7, loopBody783_39, loopBody783_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody783_94 : HolLoopProg 64 :=
.mark loopBody783_93

def loopBody783_95 : HolLoopProg 64 :=
.seq loopBody783_94 loopBody783_1

def loopBody783_96 : HolLoopProg 64 :=
.mark loopBody783_95

def loopBody783_97 : HolLoopProg 64 :=
.seq loopBody783_92 loopBody783_96

def loopBody783_98 : HolLoopProg 64 :=
.mark loopBody783_97

def loopBody783_99 : HolLoopProg 64 :=
.seq loopBody783_90 loopBody783_98

def loopBody783_100 : HolLoopProg 64 :=
.mark loopBody783_99

def loopBody783_101 : HolLoopProg 64 :=
.seq loopBody783_88 loopBody783_100

def loopBody783_102 : HolLoopProg 64 :=
.mark loopBody783_101

def loopBody783_103 : HolLoopProg 64 :=
.seq loopBody783_1 loopBody783_102

def loopBody783_104 : HolLoopProg 64 :=
.mark loopBody783_103

def loopBody783_105 : HolLoopProg 64 :=
.seq loopBody783_1 loopBody783_104

def loopBody783_106 : HolLoopProg 64 :=
.mark loopBody783_105

def loopBody783_107 : HolLoopProg 64 :=
.seq loopBody783_86 loopBody783_106

def loopBody783_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody783_109 : HolLoopProg 64 :=
.mark loopBody783_108

def loopBody783_110 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 70) ([7]) (some (7, loopBody783_39, loopBody783_1, (Flapjack.Spt.ln)))

def loopBody783_111 : HolLoopProg 64 :=
.mark loopBody783_110

def loopBody783_112 : HolLoopProg 64 :=
.seq loopBody783_111 loopBody783_1

def loopBody783_113 : HolLoopProg 64 :=
.mark loopBody783_112

def loopBody783_114 : HolLoopProg 64 :=
.seq loopBody783_109 loopBody783_113

def loopBody783_115 : HolLoopProg 64 :=
.mark loopBody783_114

def loopBody783_116 : HolLoopProg 64 :=
.seq loopBody783_1 loopBody783_115

def loopBody783_117 : HolLoopProg 64 :=
.mark loopBody783_116

def loopBody783_118 : HolLoopProg 64 :=
.seq loopBody783_1 loopBody783_117

def loopBody783_119 : HolLoopProg 64 :=
.mark loopBody783_118

def loopBody783_120 : HolLoopProg 64 :=
.seq loopBody783_107 loopBody783_119

def loopBody783_121 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody783_122 : HolLoopProg 64 :=
.mark loopBody783_121

def loopBody783_123 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody783_124 : HolLoopProg 64 :=
.mark loopBody783_123

def loopBody783_125 : HolLoopProg 64 :=
.seq loopBody783_124 loopBody783_1

def loopBody783_126 : HolLoopProg 64 :=
.mark loopBody783_125

def loopBody783_127 : HolLoopProg 64 :=
.seq loopBody783_122 loopBody783_126

def loopBody783_128 : HolLoopProg 64 :=
.mark loopBody783_127

def loopBody783_129 : HolLoopProg 64 :=
.seq loopBody783_120 loopBody783_128

def loopBody783_130 : HolLoopProg 64 :=
.seq loopBody783_19 loopBody783_129

def loopBody783_131 : HolLoopProg 64 :=
.seq loopBody783_1 loopBody783_130

def loopBody783_132 : HolLoopProg 64 :=
.seq loopBody783_17 loopBody783_131

def loopBody783_133 : HolLoopProg 64 :=
.seq loopBody783_1 loopBody783_132

def loopBody783_134 : HolLoopProg 64 :=
.seq loopBody783_1 loopBody783_133

def loopBody783_135 : HolLoopProg 64 :=
.seq loopBody783_7 loopBody783_134

def loopBody783_136 : HolLoopProg 64 :=
.seq loopBody783_1 loopBody783_135

def loopBody783_137 : HolLoopProg 64 :=
.seq loopBody783_1 loopBody783_136

def output783 : Nat × List Nat × HolLoopProg 64 :=
  (847, [0, 1, 2], loopBody783_137)
end InitECandidate.Proofs.FrontendStages.Loop
