import InitECandidate.Proofs.FrontendStages.Loop.Translate43
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody59_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody59_1 : HolLoopProg 64 :=
.mark loopBody59_0

def loopBody59_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody59_3 : HolLoopProg 64 :=
.mark loopBody59_2

def loopBody59_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody59_5 : HolLoopProg 64 :=
.mark loopBody59_4

def loopBody59_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 32#64)

def loopBody59_7 : HolLoopProg 64 :=
.mark loopBody59_6

def loopBody59_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody59_9 : HolLoopProg 64 :=
.mark loopBody59_8

def loopBody59_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody59_11 : HolLoopProg 64 :=
.mark loopBody59_10

def loopBody59_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody59_13 : HolLoopProg 64 :=
.mark loopBody59_12

def loopBody59_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.RegImm.reg 8) loopBody59_13 loopBody59_9 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody59_15 : HolLoopProg 64 :=
.mark loopBody59_14

def loopBody59_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody59_17 : HolLoopProg 64 :=
.mark loopBody59_16

def loopBody59_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 1#64])

def loopBody59_19 : HolLoopProg 64 :=
.mark loopBody59_18

def loopBody59_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 6)

def loopBody59_21 : HolLoopProg 64 :=
.mark loopBody59_20

def loopBody59_22 : HolLoopProg 64 :=
.seq loopBody59_21 loopBody59_1

def loopBody59_23 : HolLoopProg 64 :=
.mark loopBody59_22

def loopBody59_24 : HolLoopProg 64 :=
.seq loopBody59_23 loopBody59_1

def loopBody59_25 : HolLoopProg 64 :=
.mark loopBody59_24

def loopBody59_26 : HolLoopProg 64 :=
.seq loopBody59_19 loopBody59_25

def loopBody59_27 : HolLoopProg 64 :=
.mark loopBody59_26

def loopBody59_28 : HolLoopProg 64 :=
.seq loopBody59_1 loopBody59_27

def loopBody59_29 : HolLoopProg 64 :=
.mark loopBody59_28

def loopBody59_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.op Flapjack.BinOp.and
        [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.var 5),
          Flapjack.HolLoopExp.const 1#64]])

def loopBody59_31 : HolLoopProg 64 :=
.mark loopBody59_30

def loopBody59_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 6)

def loopBody59_33 : HolLoopProg 64 :=
.mark loopBody59_32

def loopBody59_34 : HolLoopProg 64 :=
.seq loopBody59_33 loopBody59_1

def loopBody59_35 : HolLoopProg 64 :=
.mark loopBody59_34

def loopBody59_36 : HolLoopProg 64 :=
.seq loopBody59_35 loopBody59_1

def loopBody59_37 : HolLoopProg 64 :=
.mark loopBody59_36

def loopBody59_38 : HolLoopProg 64 :=
.seq loopBody59_31 loopBody59_37

def loopBody59_39 : HolLoopProg 64 :=
.mark loopBody59_38

def loopBody59_40 : HolLoopProg 64 :=
.seq loopBody59_1 loopBody59_39

def loopBody59_41 : HolLoopProg 64 :=
.mark loopBody59_40

def loopBody59_42 : HolLoopProg 64 :=
.seq loopBody59_29 loopBody59_41

def loopBody59_43 : HolLoopProg 64 :=
.mark loopBody59_42

def loopBody59_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody59_45 : HolLoopProg 64 :=
.mark loopBody59_44

def loopBody59_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody59_47 : HolLoopProg 64 :=
.mark loopBody59_46

def loopBody59_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 7 (Flapjack.RegImm.reg 8) loopBody59_13 loopBody59_9 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody59_49 : HolLoopProg 64 :=
.mark loopBody59_48

def loopBody59_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 2])

def loopBody59_51 : HolLoopProg 64 :=
.mark loopBody59_50

def loopBody59_52 : HolLoopProg 64 :=
.seq loopBody59_51 loopBody59_37

def loopBody59_53 : HolLoopProg 64 :=
.mark loopBody59_52

def loopBody59_54 : HolLoopProg 64 :=
.seq loopBody59_1 loopBody59_53

def loopBody59_55 : HolLoopProg 64 :=
.mark loopBody59_54

def loopBody59_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.const 1#64) (Flapjack.HolLoopExp.var 5)])

def loopBody59_57 : HolLoopProg 64 :=
.mark loopBody59_56

def loopBody59_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 6)

def loopBody59_59 : HolLoopProg 64 :=
.mark loopBody59_58

def loopBody59_60 : HolLoopProg 64 :=
.seq loopBody59_59 loopBody59_1

def loopBody59_61 : HolLoopProg 64 :=
.mark loopBody59_60

def loopBody59_62 : HolLoopProg 64 :=
.seq loopBody59_61 loopBody59_1

def loopBody59_63 : HolLoopProg 64 :=
.mark loopBody59_62

def loopBody59_64 : HolLoopProg 64 :=
.seq loopBody59_57 loopBody59_63

def loopBody59_65 : HolLoopProg 64 :=
.mark loopBody59_64

def loopBody59_66 : HolLoopProg 64 :=
.seq loopBody59_1 loopBody59_65

def loopBody59_67 : HolLoopProg 64 :=
.mark loopBody59_66

def loopBody59_68 : HolLoopProg 64 :=
.seq loopBody59_55 loopBody59_67

def loopBody59_69 : HolLoopProg 64 :=
.mark loopBody59_68

def loopBody59_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody59_69 loopBody59_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody59_71 : HolLoopProg 64 :=
.mark loopBody59_70

def loopBody59_72 : HolLoopProg 64 :=
.seq loopBody59_71 loopBody59_1

def loopBody59_73 : HolLoopProg 64 :=
.mark loopBody59_72

def loopBody59_74 : HolLoopProg 64 :=
.seq loopBody59_17 loopBody59_73

def loopBody59_75 : HolLoopProg 64 :=
.mark loopBody59_74

def loopBody59_76 : HolLoopProg 64 :=
.seq loopBody59_49 loopBody59_75

def loopBody59_77 : HolLoopProg 64 :=
.mark loopBody59_76

def loopBody59_78 : HolLoopProg 64 :=
.seq loopBody59_47 loopBody59_77

def loopBody59_79 : HolLoopProg 64 :=
.mark loopBody59_78

def loopBody59_80 : HolLoopProg 64 :=
.seq loopBody59_45 loopBody59_79

def loopBody59_81 : HolLoopProg 64 :=
.mark loopBody59_80

def loopBody59_82 : HolLoopProg 64 :=
.seq loopBody59_43 loopBody59_81

def loopBody59_83 : HolLoopProg 64 :=
.mark loopBody59_82

def loopBody59_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody59_85 : HolLoopProg 64 :=
.mark loopBody59_84

def loopBody59_86 : HolLoopProg 64 :=
.seq loopBody59_83 loopBody59_85

def loopBody59_87 : HolLoopProg 64 :=
.mark loopBody59_86

def loopBody59_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody59_89 : HolLoopProg 64 :=
.mark loopBody59_88

def loopBody59_90 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody59_87 loopBody59_89 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody59_91 : HolLoopProg 64 :=
.mark loopBody59_90

def loopBody59_92 : HolLoopProg 64 :=
.seq loopBody59_91 loopBody59_1

def loopBody59_93 : HolLoopProg 64 :=
.mark loopBody59_92

def loopBody59_94 : HolLoopProg 64 :=
.seq loopBody59_17 loopBody59_93

def loopBody59_95 : HolLoopProg 64 :=
.mark loopBody59_94

def loopBody59_96 : HolLoopProg 64 :=
.seq loopBody59_15 loopBody59_95

def loopBody59_97 : HolLoopProg 64 :=
.mark loopBody59_96

def loopBody59_98 : HolLoopProg 64 :=
.seq loopBody59_11 loopBody59_97

def loopBody59_99 : HolLoopProg 64 :=
.mark loopBody59_98

def loopBody59_100 : HolLoopProg 64 :=
.seq loopBody59_9 loopBody59_99

def loopBody59_101 : HolLoopProg 64 :=
.mark loopBody59_100

def loopBody59_102 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody59_101 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody59_103 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody59_104 : HolLoopProg 64 :=
.mark loopBody59_103

def loopBody59_105 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6, 7]

def loopBody59_106 : HolLoopProg 64 :=
.mark loopBody59_105

def loopBody59_107 : HolLoopProg 64 :=
.seq loopBody59_106 loopBody59_1

def loopBody59_108 : HolLoopProg 64 :=
.mark loopBody59_107

def loopBody59_109 : HolLoopProg 64 :=
.seq loopBody59_45 loopBody59_108

def loopBody59_110 : HolLoopProg 64 :=
.mark loopBody59_109

def loopBody59_111 : HolLoopProg 64 :=
.seq loopBody59_104 loopBody59_110

def loopBody59_112 : HolLoopProg 64 :=
.mark loopBody59_111

def loopBody59_113 : HolLoopProg 64 :=
.seq loopBody59_102 loopBody59_112

def loopBody59_114 : HolLoopProg 64 :=
.seq loopBody59_7 loopBody59_113

def loopBody59_115 : HolLoopProg 64 :=
.seq loopBody59_1 loopBody59_114

def loopBody59_116 : HolLoopProg 64 :=
.seq loopBody59_5 loopBody59_115

def loopBody59_117 : HolLoopProg 64 :=
.seq loopBody59_1 loopBody59_116

def loopBody59_118 : HolLoopProg 64 :=
.seq loopBody59_3 loopBody59_117

def loopBody59_119 : HolLoopProg 64 :=
.seq loopBody59_1 loopBody59_118

def output59 : Nat × List Nat × HolLoopProg 64 :=
  (123, [0, 1, 2], loopBody59_119)
end InitECandidate.Proofs.FrontendStages.Loop
