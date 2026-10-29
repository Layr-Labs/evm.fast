import InitECandidate.Proofs.FrontendStages.Loop.Translate363
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody379_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody379_1 : HolLoopProg 64 :=
.mark loopBody379_0

def loopBody379_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody379_3 : HolLoopProg 64 :=
.mark loopBody379_2

def loopBody379_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody379_5 : HolLoopProg 64 :=
.mark loopBody379_4

def loopBody379_6 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 439) ([7]) (some (7, loopBody379_5, loopBody379_1, (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody379_7 : HolLoopProg 64 :=
.mark loopBody379_6

def loopBody379_8 : HolLoopProg 64 :=
.seq loopBody379_7 loopBody379_1

def loopBody379_9 : HolLoopProg 64 :=
.mark loopBody379_8

def loopBody379_10 : HolLoopProg 64 :=
.seq loopBody379_3 loopBody379_9

def loopBody379_11 : HolLoopProg 64 :=
.mark loopBody379_10

def loopBody379_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 16#64]))

def loopBody379_13 : HolLoopProg 64 :=
.mark loopBody379_12

def loopBody379_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 40#64)

def loopBody379_15 : HolLoopProg 64 :=
.mark loopBody379_14

def loopBody379_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody379_17 : HolLoopProg 64 :=
.mark loopBody379_16

def loopBody379_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody379_19 : HolLoopProg 64 :=
.mark loopBody379_18

def loopBody379_20 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))) (some 440) ([8, 9, 10]) (some (8, loopBody379_19, loopBody379_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody379_21 : HolLoopProg 64 :=
.mark loopBody379_20

def loopBody379_22 : HolLoopProg 64 :=
.seq loopBody379_21 loopBody379_1

def loopBody379_23 : HolLoopProg 64 :=
.mark loopBody379_22

def loopBody379_24 : HolLoopProg 64 :=
.seq loopBody379_17 loopBody379_23

def loopBody379_25 : HolLoopProg 64 :=
.mark loopBody379_24

def loopBody379_26 : HolLoopProg 64 :=
.seq loopBody379_15 loopBody379_25

def loopBody379_27 : HolLoopProg 64 :=
.mark loopBody379_26

def loopBody379_28 : HolLoopProg 64 :=
.seq loopBody379_13 loopBody379_27

def loopBody379_29 : HolLoopProg 64 :=
.mark loopBody379_28

def loopBody379_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 8#64])

def loopBody379_31 : HolLoopProg 64 :=
.mark loopBody379_30

def loopBody379_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody379_33 : HolLoopProg 64 :=
.mark loopBody379_32

def loopBody379_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody379_35 : HolLoopProg 64 :=
.mark loopBody379_34

def loopBody379_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 4)

def loopBody379_37 : HolLoopProg 64 :=
.mark loopBody379_36

def loopBody379_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 5)

def loopBody379_39 : HolLoopProg 64 :=
.mark loopBody379_38

def loopBody379_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 9)

def loopBody379_41 : HolLoopProg 64 :=
.mark loopBody379_40

def loopBody379_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 8) 13

def loopBody379_43 : HolLoopProg 64 :=
.mark loopBody379_42

def loopBody379_44 : HolLoopProg 64 :=
.seq loopBody379_43 loopBody379_1

def loopBody379_45 : HolLoopProg 64 :=
.mark loopBody379_44

def loopBody379_46 : HolLoopProg 64 :=
.seq loopBody379_41 loopBody379_45

def loopBody379_47 : HolLoopProg 64 :=
.mark loopBody379_46

def loopBody379_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 10)

def loopBody379_49 : HolLoopProg 64 :=
.mark loopBody379_48

def loopBody379_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 8, Flapjack.HolLoopExp.const 8#64]) 13

def loopBody379_51 : HolLoopProg 64 :=
.mark loopBody379_50

def loopBody379_52 : HolLoopProg 64 :=
.seq loopBody379_51 loopBody379_1

def loopBody379_53 : HolLoopProg 64 :=
.mark loopBody379_52

def loopBody379_54 : HolLoopProg 64 :=
.seq loopBody379_49 loopBody379_53

def loopBody379_55 : HolLoopProg 64 :=
.mark loopBody379_54

def loopBody379_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 11)

def loopBody379_57 : HolLoopProg 64 :=
.mark loopBody379_56

def loopBody379_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 8, Flapjack.HolLoopExp.const 16#64]) 13

def loopBody379_59 : HolLoopProg 64 :=
.mark loopBody379_58

def loopBody379_60 : HolLoopProg 64 :=
.seq loopBody379_59 loopBody379_1

def loopBody379_61 : HolLoopProg 64 :=
.mark loopBody379_60

def loopBody379_62 : HolLoopProg 64 :=
.seq loopBody379_57 loopBody379_61

def loopBody379_63 : HolLoopProg 64 :=
.mark loopBody379_62

def loopBody379_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 12)

def loopBody379_65 : HolLoopProg 64 :=
.mark loopBody379_64

def loopBody379_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 8, Flapjack.HolLoopExp.const 24#64]) 13

def loopBody379_67 : HolLoopProg 64 :=
.mark loopBody379_66

def loopBody379_68 : HolLoopProg 64 :=
.seq loopBody379_67 loopBody379_1

def loopBody379_69 : HolLoopProg 64 :=
.mark loopBody379_68

def loopBody379_70 : HolLoopProg 64 :=
.seq loopBody379_65 loopBody379_69

def loopBody379_71 : HolLoopProg 64 :=
.mark loopBody379_70

def loopBody379_72 : HolLoopProg 64 :=
.seq loopBody379_71 loopBody379_1

def loopBody379_73 : HolLoopProg 64 :=
.mark loopBody379_72

def loopBody379_74 : HolLoopProg 64 :=
.seq loopBody379_63 loopBody379_73

def loopBody379_75 : HolLoopProg 64 :=
.mark loopBody379_74

def loopBody379_76 : HolLoopProg 64 :=
.seq loopBody379_55 loopBody379_75

def loopBody379_77 : HolLoopProg 64 :=
.mark loopBody379_76

def loopBody379_78 : HolLoopProg 64 :=
.seq loopBody379_47 loopBody379_77

def loopBody379_79 : HolLoopProg 64 :=
.mark loopBody379_78

def loopBody379_80 : HolLoopProg 64 :=
.seq loopBody379_39 loopBody379_79

def loopBody379_81 : HolLoopProg 64 :=
.mark loopBody379_80

def loopBody379_82 : HolLoopProg 64 :=
.seq loopBody379_1 loopBody379_81

def loopBody379_83 : HolLoopProg 64 :=
.mark loopBody379_82

def loopBody379_84 : HolLoopProg 64 :=
.seq loopBody379_37 loopBody379_83

def loopBody379_85 : HolLoopProg 64 :=
.mark loopBody379_84

def loopBody379_86 : HolLoopProg 64 :=
.seq loopBody379_1 loopBody379_85

def loopBody379_87 : HolLoopProg 64 :=
.mark loopBody379_86

def loopBody379_88 : HolLoopProg 64 :=
.seq loopBody379_35 loopBody379_87

def loopBody379_89 : HolLoopProg 64 :=
.mark loopBody379_88

def loopBody379_90 : HolLoopProg 64 :=
.seq loopBody379_1 loopBody379_89

def loopBody379_91 : HolLoopProg 64 :=
.mark loopBody379_90

def loopBody379_92 : HolLoopProg 64 :=
.seq loopBody379_33 loopBody379_91

def loopBody379_93 : HolLoopProg 64 :=
.mark loopBody379_92

def loopBody379_94 : HolLoopProg 64 :=
.seq loopBody379_1 loopBody379_93

def loopBody379_95 : HolLoopProg 64 :=
.mark loopBody379_94

def loopBody379_96 : HolLoopProg 64 :=
.seq loopBody379_31 loopBody379_95

def loopBody379_97 : HolLoopProg 64 :=
.mark loopBody379_96

def loopBody379_98 : HolLoopProg 64 :=
.seq loopBody379_1 loopBody379_97

def loopBody379_99 : HolLoopProg 64 :=
.mark loopBody379_98

def loopBody379_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody379_101 : HolLoopProg 64 :=
.mark loopBody379_100

def loopBody379_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody379_103 : HolLoopProg 64 :=
.mark loopBody379_102

def loopBody379_104 : HolLoopProg 64 :=
.seq loopBody379_103 loopBody379_1

def loopBody379_105 : HolLoopProg 64 :=
.mark loopBody379_104

def loopBody379_106 : HolLoopProg 64 :=
.seq loopBody379_101 loopBody379_105

def loopBody379_107 : HolLoopProg 64 :=
.mark loopBody379_106

def loopBody379_108 : HolLoopProg 64 :=
.seq loopBody379_99 loopBody379_107

def loopBody379_109 : HolLoopProg 64 :=
.mark loopBody379_108

def loopBody379_110 : HolLoopProg 64 :=
.seq loopBody379_29 loopBody379_109

def loopBody379_111 : HolLoopProg 64 :=
.mark loopBody379_110

def loopBody379_112 : HolLoopProg 64 :=
.seq loopBody379_1 loopBody379_111

def loopBody379_113 : HolLoopProg 64 :=
.mark loopBody379_112

def loopBody379_114 : HolLoopProg 64 :=
.seq loopBody379_1 loopBody379_113

def loopBody379_115 : HolLoopProg 64 :=
.mark loopBody379_114

def loopBody379_116 : HolLoopProg 64 :=
.seq loopBody379_11 loopBody379_115

def loopBody379_117 : HolLoopProg 64 :=
.mark loopBody379_116

def loopBody379_118 : HolLoopProg 64 :=
.seq loopBody379_1 loopBody379_117

def loopBody379_119 : HolLoopProg 64 :=
.mark loopBody379_118

def loopBody379_120 : HolLoopProg 64 :=
.seq loopBody379_1 loopBody379_119

def loopBody379_121 : HolLoopProg 64 :=
.mark loopBody379_120

def output379 : Nat × List Nat × HolLoopProg 64 :=
  (443, [0, 1, 2, 3, 4, 5], loopBody379_121)
end InitECandidate.Proofs.FrontendStages.Loop
