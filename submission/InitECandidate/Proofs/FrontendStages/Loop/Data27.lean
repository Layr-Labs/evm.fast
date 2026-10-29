import InitECandidate.Proofs.FrontendStages.Loop.Translate11
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody27_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody27_1 : HolLoopProg 64 :=
.mark loopBody27_0

def loopBody27_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody27_3 : HolLoopProg 64 :=
.mark loopBody27_2

def loopBody27_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody27_5 : HolLoopProg 64 :=
.mark loopBody27_4

def loopBody27_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody27_7 : HolLoopProg 64 :=
.mark loopBody27_6

def loopBody27_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody27_9 : HolLoopProg 64 :=
.mark loopBody27_8

def loopBody27_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody27_11 : HolLoopProg 64 :=
.mark loopBody27_10

def loopBody27_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody27_9 loopBody27_11 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody27_13 : HolLoopProg 64 :=
.mark loopBody27_12

def loopBody27_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody27_15 : HolLoopProg 64 :=
.mark loopBody27_14

def loopBody27_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2])

def loopBody27_17 : HolLoopProg 64 :=
.mark loopBody27_16

def loopBody27_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 3 3

def loopBody27_19 : HolLoopProg 64 :=
.mark loopBody27_18

def loopBody27_20 : HolLoopProg 64 :=
.seq loopBody27_19 loopBody27_1

def loopBody27_21 : HolLoopProg 64 :=
.mark loopBody27_20

def loopBody27_22 : HolLoopProg 64 :=
.seq loopBody27_17 loopBody27_21

def loopBody27_23 : HolLoopProg 64 :=
.mark loopBody27_22

def loopBody27_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody27_25 : HolLoopProg 64 :=
.mark loopBody27_24

def loopBody27_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.shMem Flapjack.WordMemOp.store8 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 2688614400#64, Flapjack.HolLoopExp.var 2])

def loopBody27_27 : HolLoopProg 64 :=
.mark loopBody27_26

def loopBody27_28 : HolLoopProg 64 :=
.seq loopBody27_27 loopBody27_1

def loopBody27_29 : HolLoopProg 64 :=
.mark loopBody27_28

def loopBody27_30 : HolLoopProg 64 :=
.seq loopBody27_25 loopBody27_29

def loopBody27_31 : HolLoopProg 64 :=
.mark loopBody27_30

def loopBody27_32 : HolLoopProg 64 :=
.seq loopBody27_23 loopBody27_31

def loopBody27_33 : HolLoopProg 64 :=
.mark loopBody27_32

def loopBody27_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64])

def loopBody27_35 : HolLoopProg 64 :=
.mark loopBody27_34

def loopBody27_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 3)

def loopBody27_37 : HolLoopProg 64 :=
.mark loopBody27_36

def loopBody27_38 : HolLoopProg 64 :=
.seq loopBody27_37 loopBody27_1

def loopBody27_39 : HolLoopProg 64 :=
.mark loopBody27_38

def loopBody27_40 : HolLoopProg 64 :=
.seq loopBody27_39 loopBody27_1

def loopBody27_41 : HolLoopProg 64 :=
.mark loopBody27_40

def loopBody27_42 : HolLoopProg 64 :=
.seq loopBody27_35 loopBody27_41

def loopBody27_43 : HolLoopProg 64 :=
.mark loopBody27_42

def loopBody27_44 : HolLoopProg 64 :=
.seq loopBody27_1 loopBody27_43

def loopBody27_45 : HolLoopProg 64 :=
.mark loopBody27_44

def loopBody27_46 : HolLoopProg 64 :=
.seq loopBody27_33 loopBody27_45

def loopBody27_47 : HolLoopProg 64 :=
.mark loopBody27_46

def loopBody27_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody27_49 : HolLoopProg 64 :=
.mark loopBody27_48

def loopBody27_50 : HolLoopProg 64 :=
.seq loopBody27_47 loopBody27_49

def loopBody27_51 : HolLoopProg 64 :=
.mark loopBody27_50

def loopBody27_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody27_53 : HolLoopProg 64 :=
.mark loopBody27_52

def loopBody27_54 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody27_51 loopBody27_53 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody27_55 : HolLoopProg 64 :=
.mark loopBody27_54

def loopBody27_56 : HolLoopProg 64 :=
.seq loopBody27_55 loopBody27_1

def loopBody27_57 : HolLoopProg 64 :=
.mark loopBody27_56

def loopBody27_58 : HolLoopProg 64 :=
.seq loopBody27_15 loopBody27_57

def loopBody27_59 : HolLoopProg 64 :=
.mark loopBody27_58

def loopBody27_60 : HolLoopProg 64 :=
.seq loopBody27_13 loopBody27_59

def loopBody27_61 : HolLoopProg 64 :=
.mark loopBody27_60

def loopBody27_62 : HolLoopProg 64 :=
.seq loopBody27_7 loopBody27_61

def loopBody27_63 : HolLoopProg 64 :=
.mark loopBody27_62

def loopBody27_64 : HolLoopProg 64 :=
.seq loopBody27_5 loopBody27_63

def loopBody27_65 : HolLoopProg 64 :=
.mark loopBody27_64

def loopBody27_66 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) loopBody27_65 (Flapjack.Spt.ln)

def loopBody27_67 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody27_68 : HolLoopProg 64 :=
.mark loopBody27_67

def loopBody27_69 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody27_70 : HolLoopProg 64 :=
.mark loopBody27_69

def loopBody27_71 : HolLoopProg 64 :=
.seq loopBody27_70 loopBody27_1

def loopBody27_72 : HolLoopProg 64 :=
.mark loopBody27_71

def loopBody27_73 : HolLoopProg 64 :=
.seq loopBody27_68 loopBody27_72

def loopBody27_74 : HolLoopProg 64 :=
.mark loopBody27_73

def loopBody27_75 : HolLoopProg 64 :=
.seq loopBody27_66 loopBody27_74

def loopBody27_76 : HolLoopProg 64 :=
.seq loopBody27_3 loopBody27_75

def loopBody27_77 : HolLoopProg 64 :=
.seq loopBody27_1 loopBody27_76

def output27 : Nat × List Nat × HolLoopProg 64 :=
  (91, [0, 1], loopBody27_77)
end InitECandidate.Proofs.FrontendStages.Loop
