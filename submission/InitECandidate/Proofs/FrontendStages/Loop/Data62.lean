import InitECandidate.Proofs.FrontendStages.Loop.Translate46
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody62_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody62_1 : HolLoopProg 64 :=
.mark loopBody62_0

def loopBody62_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody62_3 : HolLoopProg 64 :=
.mark loopBody62_2

def loopBody62_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody62_5 : HolLoopProg 64 :=
.mark loopBody62_4

def loopBody62_6 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody62_5 loopBody62_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody62_7 : HolLoopProg 64 :=
.mark loopBody62_6

def loopBody62_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody62_9 : HolLoopProg 64 :=
.mark loopBody62_8

def loopBody62_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 1#64])
          (Flapjack.HolLoopExp.const 3#64)]))

def loopBody62_11 : HolLoopProg 64 :=
.mark loopBody62_10

def loopBody62_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody62_13 : HolLoopProg 64 :=
.mark loopBody62_12

def loopBody62_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.reg 4) loopBody62_5 loopBody62_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody62_15 : HolLoopProg 64 :=
.mark loopBody62_14

def loopBody62_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody62_17 : HolLoopProg 64 :=
.mark loopBody62_16

def loopBody62_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody62_19 : HolLoopProg 64 :=
.mark loopBody62_18

def loopBody62_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody62_21 : HolLoopProg 64 :=
.mark loopBody62_20

def loopBody62_22 : HolLoopProg 64 :=
.seq loopBody62_19 loopBody62_21

def loopBody62_23 : HolLoopProg 64 :=
.mark loopBody62_22

def loopBody62_24 : HolLoopProg 64 :=
.seq loopBody62_17 loopBody62_23

def loopBody62_25 : HolLoopProg 64 :=
.mark loopBody62_24

def loopBody62_26 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody62_25 loopBody62_21 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody62_27 : HolLoopProg 64 :=
.mark loopBody62_26

def loopBody62_28 : HolLoopProg 64 :=
.seq loopBody62_27 loopBody62_21

def loopBody62_29 : HolLoopProg 64 :=
.mark loopBody62_28

def loopBody62_30 : HolLoopProg 64 :=
.seq loopBody62_9 loopBody62_29

def loopBody62_31 : HolLoopProg 64 :=
.mark loopBody62_30

def loopBody62_32 : HolLoopProg 64 :=
.seq loopBody62_15 loopBody62_31

def loopBody62_33 : HolLoopProg 64 :=
.mark loopBody62_32

def loopBody62_34 : HolLoopProg 64 :=
.seq loopBody62_13 loopBody62_33

def loopBody62_35 : HolLoopProg 64 :=
.mark loopBody62_34

def loopBody62_36 : HolLoopProg 64 :=
.seq loopBody62_11 loopBody62_35

def loopBody62_37 : HolLoopProg 64 :=
.mark loopBody62_36

def loopBody62_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 1#64])

def loopBody62_39 : HolLoopProg 64 :=
.mark loopBody62_38

def loopBody62_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 2)

def loopBody62_41 : HolLoopProg 64 :=
.mark loopBody62_40

def loopBody62_42 : HolLoopProg 64 :=
.seq loopBody62_41 loopBody62_21

def loopBody62_43 : HolLoopProg 64 :=
.mark loopBody62_42

def loopBody62_44 : HolLoopProg 64 :=
.seq loopBody62_43 loopBody62_21

def loopBody62_45 : HolLoopProg 64 :=
.mark loopBody62_44

def loopBody62_46 : HolLoopProg 64 :=
.seq loopBody62_39 loopBody62_45

def loopBody62_47 : HolLoopProg 64 :=
.mark loopBody62_46

def loopBody62_48 : HolLoopProg 64 :=
.seq loopBody62_21 loopBody62_47

def loopBody62_49 : HolLoopProg 64 :=
.mark loopBody62_48

def loopBody62_50 : HolLoopProg 64 :=
.seq loopBody62_37 loopBody62_49

def loopBody62_51 : HolLoopProg 64 :=
.mark loopBody62_50

def loopBody62_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody62_53 : HolLoopProg 64 :=
.mark loopBody62_52

def loopBody62_54 : HolLoopProg 64 :=
.seq loopBody62_51 loopBody62_53

def loopBody62_55 : HolLoopProg 64 :=
.mark loopBody62_54

def loopBody62_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody62_57 : HolLoopProg 64 :=
.mark loopBody62_56

def loopBody62_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody62_55 loopBody62_57 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody62_59 : HolLoopProg 64 :=
.mark loopBody62_58

def loopBody62_60 : HolLoopProg 64 :=
.seq loopBody62_59 loopBody62_21

def loopBody62_61 : HolLoopProg 64 :=
.mark loopBody62_60

def loopBody62_62 : HolLoopProg 64 :=
.seq loopBody62_9 loopBody62_61

def loopBody62_63 : HolLoopProg 64 :=
.mark loopBody62_62

def loopBody62_64 : HolLoopProg 64 :=
.seq loopBody62_7 loopBody62_63

def loopBody62_65 : HolLoopProg 64 :=
.mark loopBody62_64

def loopBody62_66 : HolLoopProg 64 :=
.seq loopBody62_3 loopBody62_65

def loopBody62_67 : HolLoopProg 64 :=
.mark loopBody62_66

def loopBody62_68 : HolLoopProg 64 :=
.seq loopBody62_1 loopBody62_67

def loopBody62_69 : HolLoopProg 64 :=
.mark loopBody62_68

def loopBody62_70 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) loopBody62_69 (Flapjack.Spt.ln)

def loopBody62_71 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody62_72 : HolLoopProg 64 :=
.mark loopBody62_71

def loopBody62_73 : HolLoopProg 64 :=
.seq loopBody62_72 loopBody62_23

def loopBody62_74 : HolLoopProg 64 :=
.mark loopBody62_73

def loopBody62_75 : HolLoopProg 64 :=
.seq loopBody62_70 loopBody62_74

def output62 : Nat × List Nat × HolLoopProg 64 :=
  (126, [0, 1], loopBody62_75)
end InitECandidate.Proofs.FrontendStages.Loop
