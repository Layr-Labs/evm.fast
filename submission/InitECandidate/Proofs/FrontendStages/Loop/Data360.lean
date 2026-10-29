import InitECandidate.Proofs.FrontendStages.Loop.Translate344
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody360_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody360_1 : HolLoopProg 64 :=
.mark loopBody360_0

def loopBody360_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody360_3 : HolLoopProg 64 :=
.mark loopBody360_2

def loopBody360_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody360_5 : HolLoopProg 64 :=
.mark loopBody360_4

def loopBody360_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 421) ([2]) (some (2, loopBody360_5, loopBody360_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody360_7 : HolLoopProg 64 :=
.mark loopBody360_6

def loopBody360_8 : HolLoopProg 64 :=
.seq loopBody360_7 loopBody360_1

def loopBody360_9 : HolLoopProg 64 :=
.mark loopBody360_8

def loopBody360_10 : HolLoopProg 64 :=
.seq loopBody360_3 loopBody360_9

def loopBody360_11 : HolLoopProg 64 :=
.mark loopBody360_10

def loopBody360_12 : HolLoopProg 64 :=
.seq loopBody360_1 loopBody360_11

def loopBody360_13 : HolLoopProg 64 :=
.mark loopBody360_12

def loopBody360_14 : HolLoopProg 64 :=
.seq loopBody360_1 loopBody360_13

def loopBody360_15 : HolLoopProg 64 :=
.mark loopBody360_14

def loopBody360_16 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 407) ([2]) (some (2, loopBody360_5, loopBody360_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody360_17 : HolLoopProg 64 :=
.mark loopBody360_16

def loopBody360_18 : HolLoopProg 64 :=
.seq loopBody360_17 loopBody360_1

def loopBody360_19 : HolLoopProg 64 :=
.mark loopBody360_18

def loopBody360_20 : HolLoopProg 64 :=
.seq loopBody360_3 loopBody360_19

def loopBody360_21 : HolLoopProg 64 :=
.mark loopBody360_20

def loopBody360_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody360_23 : HolLoopProg 64 :=
.mark loopBody360_22

def loopBody360_24 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 395) ([2]) (some (2, loopBody360_5, loopBody360_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody360_25 : HolLoopProg 64 :=
.mark loopBody360_24

def loopBody360_26 : HolLoopProg 64 :=
.seq loopBody360_25 loopBody360_1

def loopBody360_27 : HolLoopProg 64 :=
.mark loopBody360_26

def loopBody360_28 : HolLoopProg 64 :=
.seq loopBody360_23 loopBody360_27

def loopBody360_29 : HolLoopProg 64 :=
.mark loopBody360_28

def loopBody360_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 0#64])

def loopBody360_31 : HolLoopProg 64 :=
.mark loopBody360_30

def loopBody360_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody360_33 : HolLoopProg 64 :=
.mark loopBody360_32

def loopBody360_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody360_35 : HolLoopProg 64 :=
.mark loopBody360_34

def loopBody360_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 2) 4

def loopBody360_37 : HolLoopProg 64 :=
.mark loopBody360_36

def loopBody360_38 : HolLoopProg 64 :=
.seq loopBody360_37 loopBody360_1

def loopBody360_39 : HolLoopProg 64 :=
.mark loopBody360_38

def loopBody360_40 : HolLoopProg 64 :=
.seq loopBody360_35 loopBody360_39

def loopBody360_41 : HolLoopProg 64 :=
.mark loopBody360_40

def loopBody360_42 : HolLoopProg 64 :=
.seq loopBody360_41 loopBody360_1

def loopBody360_43 : HolLoopProg 64 :=
.mark loopBody360_42

def loopBody360_44 : HolLoopProg 64 :=
.seq loopBody360_33 loopBody360_43

def loopBody360_45 : HolLoopProg 64 :=
.mark loopBody360_44

def loopBody360_46 : HolLoopProg 64 :=
.seq loopBody360_1 loopBody360_45

def loopBody360_47 : HolLoopProg 64 :=
.mark loopBody360_46

def loopBody360_48 : HolLoopProg 64 :=
.seq loopBody360_31 loopBody360_47

def loopBody360_49 : HolLoopProg 64 :=
.mark loopBody360_48

def loopBody360_50 : HolLoopProg 64 :=
.seq loopBody360_1 loopBody360_49

def loopBody360_51 : HolLoopProg 64 :=
.mark loopBody360_50

def loopBody360_52 : HolLoopProg 64 :=
.seq loopBody360_29 loopBody360_51

def loopBody360_53 : HolLoopProg 64 :=
.mark loopBody360_52

def loopBody360_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 48#64])

def loopBody360_55 : HolLoopProg 64 :=
.mark loopBody360_54

def loopBody360_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 136#64]))

def loopBody360_57 : HolLoopProg 64 :=
.mark loopBody360_56

def loopBody360_58 : HolLoopProg 64 :=
.seq loopBody360_57 loopBody360_43

def loopBody360_59 : HolLoopProg 64 :=
.mark loopBody360_58

def loopBody360_60 : HolLoopProg 64 :=
.seq loopBody360_1 loopBody360_59

def loopBody360_61 : HolLoopProg 64 :=
.mark loopBody360_60

def loopBody360_62 : HolLoopProg 64 :=
.seq loopBody360_55 loopBody360_61

def loopBody360_63 : HolLoopProg 64 :=
.mark loopBody360_62

def loopBody360_64 : HolLoopProg 64 :=
.seq loopBody360_1 loopBody360_63

def loopBody360_65 : HolLoopProg 64 :=
.mark loopBody360_64

def loopBody360_66 : HolLoopProg 64 :=
.seq loopBody360_53 loopBody360_65

def loopBody360_67 : HolLoopProg 64 :=
.mark loopBody360_66

def loopBody360_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody360_69 : HolLoopProg 64 :=
.mark loopBody360_68

def loopBody360_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody360_71 : HolLoopProg 64 :=
.mark loopBody360_70

def loopBody360_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody360_73 : HolLoopProg 64 :=
.mark loopBody360_72

def loopBody360_74 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 423) ([3, 4]) (some (3, loopBody360_73, loopBody360_1, (Flapjack.Spt.ln)))

def loopBody360_75 : HolLoopProg 64 :=
.mark loopBody360_74

def loopBody360_76 : HolLoopProg 64 :=
.seq loopBody360_75 loopBody360_1

def loopBody360_77 : HolLoopProg 64 :=
.mark loopBody360_76

def loopBody360_78 : HolLoopProg 64 :=
.seq loopBody360_71 loopBody360_77

def loopBody360_79 : HolLoopProg 64 :=
.mark loopBody360_78

def loopBody360_80 : HolLoopProg 64 :=
.seq loopBody360_69 loopBody360_79

def loopBody360_81 : HolLoopProg 64 :=
.mark loopBody360_80

def loopBody360_82 : HolLoopProg 64 :=
.seq loopBody360_1 loopBody360_81

def loopBody360_83 : HolLoopProg 64 :=
.mark loopBody360_82

def loopBody360_84 : HolLoopProg 64 :=
.seq loopBody360_1 loopBody360_83

def loopBody360_85 : HolLoopProg 64 :=
.mark loopBody360_84

def loopBody360_86 : HolLoopProg 64 :=
.seq loopBody360_67 loopBody360_85

def loopBody360_87 : HolLoopProg 64 :=
.mark loopBody360_86

def loopBody360_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody360_89 : HolLoopProg 64 :=
.mark loopBody360_88

def loopBody360_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody360_91 : HolLoopProg 64 :=
.mark loopBody360_90

def loopBody360_92 : HolLoopProg 64 :=
.seq loopBody360_91 loopBody360_1

def loopBody360_93 : HolLoopProg 64 :=
.mark loopBody360_92

def loopBody360_94 : HolLoopProg 64 :=
.seq loopBody360_89 loopBody360_93

def loopBody360_95 : HolLoopProg 64 :=
.mark loopBody360_94

def loopBody360_96 : HolLoopProg 64 :=
.seq loopBody360_87 loopBody360_95

def loopBody360_97 : HolLoopProg 64 :=
.mark loopBody360_96

def loopBody360_98 : HolLoopProg 64 :=
.seq loopBody360_21 loopBody360_97

def loopBody360_99 : HolLoopProg 64 :=
.mark loopBody360_98

def loopBody360_100 : HolLoopProg 64 :=
.seq loopBody360_1 loopBody360_99

def loopBody360_101 : HolLoopProg 64 :=
.mark loopBody360_100

def loopBody360_102 : HolLoopProg 64 :=
.seq loopBody360_1 loopBody360_101

def loopBody360_103 : HolLoopProg 64 :=
.mark loopBody360_102

def loopBody360_104 : HolLoopProg 64 :=
.seq loopBody360_15 loopBody360_103

def loopBody360_105 : HolLoopProg 64 :=
.mark loopBody360_104

def output360 : Nat × List Nat × HolLoopProg 64 :=
  (424, [0], loopBody360_105)
end InitECandidate.Proofs.FrontendStages.Loop
