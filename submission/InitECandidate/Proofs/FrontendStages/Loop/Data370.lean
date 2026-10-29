import InitECandidate.Proofs.FrontendStages.Loop.Translate354
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody370_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 176#64]),
        Flapjack.HolLoopExp.const 56#64]))

def loopBody370_1 : HolLoopProg 64 :=
.mark loopBody370_0

def loopBody370_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody370_3 : HolLoopProg 64 :=
.mark loopBody370_2

def loopBody370_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody370_5 : HolLoopProg 64 :=
.mark loopBody370_4

def loopBody370_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody370_7 : HolLoopProg 64 :=
.mark loopBody370_6

def loopBody370_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.RegImm.reg 3) loopBody370_5 loopBody370_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody370_9 : HolLoopProg 64 :=
.mark loopBody370_8

def loopBody370_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody370_11 : HolLoopProg 64 :=
.mark loopBody370_10

def loopBody370_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody370_13 : HolLoopProg 64 :=
.mark loopBody370_12

def loopBody370_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 176#64]),
      Flapjack.HolLoopExp.const 56#64])

def loopBody370_15 : HolLoopProg 64 :=
.mark loopBody370_14

def loopBody370_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody370_17 : HolLoopProg 64 :=
.mark loopBody370_16

def loopBody370_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 3

def loopBody370_19 : HolLoopProg 64 :=
.mark loopBody370_18

def loopBody370_20 : HolLoopProg 64 :=
.seq loopBody370_19 loopBody370_13

def loopBody370_21 : HolLoopProg 64 :=
.mark loopBody370_20

def loopBody370_22 : HolLoopProg 64 :=
.seq loopBody370_17 loopBody370_21

def loopBody370_23 : HolLoopProg 64 :=
.mark loopBody370_22

def loopBody370_24 : HolLoopProg 64 :=
.seq loopBody370_23 loopBody370_13

def loopBody370_25 : HolLoopProg 64 :=
.mark loopBody370_24

def loopBody370_26 : HolLoopProg 64 :=
.seq loopBody370_5 loopBody370_25

def loopBody370_27 : HolLoopProg 64 :=
.mark loopBody370_26

def loopBody370_28 : HolLoopProg 64 :=
.seq loopBody370_13 loopBody370_27

def loopBody370_29 : HolLoopProg 64 :=
.mark loopBody370_28

def loopBody370_30 : HolLoopProg 64 :=
.seq loopBody370_15 loopBody370_29

def loopBody370_31 : HolLoopProg 64 :=
.mark loopBody370_30

def loopBody370_32 : HolLoopProg 64 :=
.seq loopBody370_13 loopBody370_31

def loopBody370_33 : HolLoopProg 64 :=
.mark loopBody370_32

def loopBody370_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 176#64]),
      Flapjack.HolLoopExp.const 64#64])

def loopBody370_35 : HolLoopProg 64 :=
.mark loopBody370_34

def loopBody370_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody370_37 : HolLoopProg 64 :=
.mark loopBody370_36

def loopBody370_38 : HolLoopProg 64 :=
.seq loopBody370_37 loopBody370_25

def loopBody370_39 : HolLoopProg 64 :=
.mark loopBody370_38

def loopBody370_40 : HolLoopProg 64 :=
.seq loopBody370_13 loopBody370_39

def loopBody370_41 : HolLoopProg 64 :=
.mark loopBody370_40

def loopBody370_42 : HolLoopProg 64 :=
.seq loopBody370_35 loopBody370_41

def loopBody370_43 : HolLoopProg 64 :=
.mark loopBody370_42

def loopBody370_44 : HolLoopProg 64 :=
.seq loopBody370_13 loopBody370_43

def loopBody370_45 : HolLoopProg 64 :=
.mark loopBody370_44

def loopBody370_46 : HolLoopProg 64 :=
.seq loopBody370_33 loopBody370_45

def loopBody370_47 : HolLoopProg 64 :=
.mark loopBody370_46

def loopBody370_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 176#64]),
        Flapjack.HolLoopExp.const 64#64]))

def loopBody370_49 : HolLoopProg 64 :=
.mark loopBody370_48

def loopBody370_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody370_51 : HolLoopProg 64 :=
.mark loopBody370_50

def loopBody370_52 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.RegImm.reg 3) loopBody370_5 loopBody370_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody370_53 : HolLoopProg 64 :=
.mark loopBody370_52

def loopBody370_54 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody370_45 loopBody370_13 (Flapjack.Spt.ln)

def loopBody370_55 : HolLoopProg 64 :=
.mark loopBody370_54

def loopBody370_56 : HolLoopProg 64 :=
.seq loopBody370_55 loopBody370_13

def loopBody370_57 : HolLoopProg 64 :=
.mark loopBody370_56

def loopBody370_58 : HolLoopProg 64 :=
.seq loopBody370_11 loopBody370_57

def loopBody370_59 : HolLoopProg 64 :=
.mark loopBody370_58

def loopBody370_60 : HolLoopProg 64 :=
.seq loopBody370_53 loopBody370_59

def loopBody370_61 : HolLoopProg 64 :=
.mark loopBody370_60

def loopBody370_62 : HolLoopProg 64 :=
.seq loopBody370_51 loopBody370_61

def loopBody370_63 : HolLoopProg 64 :=
.mark loopBody370_62

def loopBody370_64 : HolLoopProg 64 :=
.seq loopBody370_49 loopBody370_63

def loopBody370_65 : HolLoopProg 64 :=
.mark loopBody370_64

def loopBody370_66 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody370_47 loopBody370_65 (Flapjack.Spt.ln)

def loopBody370_67 : HolLoopProg 64 :=
.mark loopBody370_66

def loopBody370_68 : HolLoopProg 64 :=
.seq loopBody370_67 loopBody370_13

def loopBody370_69 : HolLoopProg 64 :=
.mark loopBody370_68

def loopBody370_70 : HolLoopProg 64 :=
.seq loopBody370_11 loopBody370_69

def loopBody370_71 : HolLoopProg 64 :=
.mark loopBody370_70

def loopBody370_72 : HolLoopProg 64 :=
.seq loopBody370_9 loopBody370_71

def loopBody370_73 : HolLoopProg 64 :=
.mark loopBody370_72

def loopBody370_74 : HolLoopProg 64 :=
.seq loopBody370_3 loopBody370_73

def loopBody370_75 : HolLoopProg 64 :=
.mark loopBody370_74

def loopBody370_76 : HolLoopProg 64 :=
.seq loopBody370_1 loopBody370_75

def loopBody370_77 : HolLoopProg 64 :=
.mark loopBody370_76

def loopBody370_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody370_79 : HolLoopProg 64 :=
.mark loopBody370_78

def loopBody370_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody370_81 : HolLoopProg 64 :=
.mark loopBody370_80

def loopBody370_82 : HolLoopProg 64 :=
.seq loopBody370_81 loopBody370_13

def loopBody370_83 : HolLoopProg 64 :=
.mark loopBody370_82

def loopBody370_84 : HolLoopProg 64 :=
.seq loopBody370_79 loopBody370_83

def loopBody370_85 : HolLoopProg 64 :=
.mark loopBody370_84

def loopBody370_86 : HolLoopProg 64 :=
.seq loopBody370_77 loopBody370_85

def loopBody370_87 : HolLoopProg 64 :=
.mark loopBody370_86

def output370 : Nat × List Nat × HolLoopProg 64 :=
  (434, [0], loopBody370_87)
end InitECandidate.Proofs.FrontendStages.Loop
