import InitECandidate.Proofs.FrontendStages.Loop.Translate260
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody276_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody276_1 : HolLoopProg 64 :=
.mark loopBody276_0

def loopBody276_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 4#64)]))

def loopBody276_3 : HolLoopProg 64 :=
.mark loopBody276_2

def loopBody276_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 4#64),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody276_5 : HolLoopProg 64 :=
.mark loopBody276_4

def loopBody276_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody276_7 : HolLoopProg 64 :=
.mark loopBody276_6

def loopBody276_8 : HolLoopProg 64 :=
.call (some ([2, 3, 4, 5], Flapjack.Spt.ln)) (some 161) ([6, 7]) (some (6, loopBody276_7, loopBody276_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody276_9 : HolLoopProg 64 :=
.mark loopBody276_8

def loopBody276_10 : HolLoopProg 64 :=
.seq loopBody276_9 loopBody276_1

def loopBody276_11 : HolLoopProg 64 :=
.mark loopBody276_10

def loopBody276_12 : HolLoopProg 64 :=
.seq loopBody276_5 loopBody276_11

def loopBody276_13 : HolLoopProg 64 :=
.mark loopBody276_12

def loopBody276_14 : HolLoopProg 64 :=
.seq loopBody276_3 loopBody276_13

def loopBody276_15 : HolLoopProg 64 :=
.mark loopBody276_14

def loopBody276_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody276_17 : HolLoopProg 64 :=
.mark loopBody276_16

def loopBody276_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody276_19 : HolLoopProg 64 :=
.mark loopBody276_18

def loopBody276_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody276_21 : HolLoopProg 64 :=
.mark loopBody276_20

def loopBody276_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody276_23 : HolLoopProg 64 :=
.mark loopBody276_22

def loopBody276_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.reg 8) loopBody276_21 loopBody276_23 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody276_25 : HolLoopProg 64 :=
.mark loopBody276_24

def loopBody276_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody276_27 : HolLoopProg 64 :=
.mark loopBody276_26

def loopBody276_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 17#64)

def loopBody276_29 : HolLoopProg 64 :=
.mark loopBody276_28

def loopBody276_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 6)

def loopBody276_31 : HolLoopProg 64 :=
.mark loopBody276_30

def loopBody276_32 : HolLoopProg 64 :=
.seq loopBody276_31 loopBody276_1

def loopBody276_33 : HolLoopProg 64 :=
.mark loopBody276_32

def loopBody276_34 : HolLoopProg 64 :=
.seq loopBody276_33 loopBody276_1

def loopBody276_35 : HolLoopProg 64 :=
.mark loopBody276_34

def loopBody276_36 : HolLoopProg 64 :=
.seq loopBody276_29 loopBody276_35

def loopBody276_37 : HolLoopProg 64 :=
.mark loopBody276_36

def loopBody276_38 : HolLoopProg 64 :=
.seq loopBody276_1 loopBody276_37

def loopBody276_39 : HolLoopProg 64 :=
.mark loopBody276_38

def loopBody276_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 6#64)

def loopBody276_41 : HolLoopProg 64 :=
.mark loopBody276_40

def loopBody276_42 : HolLoopProg 64 :=
.seq loopBody276_41 loopBody276_7

def loopBody276_43 : HolLoopProg 64 :=
.mark loopBody276_42

def loopBody276_44 : HolLoopProg 64 :=
.seq loopBody276_39 loopBody276_43

def loopBody276_45 : HolLoopProg 64 :=
.mark loopBody276_44

def loopBody276_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody276_45 loopBody276_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody276_47 : HolLoopProg 64 :=
.mark loopBody276_46

def loopBody276_48 : HolLoopProg 64 :=
.seq loopBody276_47 loopBody276_1

def loopBody276_49 : HolLoopProg 64 :=
.mark loopBody276_48

def loopBody276_50 : HolLoopProg 64 :=
.seq loopBody276_27 loopBody276_49

def loopBody276_51 : HolLoopProg 64 :=
.mark loopBody276_50

def loopBody276_52 : HolLoopProg 64 :=
.seq loopBody276_25 loopBody276_51

def loopBody276_53 : HolLoopProg 64 :=
.mark loopBody276_52

def loopBody276_54 : HolLoopProg 64 :=
.seq loopBody276_19 loopBody276_53

def loopBody276_55 : HolLoopProg 64 :=
.mark loopBody276_54

def loopBody276_56 : HolLoopProg 64 :=
.seq loopBody276_17 loopBody276_55

def loopBody276_57 : HolLoopProg 64 :=
.mark loopBody276_56

def loopBody276_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody276_59 : HolLoopProg 64 :=
.mark loopBody276_58

def loopBody276_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody276_21 loopBody276_23 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody276_61 : HolLoopProg 64 :=
.mark loopBody276_60

def loopBody276_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody276_63 : HolLoopProg 64 :=
.mark loopBody276_62

def loopBody276_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody276_65 : HolLoopProg 64 :=
.mark loopBody276_64

def loopBody276_66 : HolLoopProg 64 :=
.seq loopBody276_65 loopBody276_1

def loopBody276_67 : HolLoopProg 64 :=
.mark loopBody276_66

def loopBody276_68 : HolLoopProg 64 :=
.seq loopBody276_63 loopBody276_67

def loopBody276_69 : HolLoopProg 64 :=
.mark loopBody276_68

def loopBody276_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody276_69 loopBody276_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody276_71 : HolLoopProg 64 :=
.mark loopBody276_70

def loopBody276_72 : HolLoopProg 64 :=
.seq loopBody276_71 loopBody276_1

def loopBody276_73 : HolLoopProg 64 :=
.mark loopBody276_72

def loopBody276_74 : HolLoopProg 64 :=
.seq loopBody276_27 loopBody276_73

def loopBody276_75 : HolLoopProg 64 :=
.mark loopBody276_74

def loopBody276_76 : HolLoopProg 64 :=
.seq loopBody276_61 loopBody276_75

def loopBody276_77 : HolLoopProg 64 :=
.mark loopBody276_76

def loopBody276_78 : HolLoopProg 64 :=
.seq loopBody276_19 loopBody276_77

def loopBody276_79 : HolLoopProg 64 :=
.mark loopBody276_78

def loopBody276_80 : HolLoopProg 64 :=
.seq loopBody276_59 loopBody276_79

def loopBody276_81 : HolLoopProg 64 :=
.mark loopBody276_80

def loopBody276_82 : HolLoopProg 64 :=
.seq loopBody276_57 loopBody276_81

def loopBody276_83 : HolLoopProg 64 :=
.mark loopBody276_82

def loopBody276_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 20#64)

def loopBody276_85 : HolLoopProg 64 :=
.mark loopBody276_84

def loopBody276_86 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.reg 8) loopBody276_21 loopBody276_23 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody276_87 : HolLoopProg 64 :=
.mark loopBody276_86

def loopBody276_88 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody276_45 loopBody276_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody276_89 : HolLoopProg 64 :=
.mark loopBody276_88

def loopBody276_90 : HolLoopProg 64 :=
.seq loopBody276_89 loopBody276_1

def loopBody276_91 : HolLoopProg 64 :=
.mark loopBody276_90

def loopBody276_92 : HolLoopProg 64 :=
.seq loopBody276_27 loopBody276_91

def loopBody276_93 : HolLoopProg 64 :=
.mark loopBody276_92

def loopBody276_94 : HolLoopProg 64 :=
.seq loopBody276_87 loopBody276_93

def loopBody276_95 : HolLoopProg 64 :=
.mark loopBody276_94

def loopBody276_96 : HolLoopProg 64 :=
.seq loopBody276_85 loopBody276_95

def loopBody276_97 : HolLoopProg 64 :=
.mark loopBody276_96

def loopBody276_98 : HolLoopProg 64 :=
.seq loopBody276_59 loopBody276_97

def loopBody276_99 : HolLoopProg 64 :=
.mark loopBody276_98

def loopBody276_100 : HolLoopProg 64 :=
.seq loopBody276_83 loopBody276_99

def loopBody276_101 : HolLoopProg 64 :=
.mark loopBody276_100

def loopBody276_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody276_103 : HolLoopProg 64 :=
.mark loopBody276_102

def loopBody276_104 : HolLoopProg 64 :=
.seq loopBody276_103 loopBody276_67

def loopBody276_105 : HolLoopProg 64 :=
.mark loopBody276_104

def loopBody276_106 : HolLoopProg 64 :=
.seq loopBody276_101 loopBody276_105

def loopBody276_107 : HolLoopProg 64 :=
.mark loopBody276_106

def loopBody276_108 : HolLoopProg 64 :=
.seq loopBody276_15 loopBody276_107

def loopBody276_109 : HolLoopProg 64 :=
.mark loopBody276_108

def loopBody276_110 : HolLoopProg 64 :=
.seq loopBody276_1 loopBody276_109

def loopBody276_111 : HolLoopProg 64 :=
.mark loopBody276_110

def loopBody276_112 : HolLoopProg 64 :=
.seq loopBody276_1 loopBody276_111

def loopBody276_113 : HolLoopProg 64 :=
.mark loopBody276_112

def loopBody276_114 : HolLoopProg 64 :=
.seq loopBody276_1 loopBody276_113

def loopBody276_115 : HolLoopProg 64 :=
.mark loopBody276_114

def loopBody276_116 : HolLoopProg 64 :=
.seq loopBody276_1 loopBody276_115

def loopBody276_117 : HolLoopProg 64 :=
.mark loopBody276_116

def loopBody276_118 : HolLoopProg 64 :=
.seq loopBody276_1 loopBody276_117

def loopBody276_119 : HolLoopProg 64 :=
.mark loopBody276_118

def loopBody276_120 : HolLoopProg 64 :=
.seq loopBody276_1 loopBody276_119

def loopBody276_121 : HolLoopProg 64 :=
.mark loopBody276_120

def loopBody276_122 : HolLoopProg 64 :=
.seq loopBody276_1 loopBody276_121

def loopBody276_123 : HolLoopProg 64 :=
.mark loopBody276_122

def loopBody276_124 : HolLoopProg 64 :=
.seq loopBody276_1 loopBody276_123

def loopBody276_125 : HolLoopProg 64 :=
.mark loopBody276_124

def output276 : Nat × List Nat × HolLoopProg 64 :=
  (340, [0, 1], loopBody276_125)
end InitECandidate.Proofs.FrontendStages.Loop
