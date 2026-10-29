import InitECandidate.Proofs.FrontendStages.Loop.Translate70
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody86_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody86_1 : HolLoopProg 64 :=
.mark loopBody86_0

def loopBody86_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64])

def loopBody86_3 : HolLoopProg 64 :=
.mark loopBody86_2

def loopBody86_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1779033703#64)

def loopBody86_5 : HolLoopProg 64 :=
.mark loopBody86_4

def loopBody86_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody86_7 : HolLoopProg 64 :=
.mark loopBody86_6

def loopBody86_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 3

def loopBody86_9 : HolLoopProg 64 :=
.mark loopBody86_8

def loopBody86_10 : HolLoopProg 64 :=
.seq loopBody86_9 loopBody86_1

def loopBody86_11 : HolLoopProg 64 :=
.mark loopBody86_10

def loopBody86_12 : HolLoopProg 64 :=
.seq loopBody86_7 loopBody86_11

def loopBody86_13 : HolLoopProg 64 :=
.mark loopBody86_12

def loopBody86_14 : HolLoopProg 64 :=
.seq loopBody86_13 loopBody86_1

def loopBody86_15 : HolLoopProg 64 :=
.mark loopBody86_14

def loopBody86_16 : HolLoopProg 64 :=
.seq loopBody86_5 loopBody86_15

def loopBody86_17 : HolLoopProg 64 :=
.mark loopBody86_16

def loopBody86_18 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_17

def loopBody86_19 : HolLoopProg 64 :=
.mark loopBody86_18

def loopBody86_20 : HolLoopProg 64 :=
.seq loopBody86_3 loopBody86_19

def loopBody86_21 : HolLoopProg 64 :=
.mark loopBody86_20

def loopBody86_22 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_21

def loopBody86_23 : HolLoopProg 64 :=
.mark loopBody86_22

def loopBody86_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64])

def loopBody86_25 : HolLoopProg 64 :=
.mark loopBody86_24

def loopBody86_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 3144134277#64)

def loopBody86_27 : HolLoopProg 64 :=
.mark loopBody86_26

def loopBody86_28 : HolLoopProg 64 :=
.seq loopBody86_27 loopBody86_15

def loopBody86_29 : HolLoopProg 64 :=
.mark loopBody86_28

def loopBody86_30 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_29

def loopBody86_31 : HolLoopProg 64 :=
.mark loopBody86_30

def loopBody86_32 : HolLoopProg 64 :=
.seq loopBody86_25 loopBody86_31

def loopBody86_33 : HolLoopProg 64 :=
.mark loopBody86_32

def loopBody86_34 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_33

def loopBody86_35 : HolLoopProg 64 :=
.mark loopBody86_34

def loopBody86_36 : HolLoopProg 64 :=
.seq loopBody86_23 loopBody86_35

def loopBody86_37 : HolLoopProg 64 :=
.mark loopBody86_36

def loopBody86_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64])

def loopBody86_39 : HolLoopProg 64 :=
.mark loopBody86_38

def loopBody86_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1013904242#64)

def loopBody86_41 : HolLoopProg 64 :=
.mark loopBody86_40

def loopBody86_42 : HolLoopProg 64 :=
.seq loopBody86_41 loopBody86_15

def loopBody86_43 : HolLoopProg 64 :=
.mark loopBody86_42

def loopBody86_44 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_43

def loopBody86_45 : HolLoopProg 64 :=
.mark loopBody86_44

def loopBody86_46 : HolLoopProg 64 :=
.seq loopBody86_39 loopBody86_45

def loopBody86_47 : HolLoopProg 64 :=
.mark loopBody86_46

def loopBody86_48 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_47

def loopBody86_49 : HolLoopProg 64 :=
.mark loopBody86_48

def loopBody86_50 : HolLoopProg 64 :=
.seq loopBody86_37 loopBody86_49

def loopBody86_51 : HolLoopProg 64 :=
.mark loopBody86_50

def loopBody86_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64])

def loopBody86_53 : HolLoopProg 64 :=
.mark loopBody86_52

def loopBody86_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2773480762#64)

def loopBody86_55 : HolLoopProg 64 :=
.mark loopBody86_54

def loopBody86_56 : HolLoopProg 64 :=
.seq loopBody86_55 loopBody86_15

def loopBody86_57 : HolLoopProg 64 :=
.mark loopBody86_56

def loopBody86_58 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_57

def loopBody86_59 : HolLoopProg 64 :=
.mark loopBody86_58

def loopBody86_60 : HolLoopProg 64 :=
.seq loopBody86_53 loopBody86_59

def loopBody86_61 : HolLoopProg 64 :=
.mark loopBody86_60

def loopBody86_62 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_61

def loopBody86_63 : HolLoopProg 64 :=
.mark loopBody86_62

def loopBody86_64 : HolLoopProg 64 :=
.seq loopBody86_51 loopBody86_63

def loopBody86_65 : HolLoopProg 64 :=
.mark loopBody86_64

def loopBody86_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64])

def loopBody86_67 : HolLoopProg 64 :=
.mark loopBody86_66

def loopBody86_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1359893119#64)

def loopBody86_69 : HolLoopProg 64 :=
.mark loopBody86_68

def loopBody86_70 : HolLoopProg 64 :=
.seq loopBody86_69 loopBody86_15

def loopBody86_71 : HolLoopProg 64 :=
.mark loopBody86_70

def loopBody86_72 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_71

def loopBody86_73 : HolLoopProg 64 :=
.mark loopBody86_72

def loopBody86_74 : HolLoopProg 64 :=
.seq loopBody86_67 loopBody86_73

def loopBody86_75 : HolLoopProg 64 :=
.mark loopBody86_74

def loopBody86_76 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_75

def loopBody86_77 : HolLoopProg 64 :=
.mark loopBody86_76

def loopBody86_78 : HolLoopProg 64 :=
.seq loopBody86_65 loopBody86_77

def loopBody86_79 : HolLoopProg 64 :=
.mark loopBody86_78

def loopBody86_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 40#64])

def loopBody86_81 : HolLoopProg 64 :=
.mark loopBody86_80

def loopBody86_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2600822924#64)

def loopBody86_83 : HolLoopProg 64 :=
.mark loopBody86_82

def loopBody86_84 : HolLoopProg 64 :=
.seq loopBody86_83 loopBody86_15

def loopBody86_85 : HolLoopProg 64 :=
.mark loopBody86_84

def loopBody86_86 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_85

def loopBody86_87 : HolLoopProg 64 :=
.mark loopBody86_86

def loopBody86_88 : HolLoopProg 64 :=
.seq loopBody86_81 loopBody86_87

def loopBody86_89 : HolLoopProg 64 :=
.mark loopBody86_88

def loopBody86_90 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_89

def loopBody86_91 : HolLoopProg 64 :=
.mark loopBody86_90

def loopBody86_92 : HolLoopProg 64 :=
.seq loopBody86_79 loopBody86_91

def loopBody86_93 : HolLoopProg 64 :=
.mark loopBody86_92

def loopBody86_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64])

def loopBody86_95 : HolLoopProg 64 :=
.mark loopBody86_94

def loopBody86_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 528734635#64)

def loopBody86_97 : HolLoopProg 64 :=
.mark loopBody86_96

def loopBody86_98 : HolLoopProg 64 :=
.seq loopBody86_97 loopBody86_15

def loopBody86_99 : HolLoopProg 64 :=
.mark loopBody86_98

def loopBody86_100 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_99

def loopBody86_101 : HolLoopProg 64 :=
.mark loopBody86_100

def loopBody86_102 : HolLoopProg 64 :=
.seq loopBody86_95 loopBody86_101

def loopBody86_103 : HolLoopProg 64 :=
.mark loopBody86_102

def loopBody86_104 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_103

def loopBody86_105 : HolLoopProg 64 :=
.mark loopBody86_104

def loopBody86_106 : HolLoopProg 64 :=
.seq loopBody86_93 loopBody86_105

def loopBody86_107 : HolLoopProg 64 :=
.mark loopBody86_106

def loopBody86_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 56#64])

def loopBody86_109 : HolLoopProg 64 :=
.mark loopBody86_108

def loopBody86_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1541459225#64)

def loopBody86_111 : HolLoopProg 64 :=
.mark loopBody86_110

def loopBody86_112 : HolLoopProg 64 :=
.seq loopBody86_111 loopBody86_15

def loopBody86_113 : HolLoopProg 64 :=
.mark loopBody86_112

def loopBody86_114 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_113

def loopBody86_115 : HolLoopProg 64 :=
.mark loopBody86_114

def loopBody86_116 : HolLoopProg 64 :=
.seq loopBody86_109 loopBody86_115

def loopBody86_117 : HolLoopProg 64 :=
.mark loopBody86_116

def loopBody86_118 : HolLoopProg 64 :=
.seq loopBody86_1 loopBody86_117

def loopBody86_119 : HolLoopProg 64 :=
.mark loopBody86_118

def loopBody86_120 : HolLoopProg 64 :=
.seq loopBody86_107 loopBody86_119

def loopBody86_121 : HolLoopProg 64 :=
.mark loopBody86_120

def loopBody86_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody86_123 : HolLoopProg 64 :=
.mark loopBody86_122

def loopBody86_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody86_125 : HolLoopProg 64 :=
.mark loopBody86_124

def loopBody86_126 : HolLoopProg 64 :=
.seq loopBody86_125 loopBody86_1

def loopBody86_127 : HolLoopProg 64 :=
.mark loopBody86_126

def loopBody86_128 : HolLoopProg 64 :=
.seq loopBody86_123 loopBody86_127

def loopBody86_129 : HolLoopProg 64 :=
.mark loopBody86_128

def loopBody86_130 : HolLoopProg 64 :=
.seq loopBody86_121 loopBody86_129

def loopBody86_131 : HolLoopProg 64 :=
.mark loopBody86_130

def output86 : Nat × List Nat × HolLoopProg 64 :=
  (150, [0], loopBody86_131)
end InitECandidate.Proofs.FrontendStages.Loop
