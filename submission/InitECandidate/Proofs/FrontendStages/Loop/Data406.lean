import InitECandidate.Proofs.FrontendStages.Loop.Translate390
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody406_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody406_1 : HolLoopProg 64 :=
.mark loopBody406_0

def loopBody406_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 64#64]))

def loopBody406_3 : HolLoopProg 64 :=
.mark loopBody406_2

def loopBody406_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody406_5 : HolLoopProg 64 :=
.mark loopBody406_4

def loopBody406_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody406_7 : HolLoopProg 64 :=
.mark loopBody406_6

def loopBody406_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody406_9 : HolLoopProg 64 :=
.mark loopBody406_8

def loopBody406_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody406_11 : HolLoopProg 64 :=
.mark loopBody406_10

def loopBody406_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody406_9 loopBody406_11 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody406_13 : HolLoopProg 64 :=
.mark loopBody406_12

def loopBody406_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody406_15 : HolLoopProg 64 :=
.mark loopBody406_14

def loopBody406_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 4#64)

def loopBody406_17 : HolLoopProg 64 :=
.mark loopBody406_16

def loopBody406_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 2)

def loopBody406_19 : HolLoopProg 64 :=
.mark loopBody406_18

def loopBody406_20 : HolLoopProg 64 :=
.seq loopBody406_19 loopBody406_1

def loopBody406_21 : HolLoopProg 64 :=
.mark loopBody406_20

def loopBody406_22 : HolLoopProg 64 :=
.seq loopBody406_21 loopBody406_1

def loopBody406_23 : HolLoopProg 64 :=
.mark loopBody406_22

def loopBody406_24 : HolLoopProg 64 :=
.seq loopBody406_17 loopBody406_23

def loopBody406_25 : HolLoopProg 64 :=
.mark loopBody406_24

def loopBody406_26 : HolLoopProg 64 :=
.seq loopBody406_1 loopBody406_25

def loopBody406_27 : HolLoopProg 64 :=
.mark loopBody406_26

def loopBody406_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 8#64)

def loopBody406_29 : HolLoopProg 64 :=
.mark loopBody406_28

def loopBody406_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody406_31 : HolLoopProg 64 :=
.mark loopBody406_30

def loopBody406_32 : HolLoopProg 64 :=
.seq loopBody406_29 loopBody406_31

def loopBody406_33 : HolLoopProg 64 :=
.mark loopBody406_32

def loopBody406_34 : HolLoopProg 64 :=
.seq loopBody406_27 loopBody406_33

def loopBody406_35 : HolLoopProg 64 :=
.mark loopBody406_34

def loopBody406_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody406_35 loopBody406_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody406_37 : HolLoopProg 64 :=
.mark loopBody406_36

def loopBody406_38 : HolLoopProg 64 :=
.seq loopBody406_37 loopBody406_1

def loopBody406_39 : HolLoopProg 64 :=
.mark loopBody406_38

def loopBody406_40 : HolLoopProg 64 :=
.seq loopBody406_15 loopBody406_39

def loopBody406_41 : HolLoopProg 64 :=
.mark loopBody406_40

def loopBody406_42 : HolLoopProg 64 :=
.seq loopBody406_13 loopBody406_41

def loopBody406_43 : HolLoopProg 64 :=
.mark loopBody406_42

def loopBody406_44 : HolLoopProg 64 :=
.seq loopBody406_7 loopBody406_43

def loopBody406_45 : HolLoopProg 64 :=
.mark loopBody406_44

def loopBody406_46 : HolLoopProg 64 :=
.seq loopBody406_5 loopBody406_45

def loopBody406_47 : HolLoopProg 64 :=
.mark loopBody406_46

def loopBody406_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 64#64])

def loopBody406_49 : HolLoopProg 64 :=
.mark loopBody406_48

def loopBody406_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 0])

def loopBody406_51 : HolLoopProg 64 :=
.mark loopBody406_50

def loopBody406_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody406_53 : HolLoopProg 64 :=
.mark loopBody406_52

def loopBody406_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 2) 4

def loopBody406_55 : HolLoopProg 64 :=
.mark loopBody406_54

def loopBody406_56 : HolLoopProg 64 :=
.seq loopBody406_55 loopBody406_1

def loopBody406_57 : HolLoopProg 64 :=
.mark loopBody406_56

def loopBody406_58 : HolLoopProg 64 :=
.seq loopBody406_53 loopBody406_57

def loopBody406_59 : HolLoopProg 64 :=
.mark loopBody406_58

def loopBody406_60 : HolLoopProg 64 :=
.seq loopBody406_59 loopBody406_1

def loopBody406_61 : HolLoopProg 64 :=
.mark loopBody406_60

def loopBody406_62 : HolLoopProg 64 :=
.seq loopBody406_51 loopBody406_61

def loopBody406_63 : HolLoopProg 64 :=
.mark loopBody406_62

def loopBody406_64 : HolLoopProg 64 :=
.seq loopBody406_1 loopBody406_63

def loopBody406_65 : HolLoopProg 64 :=
.mark loopBody406_64

def loopBody406_66 : HolLoopProg 64 :=
.seq loopBody406_49 loopBody406_65

def loopBody406_67 : HolLoopProg 64 :=
.mark loopBody406_66

def loopBody406_68 : HolLoopProg 64 :=
.seq loopBody406_1 loopBody406_67

def loopBody406_69 : HolLoopProg 64 :=
.mark loopBody406_68

def loopBody406_70 : HolLoopProg 64 :=
.seq loopBody406_47 loopBody406_69

def loopBody406_71 : HolLoopProg 64 :=
.mark loopBody406_70

def loopBody406_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 184#64])

def loopBody406_73 : HolLoopProg 64 :=
.mark loopBody406_72

def loopBody406_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 184#64]),
      Flapjack.HolLoopExp.var 0])

def loopBody406_75 : HolLoopProg 64 :=
.mark loopBody406_74

def loopBody406_76 : HolLoopProg 64 :=
.seq loopBody406_75 loopBody406_61

def loopBody406_77 : HolLoopProg 64 :=
.mark loopBody406_76

def loopBody406_78 : HolLoopProg 64 :=
.seq loopBody406_1 loopBody406_77

def loopBody406_79 : HolLoopProg 64 :=
.mark loopBody406_78

def loopBody406_80 : HolLoopProg 64 :=
.seq loopBody406_73 loopBody406_79

def loopBody406_81 : HolLoopProg 64 :=
.mark loopBody406_80

def loopBody406_82 : HolLoopProg 64 :=
.seq loopBody406_1 loopBody406_81

def loopBody406_83 : HolLoopProg 64 :=
.mark loopBody406_82

def loopBody406_84 : HolLoopProg 64 :=
.seq loopBody406_71 loopBody406_83

def loopBody406_85 : HolLoopProg 64 :=
.mark loopBody406_84

def loopBody406_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody406_87 : HolLoopProg 64 :=
.mark loopBody406_86

def loopBody406_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody406_89 : HolLoopProg 64 :=
.mark loopBody406_88

def loopBody406_90 : HolLoopProg 64 :=
.seq loopBody406_89 loopBody406_1

def loopBody406_91 : HolLoopProg 64 :=
.mark loopBody406_90

def loopBody406_92 : HolLoopProg 64 :=
.seq loopBody406_87 loopBody406_91

def loopBody406_93 : HolLoopProg 64 :=
.mark loopBody406_92

def loopBody406_94 : HolLoopProg 64 :=
.seq loopBody406_85 loopBody406_93

def loopBody406_95 : HolLoopProg 64 :=
.mark loopBody406_94

def loopBody406_96 : HolLoopProg 64 :=
.seq loopBody406_3 loopBody406_95

def loopBody406_97 : HolLoopProg 64 :=
.mark loopBody406_96

def loopBody406_98 : HolLoopProg 64 :=
.seq loopBody406_1 loopBody406_97

def loopBody406_99 : HolLoopProg 64 :=
.mark loopBody406_98

def output406 : Nat × List Nat × HolLoopProg 64 :=
  (470, [0], loopBody406_99)
end InitECandidate.Proofs.FrontendStages.Loop
