import InitECandidate.Proofs.FrontendStages.Loop.Translate283
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody299_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody299_1 : HolLoopProg 64 :=
.mark loopBody299_0

def loopBody299_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody299_3 : HolLoopProg 64 :=
.mark loopBody299_2

def loopBody299_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody299_5 : HolLoopProg 64 :=
.mark loopBody299_4

def loopBody299_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody299_7 : HolLoopProg 64 :=
.mark loopBody299_6

def loopBody299_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody299_9 : HolLoopProg 64 :=
.mark loopBody299_8

def loopBody299_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody299_11 : HolLoopProg 64 :=
.mark loopBody299_10

def loopBody299_12 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 358) ([2, 3, 4, 5]) (some (2, loopBody299_11, loopBody299_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody299_13 : HolLoopProg 64 :=
.mark loopBody299_12

def loopBody299_14 : HolLoopProg 64 :=
.seq loopBody299_13 loopBody299_1

def loopBody299_15 : HolLoopProg 64 :=
.mark loopBody299_14

def loopBody299_16 : HolLoopProg 64 :=
.seq loopBody299_9 loopBody299_15

def loopBody299_17 : HolLoopProg 64 :=
.mark loopBody299_16

def loopBody299_18 : HolLoopProg 64 :=
.seq loopBody299_7 loopBody299_17

def loopBody299_19 : HolLoopProg 64 :=
.mark loopBody299_18

def loopBody299_20 : HolLoopProg 64 :=
.seq loopBody299_5 loopBody299_19

def loopBody299_21 : HolLoopProg 64 :=
.mark loopBody299_20

def loopBody299_22 : HolLoopProg 64 :=
.seq loopBody299_3 loopBody299_21

def loopBody299_23 : HolLoopProg 64 :=
.mark loopBody299_22

def loopBody299_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 40#64]))

def loopBody299_25 : HolLoopProg 64 :=
.mark loopBody299_24

def loopBody299_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody299_27 : HolLoopProg 64 :=
.mark loopBody299_26

def loopBody299_28 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 181) ([3]) (some (3, loopBody299_27, loopBody299_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody299_29 : HolLoopProg 64 :=
.mark loopBody299_28

def loopBody299_30 : HolLoopProg 64 :=
.seq loopBody299_29 loopBody299_1

def loopBody299_31 : HolLoopProg 64 :=
.mark loopBody299_30

def loopBody299_32 : HolLoopProg 64 :=
.seq loopBody299_25 loopBody299_31

def loopBody299_33 : HolLoopProg 64 :=
.mark loopBody299_32

def loopBody299_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64]))

def loopBody299_35 : HolLoopProg 64 :=
.mark loopBody299_34

def loopBody299_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody299_37 : HolLoopProg 64 :=
.mark loopBody299_36

def loopBody299_38 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 181) ([4]) (some (4, loopBody299_37, loopBody299_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody299_39 : HolLoopProg 64 :=
.mark loopBody299_38

def loopBody299_40 : HolLoopProg 64 :=
.seq loopBody299_39 loopBody299_1

def loopBody299_41 : HolLoopProg 64 :=
.mark loopBody299_40

def loopBody299_42 : HolLoopProg 64 :=
.seq loopBody299_35 loopBody299_41

def loopBody299_43 : HolLoopProg 64 :=
.mark loopBody299_42

def loopBody299_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 56#64]))

def loopBody299_45 : HolLoopProg 64 :=
.mark loopBody299_44

def loopBody299_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 56#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody299_47 : HolLoopProg 64 :=
.mark loopBody299_46

def loopBody299_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 56#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody299_49 : HolLoopProg 64 :=
.mark loopBody299_48

def loopBody299_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 56#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody299_51 : HolLoopProg 64 :=
.mark loopBody299_50

def loopBody299_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody299_53 : HolLoopProg 64 :=
.mark loopBody299_52

def loopBody299_54 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 358) ([5, 6, 7, 8]) (some (5, loopBody299_53, loopBody299_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody299_55 : HolLoopProg 64 :=
.mark loopBody299_54

def loopBody299_56 : HolLoopProg 64 :=
.seq loopBody299_55 loopBody299_1

def loopBody299_57 : HolLoopProg 64 :=
.mark loopBody299_56

def loopBody299_58 : HolLoopProg 64 :=
.seq loopBody299_51 loopBody299_57

def loopBody299_59 : HolLoopProg 64 :=
.mark loopBody299_58

def loopBody299_60 : HolLoopProg 64 :=
.seq loopBody299_49 loopBody299_59

def loopBody299_61 : HolLoopProg 64 :=
.mark loopBody299_60

def loopBody299_62 : HolLoopProg 64 :=
.seq loopBody299_47 loopBody299_61

def loopBody299_63 : HolLoopProg 64 :=
.mark loopBody299_62

def loopBody299_64 : HolLoopProg 64 :=
.seq loopBody299_45 loopBody299_63

def loopBody299_65 : HolLoopProg 64 :=
.mark loopBody299_64

def loopBody299_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 88#64]))

def loopBody299_67 : HolLoopProg 64 :=
.mark loopBody299_66

def loopBody299_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 88#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody299_69 : HolLoopProg 64 :=
.mark loopBody299_68

def loopBody299_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 88#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody299_71 : HolLoopProg 64 :=
.mark loopBody299_70

def loopBody299_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 88#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody299_73 : HolLoopProg 64 :=
.mark loopBody299_72

def loopBody299_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody299_75 : HolLoopProg 64 :=
.mark loopBody299_74

def loopBody299_76 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 358) ([6, 7, 8, 9]) (some (6, loopBody299_75, loopBody299_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody299_77 : HolLoopProg 64 :=
.mark loopBody299_76

def loopBody299_78 : HolLoopProg 64 :=
.seq loopBody299_77 loopBody299_1

def loopBody299_79 : HolLoopProg 64 :=
.mark loopBody299_78

def loopBody299_80 : HolLoopProg 64 :=
.seq loopBody299_73 loopBody299_79

def loopBody299_81 : HolLoopProg 64 :=
.mark loopBody299_80

def loopBody299_82 : HolLoopProg 64 :=
.seq loopBody299_71 loopBody299_81

def loopBody299_83 : HolLoopProg 64 :=
.mark loopBody299_82

def loopBody299_84 : HolLoopProg 64 :=
.seq loopBody299_69 loopBody299_83

def loopBody299_85 : HolLoopProg 64 :=
.mark loopBody299_84

def loopBody299_86 : HolLoopProg 64 :=
.seq loopBody299_67 loopBody299_85

def loopBody299_87 : HolLoopProg 64 :=
.mark loopBody299_86

def loopBody299_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 21#64, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 5])

def loopBody299_89 : HolLoopProg 64 :=
.mark loopBody299_88

def loopBody299_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody299_91 : HolLoopProg 64 :=
.mark loopBody299_90

def loopBody299_92 : HolLoopProg 64 :=
.seq loopBody299_91 loopBody299_1

def loopBody299_93 : HolLoopProg 64 :=
.mark loopBody299_92

def loopBody299_94 : HolLoopProg 64 :=
.seq loopBody299_89 loopBody299_93

def loopBody299_95 : HolLoopProg 64 :=
.mark loopBody299_94

def loopBody299_96 : HolLoopProg 64 :=
.seq loopBody299_87 loopBody299_95

def loopBody299_97 : HolLoopProg 64 :=
.mark loopBody299_96

def loopBody299_98 : HolLoopProg 64 :=
.seq loopBody299_1 loopBody299_97

def loopBody299_99 : HolLoopProg 64 :=
.mark loopBody299_98

def loopBody299_100 : HolLoopProg 64 :=
.seq loopBody299_1 loopBody299_99

def loopBody299_101 : HolLoopProg 64 :=
.mark loopBody299_100

def loopBody299_102 : HolLoopProg 64 :=
.seq loopBody299_65 loopBody299_101

def loopBody299_103 : HolLoopProg 64 :=
.mark loopBody299_102

def loopBody299_104 : HolLoopProg 64 :=
.seq loopBody299_1 loopBody299_103

def loopBody299_105 : HolLoopProg 64 :=
.mark loopBody299_104

def loopBody299_106 : HolLoopProg 64 :=
.seq loopBody299_1 loopBody299_105

def loopBody299_107 : HolLoopProg 64 :=
.mark loopBody299_106

def loopBody299_108 : HolLoopProg 64 :=
.seq loopBody299_43 loopBody299_107

def loopBody299_109 : HolLoopProg 64 :=
.mark loopBody299_108

def loopBody299_110 : HolLoopProg 64 :=
.seq loopBody299_1 loopBody299_109

def loopBody299_111 : HolLoopProg 64 :=
.mark loopBody299_110

def loopBody299_112 : HolLoopProg 64 :=
.seq loopBody299_1 loopBody299_111

def loopBody299_113 : HolLoopProg 64 :=
.mark loopBody299_112

def loopBody299_114 : HolLoopProg 64 :=
.seq loopBody299_33 loopBody299_113

def loopBody299_115 : HolLoopProg 64 :=
.mark loopBody299_114

def loopBody299_116 : HolLoopProg 64 :=
.seq loopBody299_1 loopBody299_115

def loopBody299_117 : HolLoopProg 64 :=
.mark loopBody299_116

def loopBody299_118 : HolLoopProg 64 :=
.seq loopBody299_1 loopBody299_117

def loopBody299_119 : HolLoopProg 64 :=
.mark loopBody299_118

def loopBody299_120 : HolLoopProg 64 :=
.seq loopBody299_23 loopBody299_119

def loopBody299_121 : HolLoopProg 64 :=
.mark loopBody299_120

def loopBody299_122 : HolLoopProg 64 :=
.seq loopBody299_1 loopBody299_121

def loopBody299_123 : HolLoopProg 64 :=
.mark loopBody299_122

def loopBody299_124 : HolLoopProg 64 :=
.seq loopBody299_1 loopBody299_123

def loopBody299_125 : HolLoopProg 64 :=
.mark loopBody299_124

def output299 : Nat × List Nat × HolLoopProg 64 :=
  (363, [0], loopBody299_125)
end InitECandidate.Proofs.FrontendStages.Loop
