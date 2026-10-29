import InitECandidate.Proofs.FrontendStages.Loop.Translate2
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody18_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 0)

def loopBody18_1 : HolLoopProg 64 :=
.mark loopBody18_0

def loopBody18_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 1 1

def loopBody18_3 : HolLoopProg 64 :=
.mark loopBody18_2

def loopBody18_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody18_5 : HolLoopProg 64 :=
.mark loopBody18_4

def loopBody18_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 2 2

def loopBody18_7 : HolLoopProg 64 :=
.mark loopBody18_6

def loopBody18_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 2#64])

def loopBody18_9 : HolLoopProg 64 :=
.mark loopBody18_8

def loopBody18_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 3 3

def loopBody18_11 : HolLoopProg 64 :=
.mark loopBody18_10

def loopBody18_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 3#64])

def loopBody18_13 : HolLoopProg 64 :=
.mark loopBody18_12

def loopBody18_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 4 4

def loopBody18_15 : HolLoopProg 64 :=
.mark loopBody18_14

def loopBody18_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64])

def loopBody18_17 : HolLoopProg 64 :=
.mark loopBody18_16

def loopBody18_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 5 5

def loopBody18_19 : HolLoopProg 64 :=
.mark loopBody18_18

def loopBody18_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64, Flapjack.HolLoopExp.const 1#64])

def loopBody18_21 : HolLoopProg 64 :=
.mark loopBody18_20

def loopBody18_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 6 6

def loopBody18_23 : HolLoopProg 64 :=
.mark loopBody18_22

def loopBody18_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64, Flapjack.HolLoopExp.const 2#64])

def loopBody18_25 : HolLoopProg 64 :=
.mark loopBody18_24

def loopBody18_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 7 7

def loopBody18_27 : HolLoopProg 64 :=
.mark loopBody18_26

def loopBody18_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64, Flapjack.HolLoopExp.const 3#64])

def loopBody18_29 : HolLoopProg 64 :=
.mark loopBody18_28

def loopBody18_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 8 8

def loopBody18_31 : HolLoopProg 64 :=
.mark loopBody18_30

def loopBody18_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 8#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 16#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 24#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.op Flapjack.BinOp.or
          [Flapjack.HolLoopExp.var 5,
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 8#64),
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.const 16#64),
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 8) (Flapjack.HolLoopExp.const 24#64)])
        (Flapjack.HolLoopExp.const 32#64)])

def loopBody18_33 : HolLoopProg 64 :=
.mark loopBody18_32

def loopBody18_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody18_35 : HolLoopProg 64 :=
.mark loopBody18_34

def loopBody18_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody18_37 : HolLoopProg 64 :=
.mark loopBody18_36

def loopBody18_38 : HolLoopProg 64 :=
.seq loopBody18_35 loopBody18_37

def loopBody18_39 : HolLoopProg 64 :=
.mark loopBody18_38

def loopBody18_40 : HolLoopProg 64 :=
.seq loopBody18_33 loopBody18_39

def loopBody18_41 : HolLoopProg 64 :=
.mark loopBody18_40

def loopBody18_42 : HolLoopProg 64 :=
.seq loopBody18_31 loopBody18_41

def loopBody18_43 : HolLoopProg 64 :=
.mark loopBody18_42

def loopBody18_44 : HolLoopProg 64 :=
.seq loopBody18_29 loopBody18_43

def loopBody18_45 : HolLoopProg 64 :=
.mark loopBody18_44

def loopBody18_46 : HolLoopProg 64 :=
.seq loopBody18_27 loopBody18_45

def loopBody18_47 : HolLoopProg 64 :=
.mark loopBody18_46

def loopBody18_48 : HolLoopProg 64 :=
.seq loopBody18_25 loopBody18_47

def loopBody18_49 : HolLoopProg 64 :=
.mark loopBody18_48

def loopBody18_50 : HolLoopProg 64 :=
.seq loopBody18_23 loopBody18_49

def loopBody18_51 : HolLoopProg 64 :=
.mark loopBody18_50

def loopBody18_52 : HolLoopProg 64 :=
.seq loopBody18_21 loopBody18_51

def loopBody18_53 : HolLoopProg 64 :=
.mark loopBody18_52

def loopBody18_54 : HolLoopProg 64 :=
.seq loopBody18_19 loopBody18_53

def loopBody18_55 : HolLoopProg 64 :=
.mark loopBody18_54

def loopBody18_56 : HolLoopProg 64 :=
.seq loopBody18_17 loopBody18_55

def loopBody18_57 : HolLoopProg 64 :=
.mark loopBody18_56

def loopBody18_58 : HolLoopProg 64 :=
.seq loopBody18_15 loopBody18_57

def loopBody18_59 : HolLoopProg 64 :=
.mark loopBody18_58

def loopBody18_60 : HolLoopProg 64 :=
.seq loopBody18_13 loopBody18_59

def loopBody18_61 : HolLoopProg 64 :=
.mark loopBody18_60

def loopBody18_62 : HolLoopProg 64 :=
.seq loopBody18_11 loopBody18_61

def loopBody18_63 : HolLoopProg 64 :=
.mark loopBody18_62

def loopBody18_64 : HolLoopProg 64 :=
.seq loopBody18_9 loopBody18_63

def loopBody18_65 : HolLoopProg 64 :=
.mark loopBody18_64

def loopBody18_66 : HolLoopProg 64 :=
.seq loopBody18_7 loopBody18_65

def loopBody18_67 : HolLoopProg 64 :=
.mark loopBody18_66

def loopBody18_68 : HolLoopProg 64 :=
.seq loopBody18_5 loopBody18_67

def loopBody18_69 : HolLoopProg 64 :=
.mark loopBody18_68

def loopBody18_70 : HolLoopProg 64 :=
.seq loopBody18_3 loopBody18_69

def loopBody18_71 : HolLoopProg 64 :=
.mark loopBody18_70

def loopBody18_72 : HolLoopProg 64 :=
.seq loopBody18_1 loopBody18_71

def loopBody18_73 : HolLoopProg 64 :=
.mark loopBody18_72

def output18 : Nat × List Nat × HolLoopProg 64 :=
  (82, [0], loopBody18_73)
end InitECandidate.Proofs.FrontendStages.Loop
