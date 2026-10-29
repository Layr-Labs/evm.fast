import InitECandidate.Proofs.FrontendStages.Loop.Translate652
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody668_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody668_1 : HolLoopProg 64 :=
.mark loopBody668_0

def loopBody668_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 0))

def loopBody668_3 : HolLoopProg 64 :=
.mark loopBody668_2

def loopBody668_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody668_5 : HolLoopProg 64 :=
.mark loopBody668_4

def loopBody668_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64]))

def loopBody668_7 : HolLoopProg 64 :=
.mark loopBody668_6

def loopBody668_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64]))

def loopBody668_9 : HolLoopProg 64 :=
.mark loopBody668_8

def loopBody668_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64]))

def loopBody668_11 : HolLoopProg 64 :=
.mark loopBody668_10

def loopBody668_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 40#64]))

def loopBody668_13 : HolLoopProg 64 :=
.mark loopBody668_12

def loopBody668_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64]))

def loopBody668_15 : HolLoopProg 64 :=
.mark loopBody668_14

def loopBody668_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody668_17 : HolLoopProg 64 :=
.mark loopBody668_16

def loopBody668_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody668_19 : HolLoopProg 64 :=
.mark loopBody668_18

def loopBody668_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody668_21 : HolLoopProg 64 :=
.mark loopBody668_20

def loopBody668_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64],
        Flapjack.HolLoopExp.const 32#64]))

def loopBody668_23 : HolLoopProg 64 :=
.mark loopBody668_22

def loopBody668_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64],
        Flapjack.HolLoopExp.const 40#64]))

def loopBody668_25 : HolLoopProg 64 :=
.mark loopBody668_24

def loopBody668_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 4,
      Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.var 8,
      Flapjack.HolLoopExp.var 9, Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.var 11, Flapjack.HolLoopExp.var 12])

def loopBody668_27 : HolLoopProg 64 :=
.mark loopBody668_26

def loopBody668_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 0#64)

def loopBody668_29 : HolLoopProg 64 :=
.mark loopBody668_28

def loopBody668_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 1#64)

def loopBody668_31 : HolLoopProg 64 :=
.mark loopBody668_30

def loopBody668_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody668_33 : HolLoopProg 64 :=
.mark loopBody668_32

def loopBody668_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.RegImm.reg 15) loopBody668_31 loopBody668_33 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
  Flapjack.Spt.ln)

def loopBody668_35 : HolLoopProg 64 :=
.mark loopBody668_34

def loopBody668_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 14)

def loopBody668_37 : HolLoopProg 64 :=
.mark loopBody668_36

def loopBody668_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 1#64)

def loopBody668_39 : HolLoopProg 64 :=
.mark loopBody668_38

def loopBody668_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [13]

def loopBody668_41 : HolLoopProg 64 :=
.mark loopBody668_40

def loopBody668_42 : HolLoopProg 64 :=
.seq loopBody668_41 loopBody668_1

def loopBody668_43 : HolLoopProg 64 :=
.mark loopBody668_42

def loopBody668_44 : HolLoopProg 64 :=
.seq loopBody668_39 loopBody668_43

def loopBody668_45 : HolLoopProg 64 :=
.mark loopBody668_44

def loopBody668_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.RegImm.imm 0#64) loopBody668_45 loopBody668_1 (Flapjack.Spt.ln)

def loopBody668_47 : HolLoopProg 64 :=
.mark loopBody668_46

def loopBody668_48 : HolLoopProg 64 :=
.seq loopBody668_47 loopBody668_1

def loopBody668_49 : HolLoopProg 64 :=
.mark loopBody668_48

def loopBody668_50 : HolLoopProg 64 :=
.seq loopBody668_37 loopBody668_49

def loopBody668_51 : HolLoopProg 64 :=
.mark loopBody668_50

def loopBody668_52 : HolLoopProg 64 :=
.seq loopBody668_35 loopBody668_51

def loopBody668_53 : HolLoopProg 64 :=
.mark loopBody668_52

def loopBody668_54 : HolLoopProg 64 :=
.seq loopBody668_29 loopBody668_53

def loopBody668_55 : HolLoopProg 64 :=
.mark loopBody668_54

def loopBody668_56 : HolLoopProg 64 :=
.seq loopBody668_27 loopBody668_55

def loopBody668_57 : HolLoopProg 64 :=
.mark loopBody668_56

def loopBody668_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody668_59 : HolLoopProg 64 :=
.mark loopBody668_58

def loopBody668_60 : HolLoopProg 64 :=
.seq loopBody668_59 loopBody668_43

def loopBody668_61 : HolLoopProg 64 :=
.mark loopBody668_60

def loopBody668_62 : HolLoopProg 64 :=
.seq loopBody668_57 loopBody668_61

def loopBody668_63 : HolLoopProg 64 :=
.mark loopBody668_62

def loopBody668_64 : HolLoopProg 64 :=
.seq loopBody668_25 loopBody668_63

def loopBody668_65 : HolLoopProg 64 :=
.mark loopBody668_64

def loopBody668_66 : HolLoopProg 64 :=
.seq loopBody668_1 loopBody668_65

def loopBody668_67 : HolLoopProg 64 :=
.mark loopBody668_66

def loopBody668_68 : HolLoopProg 64 :=
.seq loopBody668_23 loopBody668_67

def loopBody668_69 : HolLoopProg 64 :=
.mark loopBody668_68

def loopBody668_70 : HolLoopProg 64 :=
.seq loopBody668_1 loopBody668_69

def loopBody668_71 : HolLoopProg 64 :=
.mark loopBody668_70

def loopBody668_72 : HolLoopProg 64 :=
.seq loopBody668_21 loopBody668_71

def loopBody668_73 : HolLoopProg 64 :=
.mark loopBody668_72

def loopBody668_74 : HolLoopProg 64 :=
.seq loopBody668_1 loopBody668_73

def loopBody668_75 : HolLoopProg 64 :=
.mark loopBody668_74

def loopBody668_76 : HolLoopProg 64 :=
.seq loopBody668_19 loopBody668_75

def loopBody668_77 : HolLoopProg 64 :=
.mark loopBody668_76

def loopBody668_78 : HolLoopProg 64 :=
.seq loopBody668_1 loopBody668_77

def loopBody668_79 : HolLoopProg 64 :=
.mark loopBody668_78

def loopBody668_80 : HolLoopProg 64 :=
.seq loopBody668_17 loopBody668_79

def loopBody668_81 : HolLoopProg 64 :=
.mark loopBody668_80

def loopBody668_82 : HolLoopProg 64 :=
.seq loopBody668_1 loopBody668_81

def loopBody668_83 : HolLoopProg 64 :=
.mark loopBody668_82

def loopBody668_84 : HolLoopProg 64 :=
.seq loopBody668_15 loopBody668_83

def loopBody668_85 : HolLoopProg 64 :=
.mark loopBody668_84

def loopBody668_86 : HolLoopProg 64 :=
.seq loopBody668_1 loopBody668_85

def loopBody668_87 : HolLoopProg 64 :=
.mark loopBody668_86

def loopBody668_88 : HolLoopProg 64 :=
.seq loopBody668_13 loopBody668_87

def loopBody668_89 : HolLoopProg 64 :=
.mark loopBody668_88

def loopBody668_90 : HolLoopProg 64 :=
.seq loopBody668_1 loopBody668_89

def loopBody668_91 : HolLoopProg 64 :=
.mark loopBody668_90

def loopBody668_92 : HolLoopProg 64 :=
.seq loopBody668_11 loopBody668_91

def loopBody668_93 : HolLoopProg 64 :=
.mark loopBody668_92

def loopBody668_94 : HolLoopProg 64 :=
.seq loopBody668_1 loopBody668_93

def loopBody668_95 : HolLoopProg 64 :=
.mark loopBody668_94

def loopBody668_96 : HolLoopProg 64 :=
.seq loopBody668_9 loopBody668_95

def loopBody668_97 : HolLoopProg 64 :=
.mark loopBody668_96

def loopBody668_98 : HolLoopProg 64 :=
.seq loopBody668_1 loopBody668_97

def loopBody668_99 : HolLoopProg 64 :=
.mark loopBody668_98

def loopBody668_100 : HolLoopProg 64 :=
.seq loopBody668_7 loopBody668_99

def loopBody668_101 : HolLoopProg 64 :=
.mark loopBody668_100

def loopBody668_102 : HolLoopProg 64 :=
.seq loopBody668_1 loopBody668_101

def loopBody668_103 : HolLoopProg 64 :=
.mark loopBody668_102

def loopBody668_104 : HolLoopProg 64 :=
.seq loopBody668_5 loopBody668_103

def loopBody668_105 : HolLoopProg 64 :=
.mark loopBody668_104

def loopBody668_106 : HolLoopProg 64 :=
.seq loopBody668_1 loopBody668_105

def loopBody668_107 : HolLoopProg 64 :=
.mark loopBody668_106

def loopBody668_108 : HolLoopProg 64 :=
.seq loopBody668_3 loopBody668_107

def loopBody668_109 : HolLoopProg 64 :=
.mark loopBody668_108

def loopBody668_110 : HolLoopProg 64 :=
.seq loopBody668_1 loopBody668_109

def loopBody668_111 : HolLoopProg 64 :=
.mark loopBody668_110

def output668 : Nat × List Nat × HolLoopProg 64 :=
  (732, [0], loopBody668_111)
end InitECandidate.Proofs.FrontendStages.Loop
