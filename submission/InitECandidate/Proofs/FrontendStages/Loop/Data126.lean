import InitECandidate.Proofs.FrontendStages.Loop.Translate110
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody126_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody126_1 : HolLoopProg 64 :=
.mark loopBody126_0

def loopBody126_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody126_3 : HolLoopProg 64 :=
.mark loopBody126_2

def loopBody126_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody126_5 : HolLoopProg 64 :=
.mark loopBody126_4

def loopBody126_6 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 188) ([3]) (some (3, loopBody126_5, loopBody126_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody126_7 : HolLoopProg 64 :=
.mark loopBody126_6

def loopBody126_8 : HolLoopProg 64 :=
.seq loopBody126_7 loopBody126_1

def loopBody126_9 : HolLoopProg 64 :=
.mark loopBody126_8

def loopBody126_10 : HolLoopProg 64 :=
.seq loopBody126_3 loopBody126_9

def loopBody126_11 : HolLoopProg 64 :=
.mark loopBody126_10

def loopBody126_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 40#64]))

def loopBody126_13 : HolLoopProg 64 :=
.mark loopBody126_12

def loopBody126_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 5#64),
      Flapjack.HolLoopExp.const 0#64])

def loopBody126_15 : HolLoopProg 64 :=
.mark loopBody126_14

def loopBody126_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody126_17 : HolLoopProg 64 :=
.mark loopBody126_16

def loopBody126_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody126_19 : HolLoopProg 64 :=
.mark loopBody126_18

def loopBody126_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 4) 6

def loopBody126_21 : HolLoopProg 64 :=
.mark loopBody126_20

def loopBody126_22 : HolLoopProg 64 :=
.seq loopBody126_21 loopBody126_1

def loopBody126_23 : HolLoopProg 64 :=
.mark loopBody126_22

def loopBody126_24 : HolLoopProg 64 :=
.seq loopBody126_19 loopBody126_23

def loopBody126_25 : HolLoopProg 64 :=
.mark loopBody126_24

def loopBody126_26 : HolLoopProg 64 :=
.seq loopBody126_25 loopBody126_1

def loopBody126_27 : HolLoopProg 64 :=
.mark loopBody126_26

def loopBody126_28 : HolLoopProg 64 :=
.seq loopBody126_17 loopBody126_27

def loopBody126_29 : HolLoopProg 64 :=
.mark loopBody126_28

def loopBody126_30 : HolLoopProg 64 :=
.seq loopBody126_1 loopBody126_29

def loopBody126_31 : HolLoopProg 64 :=
.mark loopBody126_30

def loopBody126_32 : HolLoopProg 64 :=
.seq loopBody126_15 loopBody126_31

def loopBody126_33 : HolLoopProg 64 :=
.mark loopBody126_32

def loopBody126_34 : HolLoopProg 64 :=
.seq loopBody126_1 loopBody126_33

def loopBody126_35 : HolLoopProg 64 :=
.mark loopBody126_34

def loopBody126_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 5#64),
      Flapjack.HolLoopExp.const 8#64])

def loopBody126_37 : HolLoopProg 64 :=
.mark loopBody126_36

def loopBody126_38 : HolLoopProg 64 :=
.seq loopBody126_37 loopBody126_31

def loopBody126_39 : HolLoopProg 64 :=
.mark loopBody126_38

def loopBody126_40 : HolLoopProg 64 :=
.seq loopBody126_1 loopBody126_39

def loopBody126_41 : HolLoopProg 64 :=
.mark loopBody126_40

def loopBody126_42 : HolLoopProg 64 :=
.seq loopBody126_35 loopBody126_41

def loopBody126_43 : HolLoopProg 64 :=
.mark loopBody126_42

def loopBody126_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 5#64),
      Flapjack.HolLoopExp.const 16#64])

def loopBody126_45 : HolLoopProg 64 :=
.mark loopBody126_44

def loopBody126_46 : HolLoopProg 64 :=
.seq loopBody126_45 loopBody126_31

def loopBody126_47 : HolLoopProg 64 :=
.mark loopBody126_46

def loopBody126_48 : HolLoopProg 64 :=
.seq loopBody126_1 loopBody126_47

def loopBody126_49 : HolLoopProg 64 :=
.mark loopBody126_48

def loopBody126_50 : HolLoopProg 64 :=
.seq loopBody126_43 loopBody126_49

def loopBody126_51 : HolLoopProg 64 :=
.mark loopBody126_50

def loopBody126_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 5#64),
      Flapjack.HolLoopExp.const 24#64])

def loopBody126_53 : HolLoopProg 64 :=
.mark loopBody126_52

def loopBody126_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody126_55 : HolLoopProg 64 :=
.mark loopBody126_54

def loopBody126_56 : HolLoopProg 64 :=
.seq loopBody126_55 loopBody126_27

def loopBody126_57 : HolLoopProg 64 :=
.mark loopBody126_56

def loopBody126_58 : HolLoopProg 64 :=
.seq loopBody126_1 loopBody126_57

def loopBody126_59 : HolLoopProg 64 :=
.mark loopBody126_58

def loopBody126_60 : HolLoopProg 64 :=
.seq loopBody126_53 loopBody126_59

def loopBody126_61 : HolLoopProg 64 :=
.mark loopBody126_60

def loopBody126_62 : HolLoopProg 64 :=
.seq loopBody126_1 loopBody126_61

def loopBody126_63 : HolLoopProg 64 :=
.mark loopBody126_62

def loopBody126_64 : HolLoopProg 64 :=
.seq loopBody126_51 loopBody126_63

def loopBody126_65 : HolLoopProg 64 :=
.mark loopBody126_64

def loopBody126_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody126_67 : HolLoopProg 64 :=
.mark loopBody126_66

def loopBody126_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody126_69 : HolLoopProg 64 :=
.mark loopBody126_68

def loopBody126_70 : HolLoopProg 64 :=
.seq loopBody126_69 loopBody126_1

def loopBody126_71 : HolLoopProg 64 :=
.mark loopBody126_70

def loopBody126_72 : HolLoopProg 64 :=
.seq loopBody126_67 loopBody126_71

def loopBody126_73 : HolLoopProg 64 :=
.mark loopBody126_72

def loopBody126_74 : HolLoopProg 64 :=
.seq loopBody126_65 loopBody126_73

def loopBody126_75 : HolLoopProg 64 :=
.mark loopBody126_74

def loopBody126_76 : HolLoopProg 64 :=
.seq loopBody126_13 loopBody126_75

def loopBody126_77 : HolLoopProg 64 :=
.mark loopBody126_76

def loopBody126_78 : HolLoopProg 64 :=
.seq loopBody126_1 loopBody126_77

def loopBody126_79 : HolLoopProg 64 :=
.mark loopBody126_78

def loopBody126_80 : HolLoopProg 64 :=
.seq loopBody126_11 loopBody126_79

def loopBody126_81 : HolLoopProg 64 :=
.mark loopBody126_80

def loopBody126_82 : HolLoopProg 64 :=
.seq loopBody126_1 loopBody126_81

def loopBody126_83 : HolLoopProg 64 :=
.mark loopBody126_82

def loopBody126_84 : HolLoopProg 64 :=
.seq loopBody126_1 loopBody126_83

def loopBody126_85 : HolLoopProg 64 :=
.mark loopBody126_84

def output126 : Nat × List Nat × HolLoopProg 64 :=
  (190, [0, 1], loopBody126_85)
end InitECandidate.Proofs.FrontendStages.Loop
