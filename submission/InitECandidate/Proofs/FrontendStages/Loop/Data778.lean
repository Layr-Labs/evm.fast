import InitECandidate.Proofs.FrontendStages.Loop.Translate762
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody778_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody778_1 : HolLoopProg 64 :=
.mark loopBody778_0

def loopBody778_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 8#64]))

def loopBody778_3 : HolLoopProg 64 :=
.mark loopBody778_2

def loopBody778_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 0#64]))

def loopBody778_5 : HolLoopProg 64 :=
.mark loopBody778_4

def loopBody778_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 9#64])

def loopBody778_7 : HolLoopProg 64 :=
.mark loopBody778_6

def loopBody778_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody778_9 : HolLoopProg 64 :=
.mark loopBody778_8

def loopBody778_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody778_11 : HolLoopProg 64 :=
.mark loopBody778_10

def loopBody778_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody778_13 : HolLoopProg 64 :=
.mark loopBody778_12

def loopBody778_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody778_15 : HolLoopProg 64 :=
.mark loopBody778_14

def loopBody778_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody778_17 : HolLoopProg 64 :=
.mark loopBody778_16

def loopBody778_18 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.RegImm.reg 8) loopBody778_15 loopBody778_17 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody778_19 : HolLoopProg 64 :=
.mark loopBody778_18

def loopBody778_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody778_21 : HolLoopProg 64 :=
.mark loopBody778_20

def loopBody778_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 3,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 3#64)]))

def loopBody778_23 : HolLoopProg 64 :=
.mark loopBody778_22

def loopBody778_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 9#64])

def loopBody778_25 : HolLoopProg 64 :=
.mark loopBody778_24

def loopBody778_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 0#64]))

def loopBody778_27 : HolLoopProg 64 :=
.mark loopBody778_26

def loopBody778_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 20#64)

def loopBody778_29 : HolLoopProg 64 :=
.mark loopBody778_28

def loopBody778_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody778_31 : HolLoopProg 64 :=
.mark loopBody778_30

def loopBody778_32 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 176) ([9, 10, 11]) (some (9, loopBody778_31, loopBody778_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody778_33 : HolLoopProg 64 :=
.mark loopBody778_32

def loopBody778_34 : HolLoopProg 64 :=
.seq loopBody778_33 loopBody778_1

def loopBody778_35 : HolLoopProg 64 :=
.mark loopBody778_34

def loopBody778_36 : HolLoopProg 64 :=
.seq loopBody778_29 loopBody778_35

def loopBody778_37 : HolLoopProg 64 :=
.mark loopBody778_36

def loopBody778_38 : HolLoopProg 64 :=
.seq loopBody778_27 loopBody778_37

def loopBody778_39 : HolLoopProg 64 :=
.mark loopBody778_38

def loopBody778_40 : HolLoopProg 64 :=
.seq loopBody778_21 loopBody778_39

def loopBody778_41 : HolLoopProg 64 :=
.mark loopBody778_40

def loopBody778_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.var 8])

def loopBody778_43 : HolLoopProg 64 :=
.mark loopBody778_42

def loopBody778_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 9)

def loopBody778_45 : HolLoopProg 64 :=
.mark loopBody778_44

def loopBody778_46 : HolLoopProg 64 :=
.seq loopBody778_45 loopBody778_1

def loopBody778_47 : HolLoopProg 64 :=
.mark loopBody778_46

def loopBody778_48 : HolLoopProg 64 :=
.seq loopBody778_47 loopBody778_1

def loopBody778_49 : HolLoopProg 64 :=
.mark loopBody778_48

def loopBody778_50 : HolLoopProg 64 :=
.seq loopBody778_43 loopBody778_49

def loopBody778_51 : HolLoopProg 64 :=
.mark loopBody778_50

def loopBody778_52 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_51

def loopBody778_53 : HolLoopProg 64 :=
.mark loopBody778_52

def loopBody778_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 9#64])

def loopBody778_55 : HolLoopProg 64 :=
.mark loopBody778_54

def loopBody778_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 16#64]))

def loopBody778_57 : HolLoopProg 64 :=
.mark loopBody778_56

def loopBody778_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody778_59 : HolLoopProg 64 :=
.mark loopBody778_58

def loopBody778_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 12)

def loopBody778_61 : HolLoopProg 64 :=
.mark loopBody778_60

def loopBody778_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 11)

def loopBody778_63 : HolLoopProg 64 :=
.mark loopBody778_62

def loopBody778_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 1#64)

def loopBody778_65 : HolLoopProg 64 :=
.mark loopBody778_64

def loopBody778_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody778_67 : HolLoopProg 64 :=
.mark loopBody778_66

def loopBody778_68 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.RegImm.reg 15) loopBody778_65 loopBody778_67 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody778_69 : HolLoopProg 64 :=
.mark loopBody778_68

def loopBody778_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 14)

def loopBody778_71 : HolLoopProg 64 :=
.mark loopBody778_70

def loopBody778_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 10)

def loopBody778_73 : HolLoopProg 64 :=
.mark loopBody778_72

def loopBody778_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 8#64]),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 12) (Flapjack.HolLoopExp.const 5#64)])

def loopBody778_75 : HolLoopProg 64 :=
.mark loopBody778_74

def loopBody778_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 32#64)

def loopBody778_77 : HolLoopProg 64 :=
.mark loopBody778_76

def loopBody778_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody778_79 : HolLoopProg 64 :=
.mark loopBody778_78

def loopBody778_80 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 176) ([13, 14, 15]) (some (13, loopBody778_79, loopBody778_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody778_81 : HolLoopProg 64 :=
.mark loopBody778_80

def loopBody778_82 : HolLoopProg 64 :=
.seq loopBody778_81 loopBody778_1

def loopBody778_83 : HolLoopProg 64 :=
.mark loopBody778_82

def loopBody778_84 : HolLoopProg 64 :=
.seq loopBody778_77 loopBody778_83

def loopBody778_85 : HolLoopProg 64 :=
.mark loopBody778_84

def loopBody778_86 : HolLoopProg 64 :=
.seq loopBody778_75 loopBody778_85

def loopBody778_87 : HolLoopProg 64 :=
.mark loopBody778_86

def loopBody778_88 : HolLoopProg 64 :=
.seq loopBody778_73 loopBody778_87

def loopBody778_89 : HolLoopProg 64 :=
.mark loopBody778_88

def loopBody778_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.var 8])

def loopBody778_91 : HolLoopProg 64 :=
.mark loopBody778_90

def loopBody778_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 13)

def loopBody778_93 : HolLoopProg 64 :=
.mark loopBody778_92

def loopBody778_94 : HolLoopProg 64 :=
.seq loopBody778_93 loopBody778_1

def loopBody778_95 : HolLoopProg 64 :=
.mark loopBody778_94

def loopBody778_96 : HolLoopProg 64 :=
.seq loopBody778_95 loopBody778_1

def loopBody778_97 : HolLoopProg 64 :=
.mark loopBody778_96

def loopBody778_98 : HolLoopProg 64 :=
.seq loopBody778_91 loopBody778_97

def loopBody778_99 : HolLoopProg 64 :=
.mark loopBody778_98

def loopBody778_100 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_99

def loopBody778_101 : HolLoopProg 64 :=
.mark loopBody778_100

def loopBody778_102 : HolLoopProg 64 :=
.seq loopBody778_89 loopBody778_101

def loopBody778_103 : HolLoopProg 64 :=
.mark loopBody778_102

def loopBody778_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 12, Flapjack.HolLoopExp.const 1#64])

def loopBody778_105 : HolLoopProg 64 :=
.mark loopBody778_104

def loopBody778_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 13)

def loopBody778_107 : HolLoopProg 64 :=
.mark loopBody778_106

def loopBody778_108 : HolLoopProg 64 :=
.seq loopBody778_107 loopBody778_1

def loopBody778_109 : HolLoopProg 64 :=
.mark loopBody778_108

def loopBody778_110 : HolLoopProg 64 :=
.seq loopBody778_109 loopBody778_1

def loopBody778_111 : HolLoopProg 64 :=
.mark loopBody778_110

def loopBody778_112 : HolLoopProg 64 :=
.seq loopBody778_105 loopBody778_111

def loopBody778_113 : HolLoopProg 64 :=
.mark loopBody778_112

def loopBody778_114 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_113

def loopBody778_115 : HolLoopProg 64 :=
.mark loopBody778_114

def loopBody778_116 : HolLoopProg 64 :=
.seq loopBody778_103 loopBody778_115

def loopBody778_117 : HolLoopProg 64 :=
.mark loopBody778_116

def loopBody778_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody778_119 : HolLoopProg 64 :=
.mark loopBody778_118

def loopBody778_120 : HolLoopProg 64 :=
.seq loopBody778_117 loopBody778_119

def loopBody778_121 : HolLoopProg 64 :=
.mark loopBody778_120

def loopBody778_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody778_123 : HolLoopProg 64 :=
.mark loopBody778_122

def loopBody778_124 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.RegImm.imm 0#64) loopBody778_121 loopBody778_123 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody778_125 : HolLoopProg 64 :=
.mark loopBody778_124

def loopBody778_126 : HolLoopProg 64 :=
.seq loopBody778_125 loopBody778_1

def loopBody778_127 : HolLoopProg 64 :=
.mark loopBody778_126

def loopBody778_128 : HolLoopProg 64 :=
.seq loopBody778_71 loopBody778_127

def loopBody778_129 : HolLoopProg 64 :=
.mark loopBody778_128

def loopBody778_130 : HolLoopProg 64 :=
.seq loopBody778_69 loopBody778_129

def loopBody778_131 : HolLoopProg 64 :=
.mark loopBody778_130

def loopBody778_132 : HolLoopProg 64 :=
.seq loopBody778_63 loopBody778_131

def loopBody778_133 : HolLoopProg 64 :=
.mark loopBody778_132

def loopBody778_134 : HolLoopProg 64 :=
.seq loopBody778_61 loopBody778_133

def loopBody778_135 : HolLoopProg 64 :=
.mark loopBody778_134

def loopBody778_136 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody778_135 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit)))

def loopBody778_137 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 9)

def loopBody778_138 : HolLoopProg 64 :=
.mark loopBody778_137

def loopBody778_139 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 10)

def loopBody778_140 : HolLoopProg 64 :=
.mark loopBody778_139

def loopBody778_141 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))) (some 840) ([13, 14]) (some (13, loopBody778_79, loopBody778_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit)))))

def loopBody778_142 : HolLoopProg 64 :=
.mark loopBody778_141

def loopBody778_143 : HolLoopProg 64 :=
.seq loopBody778_142 loopBody778_1

def loopBody778_144 : HolLoopProg 64 :=
.mark loopBody778_143

def loopBody778_145 : HolLoopProg 64 :=
.seq loopBody778_140 loopBody778_144

def loopBody778_146 : HolLoopProg 64 :=
.mark loopBody778_145

def loopBody778_147 : HolLoopProg 64 :=
.seq loopBody778_138 loopBody778_146

def loopBody778_148 : HolLoopProg 64 :=
.mark loopBody778_147

def loopBody778_149 : HolLoopProg 64 :=
.seq loopBody778_136 loopBody778_148

def loopBody778_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 9, Flapjack.HolLoopExp.var 8])

def loopBody778_151 : HolLoopProg 64 :=
.mark loopBody778_150

def loopBody778_152 : HolLoopProg 64 :=
.seq loopBody778_151 loopBody778_1

def loopBody778_153 : HolLoopProg 64 :=
.mark loopBody778_152

def loopBody778_154 : HolLoopProg 64 :=
.seq loopBody778_153 loopBody778_1

def loopBody778_155 : HolLoopProg 64 :=
.mark loopBody778_154

def loopBody778_156 : HolLoopProg 64 :=
.seq loopBody778_149 loopBody778_155

def loopBody778_157 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 7)

def loopBody778_158 : HolLoopProg 64 :=
.mark loopBody778_157

def loopBody778_159 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 24#64]))

def loopBody778_160 : HolLoopProg 64 :=
.mark loopBody778_159

def loopBody778_161 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 32#64]))

def loopBody778_162 : HolLoopProg 64 :=
.mark loopBody778_161

def loopBody778_163 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 176) ([13, 14, 15]) (some (13, loopBody778_79, loopBody778_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody778_164 : HolLoopProg 64 :=
.mark loopBody778_163

def loopBody778_165 : HolLoopProg 64 :=
.seq loopBody778_164 loopBody778_1

def loopBody778_166 : HolLoopProg 64 :=
.mark loopBody778_165

def loopBody778_167 : HolLoopProg 64 :=
.seq loopBody778_162 loopBody778_166

def loopBody778_168 : HolLoopProg 64 :=
.mark loopBody778_167

def loopBody778_169 : HolLoopProg 64 :=
.seq loopBody778_160 loopBody778_168

def loopBody778_170 : HolLoopProg 64 :=
.mark loopBody778_169

def loopBody778_171 : HolLoopProg 64 :=
.seq loopBody778_158 loopBody778_170

def loopBody778_172 : HolLoopProg 64 :=
.mark loopBody778_171

def loopBody778_173 : HolLoopProg 64 :=
.seq loopBody778_156 loopBody778_172

def loopBody778_174 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.var 8])

def loopBody778_175 : HolLoopProg 64 :=
.mark loopBody778_174

def loopBody778_176 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 13)

def loopBody778_177 : HolLoopProg 64 :=
.mark loopBody778_176

def loopBody778_178 : HolLoopProg 64 :=
.seq loopBody778_177 loopBody778_1

def loopBody778_179 : HolLoopProg 64 :=
.mark loopBody778_178

def loopBody778_180 : HolLoopProg 64 :=
.seq loopBody778_179 loopBody778_1

def loopBody778_181 : HolLoopProg 64 :=
.mark loopBody778_180

def loopBody778_182 : HolLoopProg 64 :=
.seq loopBody778_175 loopBody778_181

def loopBody778_183 : HolLoopProg 64 :=
.mark loopBody778_182

def loopBody778_184 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_183

def loopBody778_185 : HolLoopProg 64 :=
.mark loopBody778_184

def loopBody778_186 : HolLoopProg 64 :=
.seq loopBody778_173 loopBody778_185

def loopBody778_187 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody778_188 : HolLoopProg 64 :=
.mark loopBody778_187

def loopBody778_189 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 7)

def loopBody778_190 : HolLoopProg 64 :=
.mark loopBody778_189

def loopBody778_191 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 840) ([13, 14]) (some (13, loopBody778_79, loopBody778_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody778_192 : HolLoopProg 64 :=
.mark loopBody778_191

def loopBody778_193 : HolLoopProg 64 :=
.seq loopBody778_192 loopBody778_1

def loopBody778_194 : HolLoopProg 64 :=
.mark loopBody778_193

def loopBody778_195 : HolLoopProg 64 :=
.seq loopBody778_190 loopBody778_194

def loopBody778_196 : HolLoopProg 64 :=
.mark loopBody778_195

def loopBody778_197 : HolLoopProg 64 :=
.seq loopBody778_188 loopBody778_196

def loopBody778_198 : HolLoopProg 64 :=
.mark loopBody778_197

def loopBody778_199 : HolLoopProg 64 :=
.seq loopBody778_186 loopBody778_198

def loopBody778_200 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 8])

def loopBody778_201 : HolLoopProg 64 :=
.mark loopBody778_200

def loopBody778_202 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 13)

def loopBody778_203 : HolLoopProg 64 :=
.mark loopBody778_202

def loopBody778_204 : HolLoopProg 64 :=
.seq loopBody778_203 loopBody778_1

def loopBody778_205 : HolLoopProg 64 :=
.mark loopBody778_204

def loopBody778_206 : HolLoopProg 64 :=
.seq loopBody778_205 loopBody778_1

def loopBody778_207 : HolLoopProg 64 :=
.mark loopBody778_206

def loopBody778_208 : HolLoopProg 64 :=
.seq loopBody778_201 loopBody778_207

def loopBody778_209 : HolLoopProg 64 :=
.mark loopBody778_208

def loopBody778_210 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_209

def loopBody778_211 : HolLoopProg 64 :=
.mark loopBody778_210

def loopBody778_212 : HolLoopProg 64 :=
.seq loopBody778_199 loopBody778_211

def loopBody778_213 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 1#64])

def loopBody778_214 : HolLoopProg 64 :=
.mark loopBody778_213

def loopBody778_215 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 13)

def loopBody778_216 : HolLoopProg 64 :=
.mark loopBody778_215

def loopBody778_217 : HolLoopProg 64 :=
.seq loopBody778_216 loopBody778_1

def loopBody778_218 : HolLoopProg 64 :=
.mark loopBody778_217

def loopBody778_219 : HolLoopProg 64 :=
.seq loopBody778_218 loopBody778_1

def loopBody778_220 : HolLoopProg 64 :=
.mark loopBody778_219

def loopBody778_221 : HolLoopProg 64 :=
.seq loopBody778_214 loopBody778_220

def loopBody778_222 : HolLoopProg 64 :=
.mark loopBody778_221

def loopBody778_223 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_222

def loopBody778_224 : HolLoopProg 64 :=
.mark loopBody778_223

def loopBody778_225 : HolLoopProg 64 :=
.seq loopBody778_212 loopBody778_224

def loopBody778_226 : HolLoopProg 64 :=
.seq loopBody778_59 loopBody778_225

def loopBody778_227 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_226

def loopBody778_228 : HolLoopProg 64 :=
.seq loopBody778_57 loopBody778_227

def loopBody778_229 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_228

def loopBody778_230 : HolLoopProg 64 :=
.seq loopBody778_55 loopBody778_229

def loopBody778_231 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_230

def loopBody778_232 : HolLoopProg 64 :=
.seq loopBody778_21 loopBody778_231

def loopBody778_233 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_232

def loopBody778_234 : HolLoopProg 64 :=
.seq loopBody778_53 loopBody778_233

def loopBody778_235 : HolLoopProg 64 :=
.seq loopBody778_41 loopBody778_234

def loopBody778_236 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_235

def loopBody778_237 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_236

def loopBody778_238 : HolLoopProg 64 :=
.seq loopBody778_25 loopBody778_237

def loopBody778_239 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_238

def loopBody778_240 : HolLoopProg 64 :=
.seq loopBody778_23 loopBody778_239

def loopBody778_241 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_240

def loopBody778_242 : HolLoopProg 64 :=
.seq loopBody778_241 loopBody778_119

def loopBody778_243 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody778_242 loopBody778_123 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody778_244 : HolLoopProg 64 :=
.seq loopBody778_243 loopBody778_1

def loopBody778_245 : HolLoopProg 64 :=
.seq loopBody778_21 loopBody778_244

def loopBody778_246 : HolLoopProg 64 :=
.seq loopBody778_19 loopBody778_245

def loopBody778_247 : HolLoopProg 64 :=
.seq loopBody778_13 loopBody778_246

def loopBody778_248 : HolLoopProg 64 :=
.seq loopBody778_11 loopBody778_247

def loopBody778_249 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody778_248 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody778_250 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody778_251 : HolLoopProg 64 :=
.mark loopBody778_250

def loopBody778_252 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody778_253 : HolLoopProg 64 :=
.mark loopBody778_252

def loopBody778_254 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody778_255 : HolLoopProg 64 :=
.mark loopBody778_254

def loopBody778_256 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 840) ([7, 8]) (some (7, loopBody778_255, loopBody778_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))

def loopBody778_257 : HolLoopProg 64 :=
.mark loopBody778_256

def loopBody778_258 : HolLoopProg 64 :=
.seq loopBody778_257 loopBody778_1

def loopBody778_259 : HolLoopProg 64 :=
.mark loopBody778_258

def loopBody778_260 : HolLoopProg 64 :=
.seq loopBody778_253 loopBody778_259

def loopBody778_261 : HolLoopProg 64 :=
.mark loopBody778_260

def loopBody778_262 : HolLoopProg 64 :=
.seq loopBody778_251 loopBody778_261

def loopBody778_263 : HolLoopProg 64 :=
.mark loopBody778_262

def loopBody778_264 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody778_265 : HolLoopProg 64 :=
.mark loopBody778_264

def loopBody778_266 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody778_267 : HolLoopProg 64 :=
.mark loopBody778_266

def loopBody778_268 : HolLoopProg 64 :=
.seq loopBody778_267 loopBody778_1

def loopBody778_269 : HolLoopProg 64 :=
.mark loopBody778_268

def loopBody778_270 : HolLoopProg 64 :=
.seq loopBody778_265 loopBody778_269

def loopBody778_271 : HolLoopProg 64 :=
.mark loopBody778_270

def loopBody778_272 : HolLoopProg 64 :=
.seq loopBody778_263 loopBody778_271

def loopBody778_273 : HolLoopProg 64 :=
.mark loopBody778_272

def loopBody778_274 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_273

def loopBody778_275 : HolLoopProg 64 :=
.mark loopBody778_274

def loopBody778_276 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_275

def loopBody778_277 : HolLoopProg 64 :=
.mark loopBody778_276

def loopBody778_278 : HolLoopProg 64 :=
.seq loopBody778_249 loopBody778_277

def loopBody778_279 : HolLoopProg 64 :=
.seq loopBody778_9 loopBody778_278

def loopBody778_280 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_279

def loopBody778_281 : HolLoopProg 64 :=
.seq loopBody778_7 loopBody778_280

def loopBody778_282 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_281

def loopBody778_283 : HolLoopProg 64 :=
.seq loopBody778_5 loopBody778_282

def loopBody778_284 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_283

def loopBody778_285 : HolLoopProg 64 :=
.seq loopBody778_3 loopBody778_284

def loopBody778_286 : HolLoopProg 64 :=
.seq loopBody778_1 loopBody778_285

def output778 : Nat × List Nat × HolLoopProg 64 :=
  (842, [0, 1], loopBody778_286)
end InitECandidate.Proofs.FrontendStages.Loop
