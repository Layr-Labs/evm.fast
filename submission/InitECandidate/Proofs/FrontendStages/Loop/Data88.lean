import InitECandidate.Proofs.FrontendStages.Loop.Translate72
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody88_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody88_1 : HolLoopProg 64 :=
.mark loopBody88_0

def loopBody88_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody88_3 : HolLoopProg 64 :=
.mark loopBody88_2

def loopBody88_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody88_5 : HolLoopProg 64 :=
.mark loopBody88_4

def loopBody88_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 8#64)

def loopBody88_7 : HolLoopProg 64 :=
.mark loopBody88_6

def loopBody88_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody88_9 : HolLoopProg 64 :=
.mark loopBody88_8

def loopBody88_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody88_11 : HolLoopProg 64 :=
.mark loopBody88_10

def loopBody88_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.RegImm.reg 5) loopBody88_9 loopBody88_11 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody88_13 : HolLoopProg 64 :=
.mark loopBody88_12

def loopBody88_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody88_15 : HolLoopProg 64 :=
.mark loopBody88_14

def loopBody88_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 2#64)])

def loopBody88_17 : HolLoopProg 64 :=
.mark loopBody88_16

def loopBody88_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 3#64)]))

def loopBody88_19 : HolLoopProg 64 :=
.mark loopBody88_18

def loopBody88_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody88_21 : HolLoopProg 64 :=
.mark loopBody88_20

def loopBody88_22 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 88) ([4, 5]) (some (4, loopBody88_21, loopBody88_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody88_23 : HolLoopProg 64 :=
.mark loopBody88_22

def loopBody88_24 : HolLoopProg 64 :=
.seq loopBody88_23 loopBody88_1

def loopBody88_25 : HolLoopProg 64 :=
.mark loopBody88_24

def loopBody88_26 : HolLoopProg 64 :=
.seq loopBody88_19 loopBody88_25

def loopBody88_27 : HolLoopProg 64 :=
.mark loopBody88_26

def loopBody88_28 : HolLoopProg 64 :=
.seq loopBody88_17 loopBody88_27

def loopBody88_29 : HolLoopProg 64 :=
.mark loopBody88_28

def loopBody88_30 : HolLoopProg 64 :=
.seq loopBody88_1 loopBody88_29

def loopBody88_31 : HolLoopProg 64 :=
.mark loopBody88_30

def loopBody88_32 : HolLoopProg 64 :=
.seq loopBody88_1 loopBody88_31

def loopBody88_33 : HolLoopProg 64 :=
.mark loopBody88_32

def loopBody88_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64])

def loopBody88_35 : HolLoopProg 64 :=
.mark loopBody88_34

def loopBody88_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 3)

def loopBody88_37 : HolLoopProg 64 :=
.mark loopBody88_36

def loopBody88_38 : HolLoopProg 64 :=
.seq loopBody88_37 loopBody88_1

def loopBody88_39 : HolLoopProg 64 :=
.mark loopBody88_38

def loopBody88_40 : HolLoopProg 64 :=
.seq loopBody88_39 loopBody88_1

def loopBody88_41 : HolLoopProg 64 :=
.mark loopBody88_40

def loopBody88_42 : HolLoopProg 64 :=
.seq loopBody88_35 loopBody88_41

def loopBody88_43 : HolLoopProg 64 :=
.mark loopBody88_42

def loopBody88_44 : HolLoopProg 64 :=
.seq loopBody88_1 loopBody88_43

def loopBody88_45 : HolLoopProg 64 :=
.mark loopBody88_44

def loopBody88_46 : HolLoopProg 64 :=
.seq loopBody88_33 loopBody88_45

def loopBody88_47 : HolLoopProg 64 :=
.mark loopBody88_46

def loopBody88_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody88_49 : HolLoopProg 64 :=
.mark loopBody88_48

def loopBody88_50 : HolLoopProg 64 :=
.seq loopBody88_47 loopBody88_49

def loopBody88_51 : HolLoopProg 64 :=
.mark loopBody88_50

def loopBody88_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody88_53 : HolLoopProg 64 :=
.mark loopBody88_52

def loopBody88_54 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody88_51 loopBody88_53 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody88_55 : HolLoopProg 64 :=
.mark loopBody88_54

def loopBody88_56 : HolLoopProg 64 :=
.seq loopBody88_55 loopBody88_1

def loopBody88_57 : HolLoopProg 64 :=
.mark loopBody88_56

def loopBody88_58 : HolLoopProg 64 :=
.seq loopBody88_15 loopBody88_57

def loopBody88_59 : HolLoopProg 64 :=
.mark loopBody88_58

def loopBody88_60 : HolLoopProg 64 :=
.seq loopBody88_13 loopBody88_59

def loopBody88_61 : HolLoopProg 64 :=
.mark loopBody88_60

def loopBody88_62 : HolLoopProg 64 :=
.seq loopBody88_7 loopBody88_61

def loopBody88_63 : HolLoopProg 64 :=
.mark loopBody88_62

def loopBody88_64 : HolLoopProg 64 :=
.seq loopBody88_5 loopBody88_63

def loopBody88_65 : HolLoopProg 64 :=
.mark loopBody88_64

def loopBody88_66 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) loopBody88_65 (Flapjack.Spt.ln)

def loopBody88_67 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody88_68 : HolLoopProg 64 :=
.mark loopBody88_67

def loopBody88_69 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody88_70 : HolLoopProg 64 :=
.mark loopBody88_69

def loopBody88_71 : HolLoopProg 64 :=
.seq loopBody88_70 loopBody88_1

def loopBody88_72 : HolLoopProg 64 :=
.mark loopBody88_71

def loopBody88_73 : HolLoopProg 64 :=
.seq loopBody88_68 loopBody88_72

def loopBody88_74 : HolLoopProg 64 :=
.mark loopBody88_73

def loopBody88_75 : HolLoopProg 64 :=
.seq loopBody88_66 loopBody88_74

def loopBody88_76 : HolLoopProg 64 :=
.seq loopBody88_3 loopBody88_75

def loopBody88_77 : HolLoopProg 64 :=
.seq loopBody88_1 loopBody88_76

def output88 : Nat × List Nat × HolLoopProg 64 :=
  (152, [0, 1], loopBody88_77)
end InitECandidate.Proofs.FrontendStages.Loop
