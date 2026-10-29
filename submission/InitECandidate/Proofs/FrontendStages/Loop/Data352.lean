import InitECandidate.Proofs.FrontendStages.Loop.Translate336
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody352_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody352_1 : HolLoopProg 64 :=
.mark loopBody352_0

def loopBody352_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody352_3 : HolLoopProg 64 :=
.mark loopBody352_2

def loopBody352_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody352_5 : HolLoopProg 64 :=
.mark loopBody352_4

def loopBody352_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody352_7 : HolLoopProg 64 :=
.mark loopBody352_6

def loopBody352_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.RegImm.reg 3) loopBody352_5 loopBody352_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody352_9 : HolLoopProg 64 :=
.mark loopBody352_8

def loopBody352_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody352_11 : HolLoopProg 64 :=
.mark loopBody352_10

def loopBody352_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody352_13 : HolLoopProg 64 :=
.mark loopBody352_12

def loopBody352_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody352_15 : HolLoopProg 64 :=
.mark loopBody352_14

def loopBody352_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody352_17 : HolLoopProg 64 :=
.mark loopBody352_16

def loopBody352_18 : HolLoopProg 64 :=
.seq loopBody352_15 loopBody352_17

def loopBody352_19 : HolLoopProg 64 :=
.mark loopBody352_18

def loopBody352_20 : HolLoopProg 64 :=
.seq loopBody352_13 loopBody352_19

def loopBody352_21 : HolLoopProg 64 :=
.mark loopBody352_20

def loopBody352_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody352_21 loopBody352_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody352_23 : HolLoopProg 64 :=
.mark loopBody352_22

def loopBody352_24 : HolLoopProg 64 :=
.seq loopBody352_23 loopBody352_17

def loopBody352_25 : HolLoopProg 64 :=
.mark loopBody352_24

def loopBody352_26 : HolLoopProg 64 :=
.seq loopBody352_11 loopBody352_25

def loopBody352_27 : HolLoopProg 64 :=
.mark loopBody352_26

def loopBody352_28 : HolLoopProg 64 :=
.seq loopBody352_9 loopBody352_27

def loopBody352_29 : HolLoopProg 64 :=
.mark loopBody352_28

def loopBody352_30 : HolLoopProg 64 :=
.seq loopBody352_3 loopBody352_29

def loopBody352_31 : HolLoopProg 64 :=
.mark loopBody352_30

def loopBody352_32 : HolLoopProg 64 :=
.seq loopBody352_1 loopBody352_31

def loopBody352_33 : HolLoopProg 64 :=
.mark loopBody352_32

def loopBody352_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64]))

def loopBody352_35 : HolLoopProg 64 :=
.mark loopBody352_34

def loopBody352_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 136#64]))

def loopBody352_37 : HolLoopProg 64 :=
.mark loopBody352_36

def loopBody352_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 32#64)

def loopBody352_39 : HolLoopProg 64 :=
.mark loopBody352_38

def loopBody352_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody352_41 : HolLoopProg 64 :=
.mark loopBody352_40

def loopBody352_42 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 79) ([2, 3, 4]) (some (2, loopBody352_41, loopBody352_17, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody352_43 : HolLoopProg 64 :=
.mark loopBody352_42

def loopBody352_44 : HolLoopProg 64 :=
.seq loopBody352_43 loopBody352_17

def loopBody352_45 : HolLoopProg 64 :=
.mark loopBody352_44

def loopBody352_46 : HolLoopProg 64 :=
.seq loopBody352_39 loopBody352_45

def loopBody352_47 : HolLoopProg 64 :=
.mark loopBody352_46

def loopBody352_48 : HolLoopProg 64 :=
.seq loopBody352_37 loopBody352_47

def loopBody352_49 : HolLoopProg 64 :=
.mark loopBody352_48

def loopBody352_50 : HolLoopProg 64 :=
.seq loopBody352_35 loopBody352_49

def loopBody352_51 : HolLoopProg 64 :=
.mark loopBody352_50

def loopBody352_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody352_53 : HolLoopProg 64 :=
.mark loopBody352_52

def loopBody352_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody352_55 : HolLoopProg 64 :=
.mark loopBody352_54

def loopBody352_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody352_57 : HolLoopProg 64 :=
.mark loopBody352_56

def loopBody352_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody352_57 loopBody352_3 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody352_59 : HolLoopProg 64 :=
.mark loopBody352_58

def loopBody352_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody352_61 : HolLoopProg 64 :=
.mark loopBody352_60

def loopBody352_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody352_63 : HolLoopProg 64 :=
.mark loopBody352_62

def loopBody352_64 : HolLoopProg 64 :=
.seq loopBody352_63 loopBody352_17

def loopBody352_65 : HolLoopProg 64 :=
.mark loopBody352_64

def loopBody352_66 : HolLoopProg 64 :=
.seq loopBody352_7 loopBody352_65

def loopBody352_67 : HolLoopProg 64 :=
.mark loopBody352_66

def loopBody352_68 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody352_67 loopBody352_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody352_69 : HolLoopProg 64 :=
.mark loopBody352_68

def loopBody352_70 : HolLoopProg 64 :=
.seq loopBody352_69 loopBody352_17

def loopBody352_71 : HolLoopProg 64 :=
.mark loopBody352_70

def loopBody352_72 : HolLoopProg 64 :=
.seq loopBody352_61 loopBody352_71

def loopBody352_73 : HolLoopProg 64 :=
.mark loopBody352_72

def loopBody352_74 : HolLoopProg 64 :=
.seq loopBody352_59 loopBody352_73

def loopBody352_75 : HolLoopProg 64 :=
.mark loopBody352_74

def loopBody352_76 : HolLoopProg 64 :=
.seq loopBody352_55 loopBody352_75

def loopBody352_77 : HolLoopProg 64 :=
.mark loopBody352_76

def loopBody352_78 : HolLoopProg 64 :=
.seq loopBody352_53 loopBody352_77

def loopBody352_79 : HolLoopProg 64 :=
.mark loopBody352_78

def loopBody352_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody352_81 : HolLoopProg 64 :=
.mark loopBody352_80

def loopBody352_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody352_83 : HolLoopProg 64 :=
.mark loopBody352_82

def loopBody352_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody352_85 : HolLoopProg 64 :=
.mark loopBody352_84

def loopBody352_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody352_87 : HolLoopProg 64 :=
.mark loopBody352_86

def loopBody352_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody352_89 : HolLoopProg 64 :=
.mark loopBody352_88

def loopBody352_90 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 102) ([3, 4, 5, 6]) (some (3, loopBody352_89, loopBody352_17, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody352_91 : HolLoopProg 64 :=
.mark loopBody352_90

def loopBody352_92 : HolLoopProg 64 :=
.seq loopBody352_91 loopBody352_17

def loopBody352_93 : HolLoopProg 64 :=
.mark loopBody352_92

def loopBody352_94 : HolLoopProg 64 :=
.seq loopBody352_87 loopBody352_93

def loopBody352_95 : HolLoopProg 64 :=
.mark loopBody352_94

def loopBody352_96 : HolLoopProg 64 :=
.seq loopBody352_85 loopBody352_95

def loopBody352_97 : HolLoopProg 64 :=
.mark loopBody352_96

def loopBody352_98 : HolLoopProg 64 :=
.seq loopBody352_83 loopBody352_97

def loopBody352_99 : HolLoopProg 64 :=
.mark loopBody352_98

def loopBody352_100 : HolLoopProg 64 :=
.seq loopBody352_81 loopBody352_99

def loopBody352_101 : HolLoopProg 64 :=
.mark loopBody352_100

def loopBody352_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody352_103 : HolLoopProg 64 :=
.mark loopBody352_102

def loopBody352_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody352_105 : HolLoopProg 64 :=
.mark loopBody352_104

def loopBody352_106 : HolLoopProg 64 :=
.seq loopBody352_105 loopBody352_17

def loopBody352_107 : HolLoopProg 64 :=
.mark loopBody352_106

def loopBody352_108 : HolLoopProg 64 :=
.seq loopBody352_103 loopBody352_107

def loopBody352_109 : HolLoopProg 64 :=
.mark loopBody352_108

def loopBody352_110 : HolLoopProg 64 :=
.seq loopBody352_101 loopBody352_109

def loopBody352_111 : HolLoopProg 64 :=
.mark loopBody352_110

def loopBody352_112 : HolLoopProg 64 :=
.seq loopBody352_17 loopBody352_111

def loopBody352_113 : HolLoopProg 64 :=
.mark loopBody352_112

def loopBody352_114 : HolLoopProg 64 :=
.seq loopBody352_17 loopBody352_113

def loopBody352_115 : HolLoopProg 64 :=
.mark loopBody352_114

def loopBody352_116 : HolLoopProg 64 :=
.seq loopBody352_79 loopBody352_115

def loopBody352_117 : HolLoopProg 64 :=
.mark loopBody352_116

def loopBody352_118 : HolLoopProg 64 :=
.seq loopBody352_51 loopBody352_117

def loopBody352_119 : HolLoopProg 64 :=
.mark loopBody352_118

def loopBody352_120 : HolLoopProg 64 :=
.seq loopBody352_17 loopBody352_119

def loopBody352_121 : HolLoopProg 64 :=
.mark loopBody352_120

def loopBody352_122 : HolLoopProg 64 :=
.seq loopBody352_17 loopBody352_121

def loopBody352_123 : HolLoopProg 64 :=
.mark loopBody352_122

def loopBody352_124 : HolLoopProg 64 :=
.seq loopBody352_33 loopBody352_123

def loopBody352_125 : HolLoopProg 64 :=
.mark loopBody352_124

def output352 : Nat × List Nat × HolLoopProg 64 :=
  (416, [0], loopBody352_125)
end InitECandidate.Proofs.FrontendStages.Loop
