import InitECandidate.Proofs.FrontendStages.Loop.Translate796
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody812_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody812_1 : HolLoopProg 64 :=
.mark loopBody812_0

def loopBody812_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody812_3 : HolLoopProg 64 :=
.mark loopBody812_2

def loopBody812_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody812_5 : HolLoopProg 64 :=
.mark loopBody812_4

def loopBody812_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.tick

def loopBody812_7 : HolLoopProg 64 :=
.mark loopBody812_6

def loopBody812_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.lookup 0#5)

def loopBody812_9 : HolLoopProg 64 :=
.mark loopBody812_8

def loopBody812_10 : HolLoopProg 64 :=
.seq loopBody812_9 loopBody812_1

def loopBody812_11 : HolLoopProg 64 :=
.mark loopBody812_10

def loopBody812_12 : HolLoopProg 64 :=
.seq loopBody812_11 loopBody812_1

def loopBody812_13 : HolLoopProg 64 :=
.mark loopBody812_12

def loopBody812_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody812_15 : HolLoopProg 64 :=
.mark loopBody812_14

def loopBody812_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.shMem Flapjack.WordMemOp.store8 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 2688614400#64, Flapjack.HolLoopExp.const 70#64])

def loopBody812_17 : HolLoopProg 64 :=
.mark loopBody812_16

def loopBody812_18 : HolLoopProg 64 :=
.seq loopBody812_17 loopBody812_1

def loopBody812_19 : HolLoopProg 64 :=
.mark loopBody812_18

def loopBody812_20 : HolLoopProg 64 :=
.seq loopBody812_15 loopBody812_19

def loopBody812_21 : HolLoopProg 64 :=
.mark loopBody812_20

def loopBody812_22 : HolLoopProg 64 :=
.seq loopBody812_1 loopBody812_21

def loopBody812_23 : HolLoopProg 64 :=
.mark loopBody812_22

def loopBody812_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 7#64)

def loopBody812_25 : HolLoopProg 64 :=
.mark loopBody812_24

def loopBody812_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 3)

def loopBody812_27 : HolLoopProg 64 :=
.mark loopBody812_26

def loopBody812_28 : HolLoopProg 64 :=
.seq loopBody812_27 loopBody812_1

def loopBody812_29 : HolLoopProg 64 :=
.mark loopBody812_28

def loopBody812_30 : HolLoopProg 64 :=
.seq loopBody812_29 loopBody812_1

def loopBody812_31 : HolLoopProg 64 :=
.mark loopBody812_30

def loopBody812_32 : HolLoopProg 64 :=
.seq loopBody812_25 loopBody812_31

def loopBody812_33 : HolLoopProg 64 :=
.mark loopBody812_32

def loopBody812_34 : HolLoopProg 64 :=
.seq loopBody812_1 loopBody812_33

def loopBody812_35 : HolLoopProg 64 :=
.mark loopBody812_34

def loopBody812_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 9#64)

def loopBody812_37 : HolLoopProg 64 :=
.mark loopBody812_36

def loopBody812_38 : HolLoopProg 64 :=
.seq loopBody812_37 loopBody812_5

def loopBody812_39 : HolLoopProg 64 :=
.mark loopBody812_38

def loopBody812_40 : HolLoopProg 64 :=
.seq loopBody812_35 loopBody812_39

def loopBody812_41 : HolLoopProg 64 :=
.mark loopBody812_40

def loopBody812_42 : HolLoopProg 64 :=
.seq loopBody812_23 loopBody812_41

def loopBody812_43 : HolLoopProg 64 :=
.mark loopBody812_42

def loopBody812_44 : HolLoopProg 64 :=
.seq loopBody812_13 loopBody812_43

def loopBody812_45 : HolLoopProg 64 :=
.mark loopBody812_44

def loopBody812_46 : HolLoopProg 64 :=
.seq loopBody812_7 loopBody812_45

def loopBody812_47 : HolLoopProg 64 :=
.mark loopBody812_46

def loopBody812_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.imm 8#64) loopBody812_5 loopBody812_47 (Flapjack.Spt.ln)

def loopBody812_49 : HolLoopProg 64 :=
.mark loopBody812_48

def loopBody812_50 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 875) ([3]) (some (3, loopBody812_49, loopBody812_1, (Flapjack.Spt.ln)))

def loopBody812_51 : HolLoopProg 64 :=
.mark loopBody812_50

def loopBody812_52 : HolLoopProg 64 :=
.seq loopBody812_51 loopBody812_1

def loopBody812_53 : HolLoopProg 64 :=
.mark loopBody812_52

def loopBody812_54 : HolLoopProg 64 :=
.seq loopBody812_3 loopBody812_53

def loopBody812_55 : HolLoopProg 64 :=
.mark loopBody812_54

def loopBody812_56 : HolLoopProg 64 :=
.seq loopBody812_1 loopBody812_55

def loopBody812_57 : HolLoopProg 64 :=
.mark loopBody812_56

def loopBody812_58 : HolLoopProg 64 :=
.seq loopBody812_1 loopBody812_57

def loopBody812_59 : HolLoopProg 64 :=
.mark loopBody812_58

def loopBody812_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody812_61 : HolLoopProg 64 :=
.mark loopBody812_60

def loopBody812_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody812_63 : HolLoopProg 64 :=
.mark loopBody812_62

def loopBody812_64 : HolLoopProg 64 :=
.seq loopBody812_63 loopBody812_1

def loopBody812_65 : HolLoopProg 64 :=
.mark loopBody812_64

def loopBody812_66 : HolLoopProg 64 :=
.seq loopBody812_61 loopBody812_65

def loopBody812_67 : HolLoopProg 64 :=
.mark loopBody812_66

def loopBody812_68 : HolLoopProg 64 :=
.seq loopBody812_59 loopBody812_67

def loopBody812_69 : HolLoopProg 64 :=
.mark loopBody812_68

def loopBody812_70 : HolLoopProg 64 :=
.seq loopBody812_1 loopBody812_69

def loopBody812_71 : HolLoopProg 64 :=
.mark loopBody812_70

def loopBody812_72 : HolLoopProg 64 :=
.seq loopBody812_1 loopBody812_71

def loopBody812_73 : HolLoopProg 64 :=
.mark loopBody812_72

def output812 : Nat × List Nat × HolLoopProg 64 :=
  (876, [0], loopBody812_73)
end InitECandidate.Proofs.FrontendStages.Loop
