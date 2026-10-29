import InitECandidate.Proofs.FrontendStages.Loop.Translate792
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody808_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody808_1 : HolLoopProg 64 :=
.mark loopBody808_0

def loopBody808_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody808_3 : HolLoopProg 64 :=
.mark loopBody808_2

def loopBody808_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody808_5 : HolLoopProg 64 :=
.mark loopBody808_4

def loopBody808_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.tick

def loopBody808_7 : HolLoopProg 64 :=
.mark loopBody808_6

def loopBody808_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.lookup 0#5)

def loopBody808_9 : HolLoopProg 64 :=
.mark loopBody808_8

def loopBody808_10 : HolLoopProg 64 :=
.seq loopBody808_9 loopBody808_1

def loopBody808_11 : HolLoopProg 64 :=
.mark loopBody808_10

def loopBody808_12 : HolLoopProg 64 :=
.seq loopBody808_11 loopBody808_1

def loopBody808_13 : HolLoopProg 64 :=
.mark loopBody808_12

def loopBody808_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody808_15 : HolLoopProg 64 :=
.mark loopBody808_14

def loopBody808_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.shMem Flapjack.WordMemOp.store8 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 2688614400#64, Flapjack.HolLoopExp.const 70#64])

def loopBody808_17 : HolLoopProg 64 :=
.mark loopBody808_16

def loopBody808_18 : HolLoopProg 64 :=
.seq loopBody808_17 loopBody808_1

def loopBody808_19 : HolLoopProg 64 :=
.mark loopBody808_18

def loopBody808_20 : HolLoopProg 64 :=
.seq loopBody808_15 loopBody808_19

def loopBody808_21 : HolLoopProg 64 :=
.mark loopBody808_20

def loopBody808_22 : HolLoopProg 64 :=
.seq loopBody808_1 loopBody808_21

def loopBody808_23 : HolLoopProg 64 :=
.mark loopBody808_22

def loopBody808_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 3#64)

def loopBody808_25 : HolLoopProg 64 :=
.mark loopBody808_24

def loopBody808_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 3)

def loopBody808_27 : HolLoopProg 64 :=
.mark loopBody808_26

def loopBody808_28 : HolLoopProg 64 :=
.seq loopBody808_27 loopBody808_1

def loopBody808_29 : HolLoopProg 64 :=
.mark loopBody808_28

def loopBody808_30 : HolLoopProg 64 :=
.seq loopBody808_29 loopBody808_1

def loopBody808_31 : HolLoopProg 64 :=
.mark loopBody808_30

def loopBody808_32 : HolLoopProg 64 :=
.seq loopBody808_25 loopBody808_31

def loopBody808_33 : HolLoopProg 64 :=
.mark loopBody808_32

def loopBody808_34 : HolLoopProg 64 :=
.seq loopBody808_1 loopBody808_33

def loopBody808_35 : HolLoopProg 64 :=
.mark loopBody808_34

def loopBody808_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 9#64)

def loopBody808_37 : HolLoopProg 64 :=
.mark loopBody808_36

def loopBody808_38 : HolLoopProg 64 :=
.seq loopBody808_37 loopBody808_5

def loopBody808_39 : HolLoopProg 64 :=
.mark loopBody808_38

def loopBody808_40 : HolLoopProg 64 :=
.seq loopBody808_35 loopBody808_39

def loopBody808_41 : HolLoopProg 64 :=
.mark loopBody808_40

def loopBody808_42 : HolLoopProg 64 :=
.seq loopBody808_23 loopBody808_41

def loopBody808_43 : HolLoopProg 64 :=
.mark loopBody808_42

def loopBody808_44 : HolLoopProg 64 :=
.seq loopBody808_13 loopBody808_43

def loopBody808_45 : HolLoopProg 64 :=
.mark loopBody808_44

def loopBody808_46 : HolLoopProg 64 :=
.seq loopBody808_7 loopBody808_45

def loopBody808_47 : HolLoopProg 64 :=
.mark loopBody808_46

def loopBody808_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.imm 1#64) loopBody808_5 loopBody808_47 (Flapjack.Spt.ln)

def loopBody808_49 : HolLoopProg 64 :=
.mark loopBody808_48

def loopBody808_50 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 871) ([3]) (some (3, loopBody808_49, loopBody808_1, (Flapjack.Spt.ln)))

def loopBody808_51 : HolLoopProg 64 :=
.mark loopBody808_50

def loopBody808_52 : HolLoopProg 64 :=
.seq loopBody808_51 loopBody808_1

def loopBody808_53 : HolLoopProg 64 :=
.mark loopBody808_52

def loopBody808_54 : HolLoopProg 64 :=
.seq loopBody808_3 loopBody808_53

def loopBody808_55 : HolLoopProg 64 :=
.mark loopBody808_54

def loopBody808_56 : HolLoopProg 64 :=
.seq loopBody808_1 loopBody808_55

def loopBody808_57 : HolLoopProg 64 :=
.mark loopBody808_56

def loopBody808_58 : HolLoopProg 64 :=
.seq loopBody808_1 loopBody808_57

def loopBody808_59 : HolLoopProg 64 :=
.mark loopBody808_58

def loopBody808_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody808_61 : HolLoopProg 64 :=
.mark loopBody808_60

def loopBody808_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody808_63 : HolLoopProg 64 :=
.mark loopBody808_62

def loopBody808_64 : HolLoopProg 64 :=
.seq loopBody808_63 loopBody808_1

def loopBody808_65 : HolLoopProg 64 :=
.mark loopBody808_64

def loopBody808_66 : HolLoopProg 64 :=
.seq loopBody808_61 loopBody808_65

def loopBody808_67 : HolLoopProg 64 :=
.mark loopBody808_66

def loopBody808_68 : HolLoopProg 64 :=
.seq loopBody808_59 loopBody808_67

def loopBody808_69 : HolLoopProg 64 :=
.mark loopBody808_68

def loopBody808_70 : HolLoopProg 64 :=
.seq loopBody808_1 loopBody808_69

def loopBody808_71 : HolLoopProg 64 :=
.mark loopBody808_70

def loopBody808_72 : HolLoopProg 64 :=
.seq loopBody808_1 loopBody808_71

def loopBody808_73 : HolLoopProg 64 :=
.mark loopBody808_72

def output808 : Nat × List Nat × HolLoopProg 64 :=
  (872, [0], loopBody808_73)
end InitECandidate.Proofs.FrontendStages.Loop
