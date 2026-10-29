import InitECandidate.Proofs.FrontendStages.Loop.Translate311
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody327_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody327_1 : HolLoopProg 64 :=
.mark loopBody327_0

def loopBody327_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 16#64]))

def loopBody327_3 : HolLoopProg 64 :=
.mark loopBody327_2

def loopBody327_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody327_5 : HolLoopProg 64 :=
.mark loopBody327_4

def loopBody327_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody327_7 : HolLoopProg 64 :=
.mark loopBody327_6

def loopBody327_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.RegImm.reg 3) loopBody327_5 loopBody327_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody327_9 : HolLoopProg 64 :=
.mark loopBody327_8

def loopBody327_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody327_11 : HolLoopProg 64 :=
.mark loopBody327_10

def loopBody327_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody327_13 : HolLoopProg 64 :=
.mark loopBody327_12

def loopBody327_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 16#64])

def loopBody327_15 : HolLoopProg 64 :=
.mark loopBody327_14

def loopBody327_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 16#64]),
      Flapjack.HolLoopExp.const 1#64])

def loopBody327_17 : HolLoopProg 64 :=
.mark loopBody327_16

def loopBody327_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody327_19 : HolLoopProg 64 :=
.mark loopBody327_18

def loopBody327_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 3

def loopBody327_21 : HolLoopProg 64 :=
.mark loopBody327_20

def loopBody327_22 : HolLoopProg 64 :=
.seq loopBody327_21 loopBody327_13

def loopBody327_23 : HolLoopProg 64 :=
.mark loopBody327_22

def loopBody327_24 : HolLoopProg 64 :=
.seq loopBody327_19 loopBody327_23

def loopBody327_25 : HolLoopProg 64 :=
.mark loopBody327_24

def loopBody327_26 : HolLoopProg 64 :=
.seq loopBody327_25 loopBody327_13

def loopBody327_27 : HolLoopProg 64 :=
.mark loopBody327_26

def loopBody327_28 : HolLoopProg 64 :=
.seq loopBody327_17 loopBody327_27

def loopBody327_29 : HolLoopProg 64 :=
.mark loopBody327_28

def loopBody327_30 : HolLoopProg 64 :=
.seq loopBody327_13 loopBody327_29

def loopBody327_31 : HolLoopProg 64 :=
.mark loopBody327_30

def loopBody327_32 : HolLoopProg 64 :=
.seq loopBody327_15 loopBody327_31

def loopBody327_33 : HolLoopProg 64 :=
.mark loopBody327_32

def loopBody327_34 : HolLoopProg 64 :=
.seq loopBody327_13 loopBody327_33

def loopBody327_35 : HolLoopProg 64 :=
.mark loopBody327_34

def loopBody327_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 200#64]),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 16#64]))
        (Flapjack.HolLoopExp.const 5#64)])

def loopBody327_37 : HolLoopProg 64 :=
.mark loopBody327_36

def loopBody327_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 1))

def loopBody327_39 : HolLoopProg 64 :=
.mark loopBody327_38

def loopBody327_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 8#64]))

def loopBody327_41 : HolLoopProg 64 :=
.mark loopBody327_40

def loopBody327_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 16#64]))

def loopBody327_43 : HolLoopProg 64 :=
.mark loopBody327_42

def loopBody327_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody327_45 : HolLoopProg 64 :=
.mark loopBody327_44

def loopBody327_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody327_47 : HolLoopProg 64 :=
.mark loopBody327_46

def loopBody327_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody327_49 : HolLoopProg 64 :=
.mark loopBody327_48

def loopBody327_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.reg 6) loopBody327_47 loopBody327_49 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody327_51 : HolLoopProg 64 :=
.mark loopBody327_50

def loopBody327_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody327_53 : HolLoopProg 64 :=
.mark loopBody327_52

def loopBody327_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody327_55 : HolLoopProg 64 :=
.mark loopBody327_54

def loopBody327_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody327_57 : HolLoopProg 64 :=
.mark loopBody327_56

def loopBody327_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 24#64]))

def loopBody327_59 : HolLoopProg 64 :=
.mark loopBody327_58

def loopBody327_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody327_61 : HolLoopProg 64 :=
.mark loopBody327_60

def loopBody327_62 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ls PUnit.unit)) (some 192) ([5, 6, 7]) (some (5, loopBody327_61, loopBody327_13, (Flapjack.Spt.ls PUnit.unit)))

def loopBody327_63 : HolLoopProg 64 :=
.mark loopBody327_62

def loopBody327_64 : HolLoopProg 64 :=
.seq loopBody327_63 loopBody327_13

def loopBody327_65 : HolLoopProg 64 :=
.mark loopBody327_64

def loopBody327_66 : HolLoopProg 64 :=
.seq loopBody327_59 loopBody327_65

def loopBody327_67 : HolLoopProg 64 :=
.mark loopBody327_66

def loopBody327_68 : HolLoopProg 64 :=
.seq loopBody327_57 loopBody327_67

def loopBody327_69 : HolLoopProg 64 :=
.mark loopBody327_68

def loopBody327_70 : HolLoopProg 64 :=
.seq loopBody327_55 loopBody327_69

def loopBody327_71 : HolLoopProg 64 :=
.mark loopBody327_70

def loopBody327_72 : HolLoopProg 64 :=
.seq loopBody327_13 loopBody327_71

def loopBody327_73 : HolLoopProg 64 :=
.mark loopBody327_72

def loopBody327_74 : HolLoopProg 64 :=
.seq loopBody327_13 loopBody327_73

def loopBody327_75 : HolLoopProg 64 :=
.mark loopBody327_74

def loopBody327_76 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ls PUnit.unit)) (some 193) ([5, 6]) (some (5, loopBody327_61, loopBody327_13, (Flapjack.Spt.ls PUnit.unit)))

def loopBody327_77 : HolLoopProg 64 :=
.mark loopBody327_76

def loopBody327_78 : HolLoopProg 64 :=
.seq loopBody327_77 loopBody327_13

def loopBody327_79 : HolLoopProg 64 :=
.mark loopBody327_78

def loopBody327_80 : HolLoopProg 64 :=
.seq loopBody327_57 loopBody327_79

def loopBody327_81 : HolLoopProg 64 :=
.mark loopBody327_80

def loopBody327_82 : HolLoopProg 64 :=
.seq loopBody327_55 loopBody327_81

def loopBody327_83 : HolLoopProg 64 :=
.mark loopBody327_82

def loopBody327_84 : HolLoopProg 64 :=
.seq loopBody327_13 loopBody327_83

def loopBody327_85 : HolLoopProg 64 :=
.mark loopBody327_84

def loopBody327_86 : HolLoopProg 64 :=
.seq loopBody327_13 loopBody327_85

def loopBody327_87 : HolLoopProg 64 :=
.mark loopBody327_86

def loopBody327_88 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody327_75 loopBody327_87 (Flapjack.Spt.ls PUnit.unit)

def loopBody327_89 : HolLoopProg 64 :=
.mark loopBody327_88

def loopBody327_90 : HolLoopProg 64 :=
.seq loopBody327_89 loopBody327_13

def loopBody327_91 : HolLoopProg 64 :=
.mark loopBody327_90

def loopBody327_92 : HolLoopProg 64 :=
.seq loopBody327_53 loopBody327_91

def loopBody327_93 : HolLoopProg 64 :=
.mark loopBody327_92

def loopBody327_94 : HolLoopProg 64 :=
.seq loopBody327_51 loopBody327_93

def loopBody327_95 : HolLoopProg 64 :=
.mark loopBody327_94

def loopBody327_96 : HolLoopProg 64 :=
.seq loopBody327_45 loopBody327_95

def loopBody327_97 : HolLoopProg 64 :=
.mark loopBody327_96

def loopBody327_98 : HolLoopProg 64 :=
.seq loopBody327_43 loopBody327_97

def loopBody327_99 : HolLoopProg 64 :=
.mark loopBody327_98

def loopBody327_100 : HolLoopProg 64 :=
.seq loopBody327_41 loopBody327_99

def loopBody327_101 : HolLoopProg 64 :=
.mark loopBody327_100

def loopBody327_102 : HolLoopProg 64 :=
.seq loopBody327_13 loopBody327_101

def loopBody327_103 : HolLoopProg 64 :=
.mark loopBody327_102

def loopBody327_104 : HolLoopProg 64 :=
.seq loopBody327_39 loopBody327_103

def loopBody327_105 : HolLoopProg 64 :=
.mark loopBody327_104

def loopBody327_106 : HolLoopProg 64 :=
.seq loopBody327_13 loopBody327_105

def loopBody327_107 : HolLoopProg 64 :=
.mark loopBody327_106

def loopBody327_108 : HolLoopProg 64 :=
.seq loopBody327_37 loopBody327_107

def loopBody327_109 : HolLoopProg 64 :=
.mark loopBody327_108

def loopBody327_110 : HolLoopProg 64 :=
.seq loopBody327_13 loopBody327_109

def loopBody327_111 : HolLoopProg 64 :=
.mark loopBody327_110

def loopBody327_112 : HolLoopProg 64 :=
.seq loopBody327_35 loopBody327_111

def loopBody327_113 : HolLoopProg 64 :=
.mark loopBody327_112

def loopBody327_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody327_115 : HolLoopProg 64 :=
.mark loopBody327_114

def loopBody327_116 : HolLoopProg 64 :=
.seq loopBody327_113 loopBody327_115

def loopBody327_117 : HolLoopProg 64 :=
.mark loopBody327_116

def loopBody327_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody327_119 : HolLoopProg 64 :=
.mark loopBody327_118

def loopBody327_120 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody327_117 loopBody327_119 (Flapjack.Spt.ls PUnit.unit)

def loopBody327_121 : HolLoopProg 64 :=
.mark loopBody327_120

def loopBody327_122 : HolLoopProg 64 :=
.seq loopBody327_121 loopBody327_13

def loopBody327_123 : HolLoopProg 64 :=
.mark loopBody327_122

def loopBody327_124 : HolLoopProg 64 :=
.seq loopBody327_11 loopBody327_123

def loopBody327_125 : HolLoopProg 64 :=
.mark loopBody327_124

def loopBody327_126 : HolLoopProg 64 :=
.seq loopBody327_9 loopBody327_125

def loopBody327_127 : HolLoopProg 64 :=
.mark loopBody327_126

def loopBody327_128 : HolLoopProg 64 :=
.seq loopBody327_3 loopBody327_127

def loopBody327_129 : HolLoopProg 64 :=
.mark loopBody327_128

def loopBody327_130 : HolLoopProg 64 :=
.seq loopBody327_1 loopBody327_129

def loopBody327_131 : HolLoopProg 64 :=
.mark loopBody327_130

def loopBody327_132 : HolLoopProg 64 :=
.loop (Flapjack.Spt.ls PUnit.unit) loopBody327_131 (Flapjack.Spt.ln)

def loopBody327_133 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody327_134 : HolLoopProg 64 :=
.mark loopBody327_133

def loopBody327_135 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody327_136 : HolLoopProg 64 :=
.mark loopBody327_135

def loopBody327_137 : HolLoopProg 64 :=
.seq loopBody327_136 loopBody327_13

def loopBody327_138 : HolLoopProg 64 :=
.mark loopBody327_137

def loopBody327_139 : HolLoopProg 64 :=
.seq loopBody327_134 loopBody327_138

def loopBody327_140 : HolLoopProg 64 :=
.mark loopBody327_139

def loopBody327_141 : HolLoopProg 64 :=
.seq loopBody327_132 loopBody327_140

def output327 : Nat × List Nat × HolLoopProg 64 :=
  (391, [0], loopBody327_141)
end InitECandidate.Proofs.FrontendStages.Loop
