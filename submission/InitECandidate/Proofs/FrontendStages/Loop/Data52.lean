import InitECandidate.Proofs.FrontendStages.Loop.Translate36
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody52_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody52_1 : HolLoopProg 64 :=
.mark loopBody52_0

def loopBody52_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 0)

def loopBody52_3 : HolLoopProg 64 :=
.mark loopBody52_2

def loopBody52_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 4)

def loopBody52_5 : HolLoopProg 64 :=
.mark loopBody52_4

def loopBody52_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody52_7 : HolLoopProg 64 :=
.mark loopBody52_6

def loopBody52_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [8, 9] Flapjack.PrimOp.addCarry [10, 11, 12]

def loopBody52_9 : HolLoopProg 64 :=
.mark loopBody52_8

def loopBody52_10 : HolLoopProg 64 :=
.seq loopBody52_7 loopBody52_9

def loopBody52_11 : HolLoopProg 64 :=
.mark loopBody52_10

def loopBody52_12 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_11

def loopBody52_13 : HolLoopProg 64 :=
.mark loopBody52_12

def loopBody52_14 : HolLoopProg 64 :=
.seq loopBody52_5 loopBody52_13

def loopBody52_15 : HolLoopProg 64 :=
.mark loopBody52_14

def loopBody52_16 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_15

def loopBody52_17 : HolLoopProg 64 :=
.mark loopBody52_16

def loopBody52_18 : HolLoopProg 64 :=
.seq loopBody52_3 loopBody52_17

def loopBody52_19 : HolLoopProg 64 :=
.mark loopBody52_18

def loopBody52_20 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_19

def loopBody52_21 : HolLoopProg 64 :=
.mark loopBody52_20

def loopBody52_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 1)

def loopBody52_23 : HolLoopProg 64 :=
.mark loopBody52_22

def loopBody52_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 5)

def loopBody52_25 : HolLoopProg 64 :=
.mark loopBody52_24

def loopBody52_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody52_27 : HolLoopProg 64 :=
.mark loopBody52_26

def loopBody52_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [10, 11] Flapjack.PrimOp.addCarry [12, 13, 14]

def loopBody52_29 : HolLoopProg 64 :=
.mark loopBody52_28

def loopBody52_30 : HolLoopProg 64 :=
.seq loopBody52_27 loopBody52_29

def loopBody52_31 : HolLoopProg 64 :=
.mark loopBody52_30

def loopBody52_32 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_31

def loopBody52_33 : HolLoopProg 64 :=
.mark loopBody52_32

def loopBody52_34 : HolLoopProg 64 :=
.seq loopBody52_25 loopBody52_33

def loopBody52_35 : HolLoopProg 64 :=
.mark loopBody52_34

def loopBody52_36 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_35

def loopBody52_37 : HolLoopProg 64 :=
.mark loopBody52_36

def loopBody52_38 : HolLoopProg 64 :=
.seq loopBody52_23 loopBody52_37

def loopBody52_39 : HolLoopProg 64 :=
.mark loopBody52_38

def loopBody52_40 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_39

def loopBody52_41 : HolLoopProg 64 :=
.mark loopBody52_40

def loopBody52_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody52_43 : HolLoopProg 64 :=
.mark loopBody52_42

def loopBody52_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 6)

def loopBody52_45 : HolLoopProg 64 :=
.mark loopBody52_44

def loopBody52_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 11)

def loopBody52_47 : HolLoopProg 64 :=
.mark loopBody52_46

def loopBody52_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [12, 13] Flapjack.PrimOp.addCarry [14, 15, 16]

def loopBody52_49 : HolLoopProg 64 :=
.mark loopBody52_48

def loopBody52_50 : HolLoopProg 64 :=
.seq loopBody52_47 loopBody52_49

def loopBody52_51 : HolLoopProg 64 :=
.mark loopBody52_50

def loopBody52_52 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_51

def loopBody52_53 : HolLoopProg 64 :=
.mark loopBody52_52

def loopBody52_54 : HolLoopProg 64 :=
.seq loopBody52_45 loopBody52_53

def loopBody52_55 : HolLoopProg 64 :=
.mark loopBody52_54

def loopBody52_56 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_55

def loopBody52_57 : HolLoopProg 64 :=
.mark loopBody52_56

def loopBody52_58 : HolLoopProg 64 :=
.seq loopBody52_43 loopBody52_57

def loopBody52_59 : HolLoopProg 64 :=
.mark loopBody52_58

def loopBody52_60 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_59

def loopBody52_61 : HolLoopProg 64 :=
.mark loopBody52_60

def loopBody52_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 3)

def loopBody52_63 : HolLoopProg 64 :=
.mark loopBody52_62

def loopBody52_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 7)

def loopBody52_65 : HolLoopProg 64 :=
.mark loopBody52_64

def loopBody52_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 13)

def loopBody52_67 : HolLoopProg 64 :=
.mark loopBody52_66

def loopBody52_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [14, 15] Flapjack.PrimOp.addCarry [16, 17, 18]

def loopBody52_69 : HolLoopProg 64 :=
.mark loopBody52_68

def loopBody52_70 : HolLoopProg 64 :=
.seq loopBody52_67 loopBody52_69

def loopBody52_71 : HolLoopProg 64 :=
.mark loopBody52_70

def loopBody52_72 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_71

def loopBody52_73 : HolLoopProg 64 :=
.mark loopBody52_72

def loopBody52_74 : HolLoopProg 64 :=
.seq loopBody52_65 loopBody52_73

def loopBody52_75 : HolLoopProg 64 :=
.mark loopBody52_74

def loopBody52_76 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_75

def loopBody52_77 : HolLoopProg 64 :=
.mark loopBody52_76

def loopBody52_78 : HolLoopProg 64 :=
.seq loopBody52_63 loopBody52_77

def loopBody52_79 : HolLoopProg 64 :=
.mark loopBody52_78

def loopBody52_80 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_79

def loopBody52_81 : HolLoopProg 64 :=
.mark loopBody52_80

def loopBody52_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 8)

def loopBody52_83 : HolLoopProg 64 :=
.mark loopBody52_82

def loopBody52_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 10)

def loopBody52_85 : HolLoopProg 64 :=
.mark loopBody52_84

def loopBody52_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 12)

def loopBody52_87 : HolLoopProg 64 :=
.mark loopBody52_86

def loopBody52_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 14)

def loopBody52_89 : HolLoopProg 64 :=
.mark loopBody52_88

def loopBody52_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [16, 17, 18, 19]

def loopBody52_91 : HolLoopProg 64 :=
.mark loopBody52_90

def loopBody52_92 : HolLoopProg 64 :=
.seq loopBody52_91 loopBody52_1

def loopBody52_93 : HolLoopProg 64 :=
.mark loopBody52_92

def loopBody52_94 : HolLoopProg 64 :=
.seq loopBody52_89 loopBody52_93

def loopBody52_95 : HolLoopProg 64 :=
.mark loopBody52_94

def loopBody52_96 : HolLoopProg 64 :=
.seq loopBody52_87 loopBody52_95

def loopBody52_97 : HolLoopProg 64 :=
.mark loopBody52_96

def loopBody52_98 : HolLoopProg 64 :=
.seq loopBody52_85 loopBody52_97

def loopBody52_99 : HolLoopProg 64 :=
.mark loopBody52_98

def loopBody52_100 : HolLoopProg 64 :=
.seq loopBody52_83 loopBody52_99

def loopBody52_101 : HolLoopProg 64 :=
.mark loopBody52_100

def loopBody52_102 : HolLoopProg 64 :=
.seq loopBody52_81 loopBody52_101

def loopBody52_103 : HolLoopProg 64 :=
.mark loopBody52_102

def loopBody52_104 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_103

def loopBody52_105 : HolLoopProg 64 :=
.mark loopBody52_104

def loopBody52_106 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_105

def loopBody52_107 : HolLoopProg 64 :=
.mark loopBody52_106

def loopBody52_108 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_107

def loopBody52_109 : HolLoopProg 64 :=
.mark loopBody52_108

def loopBody52_110 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_109

def loopBody52_111 : HolLoopProg 64 :=
.mark loopBody52_110

def loopBody52_112 : HolLoopProg 64 :=
.seq loopBody52_61 loopBody52_111

def loopBody52_113 : HolLoopProg 64 :=
.mark loopBody52_112

def loopBody52_114 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_113

def loopBody52_115 : HolLoopProg 64 :=
.mark loopBody52_114

def loopBody52_116 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_115

def loopBody52_117 : HolLoopProg 64 :=
.mark loopBody52_116

def loopBody52_118 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_117

def loopBody52_119 : HolLoopProg 64 :=
.mark loopBody52_118

def loopBody52_120 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_119

def loopBody52_121 : HolLoopProg 64 :=
.mark loopBody52_120

def loopBody52_122 : HolLoopProg 64 :=
.seq loopBody52_41 loopBody52_121

def loopBody52_123 : HolLoopProg 64 :=
.mark loopBody52_122

def loopBody52_124 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_123

def loopBody52_125 : HolLoopProg 64 :=
.mark loopBody52_124

def loopBody52_126 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_125

def loopBody52_127 : HolLoopProg 64 :=
.mark loopBody52_126

def loopBody52_128 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_127

def loopBody52_129 : HolLoopProg 64 :=
.mark loopBody52_128

def loopBody52_130 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_129

def loopBody52_131 : HolLoopProg 64 :=
.mark loopBody52_130

def loopBody52_132 : HolLoopProg 64 :=
.seq loopBody52_21 loopBody52_131

def loopBody52_133 : HolLoopProg 64 :=
.mark loopBody52_132

def loopBody52_134 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_133

def loopBody52_135 : HolLoopProg 64 :=
.mark loopBody52_134

def loopBody52_136 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_135

def loopBody52_137 : HolLoopProg 64 :=
.mark loopBody52_136

def loopBody52_138 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_137

def loopBody52_139 : HolLoopProg 64 :=
.mark loopBody52_138

def loopBody52_140 : HolLoopProg 64 :=
.seq loopBody52_1 loopBody52_139

def loopBody52_141 : HolLoopProg 64 :=
.mark loopBody52_140

def output52 : Nat × List Nat × HolLoopProg 64 :=
  (116, [0, 1, 2, 3, 4, 5, 6, 7], loopBody52_141)
end InitECandidate.Proofs.FrontendStages.Loop
