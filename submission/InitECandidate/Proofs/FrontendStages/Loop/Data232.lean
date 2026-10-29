import InitECandidate.Proofs.FrontendStages.Loop.Translate216
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody232_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody232_1 : HolLoopProg 64 :=
.mark loopBody232_0

def loopBody232_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 64#64)

def loopBody232_3 : HolLoopProg 64 :=
.mark loopBody232_2

def loopBody232_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody232_5 : HolLoopProg 64 :=
.mark loopBody232_4

def loopBody232_6 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([5]) (some (5, loopBody232_5, loopBody232_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody232_7 : HolLoopProg 64 :=
.mark loopBody232_6

def loopBody232_8 : HolLoopProg 64 :=
.seq loopBody232_7 loopBody232_1

def loopBody232_9 : HolLoopProg 64 :=
.mark loopBody232_8

def loopBody232_10 : HolLoopProg 64 :=
.seq loopBody232_3 loopBody232_9

def loopBody232_11 : HolLoopProg 64 :=
.mark loopBody232_10

def loopBody232_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 0#64])

def loopBody232_13 : HolLoopProg 64 :=
.mark loopBody232_12

def loopBody232_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody232_15 : HolLoopProg 64 :=
.mark loopBody232_14

def loopBody232_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody232_17 : HolLoopProg 64 :=
.mark loopBody232_16

def loopBody232_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 5) 7

def loopBody232_19 : HolLoopProg 64 :=
.mark loopBody232_18

def loopBody232_20 : HolLoopProg 64 :=
.seq loopBody232_19 loopBody232_1

def loopBody232_21 : HolLoopProg 64 :=
.mark loopBody232_20

def loopBody232_22 : HolLoopProg 64 :=
.seq loopBody232_17 loopBody232_21

def loopBody232_23 : HolLoopProg 64 :=
.mark loopBody232_22

def loopBody232_24 : HolLoopProg 64 :=
.seq loopBody232_23 loopBody232_1

def loopBody232_25 : HolLoopProg 64 :=
.mark loopBody232_24

def loopBody232_26 : HolLoopProg 64 :=
.seq loopBody232_15 loopBody232_25

def loopBody232_27 : HolLoopProg 64 :=
.mark loopBody232_26

def loopBody232_28 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_27

def loopBody232_29 : HolLoopProg 64 :=
.mark loopBody232_28

def loopBody232_30 : HolLoopProg 64 :=
.seq loopBody232_13 loopBody232_29

def loopBody232_31 : HolLoopProg 64 :=
.mark loopBody232_30

def loopBody232_32 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_31

def loopBody232_33 : HolLoopProg 64 :=
.mark loopBody232_32

def loopBody232_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 8#64])

def loopBody232_35 : HolLoopProg 64 :=
.mark loopBody232_34

def loopBody232_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody232_37 : HolLoopProg 64 :=
.mark loopBody232_36

def loopBody232_38 : HolLoopProg 64 :=
.seq loopBody232_37 loopBody232_25

def loopBody232_39 : HolLoopProg 64 :=
.mark loopBody232_38

def loopBody232_40 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_39

def loopBody232_41 : HolLoopProg 64 :=
.mark loopBody232_40

def loopBody232_42 : HolLoopProg 64 :=
.seq loopBody232_35 loopBody232_41

def loopBody232_43 : HolLoopProg 64 :=
.mark loopBody232_42

def loopBody232_44 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_43

def loopBody232_45 : HolLoopProg 64 :=
.mark loopBody232_44

def loopBody232_46 : HolLoopProg 64 :=
.seq loopBody232_33 loopBody232_45

def loopBody232_47 : HolLoopProg 64 :=
.mark loopBody232_46

def loopBody232_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 16#64])

def loopBody232_49 : HolLoopProg 64 :=
.mark loopBody232_48

def loopBody232_50 : HolLoopProg 64 :=
.seq loopBody232_49 loopBody232_41

def loopBody232_51 : HolLoopProg 64 :=
.mark loopBody232_50

def loopBody232_52 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_51

def loopBody232_53 : HolLoopProg 64 :=
.mark loopBody232_52

def loopBody232_54 : HolLoopProg 64 :=
.seq loopBody232_47 loopBody232_53

def loopBody232_55 : HolLoopProg 64 :=
.mark loopBody232_54

def loopBody232_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 24#64])

def loopBody232_57 : HolLoopProg 64 :=
.mark loopBody232_56

def loopBody232_58 : HolLoopProg 64 :=
.seq loopBody232_57 loopBody232_41

def loopBody232_59 : HolLoopProg 64 :=
.mark loopBody232_58

def loopBody232_60 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_59

def loopBody232_61 : HolLoopProg 64 :=
.mark loopBody232_60

def loopBody232_62 : HolLoopProg 64 :=
.seq loopBody232_55 loopBody232_61

def loopBody232_63 : HolLoopProg 64 :=
.mark loopBody232_62

def loopBody232_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 32#64])

def loopBody232_65 : HolLoopProg 64 :=
.mark loopBody232_64

def loopBody232_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody232_67 : HolLoopProg 64 :=
.mark loopBody232_66

def loopBody232_68 : HolLoopProg 64 :=
.seq loopBody232_67 loopBody232_25

def loopBody232_69 : HolLoopProg 64 :=
.mark loopBody232_68

def loopBody232_70 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_69

def loopBody232_71 : HolLoopProg 64 :=
.mark loopBody232_70

def loopBody232_72 : HolLoopProg 64 :=
.seq loopBody232_65 loopBody232_71

def loopBody232_73 : HolLoopProg 64 :=
.mark loopBody232_72

def loopBody232_74 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_73

def loopBody232_75 : HolLoopProg 64 :=
.mark loopBody232_74

def loopBody232_76 : HolLoopProg 64 :=
.seq loopBody232_63 loopBody232_75

def loopBody232_77 : HolLoopProg 64 :=
.mark loopBody232_76

def loopBody232_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 40#64])

def loopBody232_79 : HolLoopProg 64 :=
.mark loopBody232_78

def loopBody232_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody232_81 : HolLoopProg 64 :=
.mark loopBody232_80

def loopBody232_82 : HolLoopProg 64 :=
.seq loopBody232_81 loopBody232_25

def loopBody232_83 : HolLoopProg 64 :=
.mark loopBody232_82

def loopBody232_84 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_83

def loopBody232_85 : HolLoopProg 64 :=
.mark loopBody232_84

def loopBody232_86 : HolLoopProg 64 :=
.seq loopBody232_79 loopBody232_85

def loopBody232_87 : HolLoopProg 64 :=
.mark loopBody232_86

def loopBody232_88 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_87

def loopBody232_89 : HolLoopProg 64 :=
.mark loopBody232_88

def loopBody232_90 : HolLoopProg 64 :=
.seq loopBody232_77 loopBody232_89

def loopBody232_91 : HolLoopProg 64 :=
.mark loopBody232_90

def loopBody232_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 48#64])

def loopBody232_93 : HolLoopProg 64 :=
.mark loopBody232_92

def loopBody232_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody232_95 : HolLoopProg 64 :=
.mark loopBody232_94

def loopBody232_96 : HolLoopProg 64 :=
.seq loopBody232_95 loopBody232_25

def loopBody232_97 : HolLoopProg 64 :=
.mark loopBody232_96

def loopBody232_98 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_97

def loopBody232_99 : HolLoopProg 64 :=
.mark loopBody232_98

def loopBody232_100 : HolLoopProg 64 :=
.seq loopBody232_93 loopBody232_99

def loopBody232_101 : HolLoopProg 64 :=
.mark loopBody232_100

def loopBody232_102 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_101

def loopBody232_103 : HolLoopProg 64 :=
.mark loopBody232_102

def loopBody232_104 : HolLoopProg 64 :=
.seq loopBody232_91 loopBody232_103

def loopBody232_105 : HolLoopProg 64 :=
.mark loopBody232_104

def loopBody232_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 56#64])

def loopBody232_107 : HolLoopProg 64 :=
.mark loopBody232_106

def loopBody232_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody232_109 : HolLoopProg 64 :=
.mark loopBody232_108

def loopBody232_110 : HolLoopProg 64 :=
.seq loopBody232_109 loopBody232_25

def loopBody232_111 : HolLoopProg 64 :=
.mark loopBody232_110

def loopBody232_112 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_111

def loopBody232_113 : HolLoopProg 64 :=
.mark loopBody232_112

def loopBody232_114 : HolLoopProg 64 :=
.seq loopBody232_107 loopBody232_113

def loopBody232_115 : HolLoopProg 64 :=
.mark loopBody232_114

def loopBody232_116 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_115

def loopBody232_117 : HolLoopProg 64 :=
.mark loopBody232_116

def loopBody232_118 : HolLoopProg 64 :=
.seq loopBody232_105 loopBody232_117

def loopBody232_119 : HolLoopProg 64 :=
.mark loopBody232_118

def loopBody232_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody232_121 : HolLoopProg 64 :=
.mark loopBody232_120

def loopBody232_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody232_123 : HolLoopProg 64 :=
.mark loopBody232_122

def loopBody232_124 : HolLoopProg 64 :=
.seq loopBody232_123 loopBody232_1

def loopBody232_125 : HolLoopProg 64 :=
.mark loopBody232_124

def loopBody232_126 : HolLoopProg 64 :=
.seq loopBody232_121 loopBody232_125

def loopBody232_127 : HolLoopProg 64 :=
.mark loopBody232_126

def loopBody232_128 : HolLoopProg 64 :=
.seq loopBody232_119 loopBody232_127

def loopBody232_129 : HolLoopProg 64 :=
.mark loopBody232_128

def loopBody232_130 : HolLoopProg 64 :=
.seq loopBody232_11 loopBody232_129

def loopBody232_131 : HolLoopProg 64 :=
.mark loopBody232_130

def loopBody232_132 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_131

def loopBody232_133 : HolLoopProg 64 :=
.mark loopBody232_132

def loopBody232_134 : HolLoopProg 64 :=
.seq loopBody232_1 loopBody232_133

def loopBody232_135 : HolLoopProg 64 :=
.mark loopBody232_134

def output232 : Nat × List Nat × HolLoopProg 64 :=
  (296, [0, 1, 2, 3], loopBody232_135)
end InitECandidate.Proofs.FrontendStages.Loop
