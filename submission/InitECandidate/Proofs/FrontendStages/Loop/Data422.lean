import InitECandidate.Proofs.FrontendStages.Loop.Translate406
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody422_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 3])

def loopBody422_1 : HolLoopProg 64 :=
.mark loopBody422_0

def loopBody422_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody422_3 : HolLoopProg 64 :=
.mark loopBody422_2

def loopBody422_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody422_5 : HolLoopProg 64 :=
.mark loopBody422_4

def loopBody422_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody422_7 : HolLoopProg 64 :=
.mark loopBody422_6

def loopBody422_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.reg 6) loopBody422_5 loopBody422_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody422_9 : HolLoopProg 64 :=
.mark loopBody422_8

def loopBody422_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody422_11 : HolLoopProg 64 :=
.mark loopBody422_10

def loopBody422_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody422_13 : HolLoopProg 64 :=
.mark loopBody422_12

def loopBody422_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody422_15 : HolLoopProg 64 :=
.mark loopBody422_14

def loopBody422_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody422_17 : HolLoopProg 64 :=
.mark loopBody422_16

def loopBody422_18 : HolLoopProg 64 :=
.seq loopBody422_15 loopBody422_17

def loopBody422_19 : HolLoopProg 64 :=
.mark loopBody422_18

def loopBody422_20 : HolLoopProg 64 :=
.seq loopBody422_13 loopBody422_19

def loopBody422_21 : HolLoopProg 64 :=
.mark loopBody422_20

def loopBody422_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody422_21 loopBody422_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody422_23 : HolLoopProg 64 :=
.mark loopBody422_22

def loopBody422_24 : HolLoopProg 64 :=
.seq loopBody422_23 loopBody422_17

def loopBody422_25 : HolLoopProg 64 :=
.mark loopBody422_24

def loopBody422_26 : HolLoopProg 64 :=
.seq loopBody422_11 loopBody422_25

def loopBody422_27 : HolLoopProg 64 :=
.mark loopBody422_26

def loopBody422_28 : HolLoopProg 64 :=
.seq loopBody422_9 loopBody422_27

def loopBody422_29 : HolLoopProg 64 :=
.mark loopBody422_28

def loopBody422_30 : HolLoopProg 64 :=
.seq loopBody422_3 loopBody422_29

def loopBody422_31 : HolLoopProg 64 :=
.mark loopBody422_30

def loopBody422_32 : HolLoopProg 64 :=
.seq loopBody422_1 loopBody422_31

def loopBody422_33 : HolLoopProg 64 :=
.mark loopBody422_32

def loopBody422_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody422_35 : HolLoopProg 64 :=
.mark loopBody422_34

def loopBody422_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody422_37 : HolLoopProg 64 :=
.mark loopBody422_36

def loopBody422_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 56#64]))

def loopBody422_39 : HolLoopProg 64 :=
.mark loopBody422_38

def loopBody422_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody422_41 : HolLoopProg 64 :=
.mark loopBody422_40

def loopBody422_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.RegImm.reg 7) loopBody422_41 loopBody422_3 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody422_43 : HolLoopProg 64 :=
.mark loopBody422_42

def loopBody422_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody422_45 : HolLoopProg 64 :=
.mark loopBody422_44

def loopBody422_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody422_47 : HolLoopProg 64 :=
.mark loopBody422_46

def loopBody422_48 : HolLoopProg 64 :=
.seq loopBody422_47 loopBody422_17

def loopBody422_49 : HolLoopProg 64 :=
.mark loopBody422_48

def loopBody422_50 : HolLoopProg 64 :=
.seq loopBody422_7 loopBody422_49

def loopBody422_51 : HolLoopProg 64 :=
.mark loopBody422_50

def loopBody422_52 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody422_51 loopBody422_17 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody422_53 : HolLoopProg 64 :=
.mark loopBody422_52

def loopBody422_54 : HolLoopProg 64 :=
.seq loopBody422_53 loopBody422_17

def loopBody422_55 : HolLoopProg 64 :=
.mark loopBody422_54

def loopBody422_56 : HolLoopProg 64 :=
.seq loopBody422_45 loopBody422_55

def loopBody422_57 : HolLoopProg 64 :=
.mark loopBody422_56

def loopBody422_58 : HolLoopProg 64 :=
.seq loopBody422_43 loopBody422_57

def loopBody422_59 : HolLoopProg 64 :=
.mark loopBody422_58

def loopBody422_60 : HolLoopProg 64 :=
.seq loopBody422_39 loopBody422_59

def loopBody422_61 : HolLoopProg 64 :=
.mark loopBody422_60

def loopBody422_62 : HolLoopProg 64 :=
.seq loopBody422_37 loopBody422_61

def loopBody422_63 : HolLoopProg 64 :=
.mark loopBody422_62

def loopBody422_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 80#64]))

def loopBody422_65 : HolLoopProg 64 :=
.mark loopBody422_64

def loopBody422_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr
        (Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.var 5,
              Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
                (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 4)
                  (Flapjack.HolLoopExp.const 6#64))
                (Flapjack.HolLoopExp.const 3#64)]))
        (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 63#64]),
      Flapjack.HolLoopExp.const 1#64])

def loopBody422_67 : HolLoopProg 64 :=
.mark loopBody422_66

def loopBody422_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody422_69 : HolLoopProg 64 :=
.mark loopBody422_68

def loopBody422_70 : HolLoopProg 64 :=
.seq loopBody422_69 loopBody422_17

def loopBody422_71 : HolLoopProg 64 :=
.mark loopBody422_70

def loopBody422_72 : HolLoopProg 64 :=
.seq loopBody422_67 loopBody422_71

def loopBody422_73 : HolLoopProg 64 :=
.mark loopBody422_72

def loopBody422_74 : HolLoopProg 64 :=
.seq loopBody422_65 loopBody422_73

def loopBody422_75 : HolLoopProg 64 :=
.mark loopBody422_74

def loopBody422_76 : HolLoopProg 64 :=
.seq loopBody422_17 loopBody422_75

def loopBody422_77 : HolLoopProg 64 :=
.mark loopBody422_76

def loopBody422_78 : HolLoopProg 64 :=
.seq loopBody422_63 loopBody422_77

def loopBody422_79 : HolLoopProg 64 :=
.mark loopBody422_78

def loopBody422_80 : HolLoopProg 64 :=
.seq loopBody422_35 loopBody422_79

def loopBody422_81 : HolLoopProg 64 :=
.mark loopBody422_80

def loopBody422_82 : HolLoopProg 64 :=
.seq loopBody422_17 loopBody422_81

def loopBody422_83 : HolLoopProg 64 :=
.mark loopBody422_82

def loopBody422_84 : HolLoopProg 64 :=
.seq loopBody422_33 loopBody422_83

def loopBody422_85 : HolLoopProg 64 :=
.mark loopBody422_84

def output422 : Nat × List Nat × HolLoopProg 64 :=
  (486, [0, 1, 2, 3], loopBody422_85)
end InitECandidate.Proofs.FrontendStages.Loop
