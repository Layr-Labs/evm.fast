import InitECandidate.Proofs.FrontendStages.Loop.Translate704
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody720_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody720_1 : HolLoopProg 64 :=
.mark loopBody720_0

def loopBody720_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody720_3 : HolLoopProg 64 :=
.mark loopBody720_2

def loopBody720_4 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 69) ([]) (some (5, loopBody720_3, loopBody720_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody720_5 : HolLoopProg 64 :=
.mark loopBody720_4

def loopBody720_6 : HolLoopProg 64 :=
.seq loopBody720_5 loopBody720_1

def loopBody720_7 : HolLoopProg 64 :=
.mark loopBody720_6

def loopBody720_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 288#64)

def loopBody720_9 : HolLoopProg 64 :=
.mark loopBody720_8

def loopBody720_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody720_11 : HolLoopProg 64 :=
.mark loopBody720_10

def loopBody720_12 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([6]) (some (6, loopBody720_11, loopBody720_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody720_13 : HolLoopProg 64 :=
.mark loopBody720_12

def loopBody720_14 : HolLoopProg 64 :=
.seq loopBody720_13 loopBody720_1

def loopBody720_15 : HolLoopProg 64 :=
.mark loopBody720_14

def loopBody720_16 : HolLoopProg 64 :=
.seq loopBody720_9 loopBody720_15

def loopBody720_17 : HolLoopProg 64 :=
.mark loopBody720_16

def loopBody720_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody720_19 : HolLoopProg 64 :=
.mark loopBody720_18

def loopBody720_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody720_21 : HolLoopProg 64 :=
.mark loopBody720_20

def loopBody720_22 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 778) ([7]) (some (7, loopBody720_21, loopBody720_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody720_23 : HolLoopProg 64 :=
.mark loopBody720_22

def loopBody720_24 : HolLoopProg 64 :=
.seq loopBody720_23 loopBody720_1

def loopBody720_25 : HolLoopProg 64 :=
.mark loopBody720_24

def loopBody720_26 : HolLoopProg 64 :=
.seq loopBody720_19 loopBody720_25

def loopBody720_27 : HolLoopProg 64 :=
.mark loopBody720_26

def loopBody720_28 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_27

def loopBody720_29 : HolLoopProg 64 :=
.mark loopBody720_28

def loopBody720_30 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_29

def loopBody720_31 : HolLoopProg 64 :=
.mark loopBody720_30

def loopBody720_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 6#64))

def loopBody720_33 : HolLoopProg 64 :=
.mark loopBody720_32

def loopBody720_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody720_35 : HolLoopProg 64 :=
.mark loopBody720_34

def loopBody720_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody720_37 : HolLoopProg 64 :=
.mark loopBody720_36

def loopBody720_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody720_39 : HolLoopProg 64 :=
.mark loopBody720_38

def loopBody720_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody720_41 : HolLoopProg 64 :=
.mark loopBody720_40

def loopBody720_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.RegImm.reg 10) loopBody720_41 loopBody720_37 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody720_43 : HolLoopProg 64 :=
.mark loopBody720_42

def loopBody720_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody720_45 : HolLoopProg 64 :=
.mark loopBody720_44

def loopBody720_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 1#64])

def loopBody720_47 : HolLoopProg 64 :=
.mark loopBody720_46

def loopBody720_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 8)

def loopBody720_49 : HolLoopProg 64 :=
.mark loopBody720_48

def loopBody720_50 : HolLoopProg 64 :=
.seq loopBody720_49 loopBody720_1

def loopBody720_51 : HolLoopProg 64 :=
.mark loopBody720_50

def loopBody720_52 : HolLoopProg 64 :=
.seq loopBody720_51 loopBody720_1

def loopBody720_53 : HolLoopProg 64 :=
.mark loopBody720_52

def loopBody720_54 : HolLoopProg 64 :=
.seq loopBody720_47 loopBody720_53

def loopBody720_55 : HolLoopProg 64 :=
.mark loopBody720_54

def loopBody720_56 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_55

def loopBody720_57 : HolLoopProg 64 :=
.mark loopBody720_56

def loopBody720_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody720_59 : HolLoopProg 64 :=
.mark loopBody720_58

def loopBody720_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody720_61 : HolLoopProg 64 :=
.mark loopBody720_60

def loopBody720_62 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 9 (Flapjack.RegImm.reg 10) loopBody720_41 loopBody720_37 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody720_63 : HolLoopProg 64 :=
.mark loopBody720_62

def loopBody720_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody720_65 : HolLoopProg 64 :=
.mark loopBody720_64

def loopBody720_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody720_67 : HolLoopProg 64 :=
.mark loopBody720_66

def loopBody720_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody720_69 : HolLoopProg 64 :=
.mark loopBody720_68

def loopBody720_70 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 782) ([9, 10]) (some (9, loopBody720_69, loopBody720_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody720_71 : HolLoopProg 64 :=
.mark loopBody720_70

def loopBody720_72 : HolLoopProg 64 :=
.seq loopBody720_71 loopBody720_1

def loopBody720_73 : HolLoopProg 64 :=
.mark loopBody720_72

def loopBody720_74 : HolLoopProg 64 :=
.seq loopBody720_67 loopBody720_73

def loopBody720_75 : HolLoopProg 64 :=
.mark loopBody720_74

def loopBody720_76 : HolLoopProg 64 :=
.seq loopBody720_65 loopBody720_75

def loopBody720_77 : HolLoopProg 64 :=
.mark loopBody720_76

def loopBody720_78 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_77

def loopBody720_79 : HolLoopProg 64 :=
.mark loopBody720_78

def loopBody720_80 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_79

def loopBody720_81 : HolLoopProg 64 :=
.mark loopBody720_80

def loopBody720_82 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody720_81 loopBody720_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody720_83 : HolLoopProg 64 :=
.mark loopBody720_82

def loopBody720_84 : HolLoopProg 64 :=
.seq loopBody720_83 loopBody720_1

def loopBody720_85 : HolLoopProg 64 :=
.mark loopBody720_84

def loopBody720_86 : HolLoopProg 64 :=
.seq loopBody720_45 loopBody720_85

def loopBody720_87 : HolLoopProg 64 :=
.mark loopBody720_86

def loopBody720_88 : HolLoopProg 64 :=
.seq loopBody720_63 loopBody720_87

def loopBody720_89 : HolLoopProg 64 :=
.mark loopBody720_88

def loopBody720_90 : HolLoopProg 64 :=
.seq loopBody720_61 loopBody720_89

def loopBody720_91 : HolLoopProg 64 :=
.mark loopBody720_90

def loopBody720_92 : HolLoopProg 64 :=
.seq loopBody720_59 loopBody720_91

def loopBody720_93 : HolLoopProg 64 :=
.mark loopBody720_92

def loopBody720_94 : HolLoopProg 64 :=
.seq loopBody720_57 loopBody720_93

def loopBody720_95 : HolLoopProg 64 :=
.mark loopBody720_94

def loopBody720_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr
        (Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.var 2,
              Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
                (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 6)
                  (Flapjack.HolLoopExp.const 6#64))
                (Flapjack.HolLoopExp.const 3#64)]))
        (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 63#64]),
      Flapjack.HolLoopExp.const 1#64])

def loopBody720_97 : HolLoopProg 64 :=
.mark loopBody720_96

def loopBody720_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody720_99 : HolLoopProg 64 :=
.mark loopBody720_98

def loopBody720_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 1#64)

def loopBody720_101 : HolLoopProg 64 :=
.mark loopBody720_100

def loopBody720_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody720_103 : HolLoopProg 64 :=
.mark loopBody720_102

def loopBody720_104 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.RegImm.reg 11) loopBody720_61 loopBody720_103 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody720_105 : HolLoopProg 64 :=
.mark loopBody720_104

def loopBody720_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody720_107 : HolLoopProg 64 :=
.mark loopBody720_106

def loopBody720_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody720_109 : HolLoopProg 64 :=
.mark loopBody720_108

def loopBody720_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 1)

def loopBody720_111 : HolLoopProg 64 :=
.mark loopBody720_110

def loopBody720_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody720_113 : HolLoopProg 64 :=
.mark loopBody720_112

def loopBody720_114 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 783) ([10, 11, 12]) (some (10, loopBody720_113, loopBody720_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody720_115 : HolLoopProg 64 :=
.mark loopBody720_114

def loopBody720_116 : HolLoopProg 64 :=
.seq loopBody720_115 loopBody720_1

def loopBody720_117 : HolLoopProg 64 :=
.mark loopBody720_116

def loopBody720_118 : HolLoopProg 64 :=
.seq loopBody720_111 loopBody720_117

def loopBody720_119 : HolLoopProg 64 :=
.mark loopBody720_118

def loopBody720_120 : HolLoopProg 64 :=
.seq loopBody720_109 loopBody720_119

def loopBody720_121 : HolLoopProg 64 :=
.mark loopBody720_120

def loopBody720_122 : HolLoopProg 64 :=
.seq loopBody720_67 loopBody720_121

def loopBody720_123 : HolLoopProg 64 :=
.mark loopBody720_122

def loopBody720_124 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_123

def loopBody720_125 : HolLoopProg 64 :=
.mark loopBody720_124

def loopBody720_126 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_125

def loopBody720_127 : HolLoopProg 64 :=
.mark loopBody720_126

def loopBody720_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody720_129 : HolLoopProg 64 :=
.mark loopBody720_128

def loopBody720_130 : HolLoopProg 64 :=
.seq loopBody720_129 loopBody720_1

def loopBody720_131 : HolLoopProg 64 :=
.mark loopBody720_130

def loopBody720_132 : HolLoopProg 64 :=
.seq loopBody720_131 loopBody720_1

def loopBody720_133 : HolLoopProg 64 :=
.mark loopBody720_132

def loopBody720_134 : HolLoopProg 64 :=
.seq loopBody720_127 loopBody720_133

def loopBody720_135 : HolLoopProg 64 :=
.mark loopBody720_134

def loopBody720_136 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody720_135 loopBody720_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody720_137 : HolLoopProg 64 :=
.mark loopBody720_136

def loopBody720_138 : HolLoopProg 64 :=
.seq loopBody720_137 loopBody720_1

def loopBody720_139 : HolLoopProg 64 :=
.mark loopBody720_138

def loopBody720_140 : HolLoopProg 64 :=
.seq loopBody720_107 loopBody720_139

def loopBody720_141 : HolLoopProg 64 :=
.mark loopBody720_140

def loopBody720_142 : HolLoopProg 64 :=
.seq loopBody720_105 loopBody720_141

def loopBody720_143 : HolLoopProg 64 :=
.mark loopBody720_142

def loopBody720_144 : HolLoopProg 64 :=
.seq loopBody720_101 loopBody720_143

def loopBody720_145 : HolLoopProg 64 :=
.mark loopBody720_144

def loopBody720_146 : HolLoopProg 64 :=
.seq loopBody720_99 loopBody720_145

def loopBody720_147 : HolLoopProg 64 :=
.mark loopBody720_146

def loopBody720_148 : HolLoopProg 64 :=
.seq loopBody720_97 loopBody720_147

def loopBody720_149 : HolLoopProg 64 :=
.mark loopBody720_148

def loopBody720_150 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_149

def loopBody720_151 : HolLoopProg 64 :=
.mark loopBody720_150

def loopBody720_152 : HolLoopProg 64 :=
.seq loopBody720_95 loopBody720_151

def loopBody720_153 : HolLoopProg 64 :=
.mark loopBody720_152

def loopBody720_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody720_155 : HolLoopProg 64 :=
.mark loopBody720_154

def loopBody720_156 : HolLoopProg 64 :=
.seq loopBody720_153 loopBody720_155

def loopBody720_157 : HolLoopProg 64 :=
.mark loopBody720_156

def loopBody720_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody720_159 : HolLoopProg 64 :=
.mark loopBody720_158

def loopBody720_160 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody720_157 loopBody720_159 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody720_161 : HolLoopProg 64 :=
.mark loopBody720_160

def loopBody720_162 : HolLoopProg 64 :=
.seq loopBody720_161 loopBody720_1

def loopBody720_163 : HolLoopProg 64 :=
.mark loopBody720_162

def loopBody720_164 : HolLoopProg 64 :=
.seq loopBody720_45 loopBody720_163

def loopBody720_165 : HolLoopProg 64 :=
.mark loopBody720_164

def loopBody720_166 : HolLoopProg 64 :=
.seq loopBody720_43 loopBody720_165

def loopBody720_167 : HolLoopProg 64 :=
.mark loopBody720_166

def loopBody720_168 : HolLoopProg 64 :=
.seq loopBody720_39 loopBody720_167

def loopBody720_169 : HolLoopProg 64 :=
.mark loopBody720_168

def loopBody720_170 : HolLoopProg 64 :=
.seq loopBody720_37 loopBody720_169

def loopBody720_171 : HolLoopProg 64 :=
.mark loopBody720_170

def loopBody720_172 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody720_171 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody720_173 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody720_174 : HolLoopProg 64 :=
.mark loopBody720_173

def loopBody720_175 : HolLoopProg 64 :=
.call (some ([8], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 780) ([9, 10]) (some (9, loopBody720_69, loopBody720_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody720_176 : HolLoopProg 64 :=
.mark loopBody720_175

def loopBody720_177 : HolLoopProg 64 :=
.seq loopBody720_176 loopBody720_1

def loopBody720_178 : HolLoopProg 64 :=
.mark loopBody720_177

def loopBody720_179 : HolLoopProg 64 :=
.seq loopBody720_67 loopBody720_178

def loopBody720_180 : HolLoopProg 64 :=
.mark loopBody720_179

def loopBody720_181 : HolLoopProg 64 :=
.seq loopBody720_174 loopBody720_180

def loopBody720_182 : HolLoopProg 64 :=
.mark loopBody720_181

def loopBody720_183 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_182

def loopBody720_184 : HolLoopProg 64 :=
.mark loopBody720_183

def loopBody720_185 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_184

def loopBody720_186 : HolLoopProg 64 :=
.mark loopBody720_185

def loopBody720_187 : HolLoopProg 64 :=
.seq loopBody720_172 loopBody720_186

def loopBody720_188 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody720_189 : HolLoopProg 64 :=
.mark loopBody720_188

def loopBody720_190 : HolLoopProg 64 :=
.call (some ([8], Flapjack.Spt.ln)) (some 70) ([9]) (some (9, loopBody720_69, loopBody720_1, (Flapjack.Spt.ln)))

def loopBody720_191 : HolLoopProg 64 :=
.mark loopBody720_190

def loopBody720_192 : HolLoopProg 64 :=
.seq loopBody720_191 loopBody720_1

def loopBody720_193 : HolLoopProg 64 :=
.mark loopBody720_192

def loopBody720_194 : HolLoopProg 64 :=
.seq loopBody720_189 loopBody720_193

def loopBody720_195 : HolLoopProg 64 :=
.mark loopBody720_194

def loopBody720_196 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_195

def loopBody720_197 : HolLoopProg 64 :=
.mark loopBody720_196

def loopBody720_198 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_197

def loopBody720_199 : HolLoopProg 64 :=
.mark loopBody720_198

def loopBody720_200 : HolLoopProg 64 :=
.seq loopBody720_187 loopBody720_199

def loopBody720_201 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody720_202 : HolLoopProg 64 :=
.mark loopBody720_201

def loopBody720_203 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody720_204 : HolLoopProg 64 :=
.mark loopBody720_203

def loopBody720_205 : HolLoopProg 64 :=
.seq loopBody720_204 loopBody720_1

def loopBody720_206 : HolLoopProg 64 :=
.mark loopBody720_205

def loopBody720_207 : HolLoopProg 64 :=
.seq loopBody720_202 loopBody720_206

def loopBody720_208 : HolLoopProg 64 :=
.mark loopBody720_207

def loopBody720_209 : HolLoopProg 64 :=
.seq loopBody720_200 loopBody720_208

def loopBody720_210 : HolLoopProg 64 :=
.seq loopBody720_35 loopBody720_209

def loopBody720_211 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_210

def loopBody720_212 : HolLoopProg 64 :=
.seq loopBody720_33 loopBody720_211

def loopBody720_213 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_212

def loopBody720_214 : HolLoopProg 64 :=
.seq loopBody720_31 loopBody720_213

def loopBody720_215 : HolLoopProg 64 :=
.seq loopBody720_17 loopBody720_214

def loopBody720_216 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_215

def loopBody720_217 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_216

def loopBody720_218 : HolLoopProg 64 :=
.seq loopBody720_7 loopBody720_217

def loopBody720_219 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_218

def loopBody720_220 : HolLoopProg 64 :=
.seq loopBody720_1 loopBody720_219

def output720 : Nat × List Nat × HolLoopProg 64 :=
  (784, [0, 1, 2, 3], loopBody720_220)
end InitECandidate.Proofs.FrontendStages.Loop
