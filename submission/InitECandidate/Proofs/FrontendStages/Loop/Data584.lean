import InitECandidate.Proofs.FrontendStages.Loop.Translate568
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody584_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody584_1 : HolLoopProg 64 :=
.mark loopBody584_0

def loopBody584_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 0)

def loopBody584_3 : HolLoopProg 64 :=
.mark loopBody584_2

def loopBody584_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody584_5 : HolLoopProg 64 :=
.mark loopBody584_4

def loopBody584_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody584_7 : HolLoopProg 64 :=
.mark loopBody584_6

def loopBody584_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody584_9 : HolLoopProg 64 :=
.mark loopBody584_8

def loopBody584_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody584_11 : HolLoopProg 64 :=
.mark loopBody584_10

def loopBody584_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody584_13 : HolLoopProg 64 :=
.mark loopBody584_12

def loopBody584_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 6

def loopBody584_15 : HolLoopProg 64 :=
.mark loopBody584_14

def loopBody584_16 : HolLoopProg 64 :=
.seq loopBody584_15 loopBody584_1

def loopBody584_17 : HolLoopProg 64 :=
.mark loopBody584_16

def loopBody584_18 : HolLoopProg 64 :=
.seq loopBody584_13 loopBody584_17

def loopBody584_19 : HolLoopProg 64 :=
.mark loopBody584_18

def loopBody584_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody584_21 : HolLoopProg 64 :=
.mark loopBody584_20

def loopBody584_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 8#64]) 6

def loopBody584_23 : HolLoopProg 64 :=
.mark loopBody584_22

def loopBody584_24 : HolLoopProg 64 :=
.seq loopBody584_23 loopBody584_1

def loopBody584_25 : HolLoopProg 64 :=
.mark loopBody584_24

def loopBody584_26 : HolLoopProg 64 :=
.seq loopBody584_21 loopBody584_25

def loopBody584_27 : HolLoopProg 64 :=
.mark loopBody584_26

def loopBody584_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody584_29 : HolLoopProg 64 :=
.mark loopBody584_28

def loopBody584_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 16#64]) 6

def loopBody584_31 : HolLoopProg 64 :=
.mark loopBody584_30

def loopBody584_32 : HolLoopProg 64 :=
.seq loopBody584_31 loopBody584_1

def loopBody584_33 : HolLoopProg 64 :=
.mark loopBody584_32

def loopBody584_34 : HolLoopProg 64 :=
.seq loopBody584_29 loopBody584_33

def loopBody584_35 : HolLoopProg 64 :=
.mark loopBody584_34

def loopBody584_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody584_37 : HolLoopProg 64 :=
.mark loopBody584_36

def loopBody584_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 24#64]) 6

def loopBody584_39 : HolLoopProg 64 :=
.mark loopBody584_38

def loopBody584_40 : HolLoopProg 64 :=
.seq loopBody584_39 loopBody584_1

def loopBody584_41 : HolLoopProg 64 :=
.mark loopBody584_40

def loopBody584_42 : HolLoopProg 64 :=
.seq loopBody584_37 loopBody584_41

def loopBody584_43 : HolLoopProg 64 :=
.mark loopBody584_42

def loopBody584_44 : HolLoopProg 64 :=
.seq loopBody584_43 loopBody584_1

def loopBody584_45 : HolLoopProg 64 :=
.mark loopBody584_44

def loopBody584_46 : HolLoopProg 64 :=
.seq loopBody584_35 loopBody584_45

def loopBody584_47 : HolLoopProg 64 :=
.mark loopBody584_46

def loopBody584_48 : HolLoopProg 64 :=
.seq loopBody584_27 loopBody584_47

def loopBody584_49 : HolLoopProg 64 :=
.mark loopBody584_48

def loopBody584_50 : HolLoopProg 64 :=
.seq loopBody584_19 loopBody584_49

def loopBody584_51 : HolLoopProg 64 :=
.mark loopBody584_50

def loopBody584_52 : HolLoopProg 64 :=
.seq loopBody584_11 loopBody584_51

def loopBody584_53 : HolLoopProg 64 :=
.mark loopBody584_52

def loopBody584_54 : HolLoopProg 64 :=
.seq loopBody584_1 loopBody584_53

def loopBody584_55 : HolLoopProg 64 :=
.mark loopBody584_54

def loopBody584_56 : HolLoopProg 64 :=
.seq loopBody584_9 loopBody584_55

def loopBody584_57 : HolLoopProg 64 :=
.mark loopBody584_56

def loopBody584_58 : HolLoopProg 64 :=
.seq loopBody584_1 loopBody584_57

def loopBody584_59 : HolLoopProg 64 :=
.mark loopBody584_58

def loopBody584_60 : HolLoopProg 64 :=
.seq loopBody584_7 loopBody584_59

def loopBody584_61 : HolLoopProg 64 :=
.mark loopBody584_60

def loopBody584_62 : HolLoopProg 64 :=
.seq loopBody584_1 loopBody584_61

def loopBody584_63 : HolLoopProg 64 :=
.mark loopBody584_62

def loopBody584_64 : HolLoopProg 64 :=
.seq loopBody584_5 loopBody584_63

def loopBody584_65 : HolLoopProg 64 :=
.mark loopBody584_64

def loopBody584_66 : HolLoopProg 64 :=
.seq loopBody584_1 loopBody584_65

def loopBody584_67 : HolLoopProg 64 :=
.mark loopBody584_66

def loopBody584_68 : HolLoopProg 64 :=
.seq loopBody584_3 loopBody584_67

def loopBody584_69 : HolLoopProg 64 :=
.mark loopBody584_68

def loopBody584_70 : HolLoopProg 64 :=
.seq loopBody584_1 loopBody584_69

def loopBody584_71 : HolLoopProg 64 :=
.mark loopBody584_70

def loopBody584_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64])

def loopBody584_73 : HolLoopProg 64 :=
.mark loopBody584_72

def loopBody584_74 : HolLoopProg 64 :=
.seq loopBody584_73 loopBody584_67

def loopBody584_75 : HolLoopProg 64 :=
.mark loopBody584_74

def loopBody584_76 : HolLoopProg 64 :=
.seq loopBody584_1 loopBody584_75

def loopBody584_77 : HolLoopProg 64 :=
.mark loopBody584_76

def loopBody584_78 : HolLoopProg 64 :=
.seq loopBody584_71 loopBody584_77

def loopBody584_79 : HolLoopProg 64 :=
.mark loopBody584_78

def loopBody584_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 64#64])

def loopBody584_81 : HolLoopProg 64 :=
.mark loopBody584_80

def loopBody584_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody584_83 : HolLoopProg 64 :=
.mark loopBody584_82

def loopBody584_84 : HolLoopProg 64 :=
.seq loopBody584_83 loopBody584_63

def loopBody584_85 : HolLoopProg 64 :=
.mark loopBody584_84

def loopBody584_86 : HolLoopProg 64 :=
.seq loopBody584_1 loopBody584_85

def loopBody584_87 : HolLoopProg 64 :=
.mark loopBody584_86

def loopBody584_88 : HolLoopProg 64 :=
.seq loopBody584_81 loopBody584_87

def loopBody584_89 : HolLoopProg 64 :=
.mark loopBody584_88

def loopBody584_90 : HolLoopProg 64 :=
.seq loopBody584_1 loopBody584_89

def loopBody584_91 : HolLoopProg 64 :=
.mark loopBody584_90

def loopBody584_92 : HolLoopProg 64 :=
.seq loopBody584_79 loopBody584_91

def loopBody584_93 : HolLoopProg 64 :=
.mark loopBody584_92

def loopBody584_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody584_95 : HolLoopProg 64 :=
.mark loopBody584_94

def loopBody584_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody584_97 : HolLoopProg 64 :=
.mark loopBody584_96

def loopBody584_98 : HolLoopProg 64 :=
.seq loopBody584_97 loopBody584_1

def loopBody584_99 : HolLoopProg 64 :=
.mark loopBody584_98

def loopBody584_100 : HolLoopProg 64 :=
.seq loopBody584_95 loopBody584_99

def loopBody584_101 : HolLoopProg 64 :=
.mark loopBody584_100

def loopBody584_102 : HolLoopProg 64 :=
.seq loopBody584_93 loopBody584_101

def loopBody584_103 : HolLoopProg 64 :=
.mark loopBody584_102

def output584 : Nat × List Nat × HolLoopProg 64 :=
  (648, [0], loopBody584_103)
end InitECandidate.Proofs.FrontendStages.Loop
