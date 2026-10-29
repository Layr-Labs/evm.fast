import InitECandidate.Proofs.FrontendStages.Loop.Translate93
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody109_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody109_1 : HolLoopProg 64 :=
.mark loopBody109_0

def loopBody109_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody109_3 : HolLoopProg 64 :=
.mark loopBody109_2

def loopBody109_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody109_5 : HolLoopProg 64 :=
.mark loopBody109_4

def loopBody109_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody109_7 : HolLoopProg 64 :=
.mark loopBody109_6

def loopBody109_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody109_9 : HolLoopProg 64 :=
.mark loopBody109_8

def loopBody109_10 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.RegImm.reg 6) loopBody109_9 loopBody109_5 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody109_11 : HolLoopProg 64 :=
.mark loopBody109_10

def loopBody109_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody109_13 : HolLoopProg 64 :=
.mark loopBody109_12

def loopBody109_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody109_15 : HolLoopProg 64 :=
.mark loopBody109_14

def loopBody109_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 4)

def loopBody109_17 : HolLoopProg 64 :=
.mark loopBody109_16

def loopBody109_18 : HolLoopProg 64 :=
.seq loopBody109_17 loopBody109_1

def loopBody109_19 : HolLoopProg 64 :=
.mark loopBody109_18

def loopBody109_20 : HolLoopProg 64 :=
.seq loopBody109_19 loopBody109_1

def loopBody109_21 : HolLoopProg 64 :=
.mark loopBody109_20

def loopBody109_22 : HolLoopProg 64 :=
.seq loopBody109_15 loopBody109_21

def loopBody109_23 : HolLoopProg 64 :=
.mark loopBody109_22

def loopBody109_24 : HolLoopProg 64 :=
.seq loopBody109_1 loopBody109_23

def loopBody109_25 : HolLoopProg 64 :=
.mark loopBody109_24

def loopBody109_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3])

def loopBody109_27 : HolLoopProg 64 :=
.mark loopBody109_26

def loopBody109_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody109_29 : HolLoopProg 64 :=
.mark loopBody109_28

def loopBody109_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 4 5

def loopBody109_31 : HolLoopProg 64 :=
.mark loopBody109_30

def loopBody109_32 : HolLoopProg 64 :=
.seq loopBody109_31 loopBody109_1

def loopBody109_33 : HolLoopProg 64 :=
.mark loopBody109_32

def loopBody109_34 : HolLoopProg 64 :=
.seq loopBody109_29 loopBody109_33

def loopBody109_35 : HolLoopProg 64 :=
.mark loopBody109_34

def loopBody109_36 : HolLoopProg 64 :=
.seq loopBody109_27 loopBody109_35

def loopBody109_37 : HolLoopProg 64 :=
.mark loopBody109_36

def loopBody109_38 : HolLoopProg 64 :=
.seq loopBody109_25 loopBody109_37

def loopBody109_39 : HolLoopProg 64 :=
.mark loopBody109_38

def loopBody109_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 8#64))

def loopBody109_41 : HolLoopProg 64 :=
.mark loopBody109_40

def loopBody109_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 4)

def loopBody109_43 : HolLoopProg 64 :=
.mark loopBody109_42

def loopBody109_44 : HolLoopProg 64 :=
.seq loopBody109_43 loopBody109_1

def loopBody109_45 : HolLoopProg 64 :=
.mark loopBody109_44

def loopBody109_46 : HolLoopProg 64 :=
.seq loopBody109_45 loopBody109_1

def loopBody109_47 : HolLoopProg 64 :=
.mark loopBody109_46

def loopBody109_48 : HolLoopProg 64 :=
.seq loopBody109_41 loopBody109_47

def loopBody109_49 : HolLoopProg 64 :=
.mark loopBody109_48

def loopBody109_50 : HolLoopProg 64 :=
.seq loopBody109_1 loopBody109_49

def loopBody109_51 : HolLoopProg 64 :=
.mark loopBody109_50

def loopBody109_52 : HolLoopProg 64 :=
.seq loopBody109_39 loopBody109_51

def loopBody109_53 : HolLoopProg 64 :=
.mark loopBody109_52

def loopBody109_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody109_55 : HolLoopProg 64 :=
.mark loopBody109_54

def loopBody109_56 : HolLoopProg 64 :=
.seq loopBody109_53 loopBody109_55

def loopBody109_57 : HolLoopProg 64 :=
.mark loopBody109_56

def loopBody109_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody109_59 : HolLoopProg 64 :=
.mark loopBody109_58

def loopBody109_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody109_57 loopBody109_59 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody109_61 : HolLoopProg 64 :=
.mark loopBody109_60

def loopBody109_62 : HolLoopProg 64 :=
.seq loopBody109_61 loopBody109_1

def loopBody109_63 : HolLoopProg 64 :=
.mark loopBody109_62

def loopBody109_64 : HolLoopProg 64 :=
.seq loopBody109_13 loopBody109_63

def loopBody109_65 : HolLoopProg 64 :=
.mark loopBody109_64

def loopBody109_66 : HolLoopProg 64 :=
.seq loopBody109_11 loopBody109_65

def loopBody109_67 : HolLoopProg 64 :=
.mark loopBody109_66

def loopBody109_68 : HolLoopProg 64 :=
.seq loopBody109_7 loopBody109_67

def loopBody109_69 : HolLoopProg 64 :=
.mark loopBody109_68

def loopBody109_70 : HolLoopProg 64 :=
.seq loopBody109_5 loopBody109_69

def loopBody109_71 : HolLoopProg 64 :=
.mark loopBody109_70

def loopBody109_72 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody109_71 (Flapjack.Spt.ln)

def loopBody109_73 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody109_74 : HolLoopProg 64 :=
.mark loopBody109_73

def loopBody109_75 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody109_76 : HolLoopProg 64 :=
.mark loopBody109_75

def loopBody109_77 : HolLoopProg 64 :=
.seq loopBody109_76 loopBody109_1

def loopBody109_78 : HolLoopProg 64 :=
.mark loopBody109_77

def loopBody109_79 : HolLoopProg 64 :=
.seq loopBody109_74 loopBody109_78

def loopBody109_80 : HolLoopProg 64 :=
.mark loopBody109_79

def loopBody109_81 : HolLoopProg 64 :=
.seq loopBody109_72 loopBody109_80

def loopBody109_82 : HolLoopProg 64 :=
.seq loopBody109_3 loopBody109_81

def loopBody109_83 : HolLoopProg 64 :=
.seq loopBody109_1 loopBody109_82

def output109 : Nat × List Nat × HolLoopProg 64 :=
  (173, [0, 1, 2], loopBody109_83)
end InitECandidate.Proofs.FrontendStages.Loop
