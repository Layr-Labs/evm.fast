import InitECandidate.Proofs.FrontendStages.Loop.Translate349
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody365_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody365_1 : HolLoopProg 64 :=
.mark loopBody365_0

def loopBody365_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody365_3 : HolLoopProg 64 :=
.mark loopBody365_2

def loopBody365_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody365_5 : HolLoopProg 64 :=
.mark loopBody365_4

def loopBody365_6 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 407) ([6]) (some (6, loopBody365_5, loopBody365_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody365_7 : HolLoopProg 64 :=
.mark loopBody365_6

def loopBody365_8 : HolLoopProg 64 :=
.seq loopBody365_7 loopBody365_1

def loopBody365_9 : HolLoopProg 64 :=
.mark loopBody365_8

def loopBody365_10 : HolLoopProg 64 :=
.seq loopBody365_3 loopBody365_9

def loopBody365_11 : HolLoopProg 64 :=
.mark loopBody365_10

def loopBody365_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody365_13 : HolLoopProg 64 :=
.mark loopBody365_12

def loopBody365_14 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 395) ([6]) (some (6, loopBody365_5, loopBody365_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody365_15 : HolLoopProg 64 :=
.mark loopBody365_14

def loopBody365_16 : HolLoopProg 64 :=
.seq loopBody365_15 loopBody365_1

def loopBody365_17 : HolLoopProg 64 :=
.mark loopBody365_16

def loopBody365_18 : HolLoopProg 64 :=
.seq loopBody365_13 loopBody365_17

def loopBody365_19 : HolLoopProg 64 :=
.mark loopBody365_18

def loopBody365_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 8#64])

def loopBody365_21 : HolLoopProg 64 :=
.mark loopBody365_20

def loopBody365_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody365_23 : HolLoopProg 64 :=
.mark loopBody365_22

def loopBody365_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody365_25 : HolLoopProg 64 :=
.mark loopBody365_24

def loopBody365_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody365_27 : HolLoopProg 64 :=
.mark loopBody365_26

def loopBody365_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody365_29 : HolLoopProg 64 :=
.mark loopBody365_28

def loopBody365_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 7)

def loopBody365_31 : HolLoopProg 64 :=
.mark loopBody365_30

def loopBody365_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 6) 11

def loopBody365_33 : HolLoopProg 64 :=
.mark loopBody365_32

def loopBody365_34 : HolLoopProg 64 :=
.seq loopBody365_33 loopBody365_1

def loopBody365_35 : HolLoopProg 64 :=
.mark loopBody365_34

def loopBody365_36 : HolLoopProg 64 :=
.seq loopBody365_31 loopBody365_35

def loopBody365_37 : HolLoopProg 64 :=
.mark loopBody365_36

def loopBody365_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 8)

def loopBody365_39 : HolLoopProg 64 :=
.mark loopBody365_38

def loopBody365_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 8#64]) 11

def loopBody365_41 : HolLoopProg 64 :=
.mark loopBody365_40

def loopBody365_42 : HolLoopProg 64 :=
.seq loopBody365_41 loopBody365_1

def loopBody365_43 : HolLoopProg 64 :=
.mark loopBody365_42

def loopBody365_44 : HolLoopProg 64 :=
.seq loopBody365_39 loopBody365_43

def loopBody365_45 : HolLoopProg 64 :=
.mark loopBody365_44

def loopBody365_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody365_47 : HolLoopProg 64 :=
.mark loopBody365_46

def loopBody365_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 16#64]) 11

def loopBody365_49 : HolLoopProg 64 :=
.mark loopBody365_48

def loopBody365_50 : HolLoopProg 64 :=
.seq loopBody365_49 loopBody365_1

def loopBody365_51 : HolLoopProg 64 :=
.mark loopBody365_50

def loopBody365_52 : HolLoopProg 64 :=
.seq loopBody365_47 loopBody365_51

def loopBody365_53 : HolLoopProg 64 :=
.mark loopBody365_52

def loopBody365_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 10)

def loopBody365_55 : HolLoopProg 64 :=
.mark loopBody365_54

def loopBody365_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 24#64]) 11

def loopBody365_57 : HolLoopProg 64 :=
.mark loopBody365_56

def loopBody365_58 : HolLoopProg 64 :=
.seq loopBody365_57 loopBody365_1

def loopBody365_59 : HolLoopProg 64 :=
.mark loopBody365_58

def loopBody365_60 : HolLoopProg 64 :=
.seq loopBody365_55 loopBody365_59

def loopBody365_61 : HolLoopProg 64 :=
.mark loopBody365_60

def loopBody365_62 : HolLoopProg 64 :=
.seq loopBody365_61 loopBody365_1

def loopBody365_63 : HolLoopProg 64 :=
.mark loopBody365_62

def loopBody365_64 : HolLoopProg 64 :=
.seq loopBody365_53 loopBody365_63

def loopBody365_65 : HolLoopProg 64 :=
.mark loopBody365_64

def loopBody365_66 : HolLoopProg 64 :=
.seq loopBody365_45 loopBody365_65

def loopBody365_67 : HolLoopProg 64 :=
.mark loopBody365_66

def loopBody365_68 : HolLoopProg 64 :=
.seq loopBody365_37 loopBody365_67

def loopBody365_69 : HolLoopProg 64 :=
.mark loopBody365_68

def loopBody365_70 : HolLoopProg 64 :=
.seq loopBody365_29 loopBody365_69

def loopBody365_71 : HolLoopProg 64 :=
.mark loopBody365_70

def loopBody365_72 : HolLoopProg 64 :=
.seq loopBody365_1 loopBody365_71

def loopBody365_73 : HolLoopProg 64 :=
.mark loopBody365_72

def loopBody365_74 : HolLoopProg 64 :=
.seq loopBody365_27 loopBody365_73

def loopBody365_75 : HolLoopProg 64 :=
.mark loopBody365_74

def loopBody365_76 : HolLoopProg 64 :=
.seq loopBody365_1 loopBody365_75

def loopBody365_77 : HolLoopProg 64 :=
.mark loopBody365_76

def loopBody365_78 : HolLoopProg 64 :=
.seq loopBody365_25 loopBody365_77

def loopBody365_79 : HolLoopProg 64 :=
.mark loopBody365_78

def loopBody365_80 : HolLoopProg 64 :=
.seq loopBody365_1 loopBody365_79

def loopBody365_81 : HolLoopProg 64 :=
.mark loopBody365_80

def loopBody365_82 : HolLoopProg 64 :=
.seq loopBody365_23 loopBody365_81

def loopBody365_83 : HolLoopProg 64 :=
.mark loopBody365_82

def loopBody365_84 : HolLoopProg 64 :=
.seq loopBody365_1 loopBody365_83

def loopBody365_85 : HolLoopProg 64 :=
.mark loopBody365_84

def loopBody365_86 : HolLoopProg 64 :=
.seq loopBody365_21 loopBody365_85

def loopBody365_87 : HolLoopProg 64 :=
.mark loopBody365_86

def loopBody365_88 : HolLoopProg 64 :=
.seq loopBody365_1 loopBody365_87

def loopBody365_89 : HolLoopProg 64 :=
.mark loopBody365_88

def loopBody365_90 : HolLoopProg 64 :=
.seq loopBody365_19 loopBody365_89

def loopBody365_91 : HolLoopProg 64 :=
.mark loopBody365_90

def loopBody365_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody365_93 : HolLoopProg 64 :=
.mark loopBody365_92

def loopBody365_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody365_95 : HolLoopProg 64 :=
.mark loopBody365_94

def loopBody365_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody365_97 : HolLoopProg 64 :=
.mark loopBody365_96

def loopBody365_98 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 423) ([7, 8]) (some (7, loopBody365_97, loopBody365_1, (Flapjack.Spt.ln)))

def loopBody365_99 : HolLoopProg 64 :=
.mark loopBody365_98

def loopBody365_100 : HolLoopProg 64 :=
.seq loopBody365_99 loopBody365_1

def loopBody365_101 : HolLoopProg 64 :=
.mark loopBody365_100

def loopBody365_102 : HolLoopProg 64 :=
.seq loopBody365_95 loopBody365_101

def loopBody365_103 : HolLoopProg 64 :=
.mark loopBody365_102

def loopBody365_104 : HolLoopProg 64 :=
.seq loopBody365_93 loopBody365_103

def loopBody365_105 : HolLoopProg 64 :=
.mark loopBody365_104

def loopBody365_106 : HolLoopProg 64 :=
.seq loopBody365_1 loopBody365_105

def loopBody365_107 : HolLoopProg 64 :=
.mark loopBody365_106

def loopBody365_108 : HolLoopProg 64 :=
.seq loopBody365_1 loopBody365_107

def loopBody365_109 : HolLoopProg 64 :=
.mark loopBody365_108

def loopBody365_110 : HolLoopProg 64 :=
.seq loopBody365_91 loopBody365_109

def loopBody365_111 : HolLoopProg 64 :=
.mark loopBody365_110

def loopBody365_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody365_113 : HolLoopProg 64 :=
.mark loopBody365_112

def loopBody365_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody365_115 : HolLoopProg 64 :=
.mark loopBody365_114

def loopBody365_116 : HolLoopProg 64 :=
.seq loopBody365_115 loopBody365_1

def loopBody365_117 : HolLoopProg 64 :=
.mark loopBody365_116

def loopBody365_118 : HolLoopProg 64 :=
.seq loopBody365_113 loopBody365_117

def loopBody365_119 : HolLoopProg 64 :=
.mark loopBody365_118

def loopBody365_120 : HolLoopProg 64 :=
.seq loopBody365_111 loopBody365_119

def loopBody365_121 : HolLoopProg 64 :=
.mark loopBody365_120

def loopBody365_122 : HolLoopProg 64 :=
.seq loopBody365_11 loopBody365_121

def loopBody365_123 : HolLoopProg 64 :=
.mark loopBody365_122

def loopBody365_124 : HolLoopProg 64 :=
.seq loopBody365_1 loopBody365_123

def loopBody365_125 : HolLoopProg 64 :=
.mark loopBody365_124

def loopBody365_126 : HolLoopProg 64 :=
.seq loopBody365_1 loopBody365_125

def loopBody365_127 : HolLoopProg 64 :=
.mark loopBody365_126

def output365 : Nat × List Nat × HolLoopProg 64 :=
  (429, [0, 1, 2, 3, 4], loopBody365_127)
end InitECandidate.Proofs.FrontendStages.Loop
