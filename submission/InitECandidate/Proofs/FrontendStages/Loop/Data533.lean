import InitECandidate.Proofs.FrontendStages.Loop.Translate517
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody533_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody533_1 : HolLoopProg 64 :=
.mark loopBody533_0

def loopBody533_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody533_3 : HolLoopProg 64 :=
.mark loopBody533_2

def loopBody533_4 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 474) ([]) (some (2, loopBody533_3, loopBody533_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody533_5 : HolLoopProg 64 :=
.mark loopBody533_4

def loopBody533_6 : HolLoopProg 64 :=
.seq loopBody533_5 loopBody533_1

def loopBody533_7 : HolLoopProg 64 :=
.mark loopBody533_6

def loopBody533_8 : HolLoopProg 64 :=
.seq loopBody533_1 loopBody533_7

def loopBody533_9 : HolLoopProg 64 :=
.mark loopBody533_8

def loopBody533_10 : HolLoopProg 64 :=
.seq loopBody533_1 loopBody533_9

def loopBody533_11 : HolLoopProg 64 :=
.mark loopBody533_10

def loopBody533_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody533_13 : HolLoopProg 64 :=
.mark loopBody533_12

def loopBody533_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody533_15 : HolLoopProg 64 :=
.mark loopBody533_14

def loopBody533_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody533_17 : HolLoopProg 64 :=
.mark loopBody533_16

def loopBody533_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody533_19 : HolLoopProg 64 :=
.mark loopBody533_18

def loopBody533_20 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.RegImm.reg 3) loopBody533_17 loopBody533_19 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody533_21 : HolLoopProg 64 :=
.mark loopBody533_20

def loopBody533_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody533_23 : HolLoopProg 64 :=
.mark loopBody533_22

def loopBody533_24 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 604) ([2]) (some (2, loopBody533_3, loopBody533_1, (Flapjack.Spt.ln)))

def loopBody533_25 : HolLoopProg 64 :=
.mark loopBody533_24

def loopBody533_26 : HolLoopProg 64 :=
.seq loopBody533_25 loopBody533_1

def loopBody533_27 : HolLoopProg 64 :=
.mark loopBody533_26

def loopBody533_28 : HolLoopProg 64 :=
.seq loopBody533_13 loopBody533_27

def loopBody533_29 : HolLoopProg 64 :=
.mark loopBody533_28

def loopBody533_30 : HolLoopProg 64 :=
.seq loopBody533_1 loopBody533_29

def loopBody533_31 : HolLoopProg 64 :=
.mark loopBody533_30

def loopBody533_32 : HolLoopProg 64 :=
.seq loopBody533_1 loopBody533_31

def loopBody533_33 : HolLoopProg 64 :=
.mark loopBody533_32

def loopBody533_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 120#64])

def loopBody533_35 : HolLoopProg 64 :=
.mark loopBody533_34

def loopBody533_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 264#64]))

def loopBody533_37 : HolLoopProg 64 :=
.mark loopBody533_36

def loopBody533_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody533_39 : HolLoopProg 64 :=
.mark loopBody533_38

def loopBody533_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 3

def loopBody533_41 : HolLoopProg 64 :=
.mark loopBody533_40

def loopBody533_42 : HolLoopProg 64 :=
.seq loopBody533_41 loopBody533_1

def loopBody533_43 : HolLoopProg 64 :=
.mark loopBody533_42

def loopBody533_44 : HolLoopProg 64 :=
.seq loopBody533_39 loopBody533_43

def loopBody533_45 : HolLoopProg 64 :=
.mark loopBody533_44

def loopBody533_46 : HolLoopProg 64 :=
.seq loopBody533_45 loopBody533_1

def loopBody533_47 : HolLoopProg 64 :=
.mark loopBody533_46

def loopBody533_48 : HolLoopProg 64 :=
.seq loopBody533_37 loopBody533_47

def loopBody533_49 : HolLoopProg 64 :=
.mark loopBody533_48

def loopBody533_50 : HolLoopProg 64 :=
.seq loopBody533_1 loopBody533_49

def loopBody533_51 : HolLoopProg 64 :=
.mark loopBody533_50

def loopBody533_52 : HolLoopProg 64 :=
.seq loopBody533_35 loopBody533_51

def loopBody533_53 : HolLoopProg 64 :=
.mark loopBody533_52

def loopBody533_54 : HolLoopProg 64 :=
.seq loopBody533_1 loopBody533_53

def loopBody533_55 : HolLoopProg 64 :=
.mark loopBody533_54

def loopBody533_56 : HolLoopProg 64 :=
.seq loopBody533_33 loopBody533_55

def loopBody533_57 : HolLoopProg 64 :=
.mark loopBody533_56

def loopBody533_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 128#64])

def loopBody533_59 : HolLoopProg 64 :=
.mark loopBody533_58

def loopBody533_60 : HolLoopProg 64 :=
.seq loopBody533_19 loopBody533_47

def loopBody533_61 : HolLoopProg 64 :=
.mark loopBody533_60

def loopBody533_62 : HolLoopProg 64 :=
.seq loopBody533_1 loopBody533_61

def loopBody533_63 : HolLoopProg 64 :=
.mark loopBody533_62

def loopBody533_64 : HolLoopProg 64 :=
.seq loopBody533_59 loopBody533_63

def loopBody533_65 : HolLoopProg 64 :=
.mark loopBody533_64

def loopBody533_66 : HolLoopProg 64 :=
.seq loopBody533_1 loopBody533_65

def loopBody533_67 : HolLoopProg 64 :=
.mark loopBody533_66

def loopBody533_68 : HolLoopProg 64 :=
.seq loopBody533_57 loopBody533_67

def loopBody533_69 : HolLoopProg 64 :=
.mark loopBody533_68

def loopBody533_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 160#64])

def loopBody533_71 : HolLoopProg 64 :=
.mark loopBody533_70

def loopBody533_72 : HolLoopProg 64 :=
.seq loopBody533_13 loopBody533_47

def loopBody533_73 : HolLoopProg 64 :=
.mark loopBody533_72

def loopBody533_74 : HolLoopProg 64 :=
.seq loopBody533_1 loopBody533_73

def loopBody533_75 : HolLoopProg 64 :=
.mark loopBody533_74

def loopBody533_76 : HolLoopProg 64 :=
.seq loopBody533_71 loopBody533_75

def loopBody533_77 : HolLoopProg 64 :=
.mark loopBody533_76

def loopBody533_78 : HolLoopProg 64 :=
.seq loopBody533_1 loopBody533_77

def loopBody533_79 : HolLoopProg 64 :=
.mark loopBody533_78

def loopBody533_80 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody533_69 loopBody533_79 (Flapjack.Spt.ln)

def loopBody533_81 : HolLoopProg 64 :=
.mark loopBody533_80

def loopBody533_82 : HolLoopProg 64 :=
.seq loopBody533_81 loopBody533_1

def loopBody533_83 : HolLoopProg 64 :=
.mark loopBody533_82

def loopBody533_84 : HolLoopProg 64 :=
.seq loopBody533_23 loopBody533_83

def loopBody533_85 : HolLoopProg 64 :=
.mark loopBody533_84

def loopBody533_86 : HolLoopProg 64 :=
.seq loopBody533_21 loopBody533_85

def loopBody533_87 : HolLoopProg 64 :=
.mark loopBody533_86

def loopBody533_88 : HolLoopProg 64 :=
.seq loopBody533_15 loopBody533_87

def loopBody533_89 : HolLoopProg 64 :=
.mark loopBody533_88

def loopBody533_90 : HolLoopProg 64 :=
.seq loopBody533_13 loopBody533_89

def loopBody533_91 : HolLoopProg 64 :=
.mark loopBody533_90

def loopBody533_92 : HolLoopProg 64 :=
.seq loopBody533_11 loopBody533_91

def loopBody533_93 : HolLoopProg 64 :=
.mark loopBody533_92

def loopBody533_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 288#64]),
      Flapjack.HolLoopExp.const 32#64])

def loopBody533_95 : HolLoopProg 64 :=
.mark loopBody533_94

def loopBody533_96 : HolLoopProg 64 :=
.seq loopBody533_17 loopBody533_47

def loopBody533_97 : HolLoopProg 64 :=
.mark loopBody533_96

def loopBody533_98 : HolLoopProg 64 :=
.seq loopBody533_1 loopBody533_97

def loopBody533_99 : HolLoopProg 64 :=
.mark loopBody533_98

def loopBody533_100 : HolLoopProg 64 :=
.seq loopBody533_95 loopBody533_99

def loopBody533_101 : HolLoopProg 64 :=
.mark loopBody533_100

def loopBody533_102 : HolLoopProg 64 :=
.seq loopBody533_1 loopBody533_101

def loopBody533_103 : HolLoopProg 64 :=
.mark loopBody533_102

def loopBody533_104 : HolLoopProg 64 :=
.seq loopBody533_93 loopBody533_103

def loopBody533_105 : HolLoopProg 64 :=
.mark loopBody533_104

def loopBody533_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody533_107 : HolLoopProg 64 :=
.mark loopBody533_106

def loopBody533_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody533_109 : HolLoopProg 64 :=
.mark loopBody533_108

def loopBody533_110 : HolLoopProg 64 :=
.seq loopBody533_109 loopBody533_1

def loopBody533_111 : HolLoopProg 64 :=
.mark loopBody533_110

def loopBody533_112 : HolLoopProg 64 :=
.seq loopBody533_107 loopBody533_111

def loopBody533_113 : HolLoopProg 64 :=
.mark loopBody533_112

def loopBody533_114 : HolLoopProg 64 :=
.seq loopBody533_105 loopBody533_113

def loopBody533_115 : HolLoopProg 64 :=
.mark loopBody533_114

def output533 : Nat × List Nat × HolLoopProg 64 :=
  (597, [0], loopBody533_115)
end InitECandidate.Proofs.FrontendStages.Loop
