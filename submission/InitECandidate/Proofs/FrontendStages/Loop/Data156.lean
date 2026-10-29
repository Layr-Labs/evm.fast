import InitECandidate.Proofs.FrontendStages.Loop.Translate140
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody156_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody156_1 : HolLoopProg 64 :=
.mark loopBody156_0

def loopBody156_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 0)

def loopBody156_3 : HolLoopProg 64 :=
.mark loopBody156_2

def loopBody156_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody156_5 : HolLoopProg 64 :=
.mark loopBody156_4

def loopBody156_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody156_7 : HolLoopProg 64 :=
.mark loopBody156_6

def loopBody156_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody156_9 : HolLoopProg 64 :=
.mark loopBody156_8

def loopBody156_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody156_11 : HolLoopProg 64 :=
.mark loopBody156_10

def loopBody156_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody156_13 : HolLoopProg 64 :=
.mark loopBody156_12

def loopBody156_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 6

def loopBody156_15 : HolLoopProg 64 :=
.mark loopBody156_14

def loopBody156_16 : HolLoopProg 64 :=
.seq loopBody156_15 loopBody156_1

def loopBody156_17 : HolLoopProg 64 :=
.mark loopBody156_16

def loopBody156_18 : HolLoopProg 64 :=
.seq loopBody156_13 loopBody156_17

def loopBody156_19 : HolLoopProg 64 :=
.mark loopBody156_18

def loopBody156_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody156_21 : HolLoopProg 64 :=
.mark loopBody156_20

def loopBody156_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 8#64]) 6

def loopBody156_23 : HolLoopProg 64 :=
.mark loopBody156_22

def loopBody156_24 : HolLoopProg 64 :=
.seq loopBody156_23 loopBody156_1

def loopBody156_25 : HolLoopProg 64 :=
.mark loopBody156_24

def loopBody156_26 : HolLoopProg 64 :=
.seq loopBody156_21 loopBody156_25

def loopBody156_27 : HolLoopProg 64 :=
.mark loopBody156_26

def loopBody156_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody156_29 : HolLoopProg 64 :=
.mark loopBody156_28

def loopBody156_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 16#64]) 6

def loopBody156_31 : HolLoopProg 64 :=
.mark loopBody156_30

def loopBody156_32 : HolLoopProg 64 :=
.seq loopBody156_31 loopBody156_1

def loopBody156_33 : HolLoopProg 64 :=
.mark loopBody156_32

def loopBody156_34 : HolLoopProg 64 :=
.seq loopBody156_29 loopBody156_33

def loopBody156_35 : HolLoopProg 64 :=
.mark loopBody156_34

def loopBody156_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody156_37 : HolLoopProg 64 :=
.mark loopBody156_36

def loopBody156_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 24#64]) 6

def loopBody156_39 : HolLoopProg 64 :=
.mark loopBody156_38

def loopBody156_40 : HolLoopProg 64 :=
.seq loopBody156_39 loopBody156_1

def loopBody156_41 : HolLoopProg 64 :=
.mark loopBody156_40

def loopBody156_42 : HolLoopProg 64 :=
.seq loopBody156_37 loopBody156_41

def loopBody156_43 : HolLoopProg 64 :=
.mark loopBody156_42

def loopBody156_44 : HolLoopProg 64 :=
.seq loopBody156_43 loopBody156_1

def loopBody156_45 : HolLoopProg 64 :=
.mark loopBody156_44

def loopBody156_46 : HolLoopProg 64 :=
.seq loopBody156_35 loopBody156_45

def loopBody156_47 : HolLoopProg 64 :=
.mark loopBody156_46

def loopBody156_48 : HolLoopProg 64 :=
.seq loopBody156_27 loopBody156_47

def loopBody156_49 : HolLoopProg 64 :=
.mark loopBody156_48

def loopBody156_50 : HolLoopProg 64 :=
.seq loopBody156_19 loopBody156_49

def loopBody156_51 : HolLoopProg 64 :=
.mark loopBody156_50

def loopBody156_52 : HolLoopProg 64 :=
.seq loopBody156_11 loopBody156_51

def loopBody156_53 : HolLoopProg 64 :=
.mark loopBody156_52

def loopBody156_54 : HolLoopProg 64 :=
.seq loopBody156_1 loopBody156_53

def loopBody156_55 : HolLoopProg 64 :=
.mark loopBody156_54

def loopBody156_56 : HolLoopProg 64 :=
.seq loopBody156_9 loopBody156_55

def loopBody156_57 : HolLoopProg 64 :=
.mark loopBody156_56

def loopBody156_58 : HolLoopProg 64 :=
.seq loopBody156_1 loopBody156_57

def loopBody156_59 : HolLoopProg 64 :=
.mark loopBody156_58

def loopBody156_60 : HolLoopProg 64 :=
.seq loopBody156_7 loopBody156_59

def loopBody156_61 : HolLoopProg 64 :=
.mark loopBody156_60

def loopBody156_62 : HolLoopProg 64 :=
.seq loopBody156_1 loopBody156_61

def loopBody156_63 : HolLoopProg 64 :=
.mark loopBody156_62

def loopBody156_64 : HolLoopProg 64 :=
.seq loopBody156_5 loopBody156_63

def loopBody156_65 : HolLoopProg 64 :=
.mark loopBody156_64

def loopBody156_66 : HolLoopProg 64 :=
.seq loopBody156_1 loopBody156_65

def loopBody156_67 : HolLoopProg 64 :=
.mark loopBody156_66

def loopBody156_68 : HolLoopProg 64 :=
.seq loopBody156_3 loopBody156_67

def loopBody156_69 : HolLoopProg 64 :=
.mark loopBody156_68

def loopBody156_70 : HolLoopProg 64 :=
.seq loopBody156_1 loopBody156_69

def loopBody156_71 : HolLoopProg 64 :=
.mark loopBody156_70

def loopBody156_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64])

def loopBody156_73 : HolLoopProg 64 :=
.mark loopBody156_72

def loopBody156_74 : HolLoopProg 64 :=
.seq loopBody156_73 loopBody156_67

def loopBody156_75 : HolLoopProg 64 :=
.mark loopBody156_74

def loopBody156_76 : HolLoopProg 64 :=
.seq loopBody156_1 loopBody156_75

def loopBody156_77 : HolLoopProg 64 :=
.mark loopBody156_76

def loopBody156_78 : HolLoopProg 64 :=
.seq loopBody156_71 loopBody156_77

def loopBody156_79 : HolLoopProg 64 :=
.mark loopBody156_78

def loopBody156_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 64#64])

def loopBody156_81 : HolLoopProg 64 :=
.mark loopBody156_80

def loopBody156_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody156_83 : HolLoopProg 64 :=
.mark loopBody156_82

def loopBody156_84 : HolLoopProg 64 :=
.seq loopBody156_83 loopBody156_63

def loopBody156_85 : HolLoopProg 64 :=
.mark loopBody156_84

def loopBody156_86 : HolLoopProg 64 :=
.seq loopBody156_1 loopBody156_85

def loopBody156_87 : HolLoopProg 64 :=
.mark loopBody156_86

def loopBody156_88 : HolLoopProg 64 :=
.seq loopBody156_81 loopBody156_87

def loopBody156_89 : HolLoopProg 64 :=
.mark loopBody156_88

def loopBody156_90 : HolLoopProg 64 :=
.seq loopBody156_1 loopBody156_89

def loopBody156_91 : HolLoopProg 64 :=
.mark loopBody156_90

def loopBody156_92 : HolLoopProg 64 :=
.seq loopBody156_79 loopBody156_91

def loopBody156_93 : HolLoopProg 64 :=
.mark loopBody156_92

def loopBody156_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody156_95 : HolLoopProg 64 :=
.mark loopBody156_94

def loopBody156_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody156_97 : HolLoopProg 64 :=
.mark loopBody156_96

def loopBody156_98 : HolLoopProg 64 :=
.seq loopBody156_97 loopBody156_1

def loopBody156_99 : HolLoopProg 64 :=
.mark loopBody156_98

def loopBody156_100 : HolLoopProg 64 :=
.seq loopBody156_95 loopBody156_99

def loopBody156_101 : HolLoopProg 64 :=
.mark loopBody156_100

def loopBody156_102 : HolLoopProg 64 :=
.seq loopBody156_93 loopBody156_101

def loopBody156_103 : HolLoopProg 64 :=
.mark loopBody156_102

def output156 : Nat × List Nat × HolLoopProg 64 :=
  (220, [0], loopBody156_103)
end InitECandidate.Proofs.FrontendStages.Loop
