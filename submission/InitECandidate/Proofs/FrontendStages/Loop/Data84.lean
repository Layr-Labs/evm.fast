import InitECandidate.Proofs.FrontendStages.Loop.Translate68
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody84_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody84_1 : HolLoopProg 64 :=
.mark loopBody84_0

def loopBody84_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody84_3 : HolLoopProg 64 :=
.mark loopBody84_2

def loopBody84_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody84_5 : HolLoopProg 64 :=
.mark loopBody84_4

def loopBody84_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody84_7 : HolLoopProg 64 :=
.mark loopBody84_6

def loopBody84_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody84_9 : HolLoopProg 64 :=
.mark loopBody84_8

def loopBody84_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody84_11 : HolLoopProg 64 :=
.mark loopBody84_10

def loopBody84_12 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 139) ([6, 7, 8, 9]) (some (6, loopBody84_11, loopBody84_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody84_13 : HolLoopProg 64 :=
.mark loopBody84_12

def loopBody84_14 : HolLoopProg 64 :=
.seq loopBody84_13 loopBody84_1

def loopBody84_15 : HolLoopProg 64 :=
.mark loopBody84_14

def loopBody84_16 : HolLoopProg 64 :=
.seq loopBody84_9 loopBody84_15

def loopBody84_17 : HolLoopProg 64 :=
.mark loopBody84_16

def loopBody84_18 : HolLoopProg 64 :=
.seq loopBody84_7 loopBody84_17

def loopBody84_19 : HolLoopProg 64 :=
.mark loopBody84_18

def loopBody84_20 : HolLoopProg 64 :=
.seq loopBody84_5 loopBody84_19

def loopBody84_21 : HolLoopProg 64 :=
.mark loopBody84_20

def loopBody84_22 : HolLoopProg 64 :=
.seq loopBody84_3 loopBody84_21

def loopBody84_23 : HolLoopProg 64 :=
.mark loopBody84_22

def loopBody84_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody84_25 : HolLoopProg 64 :=
.mark loopBody84_24

def loopBody84_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody84_27 : HolLoopProg 64 :=
.mark loopBody84_26

def loopBody84_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody84_29 : HolLoopProg 64 :=
.mark loopBody84_28

def loopBody84_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody84_31 : HolLoopProg 64 :=
.mark loopBody84_30

def loopBody84_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody84_33 : HolLoopProg 64 :=
.mark loopBody84_32

def loopBody84_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.RegImm.reg 9) loopBody84_31 loopBody84_33 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody84_35 : HolLoopProg 64 :=
.mark loopBody84_34

def loopBody84_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody84_37 : HolLoopProg 64 :=
.mark loopBody84_36

def loopBody84_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 1#64],
      Flapjack.HolLoopExp.var 6])

def loopBody84_39 : HolLoopProg 64 :=
.mark loopBody84_38

def loopBody84_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody84_41 : HolLoopProg 64 :=
.mark loopBody84_40

def loopBody84_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody84_43 : HolLoopProg 64 :=
.mark loopBody84_42

def loopBody84_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody84_45 : HolLoopProg 64 :=
.mark loopBody84_44

def loopBody84_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody84_47 : HolLoopProg 64 :=
.mark loopBody84_46

def loopBody84_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.const 3#64))

def loopBody84_49 : HolLoopProg 64 :=
.mark loopBody84_48

def loopBody84_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody84_51 : HolLoopProg 64 :=
.mark loopBody84_50

def loopBody84_52 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 103) ([9, 10, 11, 12, 13]) (some (9, loopBody84_51, loopBody84_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody84_53 : HolLoopProg 64 :=
.mark loopBody84_52

def loopBody84_54 : HolLoopProg 64 :=
.seq loopBody84_53 loopBody84_1

def loopBody84_55 : HolLoopProg 64 :=
.mark loopBody84_54

def loopBody84_56 : HolLoopProg 64 :=
.seq loopBody84_49 loopBody84_55

def loopBody84_57 : HolLoopProg 64 :=
.mark loopBody84_56

def loopBody84_58 : HolLoopProg 64 :=
.seq loopBody84_47 loopBody84_57

def loopBody84_59 : HolLoopProg 64 :=
.mark loopBody84_58

def loopBody84_60 : HolLoopProg 64 :=
.seq loopBody84_45 loopBody84_59

def loopBody84_61 : HolLoopProg 64 :=
.mark loopBody84_60

def loopBody84_62 : HolLoopProg 64 :=
.seq loopBody84_43 loopBody84_61

def loopBody84_63 : HolLoopProg 64 :=
.mark loopBody84_62

def loopBody84_64 : HolLoopProg 64 :=
.seq loopBody84_41 loopBody84_63

def loopBody84_65 : HolLoopProg 64 :=
.mark loopBody84_64

def loopBody84_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 6])

def loopBody84_67 : HolLoopProg 64 :=
.mark loopBody84_66

def loopBody84_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 8)
        (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
          (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 7#64])
          (Flapjack.HolLoopExp.const 3#64)),
      Flapjack.HolLoopExp.const 255#64])

def loopBody84_69 : HolLoopProg 64 :=
.mark loopBody84_68

def loopBody84_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 9 10

def loopBody84_71 : HolLoopProg 64 :=
.mark loopBody84_70

def loopBody84_72 : HolLoopProg 64 :=
.seq loopBody84_71 loopBody84_1

def loopBody84_73 : HolLoopProg 64 :=
.mark loopBody84_72

def loopBody84_74 : HolLoopProg 64 :=
.seq loopBody84_69 loopBody84_73

def loopBody84_75 : HolLoopProg 64 :=
.mark loopBody84_74

def loopBody84_76 : HolLoopProg 64 :=
.seq loopBody84_67 loopBody84_75

def loopBody84_77 : HolLoopProg 64 :=
.mark loopBody84_76

def loopBody84_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 1#64])

def loopBody84_79 : HolLoopProg 64 :=
.mark loopBody84_78

def loopBody84_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 9)

def loopBody84_81 : HolLoopProg 64 :=
.mark loopBody84_80

def loopBody84_82 : HolLoopProg 64 :=
.seq loopBody84_81 loopBody84_1

def loopBody84_83 : HolLoopProg 64 :=
.mark loopBody84_82

def loopBody84_84 : HolLoopProg 64 :=
.seq loopBody84_83 loopBody84_1

def loopBody84_85 : HolLoopProg 64 :=
.mark loopBody84_84

def loopBody84_86 : HolLoopProg 64 :=
.seq loopBody84_79 loopBody84_85

def loopBody84_87 : HolLoopProg 64 :=
.mark loopBody84_86

def loopBody84_88 : HolLoopProg 64 :=
.seq loopBody84_1 loopBody84_87

def loopBody84_89 : HolLoopProg 64 :=
.mark loopBody84_88

def loopBody84_90 : HolLoopProg 64 :=
.seq loopBody84_77 loopBody84_89

def loopBody84_91 : HolLoopProg 64 :=
.mark loopBody84_90

def loopBody84_92 : HolLoopProg 64 :=
.seq loopBody84_65 loopBody84_91

def loopBody84_93 : HolLoopProg 64 :=
.mark loopBody84_92

def loopBody84_94 : HolLoopProg 64 :=
.seq loopBody84_1 loopBody84_93

def loopBody84_95 : HolLoopProg 64 :=
.mark loopBody84_94

def loopBody84_96 : HolLoopProg 64 :=
.seq loopBody84_1 loopBody84_95

def loopBody84_97 : HolLoopProg 64 :=
.mark loopBody84_96

def loopBody84_98 : HolLoopProg 64 :=
.seq loopBody84_39 loopBody84_97

def loopBody84_99 : HolLoopProg 64 :=
.mark loopBody84_98

def loopBody84_100 : HolLoopProg 64 :=
.seq loopBody84_1 loopBody84_99

def loopBody84_101 : HolLoopProg 64 :=
.mark loopBody84_100

def loopBody84_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody84_103 : HolLoopProg 64 :=
.mark loopBody84_102

def loopBody84_104 : HolLoopProg 64 :=
.seq loopBody84_101 loopBody84_103

def loopBody84_105 : HolLoopProg 64 :=
.mark loopBody84_104

def loopBody84_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody84_107 : HolLoopProg 64 :=
.mark loopBody84_106

def loopBody84_108 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody84_105 loopBody84_107 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody84_109 : HolLoopProg 64 :=
.mark loopBody84_108

def loopBody84_110 : HolLoopProg 64 :=
.seq loopBody84_109 loopBody84_1

def loopBody84_111 : HolLoopProg 64 :=
.mark loopBody84_110

def loopBody84_112 : HolLoopProg 64 :=
.seq loopBody84_37 loopBody84_111

def loopBody84_113 : HolLoopProg 64 :=
.mark loopBody84_112

def loopBody84_114 : HolLoopProg 64 :=
.seq loopBody84_35 loopBody84_113

def loopBody84_115 : HolLoopProg 64 :=
.mark loopBody84_114

def loopBody84_116 : HolLoopProg 64 :=
.seq loopBody84_29 loopBody84_115

def loopBody84_117 : HolLoopProg 64 :=
.mark loopBody84_116

def loopBody84_118 : HolLoopProg 64 :=
.seq loopBody84_27 loopBody84_117

def loopBody84_119 : HolLoopProg 64 :=
.mark loopBody84_118

def loopBody84_120 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody84_119 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody84_121 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody84_122 : HolLoopProg 64 :=
.mark loopBody84_121

def loopBody84_123 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody84_124 : HolLoopProg 64 :=
.mark loopBody84_123

def loopBody84_125 : HolLoopProg 64 :=
.seq loopBody84_124 loopBody84_1

def loopBody84_126 : HolLoopProg 64 :=
.mark loopBody84_125

def loopBody84_127 : HolLoopProg 64 :=
.seq loopBody84_122 loopBody84_126

def loopBody84_128 : HolLoopProg 64 :=
.mark loopBody84_127

def loopBody84_129 : HolLoopProg 64 :=
.seq loopBody84_120 loopBody84_128

def loopBody84_130 : HolLoopProg 64 :=
.seq loopBody84_25 loopBody84_129

def loopBody84_131 : HolLoopProg 64 :=
.seq loopBody84_1 loopBody84_130

def loopBody84_132 : HolLoopProg 64 :=
.seq loopBody84_23 loopBody84_131

def loopBody84_133 : HolLoopProg 64 :=
.seq loopBody84_1 loopBody84_132

def loopBody84_134 : HolLoopProg 64 :=
.seq loopBody84_1 loopBody84_133

def output84 : Nat × List Nat × HolLoopProg 64 :=
  (148, [0, 1, 2, 3, 4], loopBody84_134)
end InitECandidate.Proofs.FrontendStages.Loop
