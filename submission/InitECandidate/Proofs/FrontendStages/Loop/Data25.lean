import InitECandidate.Proofs.FrontendStages.Loop.Translate9
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody25_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 7#64])

def loopBody25_1 : HolLoopProg 64 :=
.mark loopBody25_0

def loopBody25_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody25_3 : HolLoopProg 64 :=
.mark loopBody25_2

def loopBody25_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody25_5 : HolLoopProg 64 :=
.mark loopBody25_4

def loopBody25_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody25_7 : HolLoopProg 64 :=
.mark loopBody25_6

def loopBody25_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody25_5 loopBody25_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody25_9 : HolLoopProg 64 :=
.mark loopBody25_8

def loopBody25_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody25_11 : HolLoopProg 64 :=
.mark loopBody25_10

def loopBody25_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody25_13 : HolLoopProg 64 :=
.mark loopBody25_12

def loopBody25_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody25_15 : HolLoopProg 64 :=
.mark loopBody25_14

def loopBody25_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody25_17 : HolLoopProg 64 :=
.mark loopBody25_16

def loopBody25_18 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ls PUnit.unit)) (some 84) ([3]) (some (3, loopBody25_17, loopBody25_13, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))

def loopBody25_19 : HolLoopProg 64 :=
.mark loopBody25_18

def loopBody25_20 : HolLoopProg 64 :=
.seq loopBody25_19 loopBody25_13

def loopBody25_21 : HolLoopProg 64 :=
.mark loopBody25_20

def loopBody25_22 : HolLoopProg 64 :=
.seq loopBody25_15 loopBody25_21

def loopBody25_23 : HolLoopProg 64 :=
.mark loopBody25_22

def loopBody25_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody25_25 : HolLoopProg 64 :=
.mark loopBody25_24

def loopBody25_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody25_27 : HolLoopProg 64 :=
.mark loopBody25_26

def loopBody25_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody25_29 : HolLoopProg 64 :=
.mark loopBody25_28

def loopBody25_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 3) 5

def loopBody25_31 : HolLoopProg 64 :=
.mark loopBody25_30

def loopBody25_32 : HolLoopProg 64 :=
.seq loopBody25_31 loopBody25_13

def loopBody25_33 : HolLoopProg 64 :=
.mark loopBody25_32

def loopBody25_34 : HolLoopProg 64 :=
.seq loopBody25_29 loopBody25_33

def loopBody25_35 : HolLoopProg 64 :=
.mark loopBody25_34

def loopBody25_36 : HolLoopProg 64 :=
.seq loopBody25_35 loopBody25_13

def loopBody25_37 : HolLoopProg 64 :=
.mark loopBody25_36

def loopBody25_38 : HolLoopProg 64 :=
.seq loopBody25_27 loopBody25_37

def loopBody25_39 : HolLoopProg 64 :=
.mark loopBody25_38

def loopBody25_40 : HolLoopProg 64 :=
.seq loopBody25_13 loopBody25_39

def loopBody25_41 : HolLoopProg 64 :=
.mark loopBody25_40

def loopBody25_42 : HolLoopProg 64 :=
.seq loopBody25_25 loopBody25_41

def loopBody25_43 : HolLoopProg 64 :=
.mark loopBody25_42

def loopBody25_44 : HolLoopProg 64 :=
.seq loopBody25_13 loopBody25_43

def loopBody25_45 : HolLoopProg 64 :=
.mark loopBody25_44

def loopBody25_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody25_47 : HolLoopProg 64 :=
.mark loopBody25_46

def loopBody25_48 : HolLoopProg 64 :=
.seq loopBody25_47 loopBody25_13

def loopBody25_49 : HolLoopProg 64 :=
.mark loopBody25_48

def loopBody25_50 : HolLoopProg 64 :=
.seq loopBody25_7 loopBody25_49

def loopBody25_51 : HolLoopProg 64 :=
.mark loopBody25_50

def loopBody25_52 : HolLoopProg 64 :=
.seq loopBody25_45 loopBody25_51

def loopBody25_53 : HolLoopProg 64 :=
.mark loopBody25_52

def loopBody25_54 : HolLoopProg 64 :=
.seq loopBody25_23 loopBody25_53

def loopBody25_55 : HolLoopProg 64 :=
.mark loopBody25_54

def loopBody25_56 : HolLoopProg 64 :=
.seq loopBody25_13 loopBody25_55

def loopBody25_57 : HolLoopProg 64 :=
.mark loopBody25_56

def loopBody25_58 : HolLoopProg 64 :=
.seq loopBody25_13 loopBody25_57

def loopBody25_59 : HolLoopProg 64 :=
.mark loopBody25_58

def loopBody25_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody25_59 loopBody25_13 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody25_61 : HolLoopProg 64 :=
.mark loopBody25_60

def loopBody25_62 : HolLoopProg 64 :=
.seq loopBody25_61 loopBody25_13

def loopBody25_63 : HolLoopProg 64 :=
.mark loopBody25_62

def loopBody25_64 : HolLoopProg 64 :=
.seq loopBody25_11 loopBody25_63

def loopBody25_65 : HolLoopProg 64 :=
.mark loopBody25_64

def loopBody25_66 : HolLoopProg 64 :=
.seq loopBody25_9 loopBody25_65

def loopBody25_67 : HolLoopProg 64 :=
.mark loopBody25_66

def loopBody25_68 : HolLoopProg 64 :=
.seq loopBody25_3 loopBody25_67

def loopBody25_69 : HolLoopProg 64 :=
.mark loopBody25_68

def loopBody25_70 : HolLoopProg 64 :=
.seq loopBody25_1 loopBody25_69

def loopBody25_71 : HolLoopProg 64 :=
.mark loopBody25_70

def loopBody25_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 32#64))

def loopBody25_73 : HolLoopProg 64 :=
.mark loopBody25_72

def loopBody25_74 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 88) ([3, 4]) (some (3, loopBody25_17, loopBody25_13, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody25_75 : HolLoopProg 64 :=
.mark loopBody25_74

def loopBody25_76 : HolLoopProg 64 :=
.seq loopBody25_75 loopBody25_13

def loopBody25_77 : HolLoopProg 64 :=
.mark loopBody25_76

def loopBody25_78 : HolLoopProg 64 :=
.seq loopBody25_73 loopBody25_77

def loopBody25_79 : HolLoopProg 64 :=
.mark loopBody25_78

def loopBody25_80 : HolLoopProg 64 :=
.seq loopBody25_25 loopBody25_79

def loopBody25_81 : HolLoopProg 64 :=
.mark loopBody25_80

def loopBody25_82 : HolLoopProg 64 :=
.seq loopBody25_13 loopBody25_81

def loopBody25_83 : HolLoopProg 64 :=
.mark loopBody25_82

def loopBody25_84 : HolLoopProg 64 :=
.seq loopBody25_13 loopBody25_83

def loopBody25_85 : HolLoopProg 64 :=
.mark loopBody25_84

def loopBody25_86 : HolLoopProg 64 :=
.seq loopBody25_71 loopBody25_85

def loopBody25_87 : HolLoopProg 64 :=
.mark loopBody25_86

def loopBody25_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64])

def loopBody25_89 : HolLoopProg 64 :=
.mark loopBody25_88

def loopBody25_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody25_91 : HolLoopProg 64 :=
.mark loopBody25_90

def loopBody25_92 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 88) ([3, 4]) (some (3, loopBody25_17, loopBody25_13, (Flapjack.Spt.ln)))

def loopBody25_93 : HolLoopProg 64 :=
.mark loopBody25_92

def loopBody25_94 : HolLoopProg 64 :=
.seq loopBody25_93 loopBody25_13

def loopBody25_95 : HolLoopProg 64 :=
.mark loopBody25_94

def loopBody25_96 : HolLoopProg 64 :=
.seq loopBody25_91 loopBody25_95

def loopBody25_97 : HolLoopProg 64 :=
.mark loopBody25_96

def loopBody25_98 : HolLoopProg 64 :=
.seq loopBody25_89 loopBody25_97

def loopBody25_99 : HolLoopProg 64 :=
.mark loopBody25_98

def loopBody25_100 : HolLoopProg 64 :=
.seq loopBody25_13 loopBody25_99

def loopBody25_101 : HolLoopProg 64 :=
.mark loopBody25_100

def loopBody25_102 : HolLoopProg 64 :=
.seq loopBody25_13 loopBody25_101

def loopBody25_103 : HolLoopProg 64 :=
.mark loopBody25_102

def loopBody25_104 : HolLoopProg 64 :=
.seq loopBody25_87 loopBody25_103

def loopBody25_105 : HolLoopProg 64 :=
.mark loopBody25_104

def loopBody25_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody25_107 : HolLoopProg 64 :=
.mark loopBody25_106

def loopBody25_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody25_109 : HolLoopProg 64 :=
.mark loopBody25_108

def loopBody25_110 : HolLoopProg 64 :=
.seq loopBody25_109 loopBody25_13

def loopBody25_111 : HolLoopProg 64 :=
.mark loopBody25_110

def loopBody25_112 : HolLoopProg 64 :=
.seq loopBody25_107 loopBody25_111

def loopBody25_113 : HolLoopProg 64 :=
.mark loopBody25_112

def loopBody25_114 : HolLoopProg 64 :=
.seq loopBody25_105 loopBody25_113

def loopBody25_115 : HolLoopProg 64 :=
.mark loopBody25_114

def output25 : Nat × List Nat × HolLoopProg 64 :=
  (89, [0, 1], loopBody25_115)
end InitECandidate.Proofs.FrontendStages.Loop
