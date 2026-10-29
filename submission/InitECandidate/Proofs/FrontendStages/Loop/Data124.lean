import InitECandidate.Proofs.FrontendStages.Loop.Translate108
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody124_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody124_1 : HolLoopProg 64 :=
.mark loopBody124_0

def loopBody124_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 72#64]))

def loopBody124_3 : HolLoopProg 64 :=
.mark loopBody124_2

def loopBody124_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody124_5 : HolLoopProg 64 :=
.mark loopBody124_4

def loopBody124_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody124_7 : HolLoopProg 64 :=
.mark loopBody124_6

def loopBody124_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody124_9 : HolLoopProg 64 :=
.mark loopBody124_8

def loopBody124_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody124_11 : HolLoopProg 64 :=
.mark loopBody124_10

def loopBody124_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.reg 4) loopBody124_9 loopBody124_11 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody124_13 : HolLoopProg 64 :=
.mark loopBody124_12

def loopBody124_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody124_15 : HolLoopProg 64 :=
.mark loopBody124_14

def loopBody124_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 40#64]))

def loopBody124_17 : HolLoopProg 64 :=
.mark loopBody124_16

def loopBody124_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 2,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 5#64),
        Flapjack.HolLoopExp.const 0#64]))

def loopBody124_19 : HolLoopProg 64 :=
.mark loopBody124_18

def loopBody124_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 72#64])

def loopBody124_21 : HolLoopProg 64 :=
.mark loopBody124_20

def loopBody124_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody124_23 : HolLoopProg 64 :=
.mark loopBody124_22

def loopBody124_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 4) 6

def loopBody124_25 : HolLoopProg 64 :=
.mark loopBody124_24

def loopBody124_26 : HolLoopProg 64 :=
.seq loopBody124_25 loopBody124_1

def loopBody124_27 : HolLoopProg 64 :=
.mark loopBody124_26

def loopBody124_28 : HolLoopProg 64 :=
.seq loopBody124_23 loopBody124_27

def loopBody124_29 : HolLoopProg 64 :=
.mark loopBody124_28

def loopBody124_30 : HolLoopProg 64 :=
.seq loopBody124_29 loopBody124_1

def loopBody124_31 : HolLoopProg 64 :=
.mark loopBody124_30

def loopBody124_32 : HolLoopProg 64 :=
.seq loopBody124_15 loopBody124_31

def loopBody124_33 : HolLoopProg 64 :=
.mark loopBody124_32

def loopBody124_34 : HolLoopProg 64 :=
.seq loopBody124_1 loopBody124_33

def loopBody124_35 : HolLoopProg 64 :=
.mark loopBody124_34

def loopBody124_36 : HolLoopProg 64 :=
.seq loopBody124_21 loopBody124_35

def loopBody124_37 : HolLoopProg 64 :=
.mark loopBody124_36

def loopBody124_38 : HolLoopProg 64 :=
.seq loopBody124_1 loopBody124_37

def loopBody124_39 : HolLoopProg 64 :=
.mark loopBody124_38

def loopBody124_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody124_41 : HolLoopProg 64 :=
.mark loopBody124_40

def loopBody124_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody124_43 : HolLoopProg 64 :=
.mark loopBody124_42

def loopBody124_44 : HolLoopProg 64 :=
.seq loopBody124_43 loopBody124_1

def loopBody124_45 : HolLoopProg 64 :=
.mark loopBody124_44

def loopBody124_46 : HolLoopProg 64 :=
.seq loopBody124_41 loopBody124_45

def loopBody124_47 : HolLoopProg 64 :=
.mark loopBody124_46

def loopBody124_48 : HolLoopProg 64 :=
.seq loopBody124_39 loopBody124_47

def loopBody124_49 : HolLoopProg 64 :=
.mark loopBody124_48

def loopBody124_50 : HolLoopProg 64 :=
.seq loopBody124_19 loopBody124_49

def loopBody124_51 : HolLoopProg 64 :=
.mark loopBody124_50

def loopBody124_52 : HolLoopProg 64 :=
.seq loopBody124_1 loopBody124_51

def loopBody124_53 : HolLoopProg 64 :=
.mark loopBody124_52

def loopBody124_54 : HolLoopProg 64 :=
.seq loopBody124_17 loopBody124_53

def loopBody124_55 : HolLoopProg 64 :=
.mark loopBody124_54

def loopBody124_56 : HolLoopProg 64 :=
.seq loopBody124_1 loopBody124_55

def loopBody124_57 : HolLoopProg 64 :=
.mark loopBody124_56

def loopBody124_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody124_57 loopBody124_1 (Flapjack.Spt.ls PUnit.unit)

def loopBody124_59 : HolLoopProg 64 :=
.mark loopBody124_58

def loopBody124_60 : HolLoopProg 64 :=
.seq loopBody124_59 loopBody124_1

def loopBody124_61 : HolLoopProg 64 :=
.mark loopBody124_60

def loopBody124_62 : HolLoopProg 64 :=
.seq loopBody124_15 loopBody124_61

def loopBody124_63 : HolLoopProg 64 :=
.mark loopBody124_62

def loopBody124_64 : HolLoopProg 64 :=
.seq loopBody124_13 loopBody124_63

def loopBody124_65 : HolLoopProg 64 :=
.mark loopBody124_64

def loopBody124_66 : HolLoopProg 64 :=
.seq loopBody124_7 loopBody124_65

def loopBody124_67 : HolLoopProg 64 :=
.mark loopBody124_66

def loopBody124_68 : HolLoopProg 64 :=
.seq loopBody124_5 loopBody124_67

def loopBody124_69 : HolLoopProg 64 :=
.mark loopBody124_68

def loopBody124_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 64#64]))

def loopBody124_71 : HolLoopProg 64 :=
.mark loopBody124_70

def loopBody124_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 80#64]))

def loopBody124_73 : HolLoopProg 64 :=
.mark loopBody124_72

def loopBody124_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody124_75 : HolLoopProg 64 :=
.mark loopBody124_74

def loopBody124_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody124_77 : HolLoopProg 64 :=
.mark loopBody124_76

def loopBody124_78 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody124_77 loopBody124_7 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody124_79 : HolLoopProg 64 :=
.mark loopBody124_78

def loopBody124_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody124_81 : HolLoopProg 64 :=
.mark loopBody124_80

def loopBody124_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody124_83 : HolLoopProg 64 :=
.mark loopBody124_82

def loopBody124_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody124_85 : HolLoopProg 64 :=
.mark loopBody124_84

def loopBody124_86 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ls PUnit.unit)) (some 191) ([4]) (some (4, loopBody124_85, loopBody124_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody124_87 : HolLoopProg 64 :=
.mark loopBody124_86

def loopBody124_88 : HolLoopProg 64 :=
.seq loopBody124_87 loopBody124_1

def loopBody124_89 : HolLoopProg 64 :=
.mark loopBody124_88

def loopBody124_90 : HolLoopProg 64 :=
.seq loopBody124_83 loopBody124_89

def loopBody124_91 : HolLoopProg 64 :=
.mark loopBody124_90

def loopBody124_92 : HolLoopProg 64 :=
.seq loopBody124_1 loopBody124_91

def loopBody124_93 : HolLoopProg 64 :=
.mark loopBody124_92

def loopBody124_94 : HolLoopProg 64 :=
.seq loopBody124_1 loopBody124_93

def loopBody124_95 : HolLoopProg 64 :=
.mark loopBody124_94

def loopBody124_96 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody124_95 loopBody124_1 (Flapjack.Spt.ls PUnit.unit)

def loopBody124_97 : HolLoopProg 64 :=
.mark loopBody124_96

def loopBody124_98 : HolLoopProg 64 :=
.seq loopBody124_97 loopBody124_1

def loopBody124_99 : HolLoopProg 64 :=
.mark loopBody124_98

def loopBody124_100 : HolLoopProg 64 :=
.seq loopBody124_81 loopBody124_99

def loopBody124_101 : HolLoopProg 64 :=
.mark loopBody124_100

def loopBody124_102 : HolLoopProg 64 :=
.seq loopBody124_79 loopBody124_101

def loopBody124_103 : HolLoopProg 64 :=
.mark loopBody124_102

def loopBody124_104 : HolLoopProg 64 :=
.seq loopBody124_75 loopBody124_103

def loopBody124_105 : HolLoopProg 64 :=
.mark loopBody124_104

def loopBody124_106 : HolLoopProg 64 :=
.seq loopBody124_73 loopBody124_105

def loopBody124_107 : HolLoopProg 64 :=
.mark loopBody124_106

def loopBody124_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 64#64]))

def loopBody124_109 : HolLoopProg 64 :=
.mark loopBody124_108

def loopBody124_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 64#64])

def loopBody124_111 : HolLoopProg 64 :=
.mark loopBody124_110

def loopBody124_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody124_113 : HolLoopProg 64 :=
.mark loopBody124_112

def loopBody124_114 : HolLoopProg 64 :=
.seq loopBody124_113 loopBody124_31

def loopBody124_115 : HolLoopProg 64 :=
.mark loopBody124_114

def loopBody124_116 : HolLoopProg 64 :=
.seq loopBody124_1 loopBody124_115

def loopBody124_117 : HolLoopProg 64 :=
.mark loopBody124_116

def loopBody124_118 : HolLoopProg 64 :=
.seq loopBody124_111 loopBody124_117

def loopBody124_119 : HolLoopProg 64 :=
.mark loopBody124_118

def loopBody124_120 : HolLoopProg 64 :=
.seq loopBody124_1 loopBody124_119

def loopBody124_121 : HolLoopProg 64 :=
.mark loopBody124_120

def loopBody124_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody124_123 : HolLoopProg 64 :=
.mark loopBody124_122

def loopBody124_124 : HolLoopProg 64 :=
.seq loopBody124_123 loopBody124_45

def loopBody124_125 : HolLoopProg 64 :=
.mark loopBody124_124

def loopBody124_126 : HolLoopProg 64 :=
.seq loopBody124_121 loopBody124_125

def loopBody124_127 : HolLoopProg 64 :=
.mark loopBody124_126

def loopBody124_128 : HolLoopProg 64 :=
.seq loopBody124_109 loopBody124_127

def loopBody124_129 : HolLoopProg 64 :=
.mark loopBody124_128

def loopBody124_130 : HolLoopProg 64 :=
.seq loopBody124_1 loopBody124_129

def loopBody124_131 : HolLoopProg 64 :=
.mark loopBody124_130

def loopBody124_132 : HolLoopProg 64 :=
.seq loopBody124_107 loopBody124_131

def loopBody124_133 : HolLoopProg 64 :=
.mark loopBody124_132

def loopBody124_134 : HolLoopProg 64 :=
.seq loopBody124_71 loopBody124_133

def loopBody124_135 : HolLoopProg 64 :=
.mark loopBody124_134

def loopBody124_136 : HolLoopProg 64 :=
.seq loopBody124_1 loopBody124_135

def loopBody124_137 : HolLoopProg 64 :=
.mark loopBody124_136

def loopBody124_138 : HolLoopProg 64 :=
.seq loopBody124_69 loopBody124_137

def loopBody124_139 : HolLoopProg 64 :=
.mark loopBody124_138

def loopBody124_140 : HolLoopProg 64 :=
.seq loopBody124_3 loopBody124_139

def loopBody124_141 : HolLoopProg 64 :=
.mark loopBody124_140

def loopBody124_142 : HolLoopProg 64 :=
.seq loopBody124_1 loopBody124_141

def loopBody124_143 : HolLoopProg 64 :=
.mark loopBody124_142

def output124 : Nat × List Nat × HolLoopProg 64 :=
  (188, [0], loopBody124_143)
end InitECandidate.Proofs.FrontendStages.Loop
