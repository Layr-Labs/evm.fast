import InitECandidate.Proofs.FrontendStages.Loop.Translate204
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody220_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 120#64]))

def loopBody220_1 : HolLoopProg 64 :=
.mark loopBody220_0

def loopBody220_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody220_3 : HolLoopProg 64 :=
.mark loopBody220_2

def loopBody220_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody220_5 : HolLoopProg 64 :=
.mark loopBody220_4

def loopBody220_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody220_7 : HolLoopProg 64 :=
.mark loopBody220_6

def loopBody220_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.RegImm.reg 3) loopBody220_5 loopBody220_7 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody220_9 : HolLoopProg 64 :=
.mark loopBody220_8

def loopBody220_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody220_11 : HolLoopProg 64 :=
.mark loopBody220_10

def loopBody220_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody220_13 : HolLoopProg 64 :=
.mark loopBody220_12

def loopBody220_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody220_15 : HolLoopProg 64 :=
.mark loopBody220_14

def loopBody220_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody220_17 : HolLoopProg 64 :=
.mark loopBody220_16

def loopBody220_18 : HolLoopProg 64 :=
.seq loopBody220_15 loopBody220_17

def loopBody220_19 : HolLoopProg 64 :=
.mark loopBody220_18

def loopBody220_20 : HolLoopProg 64 :=
.seq loopBody220_13 loopBody220_19

def loopBody220_21 : HolLoopProg 64 :=
.mark loopBody220_20

def loopBody220_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody220_21 loopBody220_17 (Flapjack.Spt.ln)

def loopBody220_23 : HolLoopProg 64 :=
.mark loopBody220_22

def loopBody220_24 : HolLoopProg 64 :=
.seq loopBody220_23 loopBody220_17

def loopBody220_25 : HolLoopProg 64 :=
.mark loopBody220_24

def loopBody220_26 : HolLoopProg 64 :=
.seq loopBody220_11 loopBody220_25

def loopBody220_27 : HolLoopProg 64 :=
.mark loopBody220_26

def loopBody220_28 : HolLoopProg 64 :=
.seq loopBody220_9 loopBody220_27

def loopBody220_29 : HolLoopProg 64 :=
.mark loopBody220_28

def loopBody220_30 : HolLoopProg 64 :=
.seq loopBody220_3 loopBody220_29

def loopBody220_31 : HolLoopProg 64 :=
.mark loopBody220_30

def loopBody220_32 : HolLoopProg 64 :=
.seq loopBody220_1 loopBody220_31

def loopBody220_33 : HolLoopProg 64 :=
.mark loopBody220_32

def loopBody220_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 8#64)

def loopBody220_35 : HolLoopProg 64 :=
.mark loopBody220_34

def loopBody220_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody220_37 : HolLoopProg 64 :=
.mark loopBody220_36

def loopBody220_38 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 68) ([2]) (some (2, loopBody220_37, loopBody220_17, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody220_39 : HolLoopProg 64 :=
.mark loopBody220_38

def loopBody220_40 : HolLoopProg 64 :=
.seq loopBody220_39 loopBody220_17

def loopBody220_41 : HolLoopProg 64 :=
.mark loopBody220_40

def loopBody220_42 : HolLoopProg 64 :=
.seq loopBody220_35 loopBody220_41

def loopBody220_43 : HolLoopProg 64 :=
.mark loopBody220_42

def loopBody220_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 120#64])

def loopBody220_45 : HolLoopProg 64 :=
.mark loopBody220_44

def loopBody220_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody220_47 : HolLoopProg 64 :=
.mark loopBody220_46

def loopBody220_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody220_49 : HolLoopProg 64 :=
.mark loopBody220_48

def loopBody220_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 2) 4

def loopBody220_51 : HolLoopProg 64 :=
.mark loopBody220_50

def loopBody220_52 : HolLoopProg 64 :=
.seq loopBody220_51 loopBody220_17

def loopBody220_53 : HolLoopProg 64 :=
.mark loopBody220_52

def loopBody220_54 : HolLoopProg 64 :=
.seq loopBody220_49 loopBody220_53

def loopBody220_55 : HolLoopProg 64 :=
.mark loopBody220_54

def loopBody220_56 : HolLoopProg 64 :=
.seq loopBody220_55 loopBody220_17

def loopBody220_57 : HolLoopProg 64 :=
.mark loopBody220_56

def loopBody220_58 : HolLoopProg 64 :=
.seq loopBody220_47 loopBody220_57

def loopBody220_59 : HolLoopProg 64 :=
.mark loopBody220_58

def loopBody220_60 : HolLoopProg 64 :=
.seq loopBody220_17 loopBody220_59

def loopBody220_61 : HolLoopProg 64 :=
.mark loopBody220_60

def loopBody220_62 : HolLoopProg 64 :=
.seq loopBody220_45 loopBody220_61

def loopBody220_63 : HolLoopProg 64 :=
.mark loopBody220_62

def loopBody220_64 : HolLoopProg 64 :=
.seq loopBody220_17 loopBody220_63

def loopBody220_65 : HolLoopProg 64 :=
.mark loopBody220_64

def loopBody220_66 : HolLoopProg 64 :=
.seq loopBody220_43 loopBody220_65

def loopBody220_67 : HolLoopProg 64 :=
.mark loopBody220_66

def loopBody220_68 : HolLoopProg 64 :=
.seq loopBody220_17 loopBody220_67

def loopBody220_69 : HolLoopProg 64 :=
.mark loopBody220_68

def loopBody220_70 : HolLoopProg 64 :=
.seq loopBody220_17 loopBody220_69

def loopBody220_71 : HolLoopProg 64 :=
.mark loopBody220_70

def loopBody220_72 : HolLoopProg 64 :=
.seq loopBody220_33 loopBody220_71

def loopBody220_73 : HolLoopProg 64 :=
.mark loopBody220_72

def loopBody220_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 8#64)

def loopBody220_75 : HolLoopProg 64 :=
.mark loopBody220_74

def loopBody220_76 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 78) ([2, 3]) (some (2, loopBody220_37, loopBody220_17, (Flapjack.Spt.ln)))

def loopBody220_77 : HolLoopProg 64 :=
.mark loopBody220_76

def loopBody220_78 : HolLoopProg 64 :=
.seq loopBody220_77 loopBody220_17

def loopBody220_79 : HolLoopProg 64 :=
.mark loopBody220_78

def loopBody220_80 : HolLoopProg 64 :=
.seq loopBody220_75 loopBody220_79

def loopBody220_81 : HolLoopProg 64 :=
.mark loopBody220_80

def loopBody220_82 : HolLoopProg 64 :=
.seq loopBody220_1 loopBody220_81

def loopBody220_83 : HolLoopProg 64 :=
.mark loopBody220_82

def loopBody220_84 : HolLoopProg 64 :=
.seq loopBody220_17 loopBody220_83

def loopBody220_85 : HolLoopProg 64 :=
.mark loopBody220_84

def loopBody220_86 : HolLoopProg 64 :=
.seq loopBody220_17 loopBody220_85

def loopBody220_87 : HolLoopProg 64 :=
.mark loopBody220_86

def loopBody220_88 : HolLoopProg 64 :=
.seq loopBody220_73 loopBody220_87

def loopBody220_89 : HolLoopProg 64 :=
.mark loopBody220_88

def loopBody220_90 : HolLoopProg 64 :=
.seq loopBody220_89 loopBody220_21

def loopBody220_91 : HolLoopProg 64 :=
.mark loopBody220_90

def output220 : Nat × List Nat × HolLoopProg 64 :=
  (284, [], loopBody220_91)
end InitECandidate.Proofs.FrontendStages.Loop
