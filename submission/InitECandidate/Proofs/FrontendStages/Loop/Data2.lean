import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody2_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody2_1 : HolLoopProg 64 :=
.mark loopBody2_0

def loopBody2_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 0)

def loopBody2_3 : HolLoopProg 64 :=
.mark loopBody2_2

def loopBody2_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.shMem Flapjack.WordMemOp.store8 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 2688614400#64, Flapjack.HolLoopExp.const 33#64])

def loopBody2_5 : HolLoopProg 64 :=
.mark loopBody2_4

def loopBody2_6 : HolLoopProg 64 :=
.seq loopBody2_5 loopBody2_1

def loopBody2_7 : HolLoopProg 64 :=
.mark loopBody2_6

def loopBody2_8 : HolLoopProg 64 :=
.seq loopBody2_3 loopBody2_7

def loopBody2_9 : HolLoopProg 64 :=
.mark loopBody2_8

def loopBody2_10 : HolLoopProg 64 :=
.seq loopBody2_1 loopBody2_9

def loopBody2_11 : HolLoopProg 64 :=
.mark loopBody2_10

def loopBody2_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 8#64]))

def loopBody2_13 : HolLoopProg 64 :=
.mark loopBody2_12

def loopBody2_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.shMem Flapjack.WordMemOp.store 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 2688614400#64, Flapjack.HolLoopExp.const 40#64])

def loopBody2_15 : HolLoopProg 64 :=
.mark loopBody2_14

def loopBody2_16 : HolLoopProg 64 :=
.seq loopBody2_15 loopBody2_1

def loopBody2_17 : HolLoopProg 64 :=
.mark loopBody2_16

def loopBody2_18 : HolLoopProg 64 :=
.seq loopBody2_13 loopBody2_17

def loopBody2_19 : HolLoopProg 64 :=
.mark loopBody2_18

def loopBody2_20 : HolLoopProg 64 :=
.seq loopBody2_1 loopBody2_19

def loopBody2_21 : HolLoopProg 64 :=
.mark loopBody2_20

def loopBody2_22 : HolLoopProg 64 :=
.seq loopBody2_11 loopBody2_21

def loopBody2_23 : HolLoopProg 64 :=
.mark loopBody2_22

def loopBody2_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 16#64]))

def loopBody2_25 : HolLoopProg 64 :=
.mark loopBody2_24

def loopBody2_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.shMem Flapjack.WordMemOp.store 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 2688614400#64, Flapjack.HolLoopExp.const 48#64])

def loopBody2_27 : HolLoopProg 64 :=
.mark loopBody2_26

def loopBody2_28 : HolLoopProg 64 :=
.seq loopBody2_27 loopBody2_1

def loopBody2_29 : HolLoopProg 64 :=
.mark loopBody2_28

def loopBody2_30 : HolLoopProg 64 :=
.seq loopBody2_25 loopBody2_29

def loopBody2_31 : HolLoopProg 64 :=
.mark loopBody2_30

def loopBody2_32 : HolLoopProg 64 :=
.seq loopBody2_1 loopBody2_31

def loopBody2_33 : HolLoopProg 64 :=
.mark loopBody2_32

def loopBody2_34 : HolLoopProg 64 :=
.seq loopBody2_23 loopBody2_33

def loopBody2_35 : HolLoopProg 64 :=
.mark loopBody2_34

def loopBody2_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 Flapjack.HolLoopExp.baseAddr

def loopBody2_37 : HolLoopProg 64 :=
.mark loopBody2_36

def loopBody2_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody2_39 : HolLoopProg 64 :=
.mark loopBody2_38

def loopBody2_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 Flapjack.HolLoopExp.baseAddr

def loopBody2_41 : HolLoopProg 64 :=
.mark loopBody2_40

def loopBody2_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody2_43 : HolLoopProg 64 :=
.mark loopBody2_42

def loopBody2_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.ffi (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8]) 1 2 3 4
  (Flapjack.Spt.ls PUnit.unit)

def loopBody2_45 : HolLoopProg 64 :=
.mark loopBody2_44

def loopBody2_46 : HolLoopProg 64 :=
.seq loopBody2_43 loopBody2_45

def loopBody2_47 : HolLoopProg 64 :=
.mark loopBody2_46

def loopBody2_48 : HolLoopProg 64 :=
.seq loopBody2_1 loopBody2_47

def loopBody2_49 : HolLoopProg 64 :=
.mark loopBody2_48

def loopBody2_50 : HolLoopProg 64 :=
.seq loopBody2_41 loopBody2_49

def loopBody2_51 : HolLoopProg 64 :=
.mark loopBody2_50

def loopBody2_52 : HolLoopProg 64 :=
.seq loopBody2_1 loopBody2_51

def loopBody2_53 : HolLoopProg 64 :=
.mark loopBody2_52

def loopBody2_54 : HolLoopProg 64 :=
.seq loopBody2_39 loopBody2_53

def loopBody2_55 : HolLoopProg 64 :=
.mark loopBody2_54

def loopBody2_56 : HolLoopProg 64 :=
.seq loopBody2_1 loopBody2_55

def loopBody2_57 : HolLoopProg 64 :=
.mark loopBody2_56

def loopBody2_58 : HolLoopProg 64 :=
.seq loopBody2_37 loopBody2_57

def loopBody2_59 : HolLoopProg 64 :=
.mark loopBody2_58

def loopBody2_60 : HolLoopProg 64 :=
.seq loopBody2_1 loopBody2_59

def loopBody2_61 : HolLoopProg 64 :=
.mark loopBody2_60

def loopBody2_62 : HolLoopProg 64 :=
.seq loopBody2_35 loopBody2_61

def loopBody2_63 : HolLoopProg 64 :=
.mark loopBody2_62

def loopBody2_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 1)

def loopBody2_65 : HolLoopProg 64 :=
.mark loopBody2_64

def loopBody2_66 : HolLoopProg 64 :=
.seq loopBody2_65 loopBody2_1

def loopBody2_67 : HolLoopProg 64 :=
.mark loopBody2_66

def loopBody2_68 : HolLoopProg 64 :=
.seq loopBody2_67 loopBody2_1

def loopBody2_69 : HolLoopProg 64 :=
.mark loopBody2_68

def loopBody2_70 : HolLoopProg 64 :=
.seq loopBody2_3 loopBody2_69

def loopBody2_71 : HolLoopProg 64 :=
.mark loopBody2_70

def loopBody2_72 : HolLoopProg 64 :=
.seq loopBody2_1 loopBody2_71

def loopBody2_73 : HolLoopProg 64 :=
.mark loopBody2_72

def loopBody2_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody2_75 : HolLoopProg 64 :=
.mark loopBody2_74

def loopBody2_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 1

def loopBody2_77 : HolLoopProg 64 :=
.mark loopBody2_76

def loopBody2_78 : HolLoopProg 64 :=
.seq loopBody2_75 loopBody2_77

def loopBody2_79 : HolLoopProg 64 :=
.mark loopBody2_78

def loopBody2_80 : HolLoopProg 64 :=
.seq loopBody2_73 loopBody2_79

def loopBody2_81 : HolLoopProg 64 :=
.mark loopBody2_80

def loopBody2_82 : HolLoopProg 64 :=
.seq loopBody2_63 loopBody2_81

def loopBody2_83 : HolLoopProg 64 :=
.mark loopBody2_82

def output2 : Nat × List Nat × HolLoopProg 64 :=
  (66, [0], loopBody2_83)
end InitECandidate.Proofs.FrontendStages.Loop
