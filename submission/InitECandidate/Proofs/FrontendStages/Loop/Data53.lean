import InitECandidate.Proofs.FrontendStages.Loop.Translate37
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody53_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody53_1 : HolLoopProg 64 :=
.mark loopBody53_0

def loopBody53_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 0)

def loopBody53_3 : HolLoopProg 64 :=
.mark loopBody53_2

def loopBody53_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 4,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody53_5 : HolLoopProg 64 :=
.mark loopBody53_4

def loopBody53_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody53_7 : HolLoopProg 64 :=
.mark loopBody53_6

def loopBody53_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [8, 9] Flapjack.PrimOp.addCarry [10, 11, 12]

def loopBody53_9 : HolLoopProg 64 :=
.mark loopBody53_8

def loopBody53_10 : HolLoopProg 64 :=
.seq loopBody53_7 loopBody53_9

def loopBody53_11 : HolLoopProg 64 :=
.mark loopBody53_10

def loopBody53_12 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_11

def loopBody53_13 : HolLoopProg 64 :=
.mark loopBody53_12

def loopBody53_14 : HolLoopProg 64 :=
.seq loopBody53_5 loopBody53_13

def loopBody53_15 : HolLoopProg 64 :=
.mark loopBody53_14

def loopBody53_16 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_15

def loopBody53_17 : HolLoopProg 64 :=
.mark loopBody53_16

def loopBody53_18 : HolLoopProg 64 :=
.seq loopBody53_3 loopBody53_17

def loopBody53_19 : HolLoopProg 64 :=
.mark loopBody53_18

def loopBody53_20 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_19

def loopBody53_21 : HolLoopProg 64 :=
.mark loopBody53_20

def loopBody53_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 1)

def loopBody53_23 : HolLoopProg 64 :=
.mark loopBody53_22

def loopBody53_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 5,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody53_25 : HolLoopProg 64 :=
.mark loopBody53_24

def loopBody53_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody53_27 : HolLoopProg 64 :=
.mark loopBody53_26

def loopBody53_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [10, 11] Flapjack.PrimOp.addCarry [12, 13, 14]

def loopBody53_29 : HolLoopProg 64 :=
.mark loopBody53_28

def loopBody53_30 : HolLoopProg 64 :=
.seq loopBody53_27 loopBody53_29

def loopBody53_31 : HolLoopProg 64 :=
.mark loopBody53_30

def loopBody53_32 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_31

def loopBody53_33 : HolLoopProg 64 :=
.mark loopBody53_32

def loopBody53_34 : HolLoopProg 64 :=
.seq loopBody53_25 loopBody53_33

def loopBody53_35 : HolLoopProg 64 :=
.mark loopBody53_34

def loopBody53_36 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_35

def loopBody53_37 : HolLoopProg 64 :=
.mark loopBody53_36

def loopBody53_38 : HolLoopProg 64 :=
.seq loopBody53_23 loopBody53_37

def loopBody53_39 : HolLoopProg 64 :=
.mark loopBody53_38

def loopBody53_40 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_39

def loopBody53_41 : HolLoopProg 64 :=
.mark loopBody53_40

def loopBody53_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody53_43 : HolLoopProg 64 :=
.mark loopBody53_42

def loopBody53_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 6,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody53_45 : HolLoopProg 64 :=
.mark loopBody53_44

def loopBody53_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 11)

def loopBody53_47 : HolLoopProg 64 :=
.mark loopBody53_46

def loopBody53_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [12, 13] Flapjack.PrimOp.addCarry [14, 15, 16]

def loopBody53_49 : HolLoopProg 64 :=
.mark loopBody53_48

def loopBody53_50 : HolLoopProg 64 :=
.seq loopBody53_47 loopBody53_49

def loopBody53_51 : HolLoopProg 64 :=
.mark loopBody53_50

def loopBody53_52 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_51

def loopBody53_53 : HolLoopProg 64 :=
.mark loopBody53_52

def loopBody53_54 : HolLoopProg 64 :=
.seq loopBody53_45 loopBody53_53

def loopBody53_55 : HolLoopProg 64 :=
.mark loopBody53_54

def loopBody53_56 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_55

def loopBody53_57 : HolLoopProg 64 :=
.mark loopBody53_56

def loopBody53_58 : HolLoopProg 64 :=
.seq loopBody53_43 loopBody53_57

def loopBody53_59 : HolLoopProg 64 :=
.mark loopBody53_58

def loopBody53_60 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_59

def loopBody53_61 : HolLoopProg 64 :=
.mark loopBody53_60

def loopBody53_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 3)

def loopBody53_63 : HolLoopProg 64 :=
.mark loopBody53_62

def loopBody53_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 7,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody53_65 : HolLoopProg 64 :=
.mark loopBody53_64

def loopBody53_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 13)

def loopBody53_67 : HolLoopProg 64 :=
.mark loopBody53_66

def loopBody53_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [14, 15] Flapjack.PrimOp.addCarry [16, 17, 18]

def loopBody53_69 : HolLoopProg 64 :=
.mark loopBody53_68

def loopBody53_70 : HolLoopProg 64 :=
.seq loopBody53_67 loopBody53_69

def loopBody53_71 : HolLoopProg 64 :=
.mark loopBody53_70

def loopBody53_72 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_71

def loopBody53_73 : HolLoopProg 64 :=
.mark loopBody53_72

def loopBody53_74 : HolLoopProg 64 :=
.seq loopBody53_65 loopBody53_73

def loopBody53_75 : HolLoopProg 64 :=
.mark loopBody53_74

def loopBody53_76 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_75

def loopBody53_77 : HolLoopProg 64 :=
.mark loopBody53_76

def loopBody53_78 : HolLoopProg 64 :=
.seq loopBody53_63 loopBody53_77

def loopBody53_79 : HolLoopProg 64 :=
.mark loopBody53_78

def loopBody53_80 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_79

def loopBody53_81 : HolLoopProg 64 :=
.mark loopBody53_80

def loopBody53_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 8)

def loopBody53_83 : HolLoopProg 64 :=
.mark loopBody53_82

def loopBody53_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 10)

def loopBody53_85 : HolLoopProg 64 :=
.mark loopBody53_84

def loopBody53_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 12)

def loopBody53_87 : HolLoopProg 64 :=
.mark loopBody53_86

def loopBody53_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 14)

def loopBody53_89 : HolLoopProg 64 :=
.mark loopBody53_88

def loopBody53_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [16, 17, 18, 19]

def loopBody53_91 : HolLoopProg 64 :=
.mark loopBody53_90

def loopBody53_92 : HolLoopProg 64 :=
.seq loopBody53_91 loopBody53_1

def loopBody53_93 : HolLoopProg 64 :=
.mark loopBody53_92

def loopBody53_94 : HolLoopProg 64 :=
.seq loopBody53_89 loopBody53_93

def loopBody53_95 : HolLoopProg 64 :=
.mark loopBody53_94

def loopBody53_96 : HolLoopProg 64 :=
.seq loopBody53_87 loopBody53_95

def loopBody53_97 : HolLoopProg 64 :=
.mark loopBody53_96

def loopBody53_98 : HolLoopProg 64 :=
.seq loopBody53_85 loopBody53_97

def loopBody53_99 : HolLoopProg 64 :=
.mark loopBody53_98

def loopBody53_100 : HolLoopProg 64 :=
.seq loopBody53_83 loopBody53_99

def loopBody53_101 : HolLoopProg 64 :=
.mark loopBody53_100

def loopBody53_102 : HolLoopProg 64 :=
.seq loopBody53_81 loopBody53_101

def loopBody53_103 : HolLoopProg 64 :=
.mark loopBody53_102

def loopBody53_104 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_103

def loopBody53_105 : HolLoopProg 64 :=
.mark loopBody53_104

def loopBody53_106 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_105

def loopBody53_107 : HolLoopProg 64 :=
.mark loopBody53_106

def loopBody53_108 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_107

def loopBody53_109 : HolLoopProg 64 :=
.mark loopBody53_108

def loopBody53_110 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_109

def loopBody53_111 : HolLoopProg 64 :=
.mark loopBody53_110

def loopBody53_112 : HolLoopProg 64 :=
.seq loopBody53_61 loopBody53_111

def loopBody53_113 : HolLoopProg 64 :=
.mark loopBody53_112

def loopBody53_114 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_113

def loopBody53_115 : HolLoopProg 64 :=
.mark loopBody53_114

def loopBody53_116 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_115

def loopBody53_117 : HolLoopProg 64 :=
.mark loopBody53_116

def loopBody53_118 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_117

def loopBody53_119 : HolLoopProg 64 :=
.mark loopBody53_118

def loopBody53_120 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_119

def loopBody53_121 : HolLoopProg 64 :=
.mark loopBody53_120

def loopBody53_122 : HolLoopProg 64 :=
.seq loopBody53_41 loopBody53_121

def loopBody53_123 : HolLoopProg 64 :=
.mark loopBody53_122

def loopBody53_124 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_123

def loopBody53_125 : HolLoopProg 64 :=
.mark loopBody53_124

def loopBody53_126 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_125

def loopBody53_127 : HolLoopProg 64 :=
.mark loopBody53_126

def loopBody53_128 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_127

def loopBody53_129 : HolLoopProg 64 :=
.mark loopBody53_128

def loopBody53_130 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_129

def loopBody53_131 : HolLoopProg 64 :=
.mark loopBody53_130

def loopBody53_132 : HolLoopProg 64 :=
.seq loopBody53_21 loopBody53_131

def loopBody53_133 : HolLoopProg 64 :=
.mark loopBody53_132

def loopBody53_134 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_133

def loopBody53_135 : HolLoopProg 64 :=
.mark loopBody53_134

def loopBody53_136 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_135

def loopBody53_137 : HolLoopProg 64 :=
.mark loopBody53_136

def loopBody53_138 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_137

def loopBody53_139 : HolLoopProg 64 :=
.mark loopBody53_138

def loopBody53_140 : HolLoopProg 64 :=
.seq loopBody53_1 loopBody53_139

def loopBody53_141 : HolLoopProg 64 :=
.mark loopBody53_140

def output53 : Nat × List Nat × HolLoopProg 64 :=
  (117, [0, 1, 2, 3, 4, 5, 6, 7], loopBody53_141)
end InitECandidate.Proofs.FrontendStages.Loop
