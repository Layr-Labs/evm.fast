import InitECandidate.Proofs.FrontendStages.Loop.Translate599
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody615_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody615_1 : HolLoopProg 64 :=
.mark loopBody615_0

def loopBody615_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody615_3 : HolLoopProg 64 :=
.mark loopBody615_2

def loopBody615_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 5#64))

def loopBody615_5 : HolLoopProg 64 :=
.mark loopBody615_4

def loopBody615_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody615_7 : HolLoopProg 64 :=
.mark loopBody615_6

def loopBody615_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 78) ([3, 4]) (some (3, loopBody615_7, loopBody615_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody615_9 : HolLoopProg 64 :=
.mark loopBody615_8

def loopBody615_10 : HolLoopProg 64 :=
.seq loopBody615_9 loopBody615_1

def loopBody615_11 : HolLoopProg 64 :=
.mark loopBody615_10

def loopBody615_12 : HolLoopProg 64 :=
.seq loopBody615_5 loopBody615_11

def loopBody615_13 : HolLoopProg 64 :=
.mark loopBody615_12

def loopBody615_14 : HolLoopProg 64 :=
.seq loopBody615_3 loopBody615_13

def loopBody615_15 : HolLoopProg 64 :=
.mark loopBody615_14

def loopBody615_16 : HolLoopProg 64 :=
.seq loopBody615_1 loopBody615_15

def loopBody615_17 : HolLoopProg 64 :=
.mark loopBody615_16

def loopBody615_18 : HolLoopProg 64 :=
.seq loopBody615_1 loopBody615_17

def loopBody615_19 : HolLoopProg 64 :=
.mark loopBody615_18

def loopBody615_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody615_21 : HolLoopProg 64 :=
.mark loopBody615_20

def loopBody615_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 15230403791020821917#64)

def loopBody615_23 : HolLoopProg 64 :=
.mark loopBody615_22

def loopBody615_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 754611498739239741#64)

def loopBody615_25 : HolLoopProg 64 :=
.mark loopBody615_24

def loopBody615_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 7381016538464732716#64)

def loopBody615_27 : HolLoopProg 64 :=
.mark loopBody615_26

def loopBody615_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1011752739694698287#64)

def loopBody615_29 : HolLoopProg 64 :=
.mark loopBody615_28

def loopBody615_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody615_31 : HolLoopProg 64 :=
.mark loopBody615_30

def loopBody615_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 2) 7

def loopBody615_33 : HolLoopProg 64 :=
.mark loopBody615_32

def loopBody615_34 : HolLoopProg 64 :=
.seq loopBody615_33 loopBody615_1

def loopBody615_35 : HolLoopProg 64 :=
.mark loopBody615_34

def loopBody615_36 : HolLoopProg 64 :=
.seq loopBody615_31 loopBody615_35

def loopBody615_37 : HolLoopProg 64 :=
.mark loopBody615_36

def loopBody615_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody615_39 : HolLoopProg 64 :=
.mark loopBody615_38

def loopBody615_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 8#64]) 7

def loopBody615_41 : HolLoopProg 64 :=
.mark loopBody615_40

def loopBody615_42 : HolLoopProg 64 :=
.seq loopBody615_41 loopBody615_1

def loopBody615_43 : HolLoopProg 64 :=
.mark loopBody615_42

def loopBody615_44 : HolLoopProg 64 :=
.seq loopBody615_39 loopBody615_43

def loopBody615_45 : HolLoopProg 64 :=
.mark loopBody615_44

def loopBody615_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody615_47 : HolLoopProg 64 :=
.mark loopBody615_46

def loopBody615_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 16#64]) 7

def loopBody615_49 : HolLoopProg 64 :=
.mark loopBody615_48

def loopBody615_50 : HolLoopProg 64 :=
.seq loopBody615_49 loopBody615_1

def loopBody615_51 : HolLoopProg 64 :=
.mark loopBody615_50

def loopBody615_52 : HolLoopProg 64 :=
.seq loopBody615_47 loopBody615_51

def loopBody615_53 : HolLoopProg 64 :=
.mark loopBody615_52

def loopBody615_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody615_55 : HolLoopProg 64 :=
.mark loopBody615_54

def loopBody615_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 24#64]) 7

def loopBody615_57 : HolLoopProg 64 :=
.mark loopBody615_56

def loopBody615_58 : HolLoopProg 64 :=
.seq loopBody615_57 loopBody615_1

def loopBody615_59 : HolLoopProg 64 :=
.mark loopBody615_58

def loopBody615_60 : HolLoopProg 64 :=
.seq loopBody615_55 loopBody615_59

def loopBody615_61 : HolLoopProg 64 :=
.mark loopBody615_60

def loopBody615_62 : HolLoopProg 64 :=
.seq loopBody615_61 loopBody615_1

def loopBody615_63 : HolLoopProg 64 :=
.mark loopBody615_62

def loopBody615_64 : HolLoopProg 64 :=
.seq loopBody615_53 loopBody615_63

def loopBody615_65 : HolLoopProg 64 :=
.mark loopBody615_64

def loopBody615_66 : HolLoopProg 64 :=
.seq loopBody615_45 loopBody615_65

def loopBody615_67 : HolLoopProg 64 :=
.mark loopBody615_66

def loopBody615_68 : HolLoopProg 64 :=
.seq loopBody615_37 loopBody615_67

def loopBody615_69 : HolLoopProg 64 :=
.mark loopBody615_68

def loopBody615_70 : HolLoopProg 64 :=
.seq loopBody615_29 loopBody615_69

def loopBody615_71 : HolLoopProg 64 :=
.mark loopBody615_70

def loopBody615_72 : HolLoopProg 64 :=
.seq loopBody615_1 loopBody615_71

def loopBody615_73 : HolLoopProg 64 :=
.mark loopBody615_72

def loopBody615_74 : HolLoopProg 64 :=
.seq loopBody615_27 loopBody615_73

def loopBody615_75 : HolLoopProg 64 :=
.mark loopBody615_74

def loopBody615_76 : HolLoopProg 64 :=
.seq loopBody615_1 loopBody615_75

def loopBody615_77 : HolLoopProg 64 :=
.mark loopBody615_76

def loopBody615_78 : HolLoopProg 64 :=
.seq loopBody615_25 loopBody615_77

def loopBody615_79 : HolLoopProg 64 :=
.mark loopBody615_78

def loopBody615_80 : HolLoopProg 64 :=
.seq loopBody615_1 loopBody615_79

def loopBody615_81 : HolLoopProg 64 :=
.mark loopBody615_80

def loopBody615_82 : HolLoopProg 64 :=
.seq loopBody615_23 loopBody615_81

def loopBody615_83 : HolLoopProg 64 :=
.mark loopBody615_82

def loopBody615_84 : HolLoopProg 64 :=
.seq loopBody615_1 loopBody615_83

def loopBody615_85 : HolLoopProg 64 :=
.mark loopBody615_84

def loopBody615_86 : HolLoopProg 64 :=
.seq loopBody615_21 loopBody615_85

def loopBody615_87 : HolLoopProg 64 :=
.mark loopBody615_86

def loopBody615_88 : HolLoopProg 64 :=
.seq loopBody615_1 loopBody615_87

def loopBody615_89 : HolLoopProg 64 :=
.mark loopBody615_88

def loopBody615_90 : HolLoopProg 64 :=
.seq loopBody615_19 loopBody615_89

def loopBody615_91 : HolLoopProg 64 :=
.mark loopBody615_90

def loopBody615_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody615_93 : HolLoopProg 64 :=
.mark loopBody615_92

def loopBody615_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody615_95 : HolLoopProg 64 :=
.mark loopBody615_94

def loopBody615_96 : HolLoopProg 64 :=
.seq loopBody615_95 loopBody615_1

def loopBody615_97 : HolLoopProg 64 :=
.mark loopBody615_96

def loopBody615_98 : HolLoopProg 64 :=
.seq loopBody615_93 loopBody615_97

def loopBody615_99 : HolLoopProg 64 :=
.mark loopBody615_98

def loopBody615_100 : HolLoopProg 64 :=
.seq loopBody615_91 loopBody615_99

def loopBody615_101 : HolLoopProg 64 :=
.mark loopBody615_100

def output615 : Nat × List Nat × HolLoopProg 64 :=
  (679, [0, 1], loopBody615_101)
end InitECandidate.Proofs.FrontendStages.Loop
