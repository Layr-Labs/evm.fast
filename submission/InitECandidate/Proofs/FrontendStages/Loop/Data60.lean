import InitECandidate.Proofs.FrontendStages.Loop.Translate44
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody60_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody60_1 : HolLoopProg 64 :=
.mark loopBody60_0

def loopBody60_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody60_3 : HolLoopProg 64 :=
.mark loopBody60_2

def loopBody60_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 4294967295#64])

def loopBody60_5 : HolLoopProg 64 :=
.mark loopBody60_4

def loopBody60_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody60_7 : HolLoopProg 64 :=
.mark loopBody60_6

def loopBody60_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 5) 7

def loopBody60_9 : HolLoopProg 64 :=
.mark loopBody60_8

def loopBody60_10 : HolLoopProg 64 :=
.seq loopBody60_9 loopBody60_1

def loopBody60_11 : HolLoopProg 64 :=
.mark loopBody60_10

def loopBody60_12 : HolLoopProg 64 :=
.seq loopBody60_7 loopBody60_11

def loopBody60_13 : HolLoopProg 64 :=
.mark loopBody60_12

def loopBody60_14 : HolLoopProg 64 :=
.seq loopBody60_13 loopBody60_1

def loopBody60_15 : HolLoopProg 64 :=
.mark loopBody60_14

def loopBody60_16 : HolLoopProg 64 :=
.seq loopBody60_5 loopBody60_15

def loopBody60_17 : HolLoopProg 64 :=
.mark loopBody60_16

def loopBody60_18 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_17

def loopBody60_19 : HolLoopProg 64 :=
.mark loopBody60_18

def loopBody60_20 : HolLoopProg 64 :=
.seq loopBody60_3 loopBody60_19

def loopBody60_21 : HolLoopProg 64 :=
.mark loopBody60_20

def loopBody60_22 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_21

def loopBody60_23 : HolLoopProg 64 :=
.mark loopBody60_22

def loopBody60_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64])

def loopBody60_25 : HolLoopProg 64 :=
.mark loopBody60_24

def loopBody60_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 32#64))

def loopBody60_27 : HolLoopProg 64 :=
.mark loopBody60_26

def loopBody60_28 : HolLoopProg 64 :=
.seq loopBody60_27 loopBody60_15

def loopBody60_29 : HolLoopProg 64 :=
.mark loopBody60_28

def loopBody60_30 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_29

def loopBody60_31 : HolLoopProg 64 :=
.mark loopBody60_30

def loopBody60_32 : HolLoopProg 64 :=
.seq loopBody60_25 loopBody60_31

def loopBody60_33 : HolLoopProg 64 :=
.mark loopBody60_32

def loopBody60_34 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_33

def loopBody60_35 : HolLoopProg 64 :=
.mark loopBody60_34

def loopBody60_36 : HolLoopProg 64 :=
.seq loopBody60_23 loopBody60_35

def loopBody60_37 : HolLoopProg 64 :=
.mark loopBody60_36

def loopBody60_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64])

def loopBody60_39 : HolLoopProg 64 :=
.mark loopBody60_38

def loopBody60_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 4294967295#64])

def loopBody60_41 : HolLoopProg 64 :=
.mark loopBody60_40

def loopBody60_42 : HolLoopProg 64 :=
.seq loopBody60_41 loopBody60_15

def loopBody60_43 : HolLoopProg 64 :=
.mark loopBody60_42

def loopBody60_44 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_43

def loopBody60_45 : HolLoopProg 64 :=
.mark loopBody60_44

def loopBody60_46 : HolLoopProg 64 :=
.seq loopBody60_39 loopBody60_45

def loopBody60_47 : HolLoopProg 64 :=
.mark loopBody60_46

def loopBody60_48 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_47

def loopBody60_49 : HolLoopProg 64 :=
.mark loopBody60_48

def loopBody60_50 : HolLoopProg 64 :=
.seq loopBody60_37 loopBody60_49

def loopBody60_51 : HolLoopProg 64 :=
.mark loopBody60_50

def loopBody60_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64])

def loopBody60_53 : HolLoopProg 64 :=
.mark loopBody60_52

def loopBody60_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 32#64))

def loopBody60_55 : HolLoopProg 64 :=
.mark loopBody60_54

def loopBody60_56 : HolLoopProg 64 :=
.seq loopBody60_55 loopBody60_15

def loopBody60_57 : HolLoopProg 64 :=
.mark loopBody60_56

def loopBody60_58 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_57

def loopBody60_59 : HolLoopProg 64 :=
.mark loopBody60_58

def loopBody60_60 : HolLoopProg 64 :=
.seq loopBody60_53 loopBody60_59

def loopBody60_61 : HolLoopProg 64 :=
.mark loopBody60_60

def loopBody60_62 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_61

def loopBody60_63 : HolLoopProg 64 :=
.mark loopBody60_62

def loopBody60_64 : HolLoopProg 64 :=
.seq loopBody60_51 loopBody60_63

def loopBody60_65 : HolLoopProg 64 :=
.mark loopBody60_64

def loopBody60_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64])

def loopBody60_67 : HolLoopProg 64 :=
.mark loopBody60_66

def loopBody60_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 4294967295#64])

def loopBody60_69 : HolLoopProg 64 :=
.mark loopBody60_68

def loopBody60_70 : HolLoopProg 64 :=
.seq loopBody60_69 loopBody60_15

def loopBody60_71 : HolLoopProg 64 :=
.mark loopBody60_70

def loopBody60_72 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_71

def loopBody60_73 : HolLoopProg 64 :=
.mark loopBody60_72

def loopBody60_74 : HolLoopProg 64 :=
.seq loopBody60_67 loopBody60_73

def loopBody60_75 : HolLoopProg 64 :=
.mark loopBody60_74

def loopBody60_76 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_75

def loopBody60_77 : HolLoopProg 64 :=
.mark loopBody60_76

def loopBody60_78 : HolLoopProg 64 :=
.seq loopBody60_65 loopBody60_77

def loopBody60_79 : HolLoopProg 64 :=
.mark loopBody60_78

def loopBody60_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 40#64])

def loopBody60_81 : HolLoopProg 64 :=
.mark loopBody60_80

def loopBody60_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 32#64))

def loopBody60_83 : HolLoopProg 64 :=
.mark loopBody60_82

def loopBody60_84 : HolLoopProg 64 :=
.seq loopBody60_83 loopBody60_15

def loopBody60_85 : HolLoopProg 64 :=
.mark loopBody60_84

def loopBody60_86 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_85

def loopBody60_87 : HolLoopProg 64 :=
.mark loopBody60_86

def loopBody60_88 : HolLoopProg 64 :=
.seq loopBody60_81 loopBody60_87

def loopBody60_89 : HolLoopProg 64 :=
.mark loopBody60_88

def loopBody60_90 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_89

def loopBody60_91 : HolLoopProg 64 :=
.mark loopBody60_90

def loopBody60_92 : HolLoopProg 64 :=
.seq loopBody60_79 loopBody60_91

def loopBody60_93 : HolLoopProg 64 :=
.mark loopBody60_92

def loopBody60_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64])

def loopBody60_95 : HolLoopProg 64 :=
.mark loopBody60_94

def loopBody60_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 4294967295#64])

def loopBody60_97 : HolLoopProg 64 :=
.mark loopBody60_96

def loopBody60_98 : HolLoopProg 64 :=
.seq loopBody60_97 loopBody60_15

def loopBody60_99 : HolLoopProg 64 :=
.mark loopBody60_98

def loopBody60_100 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_99

def loopBody60_101 : HolLoopProg 64 :=
.mark loopBody60_100

def loopBody60_102 : HolLoopProg 64 :=
.seq loopBody60_95 loopBody60_101

def loopBody60_103 : HolLoopProg 64 :=
.mark loopBody60_102

def loopBody60_104 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_103

def loopBody60_105 : HolLoopProg 64 :=
.mark loopBody60_104

def loopBody60_106 : HolLoopProg 64 :=
.seq loopBody60_93 loopBody60_105

def loopBody60_107 : HolLoopProg 64 :=
.mark loopBody60_106

def loopBody60_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 56#64])

def loopBody60_109 : HolLoopProg 64 :=
.mark loopBody60_108

def loopBody60_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 32#64))

def loopBody60_111 : HolLoopProg 64 :=
.mark loopBody60_110

def loopBody60_112 : HolLoopProg 64 :=
.seq loopBody60_111 loopBody60_15

def loopBody60_113 : HolLoopProg 64 :=
.mark loopBody60_112

def loopBody60_114 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_113

def loopBody60_115 : HolLoopProg 64 :=
.mark loopBody60_114

def loopBody60_116 : HolLoopProg 64 :=
.seq loopBody60_109 loopBody60_115

def loopBody60_117 : HolLoopProg 64 :=
.mark loopBody60_116

def loopBody60_118 : HolLoopProg 64 :=
.seq loopBody60_1 loopBody60_117

def loopBody60_119 : HolLoopProg 64 :=
.mark loopBody60_118

def loopBody60_120 : HolLoopProg 64 :=
.seq loopBody60_107 loopBody60_119

def loopBody60_121 : HolLoopProg 64 :=
.mark loopBody60_120

def loopBody60_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody60_123 : HolLoopProg 64 :=
.mark loopBody60_122

def loopBody60_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody60_125 : HolLoopProg 64 :=
.mark loopBody60_124

def loopBody60_126 : HolLoopProg 64 :=
.seq loopBody60_125 loopBody60_1

def loopBody60_127 : HolLoopProg 64 :=
.mark loopBody60_126

def loopBody60_128 : HolLoopProg 64 :=
.seq loopBody60_123 loopBody60_127

def loopBody60_129 : HolLoopProg 64 :=
.mark loopBody60_128

def loopBody60_130 : HolLoopProg 64 :=
.seq loopBody60_121 loopBody60_129

def loopBody60_131 : HolLoopProg 64 :=
.mark loopBody60_130

def output60 : Nat × List Nat × HolLoopProg 64 :=
  (124, [0, 1, 2, 3, 4], loopBody60_131)
end InitECandidate.Proofs.FrontendStages.Loop
