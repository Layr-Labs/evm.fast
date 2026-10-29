import InitECandidate.Proofs.FrontendStages.Loop.Translate38
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody54_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody54_1 : HolLoopProg 64 :=
.mark loopBody54_0

def loopBody54_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody54_3 : HolLoopProg 64 :=
.mark loopBody54_2

def loopBody54_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 0,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody54_5 : HolLoopProg 64 :=
.mark loopBody54_4

def loopBody54_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody54_7 : HolLoopProg 64 :=
.mark loopBody54_6

def loopBody54_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [4, 5] Flapjack.PrimOp.addCarry [6, 7, 8]

def loopBody54_9 : HolLoopProg 64 :=
.mark loopBody54_8

def loopBody54_10 : HolLoopProg 64 :=
.seq loopBody54_7 loopBody54_9

def loopBody54_11 : HolLoopProg 64 :=
.mark loopBody54_10

def loopBody54_12 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_11

def loopBody54_13 : HolLoopProg 64 :=
.mark loopBody54_12

def loopBody54_14 : HolLoopProg 64 :=
.seq loopBody54_5 loopBody54_13

def loopBody54_15 : HolLoopProg 64 :=
.mark loopBody54_14

def loopBody54_16 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_15

def loopBody54_17 : HolLoopProg 64 :=
.mark loopBody54_16

def loopBody54_18 : HolLoopProg 64 :=
.seq loopBody54_3 loopBody54_17

def loopBody54_19 : HolLoopProg 64 :=
.mark loopBody54_18

def loopBody54_20 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_19

def loopBody54_21 : HolLoopProg 64 :=
.mark loopBody54_20

def loopBody54_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody54_23 : HolLoopProg 64 :=
.mark loopBody54_22

def loopBody54_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody54_25 : HolLoopProg 64 :=
.mark loopBody54_24

def loopBody54_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody54_27 : HolLoopProg 64 :=
.mark loopBody54_26

def loopBody54_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [6, 7] Flapjack.PrimOp.addCarry [8, 9, 10]

def loopBody54_29 : HolLoopProg 64 :=
.mark loopBody54_28

def loopBody54_30 : HolLoopProg 64 :=
.seq loopBody54_27 loopBody54_29

def loopBody54_31 : HolLoopProg 64 :=
.mark loopBody54_30

def loopBody54_32 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_31

def loopBody54_33 : HolLoopProg 64 :=
.mark loopBody54_32

def loopBody54_34 : HolLoopProg 64 :=
.seq loopBody54_25 loopBody54_33

def loopBody54_35 : HolLoopProg 64 :=
.mark loopBody54_34

def loopBody54_36 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_35

def loopBody54_37 : HolLoopProg 64 :=
.mark loopBody54_36

def loopBody54_38 : HolLoopProg 64 :=
.seq loopBody54_23 loopBody54_37

def loopBody54_39 : HolLoopProg 64 :=
.mark loopBody54_38

def loopBody54_40 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_39

def loopBody54_41 : HolLoopProg 64 :=
.mark loopBody54_40

def loopBody54_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody54_43 : HolLoopProg 64 :=
.mark loopBody54_42

def loopBody54_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody54_45 : HolLoopProg 64 :=
.mark loopBody54_44

def loopBody54_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 7)

def loopBody54_47 : HolLoopProg 64 :=
.mark loopBody54_46

def loopBody54_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [8, 9] Flapjack.PrimOp.addCarry [10, 11, 12]

def loopBody54_49 : HolLoopProg 64 :=
.mark loopBody54_48

def loopBody54_50 : HolLoopProg 64 :=
.seq loopBody54_47 loopBody54_49

def loopBody54_51 : HolLoopProg 64 :=
.mark loopBody54_50

def loopBody54_52 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_51

def loopBody54_53 : HolLoopProg 64 :=
.mark loopBody54_52

def loopBody54_54 : HolLoopProg 64 :=
.seq loopBody54_45 loopBody54_53

def loopBody54_55 : HolLoopProg 64 :=
.mark loopBody54_54

def loopBody54_56 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_55

def loopBody54_57 : HolLoopProg 64 :=
.mark loopBody54_56

def loopBody54_58 : HolLoopProg 64 :=
.seq loopBody54_43 loopBody54_57

def loopBody54_59 : HolLoopProg 64 :=
.mark loopBody54_58

def loopBody54_60 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_59

def loopBody54_61 : HolLoopProg 64 :=
.mark loopBody54_60

def loopBody54_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody54_63 : HolLoopProg 64 :=
.mark loopBody54_62

def loopBody54_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody54_65 : HolLoopProg 64 :=
.mark loopBody54_64

def loopBody54_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody54_67 : HolLoopProg 64 :=
.mark loopBody54_66

def loopBody54_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [10, 11] Flapjack.PrimOp.addCarry [12, 13, 14]

def loopBody54_69 : HolLoopProg 64 :=
.mark loopBody54_68

def loopBody54_70 : HolLoopProg 64 :=
.seq loopBody54_67 loopBody54_69

def loopBody54_71 : HolLoopProg 64 :=
.mark loopBody54_70

def loopBody54_72 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_71

def loopBody54_73 : HolLoopProg 64 :=
.mark loopBody54_72

def loopBody54_74 : HolLoopProg 64 :=
.seq loopBody54_65 loopBody54_73

def loopBody54_75 : HolLoopProg 64 :=
.mark loopBody54_74

def loopBody54_76 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_75

def loopBody54_77 : HolLoopProg 64 :=
.mark loopBody54_76

def loopBody54_78 : HolLoopProg 64 :=
.seq loopBody54_63 loopBody54_77

def loopBody54_79 : HolLoopProg 64 :=
.mark loopBody54_78

def loopBody54_80 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_79

def loopBody54_81 : HolLoopProg 64 :=
.mark loopBody54_80

def loopBody54_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 4)

def loopBody54_83 : HolLoopProg 64 :=
.mark loopBody54_82

def loopBody54_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 6)

def loopBody54_85 : HolLoopProg 64 :=
.mark loopBody54_84

def loopBody54_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 8)

def loopBody54_87 : HolLoopProg 64 :=
.mark loopBody54_86

def loopBody54_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 10)

def loopBody54_89 : HolLoopProg 64 :=
.mark loopBody54_88

def loopBody54_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [12, 13, 14, 15]

def loopBody54_91 : HolLoopProg 64 :=
.mark loopBody54_90

def loopBody54_92 : HolLoopProg 64 :=
.seq loopBody54_91 loopBody54_1

def loopBody54_93 : HolLoopProg 64 :=
.mark loopBody54_92

def loopBody54_94 : HolLoopProg 64 :=
.seq loopBody54_89 loopBody54_93

def loopBody54_95 : HolLoopProg 64 :=
.mark loopBody54_94

def loopBody54_96 : HolLoopProg 64 :=
.seq loopBody54_87 loopBody54_95

def loopBody54_97 : HolLoopProg 64 :=
.mark loopBody54_96

def loopBody54_98 : HolLoopProg 64 :=
.seq loopBody54_85 loopBody54_97

def loopBody54_99 : HolLoopProg 64 :=
.mark loopBody54_98

def loopBody54_100 : HolLoopProg 64 :=
.seq loopBody54_83 loopBody54_99

def loopBody54_101 : HolLoopProg 64 :=
.mark loopBody54_100

def loopBody54_102 : HolLoopProg 64 :=
.seq loopBody54_81 loopBody54_101

def loopBody54_103 : HolLoopProg 64 :=
.mark loopBody54_102

def loopBody54_104 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_103

def loopBody54_105 : HolLoopProg 64 :=
.mark loopBody54_104

def loopBody54_106 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_105

def loopBody54_107 : HolLoopProg 64 :=
.mark loopBody54_106

def loopBody54_108 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_107

def loopBody54_109 : HolLoopProg 64 :=
.mark loopBody54_108

def loopBody54_110 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_109

def loopBody54_111 : HolLoopProg 64 :=
.mark loopBody54_110

def loopBody54_112 : HolLoopProg 64 :=
.seq loopBody54_61 loopBody54_111

def loopBody54_113 : HolLoopProg 64 :=
.mark loopBody54_112

def loopBody54_114 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_113

def loopBody54_115 : HolLoopProg 64 :=
.mark loopBody54_114

def loopBody54_116 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_115

def loopBody54_117 : HolLoopProg 64 :=
.mark loopBody54_116

def loopBody54_118 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_117

def loopBody54_119 : HolLoopProg 64 :=
.mark loopBody54_118

def loopBody54_120 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_119

def loopBody54_121 : HolLoopProg 64 :=
.mark loopBody54_120

def loopBody54_122 : HolLoopProg 64 :=
.seq loopBody54_41 loopBody54_121

def loopBody54_123 : HolLoopProg 64 :=
.mark loopBody54_122

def loopBody54_124 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_123

def loopBody54_125 : HolLoopProg 64 :=
.mark loopBody54_124

def loopBody54_126 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_125

def loopBody54_127 : HolLoopProg 64 :=
.mark loopBody54_126

def loopBody54_128 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_127

def loopBody54_129 : HolLoopProg 64 :=
.mark loopBody54_128

def loopBody54_130 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_129

def loopBody54_131 : HolLoopProg 64 :=
.mark loopBody54_130

def loopBody54_132 : HolLoopProg 64 :=
.seq loopBody54_21 loopBody54_131

def loopBody54_133 : HolLoopProg 64 :=
.mark loopBody54_132

def loopBody54_134 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_133

def loopBody54_135 : HolLoopProg 64 :=
.mark loopBody54_134

def loopBody54_136 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_135

def loopBody54_137 : HolLoopProg 64 :=
.mark loopBody54_136

def loopBody54_138 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_137

def loopBody54_139 : HolLoopProg 64 :=
.mark loopBody54_138

def loopBody54_140 : HolLoopProg 64 :=
.seq loopBody54_1 loopBody54_139

def loopBody54_141 : HolLoopProg 64 :=
.mark loopBody54_140

def output54 : Nat × List Nat × HolLoopProg 64 :=
  (118, [0, 1, 2, 3], loopBody54_141)
end InitECandidate.Proofs.FrontendStages.Loop
