import InitECandidate.Proofs.FrontendStages.Loop.Translate519
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody535_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody535_1 : HolLoopProg 64 :=
.mark loopBody535_0

def loopBody535_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody535_3 : HolLoopProg 64 :=
.mark loopBody535_2

def loopBody535_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody535_5 : HolLoopProg 64 :=
.mark loopBody535_4

def loopBody535_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.tick

def loopBody535_7 : HolLoopProg 64 :=
.mark loopBody535_6

def loopBody535_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.lookup 0#5)

def loopBody535_9 : HolLoopProg 64 :=
.mark loopBody535_8

def loopBody535_10 : HolLoopProg 64 :=
.seq loopBody535_9 loopBody535_1

def loopBody535_11 : HolLoopProg 64 :=
.mark loopBody535_10

def loopBody535_12 : HolLoopProg 64 :=
.seq loopBody535_11 loopBody535_1

def loopBody535_13 : HolLoopProg 64 :=
.mark loopBody535_12

def loopBody535_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody535_15 : HolLoopProg 64 :=
.mark loopBody535_14

def loopBody535_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody535_17 : HolLoopProg 64 :=
.mark loopBody535_16

def loopBody535_18 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 597) ([4]) (some (4, loopBody535_17, loopBody535_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody535_19 : HolLoopProg 64 :=
.mark loopBody535_18

def loopBody535_20 : HolLoopProg 64 :=
.seq loopBody535_19 loopBody535_1

def loopBody535_21 : HolLoopProg 64 :=
.mark loopBody535_20

def loopBody535_22 : HolLoopProg 64 :=
.seq loopBody535_15 loopBody535_21

def loopBody535_23 : HolLoopProg 64 :=
.mark loopBody535_22

def loopBody535_24 : HolLoopProg 64 :=
.seq loopBody535_1 loopBody535_23

def loopBody535_25 : HolLoopProg 64 :=
.mark loopBody535_24

def loopBody535_26 : HolLoopProg 64 :=
.seq loopBody535_1 loopBody535_25

def loopBody535_27 : HolLoopProg 64 :=
.mark loopBody535_26

def loopBody535_28 : HolLoopProg 64 :=
.seq loopBody535_13 loopBody535_27

def loopBody535_29 : HolLoopProg 64 :=
.mark loopBody535_28

def loopBody535_30 : HolLoopProg 64 :=
.seq loopBody535_7 loopBody535_29

def loopBody535_31 : HolLoopProg 64 :=
.mark loopBody535_30

def loopBody535_32 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.imm 8#64) loopBody535_5 loopBody535_31 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody535_33 : HolLoopProg 64 :=
.mark loopBody535_32

def loopBody535_34 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 598) ([]) (some (3, loopBody535_33, loopBody535_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody535_35 : HolLoopProg 64 :=
.mark loopBody535_34

def loopBody535_36 : HolLoopProg 64 :=
.seq loopBody535_35 loopBody535_1

def loopBody535_37 : HolLoopProg 64 :=
.mark loopBody535_36

def loopBody535_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody535_39 : HolLoopProg 64 :=
.mark loopBody535_38

def loopBody535_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody535_41 : HolLoopProg 64 :=
.mark loopBody535_40

def loopBody535_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody535_43 : HolLoopProg 64 :=
.mark loopBody535_42

def loopBody535_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody535_45 : HolLoopProg 64 :=
.mark loopBody535_44

def loopBody535_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody535_43 loopBody535_45 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody535_47 : HolLoopProg 64 :=
.mark loopBody535_46

def loopBody535_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody535_49 : HolLoopProg 64 :=
.mark loopBody535_48

def loopBody535_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 288#64]),
      Flapjack.HolLoopExp.const 32#64])

def loopBody535_51 : HolLoopProg 64 :=
.mark loopBody535_50

def loopBody535_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody535_53 : HolLoopProg 64 :=
.mark loopBody535_52

def loopBody535_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 3) 5

def loopBody535_55 : HolLoopProg 64 :=
.mark loopBody535_54

def loopBody535_56 : HolLoopProg 64 :=
.seq loopBody535_55 loopBody535_1

def loopBody535_57 : HolLoopProg 64 :=
.mark loopBody535_56

def loopBody535_58 : HolLoopProg 64 :=
.seq loopBody535_53 loopBody535_57

def loopBody535_59 : HolLoopProg 64 :=
.mark loopBody535_58

def loopBody535_60 : HolLoopProg 64 :=
.seq loopBody535_59 loopBody535_1

def loopBody535_61 : HolLoopProg 64 :=
.mark loopBody535_60

def loopBody535_62 : HolLoopProg 64 :=
.seq loopBody535_43 loopBody535_61

def loopBody535_63 : HolLoopProg 64 :=
.mark loopBody535_62

def loopBody535_64 : HolLoopProg 64 :=
.seq loopBody535_1 loopBody535_63

def loopBody535_65 : HolLoopProg 64 :=
.mark loopBody535_64

def loopBody535_66 : HolLoopProg 64 :=
.seq loopBody535_51 loopBody535_65

def loopBody535_67 : HolLoopProg 64 :=
.mark loopBody535_66

def loopBody535_68 : HolLoopProg 64 :=
.seq loopBody535_1 loopBody535_67

def loopBody535_69 : HolLoopProg 64 :=
.mark loopBody535_68

def loopBody535_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody535_69 loopBody535_1 (Flapjack.Spt.ln)

def loopBody535_71 : HolLoopProg 64 :=
.mark loopBody535_70

def loopBody535_72 : HolLoopProg 64 :=
.seq loopBody535_71 loopBody535_1

def loopBody535_73 : HolLoopProg 64 :=
.mark loopBody535_72

def loopBody535_74 : HolLoopProg 64 :=
.seq loopBody535_49 loopBody535_73

def loopBody535_75 : HolLoopProg 64 :=
.mark loopBody535_74

def loopBody535_76 : HolLoopProg 64 :=
.seq loopBody535_47 loopBody535_75

def loopBody535_77 : HolLoopProg 64 :=
.mark loopBody535_76

def loopBody535_78 : HolLoopProg 64 :=
.seq loopBody535_41 loopBody535_77

def loopBody535_79 : HolLoopProg 64 :=
.mark loopBody535_78

def loopBody535_80 : HolLoopProg 64 :=
.seq loopBody535_39 loopBody535_79

def loopBody535_81 : HolLoopProg 64 :=
.mark loopBody535_80

def loopBody535_82 : HolLoopProg 64 :=
.seq loopBody535_37 loopBody535_81

def loopBody535_83 : HolLoopProg 64 :=
.mark loopBody535_82

def loopBody535_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody535_85 : HolLoopProg 64 :=
.mark loopBody535_84

def loopBody535_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody535_87 : HolLoopProg 64 :=
.mark loopBody535_86

def loopBody535_88 : HolLoopProg 64 :=
.seq loopBody535_87 loopBody535_1

def loopBody535_89 : HolLoopProg 64 :=
.mark loopBody535_88

def loopBody535_90 : HolLoopProg 64 :=
.seq loopBody535_85 loopBody535_89

def loopBody535_91 : HolLoopProg 64 :=
.mark loopBody535_90

def loopBody535_92 : HolLoopProg 64 :=
.seq loopBody535_83 loopBody535_91

def loopBody535_93 : HolLoopProg 64 :=
.mark loopBody535_92

def loopBody535_94 : HolLoopProg 64 :=
.seq loopBody535_3 loopBody535_93

def loopBody535_95 : HolLoopProg 64 :=
.mark loopBody535_94

def loopBody535_96 : HolLoopProg 64 :=
.seq loopBody535_1 loopBody535_95

def loopBody535_97 : HolLoopProg 64 :=
.mark loopBody535_96

def loopBody535_98 : HolLoopProg 64 :=
.seq loopBody535_1 loopBody535_97

def loopBody535_99 : HolLoopProg 64 :=
.mark loopBody535_98

def loopBody535_100 : HolLoopProg 64 :=
.seq loopBody535_1 loopBody535_99

def loopBody535_101 : HolLoopProg 64 :=
.mark loopBody535_100

def output535 : Nat × List Nat × HolLoopProg 64 :=
  (599, [], loopBody535_101)
end InitECandidate.Proofs.FrontendStages.Loop
