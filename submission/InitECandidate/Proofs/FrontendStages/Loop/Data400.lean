import InitECandidate.Proofs.FrontendStages.Loop.Translate384
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody400_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody400_1 : HolLoopProg 64 :=
.mark loopBody400_0

def loopBody400_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 31#64])

def loopBody400_3 : HolLoopProg 64 :=
.mark loopBody400_2

def loopBody400_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody400_5 : HolLoopProg 64 :=
.mark loopBody400_4

def loopBody400_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody400_7 : HolLoopProg 64 :=
.mark loopBody400_6

def loopBody400_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody400_9 : HolLoopProg 64 :=
.mark loopBody400_8

def loopBody400_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody400_11 : HolLoopProg 64 :=
.mark loopBody400_10

def loopBody400_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody400_9 loopBody400_11 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody400_13 : HolLoopProg 64 :=
.mark loopBody400_12

def loopBody400_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody400_15 : HolLoopProg 64 :=
.mark loopBody400_14

def loopBody400_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody400_17 : HolLoopProg 64 :=
.mark loopBody400_16

def loopBody400_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody400_19 : HolLoopProg 64 :=
.mark loopBody400_18

def loopBody400_20 : HolLoopProg 64 :=
.seq loopBody400_19 loopBody400_1

def loopBody400_21 : HolLoopProg 64 :=
.mark loopBody400_20

def loopBody400_22 : HolLoopProg 64 :=
.seq loopBody400_17 loopBody400_21

def loopBody400_23 : HolLoopProg 64 :=
.mark loopBody400_22

def loopBody400_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody400_23 loopBody400_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody400_25 : HolLoopProg 64 :=
.mark loopBody400_24

def loopBody400_26 : HolLoopProg 64 :=
.seq loopBody400_25 loopBody400_1

def loopBody400_27 : HolLoopProg 64 :=
.mark loopBody400_26

def loopBody400_28 : HolLoopProg 64 :=
.seq loopBody400_15 loopBody400_27

def loopBody400_29 : HolLoopProg 64 :=
.mark loopBody400_28

def loopBody400_30 : HolLoopProg 64 :=
.seq loopBody400_13 loopBody400_29

def loopBody400_31 : HolLoopProg 64 :=
.mark loopBody400_30

def loopBody400_32 : HolLoopProg 64 :=
.seq loopBody400_7 loopBody400_31

def loopBody400_33 : HolLoopProg 64 :=
.mark loopBody400_32

def loopBody400_34 : HolLoopProg 64 :=
.seq loopBody400_5 loopBody400_33

def loopBody400_35 : HolLoopProg 64 :=
.mark loopBody400_34

def loopBody400_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody400_37 : HolLoopProg 64 :=
.mark loopBody400_36

def loopBody400_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 32#64, Flapjack.HolLoopExp.var 1])

def loopBody400_39 : HolLoopProg 64 :=
.mark loopBody400_38

def loopBody400_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody400_41 : HolLoopProg 64 :=
.mark loopBody400_40

def loopBody400_42 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 463) ([3, 4]) (some (3, loopBody400_41, loopBody400_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody400_43 : HolLoopProg 64 :=
.mark loopBody400_42

def loopBody400_44 : HolLoopProg 64 :=
.seq loopBody400_43 loopBody400_1

def loopBody400_45 : HolLoopProg 64 :=
.mark loopBody400_44

def loopBody400_46 : HolLoopProg 64 :=
.seq loopBody400_39 loopBody400_45

def loopBody400_47 : HolLoopProg 64 :=
.mark loopBody400_46

def loopBody400_48 : HolLoopProg 64 :=
.seq loopBody400_37 loopBody400_47

def loopBody400_49 : HolLoopProg 64 :=
.mark loopBody400_48

def loopBody400_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody400_51 : HolLoopProg 64 :=
.mark loopBody400_50

def loopBody400_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody400_53 : HolLoopProg 64 :=
.mark loopBody400_52

def loopBody400_54 : HolLoopProg 64 :=
.seq loopBody400_53 loopBody400_1

def loopBody400_55 : HolLoopProg 64 :=
.mark loopBody400_54

def loopBody400_56 : HolLoopProg 64 :=
.seq loopBody400_51 loopBody400_55

def loopBody400_57 : HolLoopProg 64 :=
.mark loopBody400_56

def loopBody400_58 : HolLoopProg 64 :=
.seq loopBody400_49 loopBody400_57

def loopBody400_59 : HolLoopProg 64 :=
.mark loopBody400_58

def loopBody400_60 : HolLoopProg 64 :=
.seq loopBody400_1 loopBody400_59

def loopBody400_61 : HolLoopProg 64 :=
.mark loopBody400_60

def loopBody400_62 : HolLoopProg 64 :=
.seq loopBody400_1 loopBody400_61

def loopBody400_63 : HolLoopProg 64 :=
.mark loopBody400_62

def loopBody400_64 : HolLoopProg 64 :=
.seq loopBody400_35 loopBody400_63

def loopBody400_65 : HolLoopProg 64 :=
.mark loopBody400_64

def loopBody400_66 : HolLoopProg 64 :=
.seq loopBody400_3 loopBody400_65

def loopBody400_67 : HolLoopProg 64 :=
.mark loopBody400_66

def loopBody400_68 : HolLoopProg 64 :=
.seq loopBody400_1 loopBody400_67

def loopBody400_69 : HolLoopProg 64 :=
.mark loopBody400_68

def output400 : Nat × List Nat × HolLoopProg 64 :=
  (464, [0], loopBody400_69)
end InitECandidate.Proofs.FrontendStages.Loop
