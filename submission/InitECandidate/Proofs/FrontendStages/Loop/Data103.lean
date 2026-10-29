import InitECandidate.Proofs.FrontendStages.Loop.Translate87
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody103_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody103_1 : HolLoopProg 64 :=
.mark loopBody103_0

def loopBody103_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody103_3 : HolLoopProg 64 :=
.mark loopBody103_2

def loopBody103_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody103_5 : HolLoopProg 64 :=
.mark loopBody103_4

def loopBody103_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody103_7 : HolLoopProg 64 :=
.mark loopBody103_6

def loopBody103_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody103_9 : HolLoopProg 64 :=
.mark loopBody103_8

def loopBody103_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody103_11 : HolLoopProg 64 :=
.mark loopBody103_10

def loopBody103_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody103_13 : HolLoopProg 64 :=
.mark loopBody103_12

def loopBody103_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.RegImm.reg 6) loopBody103_11 loopBody103_13 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody103_15 : HolLoopProg 64 :=
.mark loopBody103_14

def loopBody103_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody103_17 : HolLoopProg 64 :=
.mark loopBody103_16

def loopBody103_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3])

def loopBody103_19 : HolLoopProg 64 :=
.mark loopBody103_18

def loopBody103_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3])

def loopBody103_21 : HolLoopProg 64 :=
.mark loopBody103_20

def loopBody103_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody103_23 : HolLoopProg 64 :=
.mark loopBody103_22

def loopBody103_24 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 166) ([5, 6]) (some (5, loopBody103_23, loopBody103_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody103_25 : HolLoopProg 64 :=
.mark loopBody103_24

def loopBody103_26 : HolLoopProg 64 :=
.seq loopBody103_25 loopBody103_1

def loopBody103_27 : HolLoopProg 64 :=
.mark loopBody103_26

def loopBody103_28 : HolLoopProg 64 :=
.seq loopBody103_21 loopBody103_27

def loopBody103_29 : HolLoopProg 64 :=
.mark loopBody103_28

def loopBody103_30 : HolLoopProg 64 :=
.seq loopBody103_19 loopBody103_29

def loopBody103_31 : HolLoopProg 64 :=
.mark loopBody103_30

def loopBody103_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 4])

def loopBody103_33 : HolLoopProg 64 :=
.mark loopBody103_32

def loopBody103_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 5)

def loopBody103_35 : HolLoopProg 64 :=
.mark loopBody103_34

def loopBody103_36 : HolLoopProg 64 :=
.seq loopBody103_35 loopBody103_1

def loopBody103_37 : HolLoopProg 64 :=
.mark loopBody103_36

def loopBody103_38 : HolLoopProg 64 :=
.seq loopBody103_37 loopBody103_1

def loopBody103_39 : HolLoopProg 64 :=
.mark loopBody103_38

def loopBody103_40 : HolLoopProg 64 :=
.seq loopBody103_33 loopBody103_39

def loopBody103_41 : HolLoopProg 64 :=
.mark loopBody103_40

def loopBody103_42 : HolLoopProg 64 :=
.seq loopBody103_1 loopBody103_41

def loopBody103_43 : HolLoopProg 64 :=
.mark loopBody103_42

def loopBody103_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64])

def loopBody103_45 : HolLoopProg 64 :=
.mark loopBody103_44

def loopBody103_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 5)

def loopBody103_47 : HolLoopProg 64 :=
.mark loopBody103_46

def loopBody103_48 : HolLoopProg 64 :=
.seq loopBody103_47 loopBody103_1

def loopBody103_49 : HolLoopProg 64 :=
.mark loopBody103_48

def loopBody103_50 : HolLoopProg 64 :=
.seq loopBody103_49 loopBody103_1

def loopBody103_51 : HolLoopProg 64 :=
.mark loopBody103_50

def loopBody103_52 : HolLoopProg 64 :=
.seq loopBody103_45 loopBody103_51

def loopBody103_53 : HolLoopProg 64 :=
.mark loopBody103_52

def loopBody103_54 : HolLoopProg 64 :=
.seq loopBody103_1 loopBody103_53

def loopBody103_55 : HolLoopProg 64 :=
.mark loopBody103_54

def loopBody103_56 : HolLoopProg 64 :=
.seq loopBody103_43 loopBody103_55

def loopBody103_57 : HolLoopProg 64 :=
.mark loopBody103_56

def loopBody103_58 : HolLoopProg 64 :=
.seq loopBody103_31 loopBody103_57

def loopBody103_59 : HolLoopProg 64 :=
.mark loopBody103_58

def loopBody103_60 : HolLoopProg 64 :=
.seq loopBody103_1 loopBody103_59

def loopBody103_61 : HolLoopProg 64 :=
.mark loopBody103_60

def loopBody103_62 : HolLoopProg 64 :=
.seq loopBody103_1 loopBody103_61

def loopBody103_63 : HolLoopProg 64 :=
.mark loopBody103_62

def loopBody103_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody103_65 : HolLoopProg 64 :=
.mark loopBody103_64

def loopBody103_66 : HolLoopProg 64 :=
.seq loopBody103_63 loopBody103_65

def loopBody103_67 : HolLoopProg 64 :=
.mark loopBody103_66

def loopBody103_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody103_69 : HolLoopProg 64 :=
.mark loopBody103_68

def loopBody103_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody103_67 loopBody103_69 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody103_71 : HolLoopProg 64 :=
.mark loopBody103_70

def loopBody103_72 : HolLoopProg 64 :=
.seq loopBody103_71 loopBody103_1

def loopBody103_73 : HolLoopProg 64 :=
.mark loopBody103_72

def loopBody103_74 : HolLoopProg 64 :=
.seq loopBody103_17 loopBody103_73

def loopBody103_75 : HolLoopProg 64 :=
.mark loopBody103_74

def loopBody103_76 : HolLoopProg 64 :=
.seq loopBody103_15 loopBody103_75

def loopBody103_77 : HolLoopProg 64 :=
.mark loopBody103_76

def loopBody103_78 : HolLoopProg 64 :=
.seq loopBody103_9 loopBody103_77

def loopBody103_79 : HolLoopProg 64 :=
.mark loopBody103_78

def loopBody103_80 : HolLoopProg 64 :=
.seq loopBody103_7 loopBody103_79

def loopBody103_81 : HolLoopProg 64 :=
.mark loopBody103_80

def loopBody103_82 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody103_81 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody103_83 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody103_84 : HolLoopProg 64 :=
.mark loopBody103_83

def loopBody103_85 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody103_86 : HolLoopProg 64 :=
.mark loopBody103_85

def loopBody103_87 : HolLoopProg 64 :=
.seq loopBody103_86 loopBody103_1

def loopBody103_88 : HolLoopProg 64 :=
.mark loopBody103_87

def loopBody103_89 : HolLoopProg 64 :=
.seq loopBody103_84 loopBody103_88

def loopBody103_90 : HolLoopProg 64 :=
.mark loopBody103_89

def loopBody103_91 : HolLoopProg 64 :=
.seq loopBody103_82 loopBody103_90

def loopBody103_92 : HolLoopProg 64 :=
.seq loopBody103_5 loopBody103_91

def loopBody103_93 : HolLoopProg 64 :=
.seq loopBody103_1 loopBody103_92

def loopBody103_94 : HolLoopProg 64 :=
.seq loopBody103_3 loopBody103_93

def loopBody103_95 : HolLoopProg 64 :=
.seq loopBody103_1 loopBody103_94

def output103 : Nat × List Nat × HolLoopProg 64 :=
  (167, [0, 1], loopBody103_95)
end InitECandidate.Proofs.FrontendStages.Loop
