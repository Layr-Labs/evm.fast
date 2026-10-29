import InitECandidate.Proofs.FrontendStages.Loop.Translate304
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody320_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody320_1 : HolLoopProg 64 :=
.mark loopBody320_0

def loopBody320_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 192#64]))

def loopBody320_3 : HolLoopProg 64 :=
.mark loopBody320_2

def loopBody320_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 200#64]))

def loopBody320_5 : HolLoopProg 64 :=
.mark loopBody320_4

def loopBody320_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody320_7 : HolLoopProg 64 :=
.mark loopBody320_6

def loopBody320_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody320_9 : HolLoopProg 64 :=
.mark loopBody320_8

def loopBody320_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody320_11 : HolLoopProg 64 :=
.mark loopBody320_10

def loopBody320_12 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 383) ([5, 6]) (some (5, loopBody320_11, loopBody320_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody320_13 : HolLoopProg 64 :=
.mark loopBody320_12

def loopBody320_14 : HolLoopProg 64 :=
.seq loopBody320_13 loopBody320_1

def loopBody320_15 : HolLoopProg 64 :=
.mark loopBody320_14

def loopBody320_16 : HolLoopProg 64 :=
.seq loopBody320_9 loopBody320_15

def loopBody320_17 : HolLoopProg 64 :=
.mark loopBody320_16

def loopBody320_18 : HolLoopProg 64 :=
.seq loopBody320_7 loopBody320_17

def loopBody320_19 : HolLoopProg 64 :=
.mark loopBody320_18

def loopBody320_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 2#64))

def loopBody320_21 : HolLoopProg 64 :=
.mark loopBody320_20

def loopBody320_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 152#64]))

def loopBody320_23 : HolLoopProg 64 :=
.mark loopBody320_22

def loopBody320_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 160#64]))

def loopBody320_25 : HolLoopProg 64 :=
.mark loopBody320_24

def loopBody320_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 160#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody320_27 : HolLoopProg 64 :=
.mark loopBody320_26

def loopBody320_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 160#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody320_29 : HolLoopProg 64 :=
.mark loopBody320_28

def loopBody320_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 160#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody320_31 : HolLoopProg 64 :=
.mark loopBody320_30

def loopBody320_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody320_33 : HolLoopProg 64 :=
.mark loopBody320_32

def loopBody320_34 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 102) ([8, 9, 10, 11]) (some (8, loopBody320_33, loopBody320_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody320_35 : HolLoopProg 64 :=
.mark loopBody320_34

def loopBody320_36 : HolLoopProg 64 :=
.seq loopBody320_35 loopBody320_1

def loopBody320_37 : HolLoopProg 64 :=
.mark loopBody320_36

def loopBody320_38 : HolLoopProg 64 :=
.seq loopBody320_31 loopBody320_37

def loopBody320_39 : HolLoopProg 64 :=
.mark loopBody320_38

def loopBody320_40 : HolLoopProg 64 :=
.seq loopBody320_29 loopBody320_39

def loopBody320_41 : HolLoopProg 64 :=
.mark loopBody320_40

def loopBody320_42 : HolLoopProg 64 :=
.seq loopBody320_27 loopBody320_41

def loopBody320_43 : HolLoopProg 64 :=
.mark loopBody320_42

def loopBody320_44 : HolLoopProg 64 :=
.seq loopBody320_25 loopBody320_43

def loopBody320_45 : HolLoopProg 64 :=
.mark loopBody320_44

def loopBody320_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody320_47 : HolLoopProg 64 :=
.mark loopBody320_46

def loopBody320_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody320_49 : HolLoopProg 64 :=
.mark loopBody320_48

def loopBody320_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 6)

def loopBody320_51 : HolLoopProg 64 :=
.mark loopBody320_50

def loopBody320_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody320_53 : HolLoopProg 64 :=
.mark loopBody320_52

def loopBody320_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 1#64)

def loopBody320_55 : HolLoopProg 64 :=
.mark loopBody320_54

def loopBody320_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody320_57 : HolLoopProg 64 :=
.mark loopBody320_56

def loopBody320_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.RegImm.reg 12) loopBody320_55 loopBody320_57 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody320_59 : HolLoopProg 64 :=
.mark loopBody320_58

def loopBody320_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 11)

def loopBody320_61 : HolLoopProg 64 :=
.mark loopBody320_60

def loopBody320_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 12000#64)

def loopBody320_63 : HolLoopProg 64 :=
.mark loopBody320_62

def loopBody320_64 : HolLoopProg 64 :=
.seq loopBody320_63 loopBody320_1

def loopBody320_65 : HolLoopProg 64 :=
.mark loopBody320_64

def loopBody320_66 : HolLoopProg 64 :=
.seq loopBody320_65 loopBody320_1

def loopBody320_67 : HolLoopProg 64 :=
.mark loopBody320_66

def loopBody320_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
    (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr
      (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 31#64])
      (Flapjack.HolLoopExp.const 5#64))
    (Flapjack.HolLoopExp.const 1#64))

def loopBody320_69 : HolLoopProg 64 :=
.mark loopBody320_68

def loopBody320_70 : HolLoopProg 64 :=
.seq loopBody320_69 loopBody320_1

def loopBody320_71 : HolLoopProg 64 :=
.mark loopBody320_70

def loopBody320_72 : HolLoopProg 64 :=
.seq loopBody320_71 loopBody320_1

def loopBody320_73 : HolLoopProg 64 :=
.mark loopBody320_72

def loopBody320_74 : HolLoopProg 64 :=
.seq loopBody320_67 loopBody320_73

def loopBody320_75 : HolLoopProg 64 :=
.mark loopBody320_74

def loopBody320_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 1)

def loopBody320_77 : HolLoopProg 64 :=
.mark loopBody320_76

def loopBody320_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 20#64)

def loopBody320_79 : HolLoopProg 64 :=
.mark loopBody320_78

def loopBody320_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody320_81 : HolLoopProg 64 :=
.mark loopBody320_80

def loopBody320_82 : HolLoopProg 64 :=
.call (some
  ([10],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 79) ([11, 12, 13]) (some (11, loopBody320_81, loopBody320_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody320_83 : HolLoopProg 64 :=
.mark loopBody320_82

def loopBody320_84 : HolLoopProg 64 :=
.seq loopBody320_83 loopBody320_1

def loopBody320_85 : HolLoopProg 64 :=
.mark loopBody320_84

def loopBody320_86 : HolLoopProg 64 :=
.seq loopBody320_79 loopBody320_85

def loopBody320_87 : HolLoopProg 64 :=
.mark loopBody320_86

def loopBody320_88 : HolLoopProg 64 :=
.seq loopBody320_77 loopBody320_87

def loopBody320_89 : HolLoopProg 64 :=
.mark loopBody320_88

def loopBody320_90 : HolLoopProg 64 :=
.seq loopBody320_51 loopBody320_89

def loopBody320_91 : HolLoopProg 64 :=
.mark loopBody320_90

def loopBody320_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody320_93 : HolLoopProg 64 :=
.mark loopBody320_92

def loopBody320_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody320_95 : HolLoopProg 64 :=
.mark loopBody320_94

def loopBody320_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody320_97 : HolLoopProg 64 :=
.mark loopBody320_96

def loopBody320_98 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.RegImm.reg 13) loopBody320_97 loopBody320_53 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody320_99 : HolLoopProg 64 :=
.mark loopBody320_98

def loopBody320_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 12)

def loopBody320_101 : HolLoopProg 64 :=
.mark loopBody320_100

def loopBody320_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 3000#64)

def loopBody320_103 : HolLoopProg 64 :=
.mark loopBody320_102

def loopBody320_104 : HolLoopProg 64 :=
.seq loopBody320_103 loopBody320_1

def loopBody320_105 : HolLoopProg 64 :=
.mark loopBody320_104

def loopBody320_106 : HolLoopProg 64 :=
.seq loopBody320_105 loopBody320_1

def loopBody320_107 : HolLoopProg 64 :=
.mark loopBody320_106

def loopBody320_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 7)

def loopBody320_109 : HolLoopProg 64 :=
.mark loopBody320_108

def loopBody320_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 8, Flapjack.HolLoopExp.const 6000#64])

def loopBody320_111 : HolLoopProg 64 :=
.mark loopBody320_110

def loopBody320_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 11)

def loopBody320_113 : HolLoopProg 64 :=
.mark loopBody320_112

def loopBody320_114 : HolLoopProg 64 :=
.seq loopBody320_113 loopBody320_1

def loopBody320_115 : HolLoopProg 64 :=
.mark loopBody320_114

def loopBody320_116 : HolLoopProg 64 :=
.seq loopBody320_115 loopBody320_1

def loopBody320_117 : HolLoopProg 64 :=
.mark loopBody320_116

def loopBody320_118 : HolLoopProg 64 :=
.seq loopBody320_111 loopBody320_117

def loopBody320_119 : HolLoopProg 64 :=
.mark loopBody320_118

def loopBody320_120 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_119

def loopBody320_121 : HolLoopProg 64 :=
.mark loopBody320_120

def loopBody320_122 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody320_121 loopBody320_1 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody320_123 : HolLoopProg 64 :=
.mark loopBody320_122

def loopBody320_124 : HolLoopProg 64 :=
.seq loopBody320_123 loopBody320_1

def loopBody320_125 : HolLoopProg 64 :=
.mark loopBody320_124

def loopBody320_126 : HolLoopProg 64 :=
.seq loopBody320_101 loopBody320_125

def loopBody320_127 : HolLoopProg 64 :=
.mark loopBody320_126

def loopBody320_128 : HolLoopProg 64 :=
.seq loopBody320_99 loopBody320_127

def loopBody320_129 : HolLoopProg 64 :=
.mark loopBody320_128

def loopBody320_130 : HolLoopProg 64 :=
.seq loopBody320_95 loopBody320_129

def loopBody320_131 : HolLoopProg 64 :=
.mark loopBody320_130

def loopBody320_132 : HolLoopProg 64 :=
.seq loopBody320_109 loopBody320_131

def loopBody320_133 : HolLoopProg 64 :=
.mark loopBody320_132

def loopBody320_134 : HolLoopProg 64 :=
.seq loopBody320_107 loopBody320_133

def loopBody320_135 : HolLoopProg 64 :=
.mark loopBody320_134

def loopBody320_136 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody320_135 loopBody320_1 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody320_137 : HolLoopProg 64 :=
.mark loopBody320_136

def loopBody320_138 : HolLoopProg 64 :=
.seq loopBody320_137 loopBody320_1

def loopBody320_139 : HolLoopProg 64 :=
.mark loopBody320_138

def loopBody320_140 : HolLoopProg 64 :=
.seq loopBody320_101 loopBody320_139

def loopBody320_141 : HolLoopProg 64 :=
.mark loopBody320_140

def loopBody320_142 : HolLoopProg 64 :=
.seq loopBody320_99 loopBody320_141

def loopBody320_143 : HolLoopProg 64 :=
.mark loopBody320_142

def loopBody320_144 : HolLoopProg 64 :=
.seq loopBody320_95 loopBody320_143

def loopBody320_145 : HolLoopProg 64 :=
.mark loopBody320_144

def loopBody320_146 : HolLoopProg 64 :=
.seq loopBody320_93 loopBody320_145

def loopBody320_147 : HolLoopProg 64 :=
.mark loopBody320_146

def loopBody320_148 : HolLoopProg 64 :=
.seq loopBody320_91 loopBody320_147

def loopBody320_149 : HolLoopProg 64 :=
.mark loopBody320_148

def loopBody320_150 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_149

def loopBody320_151 : HolLoopProg 64 :=
.mark loopBody320_150

def loopBody320_152 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_151

def loopBody320_153 : HolLoopProg 64 :=
.mark loopBody320_152

def loopBody320_154 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.imm 0#64) loopBody320_75 loopBody320_153 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody320_155 : HolLoopProg 64 :=
.mark loopBody320_154

def loopBody320_156 : HolLoopProg 64 :=
.seq loopBody320_155 loopBody320_1

def loopBody320_157 : HolLoopProg 64 :=
.mark loopBody320_156

def loopBody320_158 : HolLoopProg 64 :=
.seq loopBody320_61 loopBody320_157

def loopBody320_159 : HolLoopProg 64 :=
.mark loopBody320_158

def loopBody320_160 : HolLoopProg 64 :=
.seq loopBody320_59 loopBody320_159

def loopBody320_161 : HolLoopProg 64 :=
.mark loopBody320_160

def loopBody320_162 : HolLoopProg 64 :=
.seq loopBody320_53 loopBody320_161

def loopBody320_163 : HolLoopProg 64 :=
.mark loopBody320_162

def loopBody320_164 : HolLoopProg 64 :=
.seq loopBody320_51 loopBody320_163

def loopBody320_165 : HolLoopProg 64 :=
.mark loopBody320_164

def loopBody320_166 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody320_167 : HolLoopProg 64 :=
.mark loopBody320_166

def loopBody320_168 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody320_169 : HolLoopProg 64 :=
.mark loopBody320_168

def loopBody320_170 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody320_171 : HolLoopProg 64 :=
.mark loopBody320_170

def loopBody320_172 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 1#64)

def loopBody320_173 : HolLoopProg 64 :=
.mark loopBody320_172

def loopBody320_174 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.reg 14) loopBody320_173 loopBody320_95 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody320_175 : HolLoopProg 64 :=
.mark loopBody320_174

def loopBody320_176 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 13)

def loopBody320_177 : HolLoopProg 64 :=
.mark loopBody320_176

def loopBody320_178 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 208#64]))

def loopBody320_179 : HolLoopProg 64 :=
.mark loopBody320_178

def loopBody320_180 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 216#64]))

def loopBody320_181 : HolLoopProg 64 :=
.mark loopBody320_180

def loopBody320_182 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 14)

def loopBody320_183 : HolLoopProg 64 :=
.mark loopBody320_182

def loopBody320_184 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 13)

def loopBody320_185 : HolLoopProg 64 :=
.mark loopBody320_184

def loopBody320_186 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 1#64)

def loopBody320_187 : HolLoopProg 64 :=
.mark loopBody320_186

def loopBody320_188 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 0#64)

def loopBody320_189 : HolLoopProg 64 :=
.mark loopBody320_188

def loopBody320_190 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.RegImm.reg 17) loopBody320_187 loopBody320_189 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody320_191 : HolLoopProg 64 :=
.mark loopBody320_190

def loopBody320_192 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 16)

def loopBody320_193 : HolLoopProg 64 :=
.mark loopBody320_192

def loopBody320_194 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 14)

def loopBody320_195 : HolLoopProg 64 :=
.mark loopBody320_194

def loopBody320_196 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 24#64)

def loopBody320_197 : HolLoopProg 64 :=
.mark loopBody320_196

def loopBody320_198 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 17 17 15 16)

def loopBody320_199 : HolLoopProg 64 :=
.mark loopBody320_198

def loopBody320_200 : HolLoopProg 64 :=
.seq loopBody320_199 loopBody320_1

def loopBody320_201 : HolLoopProg 64 :=
.mark loopBody320_200

def loopBody320_202 : HolLoopProg 64 :=
.seq loopBody320_197 loopBody320_201

def loopBody320_203 : HolLoopProg 64 :=
.mark loopBody320_202

def loopBody320_204 : HolLoopProg 64 :=
.seq loopBody320_195 loopBody320_203

def loopBody320_205 : HolLoopProg 64 :=
.mark loopBody320_204

def loopBody320_206 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 12, Flapjack.HolLoopExp.var 17, Flapjack.HolLoopExp.const 16#64]))

def loopBody320_207 : HolLoopProg 64 :=
.mark loopBody320_206

def loopBody320_208 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 18)

def loopBody320_209 : HolLoopProg 64 :=
.mark loopBody320_208

def loopBody320_210 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 2100#64, Flapjack.HolLoopExp.const 100#64])

def loopBody320_211 : HolLoopProg 64 :=
.mark loopBody320_210

def loopBody320_212 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 21 21 19 20)

def loopBody320_213 : HolLoopProg 64 :=
.mark loopBody320_212

def loopBody320_214 : HolLoopProg 64 :=
.seq loopBody320_213 loopBody320_1

def loopBody320_215 : HolLoopProg 64 :=
.mark loopBody320_214

def loopBody320_216 : HolLoopProg 64 :=
.seq loopBody320_211 loopBody320_215

def loopBody320_217 : HolLoopProg 64 :=
.mark loopBody320_216

def loopBody320_218 : HolLoopProg 64 :=
.seq loopBody320_209 loopBody320_217

def loopBody320_219 : HolLoopProg 64 :=
.mark loopBody320_218

def loopBody320_220 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 10,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 3000#64, Flapjack.HolLoopExp.const 100#64],
      Flapjack.HolLoopExp.var 21])

def loopBody320_221 : HolLoopProg 64 :=
.mark loopBody320_220

def loopBody320_222 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 22)

def loopBody320_223 : HolLoopProg 64 :=
.mark loopBody320_222

def loopBody320_224 : HolLoopProg 64 :=
.seq loopBody320_223 loopBody320_1

def loopBody320_225 : HolLoopProg 64 :=
.mark loopBody320_224

def loopBody320_226 : HolLoopProg 64 :=
.seq loopBody320_225 loopBody320_1

def loopBody320_227 : HolLoopProg 64 :=
.mark loopBody320_226

def loopBody320_228 : HolLoopProg 64 :=
.seq loopBody320_221 loopBody320_227

def loopBody320_229 : HolLoopProg 64 :=
.mark loopBody320_228

def loopBody320_230 : HolLoopProg 64 :=
.seq loopBody320_219 loopBody320_229

def loopBody320_231 : HolLoopProg 64 :=
.mark loopBody320_230

def loopBody320_232 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 11, Flapjack.HolLoopExp.const 80#64,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 18) (Flapjack.HolLoopExp.const 7#64)])

def loopBody320_233 : HolLoopProg 64 :=
.mark loopBody320_232

def loopBody320_234 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 19)

def loopBody320_235 : HolLoopProg 64 :=
.mark loopBody320_234

def loopBody320_236 : HolLoopProg 64 :=
.seq loopBody320_235 loopBody320_1

def loopBody320_237 : HolLoopProg 64 :=
.mark loopBody320_236

def loopBody320_238 : HolLoopProg 64 :=
.seq loopBody320_237 loopBody320_1

def loopBody320_239 : HolLoopProg 64 :=
.mark loopBody320_238

def loopBody320_240 : HolLoopProg 64 :=
.seq loopBody320_233 loopBody320_239

def loopBody320_241 : HolLoopProg 64 :=
.mark loopBody320_240

def loopBody320_242 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_241

def loopBody320_243 : HolLoopProg 64 :=
.mark loopBody320_242

def loopBody320_244 : HolLoopProg 64 :=
.seq loopBody320_231 loopBody320_243

def loopBody320_245 : HolLoopProg 64 :=
.mark loopBody320_244

def loopBody320_246 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 14, Flapjack.HolLoopExp.const 1#64])

def loopBody320_247 : HolLoopProg 64 :=
.mark loopBody320_246

def loopBody320_248 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 19)

def loopBody320_249 : HolLoopProg 64 :=
.mark loopBody320_248

def loopBody320_250 : HolLoopProg 64 :=
.seq loopBody320_249 loopBody320_1

def loopBody320_251 : HolLoopProg 64 :=
.mark loopBody320_250

def loopBody320_252 : HolLoopProg 64 :=
.seq loopBody320_251 loopBody320_1

def loopBody320_253 : HolLoopProg 64 :=
.mark loopBody320_252

def loopBody320_254 : HolLoopProg 64 :=
.seq loopBody320_247 loopBody320_253

def loopBody320_255 : HolLoopProg 64 :=
.mark loopBody320_254

def loopBody320_256 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_255

def loopBody320_257 : HolLoopProg 64 :=
.mark loopBody320_256

def loopBody320_258 : HolLoopProg 64 :=
.seq loopBody320_245 loopBody320_257

def loopBody320_259 : HolLoopProg 64 :=
.mark loopBody320_258

def loopBody320_260 : HolLoopProg 64 :=
.seq loopBody320_207 loopBody320_259

def loopBody320_261 : HolLoopProg 64 :=
.mark loopBody320_260

def loopBody320_262 : HolLoopProg 64 :=
.seq loopBody320_205 loopBody320_261

def loopBody320_263 : HolLoopProg 64 :=
.mark loopBody320_262

def loopBody320_264 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody320_265 : HolLoopProg 64 :=
.mark loopBody320_264

def loopBody320_266 : HolLoopProg 64 :=
.seq loopBody320_263 loopBody320_265

def loopBody320_267 : HolLoopProg 64 :=
.mark loopBody320_266

def loopBody320_268 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody320_269 : HolLoopProg 64 :=
.mark loopBody320_268

def loopBody320_270 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.RegImm.imm 0#64) loopBody320_267 loopBody320_269 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody320_271 : HolLoopProg 64 :=
.mark loopBody320_270

def loopBody320_272 : HolLoopProg 64 :=
.seq loopBody320_271 loopBody320_1

def loopBody320_273 : HolLoopProg 64 :=
.mark loopBody320_272

def loopBody320_274 : HolLoopProg 64 :=
.seq loopBody320_193 loopBody320_273

def loopBody320_275 : HolLoopProg 64 :=
.mark loopBody320_274

def loopBody320_276 : HolLoopProg 64 :=
.seq loopBody320_191 loopBody320_275

def loopBody320_277 : HolLoopProg 64 :=
.mark loopBody320_276

def loopBody320_278 : HolLoopProg 64 :=
.seq loopBody320_185 loopBody320_277

def loopBody320_279 : HolLoopProg 64 :=
.mark loopBody320_278

def loopBody320_280 : HolLoopProg 64 :=
.seq loopBody320_183 loopBody320_279

def loopBody320_281 : HolLoopProg 64 :=
.mark loopBody320_280

def loopBody320_282 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody320_281 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))

def loopBody320_283 : HolLoopProg 64 :=
.seq loopBody320_171 loopBody320_282

def loopBody320_284 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_283

def loopBody320_285 : HolLoopProg 64 :=
.seq loopBody320_181 loopBody320_284

def loopBody320_286 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_285

def loopBody320_287 : HolLoopProg 64 :=
.seq loopBody320_179 loopBody320_286

def loopBody320_288 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_287

def loopBody320_289 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody320_288 loopBody320_1 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))

def loopBody320_290 : HolLoopProg 64 :=
.seq loopBody320_289 loopBody320_1

def loopBody320_291 : HolLoopProg 64 :=
.seq loopBody320_177 loopBody320_290

def loopBody320_292 : HolLoopProg 64 :=
.seq loopBody320_175 loopBody320_291

def loopBody320_293 : HolLoopProg 64 :=
.seq loopBody320_171 loopBody320_292

def loopBody320_294 : HolLoopProg 64 :=
.seq loopBody320_169 loopBody320_293

def loopBody320_295 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 10,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 11) (Flapjack.HolLoopExp.const 4#64)])

def loopBody320_296 : HolLoopProg 64 :=
.mark loopBody320_295

def loopBody320_297 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 12)

def loopBody320_298 : HolLoopProg 64 :=
.mark loopBody320_297

def loopBody320_299 : HolLoopProg 64 :=
.seq loopBody320_298 loopBody320_1

def loopBody320_300 : HolLoopProg 64 :=
.mark loopBody320_299

def loopBody320_301 : HolLoopProg 64 :=
.seq loopBody320_300 loopBody320_1

def loopBody320_302 : HolLoopProg 64 :=
.mark loopBody320_301

def loopBody320_303 : HolLoopProg 64 :=
.seq loopBody320_296 loopBody320_302

def loopBody320_304 : HolLoopProg 64 :=
.mark loopBody320_303

def loopBody320_305 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_304

def loopBody320_306 : HolLoopProg 64 :=
.mark loopBody320_305

def loopBody320_307 : HolLoopProg 64 :=
.seq loopBody320_294 loopBody320_306

def loopBody320_308 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody320_309 : HolLoopProg 64 :=
.mark loopBody320_308

def loopBody320_310 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 4#64)

def loopBody320_311 : HolLoopProg 64 :=
.mark loopBody320_310

def loopBody320_312 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 1#64)

def loopBody320_313 : HolLoopProg 64 :=
.mark loopBody320_312

def loopBody320_314 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.RegImm.reg 15) loopBody320_313 loopBody320_171 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))

def loopBody320_315 : HolLoopProg 64 :=
.mark loopBody320_314

def loopBody320_316 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 280#64]))

def loopBody320_317 : HolLoopProg 64 :=
.mark loopBody320_316

def loopBody320_318 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 7816#64)

def loopBody320_319 : HolLoopProg 64 :=
.mark loopBody320_318

def loopBody320_320 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 15 15 13 14)

def loopBody320_321 : HolLoopProg 64 :=
.mark loopBody320_320

def loopBody320_322 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 15)

def loopBody320_323 : HolLoopProg 64 :=
.mark loopBody320_322

def loopBody320_324 : HolLoopProg 64 :=
.seq loopBody320_323 loopBody320_1

def loopBody320_325 : HolLoopProg 64 :=
.mark loopBody320_324

def loopBody320_326 : HolLoopProg 64 :=
.seq loopBody320_321 loopBody320_325

def loopBody320_327 : HolLoopProg 64 :=
.mark loopBody320_326

def loopBody320_328 : HolLoopProg 64 :=
.seq loopBody320_319 loopBody320_327

def loopBody320_329 : HolLoopProg 64 :=
.mark loopBody320_328

def loopBody320_330 : HolLoopProg 64 :=
.seq loopBody320_317 loopBody320_329

def loopBody320_331 : HolLoopProg 64 :=
.mark loopBody320_330

def loopBody320_332 : HolLoopProg 64 :=
.seq loopBody320_331 loopBody320_1

def loopBody320_333 : HolLoopProg 64 :=
.mark loopBody320_332

def loopBody320_334 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.RegImm.imm 0#64) loopBody320_333 loopBody320_1 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))

def loopBody320_335 : HolLoopProg 64 :=
.mark loopBody320_334

def loopBody320_336 : HolLoopProg 64 :=
.seq loopBody320_335 loopBody320_1

def loopBody320_337 : HolLoopProg 64 :=
.mark loopBody320_336

def loopBody320_338 : HolLoopProg 64 :=
.seq loopBody320_183 loopBody320_337

def loopBody320_339 : HolLoopProg 64 :=
.mark loopBody320_338

def loopBody320_340 : HolLoopProg 64 :=
.seq loopBody320_315 loopBody320_339

def loopBody320_341 : HolLoopProg 64 :=
.mark loopBody320_340

def loopBody320_342 : HolLoopProg 64 :=
.seq loopBody320_311 loopBody320_341

def loopBody320_343 : HolLoopProg 64 :=
.mark loopBody320_342

def loopBody320_344 : HolLoopProg 64 :=
.seq loopBody320_309 loopBody320_343

def loopBody320_345 : HolLoopProg 64 :=
.mark loopBody320_344

def loopBody320_346 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 2#64))

def loopBody320_347 : HolLoopProg 64 :=
.mark loopBody320_346

def loopBody320_348 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 13, Flapjack.HolLoopExp.var 11])

def loopBody320_349 : HolLoopProg 64 :=
.mark loopBody320_348

def loopBody320_350 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 12000#64, Flapjack.HolLoopExp.var 8])

def loopBody320_351 : HolLoopProg 64 :=
.mark loopBody320_350

def loopBody320_352 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 15, Flapjack.HolLoopExp.var 9, Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 10,
      Flapjack.HolLoopExp.var 12])

def loopBody320_353 : HolLoopProg 64 :=
.mark loopBody320_352

def loopBody320_354 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 14) (Flapjack.HolLoopExp.const 4#64),
      Flapjack.HolLoopExp.var 15])

def loopBody320_355 : HolLoopProg 64 :=
.mark loopBody320_354

def loopBody320_356 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.const 0#64)

def loopBody320_357 : HolLoopProg 64 :=
.mark loopBody320_356

def loopBody320_358 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 17)

def loopBody320_359 : HolLoopProg 64 :=
.mark loopBody320_358

def loopBody320_360 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [18, 19, 20]

def loopBody320_361 : HolLoopProg 64 :=
.mark loopBody320_360

def loopBody320_362 : HolLoopProg 64 :=
.seq loopBody320_361 loopBody320_1

def loopBody320_363 : HolLoopProg 64 :=
.mark loopBody320_362

def loopBody320_364 : HolLoopProg 64 :=
.seq loopBody320_359 loopBody320_363

def loopBody320_365 : HolLoopProg 64 :=
.mark loopBody320_364

def loopBody320_366 : HolLoopProg 64 :=
.seq loopBody320_357 loopBody320_365

def loopBody320_367 : HolLoopProg 64 :=
.mark loopBody320_366

def loopBody320_368 : HolLoopProg 64 :=
.seq loopBody320_193 loopBody320_367

def loopBody320_369 : HolLoopProg 64 :=
.mark loopBody320_368

def loopBody320_370 : HolLoopProg 64 :=
.seq loopBody320_355 loopBody320_369

def loopBody320_371 : HolLoopProg 64 :=
.mark loopBody320_370

def loopBody320_372 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_371

def loopBody320_373 : HolLoopProg 64 :=
.mark loopBody320_372

def loopBody320_374 : HolLoopProg 64 :=
.seq loopBody320_353 loopBody320_373

def loopBody320_375 : HolLoopProg 64 :=
.mark loopBody320_374

def loopBody320_376 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_375

def loopBody320_377 : HolLoopProg 64 :=
.mark loopBody320_376

def loopBody320_378 : HolLoopProg 64 :=
.seq loopBody320_351 loopBody320_377

def loopBody320_379 : HolLoopProg 64 :=
.mark loopBody320_378

def loopBody320_380 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_379

def loopBody320_381 : HolLoopProg 64 :=
.mark loopBody320_380

def loopBody320_382 : HolLoopProg 64 :=
.seq loopBody320_349 loopBody320_381

def loopBody320_383 : HolLoopProg 64 :=
.mark loopBody320_382

def loopBody320_384 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_383

def loopBody320_385 : HolLoopProg 64 :=
.mark loopBody320_384

def loopBody320_386 : HolLoopProg 64 :=
.seq loopBody320_347 loopBody320_385

def loopBody320_387 : HolLoopProg 64 :=
.mark loopBody320_386

def loopBody320_388 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_387

def loopBody320_389 : HolLoopProg 64 :=
.mark loopBody320_388

def loopBody320_390 : HolLoopProg 64 :=
.seq loopBody320_345 loopBody320_389

def loopBody320_391 : HolLoopProg 64 :=
.mark loopBody320_390

def loopBody320_392 : HolLoopProg 64 :=
.seq loopBody320_53 loopBody320_391

def loopBody320_393 : HolLoopProg 64 :=
.mark loopBody320_392

def loopBody320_394 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_393

def loopBody320_395 : HolLoopProg 64 :=
.mark loopBody320_394

def loopBody320_396 : HolLoopProg 64 :=
.seq loopBody320_307 loopBody320_395

def loopBody320_397 : HolLoopProg 64 :=
.seq loopBody320_57 loopBody320_396

def loopBody320_398 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_397

def loopBody320_399 : HolLoopProg 64 :=
.seq loopBody320_167 loopBody320_398

def loopBody320_400 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_399

def loopBody320_401 : HolLoopProg 64 :=
.seq loopBody320_165 loopBody320_400

def loopBody320_402 : HolLoopProg 64 :=
.seq loopBody320_49 loopBody320_401

def loopBody320_403 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_402

def loopBody320_404 : HolLoopProg 64 :=
.seq loopBody320_47 loopBody320_403

def loopBody320_405 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_404

def loopBody320_406 : HolLoopProg 64 :=
.seq loopBody320_45 loopBody320_405

def loopBody320_407 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_406

def loopBody320_408 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_407

def loopBody320_409 : HolLoopProg 64 :=
.seq loopBody320_23 loopBody320_408

def loopBody320_410 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_409

def loopBody320_411 : HolLoopProg 64 :=
.seq loopBody320_21 loopBody320_410

def loopBody320_412 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_411

def loopBody320_413 : HolLoopProg 64 :=
.seq loopBody320_19 loopBody320_412

def loopBody320_414 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_413

def loopBody320_415 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_414

def loopBody320_416 : HolLoopProg 64 :=
.seq loopBody320_5 loopBody320_415

def loopBody320_417 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_416

def loopBody320_418 : HolLoopProg 64 :=
.seq loopBody320_3 loopBody320_417

def loopBody320_419 : HolLoopProg 64 :=
.seq loopBody320_1 loopBody320_418

def output320 : Nat × List Nat × HolLoopProg 64 :=
  (384, [0, 1], loopBody320_419)
end InitECandidate.Proofs.FrontendStages.Loop
