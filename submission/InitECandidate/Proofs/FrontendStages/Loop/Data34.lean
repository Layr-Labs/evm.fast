import InitECandidate.Proofs.FrontendStages.Loop.Translate18
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody34_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 40#64]))

def loopBody34_1 : HolLoopProg 64 :=
.mark loopBody34_0

def loopBody34_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody34_3 : HolLoopProg 64 :=
.mark loopBody34_2

def loopBody34_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody34_5 : HolLoopProg 64 :=
.mark loopBody34_4

def loopBody34_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody34_7 : HolLoopProg 64 :=
.mark loopBody34_6

def loopBody34_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.RegImm.reg 3) loopBody34_5 loopBody34_7 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody34_9 : HolLoopProg 64 :=
.mark loopBody34_8

def loopBody34_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody34_11 : HolLoopProg 64 :=
.mark loopBody34_10

def loopBody34_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody34_13 : HolLoopProg 64 :=
.mark loopBody34_12

def loopBody34_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 640#64)

def loopBody34_15 : HolLoopProg 64 :=
.mark loopBody34_14

def loopBody34_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody34_17 : HolLoopProg 64 :=
.mark loopBody34_16

def loopBody34_18 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 68) ([2]) (some (2, loopBody34_17, loopBody34_13, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody34_19 : HolLoopProg 64 :=
.mark loopBody34_18

def loopBody34_20 : HolLoopProg 64 :=
.seq loopBody34_19 loopBody34_13

def loopBody34_21 : HolLoopProg 64 :=
.mark loopBody34_20

def loopBody34_22 : HolLoopProg 64 :=
.seq loopBody34_15 loopBody34_21

def loopBody34_23 : HolLoopProg 64 :=
.mark loopBody34_22

def loopBody34_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 40#64])

def loopBody34_25 : HolLoopProg 64 :=
.mark loopBody34_24

def loopBody34_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody34_27 : HolLoopProg 64 :=
.mark loopBody34_26

def loopBody34_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody34_29 : HolLoopProg 64 :=
.mark loopBody34_28

def loopBody34_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 2) 4

def loopBody34_31 : HolLoopProg 64 :=
.mark loopBody34_30

def loopBody34_32 : HolLoopProg 64 :=
.seq loopBody34_31 loopBody34_13

def loopBody34_33 : HolLoopProg 64 :=
.mark loopBody34_32

def loopBody34_34 : HolLoopProg 64 :=
.seq loopBody34_29 loopBody34_33

def loopBody34_35 : HolLoopProg 64 :=
.mark loopBody34_34

def loopBody34_36 : HolLoopProg 64 :=
.seq loopBody34_35 loopBody34_13

def loopBody34_37 : HolLoopProg 64 :=
.mark loopBody34_36

def loopBody34_38 : HolLoopProg 64 :=
.seq loopBody34_27 loopBody34_37

def loopBody34_39 : HolLoopProg 64 :=
.mark loopBody34_38

def loopBody34_40 : HolLoopProg 64 :=
.seq loopBody34_13 loopBody34_39

def loopBody34_41 : HolLoopProg 64 :=
.mark loopBody34_40

def loopBody34_42 : HolLoopProg 64 :=
.seq loopBody34_25 loopBody34_41

def loopBody34_43 : HolLoopProg 64 :=
.mark loopBody34_42

def loopBody34_44 : HolLoopProg 64 :=
.seq loopBody34_13 loopBody34_43

def loopBody34_45 : HolLoopProg 64 :=
.mark loopBody34_44

def loopBody34_46 : HolLoopProg 64 :=
.seq loopBody34_23 loopBody34_45

def loopBody34_47 : HolLoopProg 64 :=
.mark loopBody34_46

def loopBody34_48 : HolLoopProg 64 :=
.seq loopBody34_13 loopBody34_47

def loopBody34_49 : HolLoopProg 64 :=
.mark loopBody34_48

def loopBody34_50 : HolLoopProg 64 :=
.seq loopBody34_13 loopBody34_49

def loopBody34_51 : HolLoopProg 64 :=
.mark loopBody34_50

def loopBody34_52 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody34_51 loopBody34_13 (Flapjack.Spt.ln)

def loopBody34_53 : HolLoopProg 64 :=
.mark loopBody34_52

def loopBody34_54 : HolLoopProg 64 :=
.seq loopBody34_53 loopBody34_13

def loopBody34_55 : HolLoopProg 64 :=
.mark loopBody34_54

def loopBody34_56 : HolLoopProg 64 :=
.seq loopBody34_11 loopBody34_55

def loopBody34_57 : HolLoopProg 64 :=
.mark loopBody34_56

def loopBody34_58 : HolLoopProg 64 :=
.seq loopBody34_9 loopBody34_57

def loopBody34_59 : HolLoopProg 64 :=
.mark loopBody34_58

def loopBody34_60 : HolLoopProg 64 :=
.seq loopBody34_3 loopBody34_59

def loopBody34_61 : HolLoopProg 64 :=
.mark loopBody34_60

def loopBody34_62 : HolLoopProg 64 :=
.seq loopBody34_1 loopBody34_61

def loopBody34_63 : HolLoopProg 64 :=
.mark loopBody34_62

def loopBody34_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody34_65 : HolLoopProg 64 :=
.mark loopBody34_64

def loopBody34_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody34_67 : HolLoopProg 64 :=
.mark loopBody34_66

def loopBody34_68 : HolLoopProg 64 :=
.seq loopBody34_67 loopBody34_13

def loopBody34_69 : HolLoopProg 64 :=
.mark loopBody34_68

def loopBody34_70 : HolLoopProg 64 :=
.seq loopBody34_65 loopBody34_69

def loopBody34_71 : HolLoopProg 64 :=
.mark loopBody34_70

def loopBody34_72 : HolLoopProg 64 :=
.seq loopBody34_63 loopBody34_71

def loopBody34_73 : HolLoopProg 64 :=
.mark loopBody34_72

def output34 : Nat × List Nat × HolLoopProg 64 :=
  (98, [], loopBody34_73)
end InitECandidate.Proofs.FrontendStages.Loop
