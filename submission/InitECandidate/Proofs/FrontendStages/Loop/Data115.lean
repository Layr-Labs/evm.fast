import InitECandidate.Proofs.FrontendStages.Loop.Translate99
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody115_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody115_1 : HolLoopProg 64 :=
.mark loopBody115_0

def loopBody115_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody115_3 : HolLoopProg 64 :=
.mark loopBody115_2

def loopBody115_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody115_5 : HolLoopProg 64 :=
.mark loopBody115_4

def loopBody115_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody115_7 : HolLoopProg 64 :=
.mark loopBody115_6

def loopBody115_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody115_5 loopBody115_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody115_9 : HolLoopProg 64 :=
.mark loopBody115_8

def loopBody115_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody115_11 : HolLoopProg 64 :=
.mark loopBody115_10

def loopBody115_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody115_13 : HolLoopProg 64 :=
.mark loopBody115_12

def loopBody115_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody115_15 : HolLoopProg 64 :=
.mark loopBody115_14

def loopBody115_16 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody115_15 loopBody115_11 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody115_17 : HolLoopProg 64 :=
.mark loopBody115_16

def loopBody115_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody115_19 : HolLoopProg 64 :=
.mark loopBody115_18

def loopBody115_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 128#64)

def loopBody115_21 : HolLoopProg 64 :=
.mark loopBody115_20

def loopBody115_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody115_23 : HolLoopProg 64 :=
.mark loopBody115_22

def loopBody115_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody115_25 : HolLoopProg 64 :=
.mark loopBody115_24

def loopBody115_26 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.RegImm.reg 10) loopBody115_23 loopBody115_25 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))

def loopBody115_27 : HolLoopProg 64 :=
.mark loopBody115_26

def loopBody115_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody115_29 : HolLoopProg 64 :=
.mark loopBody115_28

def loopBody115_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 9)

def loopBody115_31 : HolLoopProg 64 :=
.mark loopBody115_30

def loopBody115_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody115_33 : HolLoopProg 64 :=
.mark loopBody115_32

def loopBody115_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.reg 13) loopBody115_33 loopBody115_29 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.ls PUnit.unit))

def loopBody115_35 : HolLoopProg 64 :=
.mark loopBody115_34

def loopBody115_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.var 12])

def loopBody115_37 : HolLoopProg 64 :=
.mark loopBody115_36

def loopBody115_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody115_39 : HolLoopProg 64 :=
.mark loopBody115_38

def loopBody115_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody115_41 : HolLoopProg 64 :=
.mark loopBody115_40

def loopBody115_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody115_43 : HolLoopProg 64 :=
.mark loopBody115_42

def loopBody115_44 : HolLoopProg 64 :=
.seq loopBody115_41 loopBody115_43

def loopBody115_45 : HolLoopProg 64 :=
.mark loopBody115_44

def loopBody115_46 : HolLoopProg 64 :=
.seq loopBody115_39 loopBody115_45

def loopBody115_47 : HolLoopProg 64 :=
.mark loopBody115_46

def loopBody115_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody115_47 loopBody115_43 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody115_49 : HolLoopProg 64 :=
.mark loopBody115_48

def loopBody115_50 : HolLoopProg 64 :=
.seq loopBody115_49 loopBody115_43

def loopBody115_51 : HolLoopProg 64 :=
.mark loopBody115_50

def loopBody115_52 : HolLoopProg 64 :=
.seq loopBody115_37 loopBody115_51

def loopBody115_53 : HolLoopProg 64 :=
.mark loopBody115_52

def loopBody115_54 : HolLoopProg 64 :=
.seq loopBody115_35 loopBody115_53

def loopBody115_55 : HolLoopProg 64 :=
.mark loopBody115_54

def loopBody115_56 : HolLoopProg 64 :=
.seq loopBody115_31 loopBody115_55

def loopBody115_57 : HolLoopProg 64 :=
.mark loopBody115_56

def loopBody115_58 : HolLoopProg 64 :=
.seq loopBody115_29 loopBody115_57

def loopBody115_59 : HolLoopProg 64 :=
.mark loopBody115_58

def loopBody115_60 : HolLoopProg 64 :=
.seq loopBody115_27 loopBody115_59

def loopBody115_61 : HolLoopProg 64 :=
.mark loopBody115_60

def loopBody115_62 : HolLoopProg 64 :=
.seq loopBody115_21 loopBody115_61

def loopBody115_63 : HolLoopProg 64 :=
.mark loopBody115_62

def loopBody115_64 : HolLoopProg 64 :=
.seq loopBody115_19 loopBody115_63

def loopBody115_65 : HolLoopProg 64 :=
.mark loopBody115_64

def loopBody115_66 : HolLoopProg 64 :=
.seq loopBody115_17 loopBody115_65

def loopBody115_67 : HolLoopProg 64 :=
.mark loopBody115_66

def loopBody115_68 : HolLoopProg 64 :=
.seq loopBody115_13 loopBody115_67

def loopBody115_69 : HolLoopProg 64 :=
.mark loopBody115_68

def loopBody115_70 : HolLoopProg 64 :=
.seq loopBody115_11 loopBody115_69

def loopBody115_71 : HolLoopProg 64 :=
.mark loopBody115_70

def loopBody115_72 : HolLoopProg 64 :=
.seq loopBody115_9 loopBody115_71

def loopBody115_73 : HolLoopProg 64 :=
.mark loopBody115_72

def loopBody115_74 : HolLoopProg 64 :=
.seq loopBody115_3 loopBody115_73

def loopBody115_75 : HolLoopProg 64 :=
.mark loopBody115_74

def loopBody115_76 : HolLoopProg 64 :=
.seq loopBody115_1 loopBody115_75

def loopBody115_77 : HolLoopProg 64 :=
.mark loopBody115_76

def loopBody115_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody115_79 : HolLoopProg 64 :=
.mark loopBody115_78

def loopBody115_80 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 175) ([3]) (some (3, loopBody115_79, loopBody115_43, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody115_81 : HolLoopProg 64 :=
.mark loopBody115_80

def loopBody115_82 : HolLoopProg 64 :=
.seq loopBody115_81 loopBody115_43

def loopBody115_83 : HolLoopProg 64 :=
.mark loopBody115_82

def loopBody115_84 : HolLoopProg 64 :=
.seq loopBody115_1 loopBody115_83

def loopBody115_85 : HolLoopProg 64 :=
.mark loopBody115_84

def loopBody115_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 1])

def loopBody115_87 : HolLoopProg 64 :=
.mark loopBody115_86

def loopBody115_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody115_89 : HolLoopProg 64 :=
.mark loopBody115_88

def loopBody115_90 : HolLoopProg 64 :=
.seq loopBody115_89 loopBody115_43

def loopBody115_91 : HolLoopProg 64 :=
.mark loopBody115_90

def loopBody115_92 : HolLoopProg 64 :=
.seq loopBody115_87 loopBody115_91

def loopBody115_93 : HolLoopProg 64 :=
.mark loopBody115_92

def loopBody115_94 : HolLoopProg 64 :=
.seq loopBody115_85 loopBody115_93

def loopBody115_95 : HolLoopProg 64 :=
.mark loopBody115_94

def loopBody115_96 : HolLoopProg 64 :=
.seq loopBody115_43 loopBody115_95

def loopBody115_97 : HolLoopProg 64 :=
.mark loopBody115_96

def loopBody115_98 : HolLoopProg 64 :=
.seq loopBody115_43 loopBody115_97

def loopBody115_99 : HolLoopProg 64 :=
.mark loopBody115_98

def loopBody115_100 : HolLoopProg 64 :=
.seq loopBody115_77 loopBody115_99

def loopBody115_101 : HolLoopProg 64 :=
.mark loopBody115_100

def output115 : Nat × List Nat × HolLoopProg 64 :=
  (179, [0, 1], loopBody115_101)
end InitECandidate.Proofs.FrontendStages.Loop
