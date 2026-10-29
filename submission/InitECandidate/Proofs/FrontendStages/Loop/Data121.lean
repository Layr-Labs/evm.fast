import InitECandidate.Proofs.FrontendStages.Loop.Translate105
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody121_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody121_1 : HolLoopProg 64 :=
.mark loopBody121_0

def loopBody121_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
    (Flapjack.HolLoopExp.load
      (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))
    (Flapjack.HolLoopExp.const 3#64))

def loopBody121_3 : HolLoopProg 64 :=
.mark loopBody121_2

def loopBody121_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 40#64]))

def loopBody121_5 : HolLoopProg 64 :=
.mark loopBody121_4

def loopBody121_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 56#64]))

def loopBody121_7 : HolLoopProg 64 :=
.mark loopBody121_6

def loopBody121_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody121_9 : HolLoopProg 64 :=
.mark loopBody121_8

def loopBody121_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody121_11 : HolLoopProg 64 :=
.mark loopBody121_10

def loopBody121_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody121_13 : HolLoopProg 64 :=
.mark loopBody121_12

def loopBody121_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody121_15 : HolLoopProg 64 :=
.mark loopBody121_14

def loopBody121_16 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody121_13 loopBody121_15 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody121_17 : HolLoopProg 64 :=
.mark loopBody121_16

def loopBody121_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody121_19 : HolLoopProg 64 :=
.mark loopBody121_18

def loopBody121_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 3,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 5#64),
        Flapjack.HolLoopExp.const 24#64]))

def loopBody121_21 : HolLoopProg 64 :=
.mark loopBody121_20

def loopBody121_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody121_23 : HolLoopProg 64 :=
.mark loopBody121_22

def loopBody121_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody121_25 : HolLoopProg 64 :=
.mark loopBody121_24

def loopBody121_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody121_27 : HolLoopProg 64 :=
.mark loopBody121_26

def loopBody121_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody121_27 loopBody121_11 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody121_29 : HolLoopProg 64 :=
.mark loopBody121_28

def loopBody121_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody121_31 : HolLoopProg 64 :=
.mark loopBody121_30

def loopBody121_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody121_33 : HolLoopProg 64 :=
.mark loopBody121_32

def loopBody121_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody121_33 loopBody121_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody121_35 : HolLoopProg 64 :=
.mark loopBody121_34

def loopBody121_36 : HolLoopProg 64 :=
.seq loopBody121_35 loopBody121_1

def loopBody121_37 : HolLoopProg 64 :=
.mark loopBody121_36

def loopBody121_38 : HolLoopProg 64 :=
.seq loopBody121_31 loopBody121_37

def loopBody121_39 : HolLoopProg 64 :=
.mark loopBody121_38

def loopBody121_40 : HolLoopProg 64 :=
.seq loopBody121_29 loopBody121_39

def loopBody121_41 : HolLoopProg 64 :=
.mark loopBody121_40

def loopBody121_42 : HolLoopProg 64 :=
.seq loopBody121_25 loopBody121_41

def loopBody121_43 : HolLoopProg 64 :=
.mark loopBody121_42

def loopBody121_44 : HolLoopProg 64 :=
.seq loopBody121_23 loopBody121_43

def loopBody121_45 : HolLoopProg 64 :=
.mark loopBody121_44

def loopBody121_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 3#64)])

def loopBody121_47 : HolLoopProg 64 :=
.mark loopBody121_46

def loopBody121_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 6 6

def loopBody121_49 : HolLoopProg 64 :=
.mark loopBody121_48

def loopBody121_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 6)
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
          [Flapjack.HolLoopExp.const 7#64,
            Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 7#64]]),
      Flapjack.HolLoopExp.const 1#64])

def loopBody121_51 : HolLoopProg 64 :=
.mark loopBody121_50

def loopBody121_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody121_53 : HolLoopProg 64 :=
.mark loopBody121_52

def loopBody121_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody121_55 : HolLoopProg 64 :=
.mark loopBody121_54

def loopBody121_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody121_57 : HolLoopProg 64 :=
.mark loopBody121_56

def loopBody121_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.RegImm.reg 9) loopBody121_55 loopBody121_57 (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody121_59 : HolLoopProg 64 :=
.mark loopBody121_58

def loopBody121_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody121_61 : HolLoopProg 64 :=
.mark loopBody121_60

def loopBody121_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 3,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 5#64),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody121_63 : HolLoopProg 64 :=
.mark loopBody121_62

def loopBody121_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 6)

def loopBody121_65 : HolLoopProg 64 :=
.mark loopBody121_64

def loopBody121_66 : HolLoopProg 64 :=
.seq loopBody121_65 loopBody121_1

def loopBody121_67 : HolLoopProg 64 :=
.mark loopBody121_66

def loopBody121_68 : HolLoopProg 64 :=
.seq loopBody121_67 loopBody121_1

def loopBody121_69 : HolLoopProg 64 :=
.mark loopBody121_68

def loopBody121_70 : HolLoopProg 64 :=
.seq loopBody121_63 loopBody121_69

def loopBody121_71 : HolLoopProg 64 :=
.mark loopBody121_70

def loopBody121_72 : HolLoopProg 64 :=
.seq loopBody121_1 loopBody121_71

def loopBody121_73 : HolLoopProg 64 :=
.mark loopBody121_72

def loopBody121_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 3,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 5#64),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody121_75 : HolLoopProg 64 :=
.mark loopBody121_74

def loopBody121_76 : HolLoopProg 64 :=
.seq loopBody121_75 loopBody121_69

def loopBody121_77 : HolLoopProg 64 :=
.mark loopBody121_76

def loopBody121_78 : HolLoopProg 64 :=
.seq loopBody121_1 loopBody121_77

def loopBody121_79 : HolLoopProg 64 :=
.mark loopBody121_78

def loopBody121_80 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody121_73 loopBody121_79 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody121_81 : HolLoopProg 64 :=
.mark loopBody121_80

def loopBody121_82 : HolLoopProg 64 :=
.seq loopBody121_81 loopBody121_1

def loopBody121_83 : HolLoopProg 64 :=
.mark loopBody121_82

def loopBody121_84 : HolLoopProg 64 :=
.seq loopBody121_61 loopBody121_83

def loopBody121_85 : HolLoopProg 64 :=
.mark loopBody121_84

def loopBody121_86 : HolLoopProg 64 :=
.seq loopBody121_59 loopBody121_85

def loopBody121_87 : HolLoopProg 64 :=
.mark loopBody121_86

def loopBody121_88 : HolLoopProg 64 :=
.seq loopBody121_53 loopBody121_87

def loopBody121_89 : HolLoopProg 64 :=
.mark loopBody121_88

def loopBody121_90 : HolLoopProg 64 :=
.seq loopBody121_51 loopBody121_89

def loopBody121_91 : HolLoopProg 64 :=
.mark loopBody121_90

def loopBody121_92 : HolLoopProg 64 :=
.seq loopBody121_49 loopBody121_91

def loopBody121_93 : HolLoopProg 64 :=
.mark loopBody121_92

def loopBody121_94 : HolLoopProg 64 :=
.seq loopBody121_47 loopBody121_93

def loopBody121_95 : HolLoopProg 64 :=
.mark loopBody121_94

def loopBody121_96 : HolLoopProg 64 :=
.seq loopBody121_45 loopBody121_95

def loopBody121_97 : HolLoopProg 64 :=
.mark loopBody121_96

def loopBody121_98 : HolLoopProg 64 :=
.seq loopBody121_21 loopBody121_97

def loopBody121_99 : HolLoopProg 64 :=
.mark loopBody121_98

def loopBody121_100 : HolLoopProg 64 :=
.seq loopBody121_1 loopBody121_99

def loopBody121_101 : HolLoopProg 64 :=
.mark loopBody121_100

def loopBody121_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody121_103 : HolLoopProg 64 :=
.mark loopBody121_102

def loopBody121_104 : HolLoopProg 64 :=
.seq loopBody121_101 loopBody121_103

def loopBody121_105 : HolLoopProg 64 :=
.mark loopBody121_104

def loopBody121_106 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody121_105 loopBody121_33 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody121_107 : HolLoopProg 64 :=
.mark loopBody121_106

def loopBody121_108 : HolLoopProg 64 :=
.seq loopBody121_107 loopBody121_1

def loopBody121_109 : HolLoopProg 64 :=
.mark loopBody121_108

def loopBody121_110 : HolLoopProg 64 :=
.seq loopBody121_19 loopBody121_109

def loopBody121_111 : HolLoopProg 64 :=
.mark loopBody121_110

def loopBody121_112 : HolLoopProg 64 :=
.seq loopBody121_17 loopBody121_111

def loopBody121_113 : HolLoopProg 64 :=
.mark loopBody121_112

def loopBody121_114 : HolLoopProg 64 :=
.seq loopBody121_11 loopBody121_113

def loopBody121_115 : HolLoopProg 64 :=
.mark loopBody121_114

def loopBody121_116 : HolLoopProg 64 :=
.seq loopBody121_9 loopBody121_115

def loopBody121_117 : HolLoopProg 64 :=
.mark loopBody121_116

def loopBody121_118 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody121_117 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody121_119 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody121_120 : HolLoopProg 64 :=
.mark loopBody121_119

def loopBody121_121 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody121_122 : HolLoopProg 64 :=
.mark loopBody121_121

def loopBody121_123 : HolLoopProg 64 :=
.seq loopBody121_122 loopBody121_1

def loopBody121_124 : HolLoopProg 64 :=
.mark loopBody121_123

def loopBody121_125 : HolLoopProg 64 :=
.seq loopBody121_120 loopBody121_124

def loopBody121_126 : HolLoopProg 64 :=
.mark loopBody121_125

def loopBody121_127 : HolLoopProg 64 :=
.seq loopBody121_118 loopBody121_126

def loopBody121_128 : HolLoopProg 64 :=
.seq loopBody121_7 loopBody121_127

def loopBody121_129 : HolLoopProg 64 :=
.seq loopBody121_1 loopBody121_128

def loopBody121_130 : HolLoopProg 64 :=
.seq loopBody121_5 loopBody121_129

def loopBody121_131 : HolLoopProg 64 :=
.seq loopBody121_1 loopBody121_130

def loopBody121_132 : HolLoopProg 64 :=
.seq loopBody121_3 loopBody121_131

def loopBody121_133 : HolLoopProg 64 :=
.seq loopBody121_1 loopBody121_132

def output121 : Nat × List Nat × HolLoopProg 64 :=
  (185, [0, 1], loopBody121_133)
end InitECandidate.Proofs.FrontendStages.Loop
