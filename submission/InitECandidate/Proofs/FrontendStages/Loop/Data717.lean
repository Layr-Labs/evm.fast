import InitECandidate.Proofs.FrontendStages.Loop.Translate701
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody717_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody717_1 : HolLoopProg 64 :=
.mark loopBody717_0

def loopBody717_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody717_3 : HolLoopProg 64 :=
.mark loopBody717_2

def loopBody717_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody717_5 : HolLoopProg 64 :=
.mark loopBody717_4

def loopBody717_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody717_7 : HolLoopProg 64 :=
.mark loopBody717_6

def loopBody717_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.reg 4) loopBody717_5 loopBody717_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody717_9 : HolLoopProg 64 :=
.mark loopBody717_8

def loopBody717_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody717_11 : HolLoopProg 64 :=
.mark loopBody717_10

def loopBody717_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody717_13 : HolLoopProg 64 :=
.mark loopBody717_12

def loopBody717_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody717_15 : HolLoopProg 64 :=
.mark loopBody717_14

def loopBody717_16 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 729) ([3, 4]) (some (3, loopBody717_15, loopBody717_13, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody717_17 : HolLoopProg 64 :=
.mark loopBody717_16

def loopBody717_18 : HolLoopProg 64 :=
.seq loopBody717_17 loopBody717_13

def loopBody717_19 : HolLoopProg 64 :=
.mark loopBody717_18

def loopBody717_20 : HolLoopProg 64 :=
.seq loopBody717_3 loopBody717_19

def loopBody717_21 : HolLoopProg 64 :=
.mark loopBody717_20

def loopBody717_22 : HolLoopProg 64 :=
.seq loopBody717_1 loopBody717_21

def loopBody717_23 : HolLoopProg 64 :=
.mark loopBody717_22

def loopBody717_24 : HolLoopProg 64 :=
.seq loopBody717_13 loopBody717_23

def loopBody717_25 : HolLoopProg 64 :=
.mark loopBody717_24

def loopBody717_26 : HolLoopProg 64 :=
.seq loopBody717_13 loopBody717_25

def loopBody717_27 : HolLoopProg 64 :=
.mark loopBody717_26

def loopBody717_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 192#64])

def loopBody717_29 : HolLoopProg 64 :=
.mark loopBody717_28

def loopBody717_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 192#64])

def loopBody717_31 : HolLoopProg 64 :=
.mark loopBody717_30

def loopBody717_32 : HolLoopProg 64 :=
.seq loopBody717_31 loopBody717_19

def loopBody717_33 : HolLoopProg 64 :=
.mark loopBody717_32

def loopBody717_34 : HolLoopProg 64 :=
.seq loopBody717_29 loopBody717_33

def loopBody717_35 : HolLoopProg 64 :=
.mark loopBody717_34

def loopBody717_36 : HolLoopProg 64 :=
.seq loopBody717_13 loopBody717_35

def loopBody717_37 : HolLoopProg 64 :=
.mark loopBody717_36

def loopBody717_38 : HolLoopProg 64 :=
.seq loopBody717_13 loopBody717_37

def loopBody717_39 : HolLoopProg 64 :=
.mark loopBody717_38

def loopBody717_40 : HolLoopProg 64 :=
.seq loopBody717_27 loopBody717_39

def loopBody717_41 : HolLoopProg 64 :=
.mark loopBody717_40

def loopBody717_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody717_41 loopBody717_13 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody717_43 : HolLoopProg 64 :=
.mark loopBody717_42

def loopBody717_44 : HolLoopProg 64 :=
.seq loopBody717_43 loopBody717_13

def loopBody717_45 : HolLoopProg 64 :=
.mark loopBody717_44

def loopBody717_46 : HolLoopProg 64 :=
.seq loopBody717_11 loopBody717_45

def loopBody717_47 : HolLoopProg 64 :=
.mark loopBody717_46

def loopBody717_48 : HolLoopProg 64 :=
.seq loopBody717_9 loopBody717_47

def loopBody717_49 : HolLoopProg 64 :=
.mark loopBody717_48

def loopBody717_50 : HolLoopProg 64 :=
.seq loopBody717_3 loopBody717_49

def loopBody717_51 : HolLoopProg 64 :=
.mark loopBody717_50

def loopBody717_52 : HolLoopProg 64 :=
.seq loopBody717_1 loopBody717_51

def loopBody717_53 : HolLoopProg 64 :=
.mark loopBody717_52

def loopBody717_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64])

def loopBody717_55 : HolLoopProg 64 :=
.mark loopBody717_54

def loopBody717_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64])

def loopBody717_57 : HolLoopProg 64 :=
.mark loopBody717_56

def loopBody717_58 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 736) ([3, 4]) (some (3, loopBody717_15, loopBody717_13, (Flapjack.Spt.ln)))

def loopBody717_59 : HolLoopProg 64 :=
.mark loopBody717_58

def loopBody717_60 : HolLoopProg 64 :=
.seq loopBody717_59 loopBody717_13

def loopBody717_61 : HolLoopProg 64 :=
.mark loopBody717_60

def loopBody717_62 : HolLoopProg 64 :=
.seq loopBody717_57 loopBody717_61

def loopBody717_63 : HolLoopProg 64 :=
.mark loopBody717_62

def loopBody717_64 : HolLoopProg 64 :=
.seq loopBody717_55 loopBody717_63

def loopBody717_65 : HolLoopProg 64 :=
.mark loopBody717_64

def loopBody717_66 : HolLoopProg 64 :=
.seq loopBody717_13 loopBody717_65

def loopBody717_67 : HolLoopProg 64 :=
.mark loopBody717_66

def loopBody717_68 : HolLoopProg 64 :=
.seq loopBody717_13 loopBody717_67

def loopBody717_69 : HolLoopProg 64 :=
.mark loopBody717_68

def loopBody717_70 : HolLoopProg 64 :=
.seq loopBody717_53 loopBody717_69

def loopBody717_71 : HolLoopProg 64 :=
.mark loopBody717_70

def loopBody717_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody717_73 : HolLoopProg 64 :=
.mark loopBody717_72

def loopBody717_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody717_75 : HolLoopProg 64 :=
.mark loopBody717_74

def loopBody717_76 : HolLoopProg 64 :=
.seq loopBody717_75 loopBody717_13

def loopBody717_77 : HolLoopProg 64 :=
.mark loopBody717_76

def loopBody717_78 : HolLoopProg 64 :=
.seq loopBody717_73 loopBody717_77

def loopBody717_79 : HolLoopProg 64 :=
.mark loopBody717_78

def loopBody717_80 : HolLoopProg 64 :=
.seq loopBody717_71 loopBody717_79

def loopBody717_81 : HolLoopProg 64 :=
.mark loopBody717_80

def output717 : Nat × List Nat × HolLoopProg 64 :=
  (781, [0, 1], loopBody717_81)
end InitECandidate.Proofs.FrontendStages.Loop
