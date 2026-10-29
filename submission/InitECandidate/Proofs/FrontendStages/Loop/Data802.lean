import InitECandidate.Proofs.FrontendStages.Loop.Translate786
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody802_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody802_1 : HolLoopProg 64 :=
.mark loopBody802_0

def loopBody802_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 8#64])

def loopBody802_3 : HolLoopProg 64 :=
.mark loopBody802_2

def loopBody802_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody802_5 : HolLoopProg 64 :=
.mark loopBody802_4

def loopBody802_6 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody802_5, loopBody802_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody802_7 : HolLoopProg 64 :=
.mark loopBody802_6

def loopBody802_8 : HolLoopProg 64 :=
.seq loopBody802_7 loopBody802_1

def loopBody802_9 : HolLoopProg 64 :=
.mark loopBody802_8

def loopBody802_10 : HolLoopProg 64 :=
.seq loopBody802_3 loopBody802_9

def loopBody802_11 : HolLoopProg 64 :=
.mark loopBody802_10

def loopBody802_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody802_13 : HolLoopProg 64 :=
.mark loopBody802_12

def loopBody802_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody802_15 : HolLoopProg 64 :=
.mark loopBody802_14

def loopBody802_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 4 5

def loopBody802_17 : HolLoopProg 64 :=
.mark loopBody802_16

def loopBody802_18 : HolLoopProg 64 :=
.seq loopBody802_17 loopBody802_1

def loopBody802_19 : HolLoopProg 64 :=
.mark loopBody802_18

def loopBody802_20 : HolLoopProg 64 :=
.seq loopBody802_15 loopBody802_19

def loopBody802_21 : HolLoopProg 64 :=
.mark loopBody802_20

def loopBody802_22 : HolLoopProg 64 :=
.seq loopBody802_13 loopBody802_21

def loopBody802_23 : HolLoopProg 64 :=
.mark loopBody802_22

def loopBody802_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody802_25 : HolLoopProg 64 :=
.mark loopBody802_24

def loopBody802_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody802_27 : HolLoopProg 64 :=
.mark loopBody802_26

def loopBody802_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody802_29 : HolLoopProg 64 :=
.mark loopBody802_28

def loopBody802_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody802_31 : HolLoopProg 64 :=
.mark loopBody802_30

def loopBody802_32 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([5, 6, 7]) (some (5, loopBody802_31, loopBody802_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody802_33 : HolLoopProg 64 :=
.mark loopBody802_32

def loopBody802_34 : HolLoopProg 64 :=
.seq loopBody802_33 loopBody802_1

def loopBody802_35 : HolLoopProg 64 :=
.mark loopBody802_34

def loopBody802_36 : HolLoopProg 64 :=
.seq loopBody802_29 loopBody802_35

def loopBody802_37 : HolLoopProg 64 :=
.mark loopBody802_36

def loopBody802_38 : HolLoopProg 64 :=
.seq loopBody802_27 loopBody802_37

def loopBody802_39 : HolLoopProg 64 :=
.mark loopBody802_38

def loopBody802_40 : HolLoopProg 64 :=
.seq loopBody802_25 loopBody802_39

def loopBody802_41 : HolLoopProg 64 :=
.mark loopBody802_40

def loopBody802_42 : HolLoopProg 64 :=
.seq loopBody802_1 loopBody802_41

def loopBody802_43 : HolLoopProg 64 :=
.mark loopBody802_42

def loopBody802_44 : HolLoopProg 64 :=
.seq loopBody802_1 loopBody802_43

def loopBody802_45 : HolLoopProg 64 :=
.mark loopBody802_44

def loopBody802_46 : HolLoopProg 64 :=
.seq loopBody802_23 loopBody802_45

def loopBody802_47 : HolLoopProg 64 :=
.mark loopBody802_46

def loopBody802_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 416#64]),
        Flapjack.HolLoopExp.const 64#64]))

def loopBody802_49 : HolLoopProg 64 :=
.mark loopBody802_48

def loopBody802_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 416#64]),
            Flapjack.HolLoopExp.const 56#64]),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 4#64)])

def loopBody802_51 : HolLoopProg 64 :=
.mark loopBody802_50

def loopBody802_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody802_53 : HolLoopProg 64 :=
.mark loopBody802_52

def loopBody802_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody802_55 : HolLoopProg 64 :=
.mark loopBody802_54

def loopBody802_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 5) 7

def loopBody802_57 : HolLoopProg 64 :=
.mark loopBody802_56

def loopBody802_58 : HolLoopProg 64 :=
.seq loopBody802_57 loopBody802_1

def loopBody802_59 : HolLoopProg 64 :=
.mark loopBody802_58

def loopBody802_60 : HolLoopProg 64 :=
.seq loopBody802_55 loopBody802_59

def loopBody802_61 : HolLoopProg 64 :=
.mark loopBody802_60

def loopBody802_62 : HolLoopProg 64 :=
.seq loopBody802_61 loopBody802_1

def loopBody802_63 : HolLoopProg 64 :=
.mark loopBody802_62

def loopBody802_64 : HolLoopProg 64 :=
.seq loopBody802_53 loopBody802_63

def loopBody802_65 : HolLoopProg 64 :=
.mark loopBody802_64

def loopBody802_66 : HolLoopProg 64 :=
.seq loopBody802_1 loopBody802_65

def loopBody802_67 : HolLoopProg 64 :=
.mark loopBody802_66

def loopBody802_68 : HolLoopProg 64 :=
.seq loopBody802_51 loopBody802_67

def loopBody802_69 : HolLoopProg 64 :=
.mark loopBody802_68

def loopBody802_70 : HolLoopProg 64 :=
.seq loopBody802_1 loopBody802_69

def loopBody802_71 : HolLoopProg 64 :=
.mark loopBody802_70

def loopBody802_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 416#64]),
            Flapjack.HolLoopExp.const 56#64]),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 4#64),
      Flapjack.HolLoopExp.const 8#64])

def loopBody802_73 : HolLoopProg 64 :=
.mark loopBody802_72

def loopBody802_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64])

def loopBody802_75 : HolLoopProg 64 :=
.mark loopBody802_74

def loopBody802_76 : HolLoopProg 64 :=
.seq loopBody802_75 loopBody802_63

def loopBody802_77 : HolLoopProg 64 :=
.mark loopBody802_76

def loopBody802_78 : HolLoopProg 64 :=
.seq loopBody802_1 loopBody802_77

def loopBody802_79 : HolLoopProg 64 :=
.mark loopBody802_78

def loopBody802_80 : HolLoopProg 64 :=
.seq loopBody802_73 loopBody802_79

def loopBody802_81 : HolLoopProg 64 :=
.mark loopBody802_80

def loopBody802_82 : HolLoopProg 64 :=
.seq loopBody802_1 loopBody802_81

def loopBody802_83 : HolLoopProg 64 :=
.mark loopBody802_82

def loopBody802_84 : HolLoopProg 64 :=
.seq loopBody802_71 loopBody802_83

def loopBody802_85 : HolLoopProg 64 :=
.mark loopBody802_84

def loopBody802_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 416#64]),
      Flapjack.HolLoopExp.const 64#64])

def loopBody802_87 : HolLoopProg 64 :=
.mark loopBody802_86

def loopBody802_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody802_89 : HolLoopProg 64 :=
.mark loopBody802_88

def loopBody802_90 : HolLoopProg 64 :=
.seq loopBody802_89 loopBody802_63

def loopBody802_91 : HolLoopProg 64 :=
.mark loopBody802_90

def loopBody802_92 : HolLoopProg 64 :=
.seq loopBody802_1 loopBody802_91

def loopBody802_93 : HolLoopProg 64 :=
.mark loopBody802_92

def loopBody802_94 : HolLoopProg 64 :=
.seq loopBody802_87 loopBody802_93

def loopBody802_95 : HolLoopProg 64 :=
.mark loopBody802_94

def loopBody802_96 : HolLoopProg 64 :=
.seq loopBody802_1 loopBody802_95

def loopBody802_97 : HolLoopProg 64 :=
.mark loopBody802_96

def loopBody802_98 : HolLoopProg 64 :=
.seq loopBody802_85 loopBody802_97

def loopBody802_99 : HolLoopProg 64 :=
.mark loopBody802_98

def loopBody802_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody802_101 : HolLoopProg 64 :=
.mark loopBody802_100

def loopBody802_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody802_103 : HolLoopProg 64 :=
.mark loopBody802_102

def loopBody802_104 : HolLoopProg 64 :=
.seq loopBody802_103 loopBody802_1

def loopBody802_105 : HolLoopProg 64 :=
.mark loopBody802_104

def loopBody802_106 : HolLoopProg 64 :=
.seq loopBody802_101 loopBody802_105

def loopBody802_107 : HolLoopProg 64 :=
.mark loopBody802_106

def loopBody802_108 : HolLoopProg 64 :=
.seq loopBody802_99 loopBody802_107

def loopBody802_109 : HolLoopProg 64 :=
.mark loopBody802_108

def loopBody802_110 : HolLoopProg 64 :=
.seq loopBody802_49 loopBody802_109

def loopBody802_111 : HolLoopProg 64 :=
.mark loopBody802_110

def loopBody802_112 : HolLoopProg 64 :=
.seq loopBody802_1 loopBody802_111

def loopBody802_113 : HolLoopProg 64 :=
.mark loopBody802_112

def loopBody802_114 : HolLoopProg 64 :=
.seq loopBody802_47 loopBody802_113

def loopBody802_115 : HolLoopProg 64 :=
.mark loopBody802_114

def loopBody802_116 : HolLoopProg 64 :=
.seq loopBody802_11 loopBody802_115

def loopBody802_117 : HolLoopProg 64 :=
.mark loopBody802_116

def loopBody802_118 : HolLoopProg 64 :=
.seq loopBody802_1 loopBody802_117

def loopBody802_119 : HolLoopProg 64 :=
.mark loopBody802_118

def loopBody802_120 : HolLoopProg 64 :=
.seq loopBody802_1 loopBody802_119

def loopBody802_121 : HolLoopProg 64 :=
.mark loopBody802_120

def output802 : Nat × List Nat × HolLoopProg 64 :=
  (866, [0, 1, 2], loopBody802_121)
end InitECandidate.Proofs.FrontendStages.Loop
