import InitECandidate.Proofs.FrontendStages.Loop.Translate35
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody51_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody51_1 : HolLoopProg 64 :=
.mark loopBody51_0

def loopBody51_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 0)

def loopBody51_3 : HolLoopProg 64 :=
.mark loopBody51_2

def loopBody51_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 4)

def loopBody51_5 : HolLoopProg 64 :=
.mark loopBody51_4

def loopBody51_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody51_7 : HolLoopProg 64 :=
.mark loopBody51_6

def loopBody51_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [8, 9] Flapjack.PrimOp.addCarry [10, 11, 12]

def loopBody51_9 : HolLoopProg 64 :=
.mark loopBody51_8

def loopBody51_10 : HolLoopProg 64 :=
.seq loopBody51_7 loopBody51_9

def loopBody51_11 : HolLoopProg 64 :=
.mark loopBody51_10

def loopBody51_12 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_11

def loopBody51_13 : HolLoopProg 64 :=
.mark loopBody51_12

def loopBody51_14 : HolLoopProg 64 :=
.seq loopBody51_5 loopBody51_13

def loopBody51_15 : HolLoopProg 64 :=
.mark loopBody51_14

def loopBody51_16 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_15

def loopBody51_17 : HolLoopProg 64 :=
.mark loopBody51_16

def loopBody51_18 : HolLoopProg 64 :=
.seq loopBody51_3 loopBody51_17

def loopBody51_19 : HolLoopProg 64 :=
.mark loopBody51_18

def loopBody51_20 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_19

def loopBody51_21 : HolLoopProg 64 :=
.mark loopBody51_20

def loopBody51_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 1)

def loopBody51_23 : HolLoopProg 64 :=
.mark loopBody51_22

def loopBody51_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 5)

def loopBody51_25 : HolLoopProg 64 :=
.mark loopBody51_24

def loopBody51_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody51_27 : HolLoopProg 64 :=
.mark loopBody51_26

def loopBody51_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [10, 11] Flapjack.PrimOp.addCarry [12, 13, 14]

def loopBody51_29 : HolLoopProg 64 :=
.mark loopBody51_28

def loopBody51_30 : HolLoopProg 64 :=
.seq loopBody51_27 loopBody51_29

def loopBody51_31 : HolLoopProg 64 :=
.mark loopBody51_30

def loopBody51_32 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_31

def loopBody51_33 : HolLoopProg 64 :=
.mark loopBody51_32

def loopBody51_34 : HolLoopProg 64 :=
.seq loopBody51_25 loopBody51_33

def loopBody51_35 : HolLoopProg 64 :=
.mark loopBody51_34

def loopBody51_36 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_35

def loopBody51_37 : HolLoopProg 64 :=
.mark loopBody51_36

def loopBody51_38 : HolLoopProg 64 :=
.seq loopBody51_23 loopBody51_37

def loopBody51_39 : HolLoopProg 64 :=
.mark loopBody51_38

def loopBody51_40 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_39

def loopBody51_41 : HolLoopProg 64 :=
.mark loopBody51_40

def loopBody51_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody51_43 : HolLoopProg 64 :=
.mark loopBody51_42

def loopBody51_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 6)

def loopBody51_45 : HolLoopProg 64 :=
.mark loopBody51_44

def loopBody51_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 11)

def loopBody51_47 : HolLoopProg 64 :=
.mark loopBody51_46

def loopBody51_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [12, 13] Flapjack.PrimOp.addCarry [14, 15, 16]

def loopBody51_49 : HolLoopProg 64 :=
.mark loopBody51_48

def loopBody51_50 : HolLoopProg 64 :=
.seq loopBody51_47 loopBody51_49

def loopBody51_51 : HolLoopProg 64 :=
.mark loopBody51_50

def loopBody51_52 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_51

def loopBody51_53 : HolLoopProg 64 :=
.mark loopBody51_52

def loopBody51_54 : HolLoopProg 64 :=
.seq loopBody51_45 loopBody51_53

def loopBody51_55 : HolLoopProg 64 :=
.mark loopBody51_54

def loopBody51_56 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_55

def loopBody51_57 : HolLoopProg 64 :=
.mark loopBody51_56

def loopBody51_58 : HolLoopProg 64 :=
.seq loopBody51_43 loopBody51_57

def loopBody51_59 : HolLoopProg 64 :=
.mark loopBody51_58

def loopBody51_60 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_59

def loopBody51_61 : HolLoopProg 64 :=
.mark loopBody51_60

def loopBody51_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 3)

def loopBody51_63 : HolLoopProg 64 :=
.mark loopBody51_62

def loopBody51_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 7)

def loopBody51_65 : HolLoopProg 64 :=
.mark loopBody51_64

def loopBody51_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 13)

def loopBody51_67 : HolLoopProg 64 :=
.mark loopBody51_66

def loopBody51_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [14, 15] Flapjack.PrimOp.addCarry [16, 17, 18]

def loopBody51_69 : HolLoopProg 64 :=
.mark loopBody51_68

def loopBody51_70 : HolLoopProg 64 :=
.seq loopBody51_67 loopBody51_69

def loopBody51_71 : HolLoopProg 64 :=
.mark loopBody51_70

def loopBody51_72 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_71

def loopBody51_73 : HolLoopProg 64 :=
.mark loopBody51_72

def loopBody51_74 : HolLoopProg 64 :=
.seq loopBody51_65 loopBody51_73

def loopBody51_75 : HolLoopProg 64 :=
.mark loopBody51_74

def loopBody51_76 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_75

def loopBody51_77 : HolLoopProg 64 :=
.mark loopBody51_76

def loopBody51_78 : HolLoopProg 64 :=
.seq loopBody51_63 loopBody51_77

def loopBody51_79 : HolLoopProg 64 :=
.mark loopBody51_78

def loopBody51_80 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_79

def loopBody51_81 : HolLoopProg 64 :=
.mark loopBody51_80

def loopBody51_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 8)

def loopBody51_83 : HolLoopProg 64 :=
.mark loopBody51_82

def loopBody51_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 10)

def loopBody51_85 : HolLoopProg 64 :=
.mark loopBody51_84

def loopBody51_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 12)

def loopBody51_87 : HolLoopProg 64 :=
.mark loopBody51_86

def loopBody51_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 14)

def loopBody51_89 : HolLoopProg 64 :=
.mark loopBody51_88

def loopBody51_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 15)

def loopBody51_91 : HolLoopProg 64 :=
.mark loopBody51_90

def loopBody51_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [16, 17, 18, 19, 20]

def loopBody51_93 : HolLoopProg 64 :=
.mark loopBody51_92

def loopBody51_94 : HolLoopProg 64 :=
.seq loopBody51_93 loopBody51_1

def loopBody51_95 : HolLoopProg 64 :=
.mark loopBody51_94

def loopBody51_96 : HolLoopProg 64 :=
.seq loopBody51_91 loopBody51_95

def loopBody51_97 : HolLoopProg 64 :=
.mark loopBody51_96

def loopBody51_98 : HolLoopProg 64 :=
.seq loopBody51_89 loopBody51_97

def loopBody51_99 : HolLoopProg 64 :=
.mark loopBody51_98

def loopBody51_100 : HolLoopProg 64 :=
.seq loopBody51_87 loopBody51_99

def loopBody51_101 : HolLoopProg 64 :=
.mark loopBody51_100

def loopBody51_102 : HolLoopProg 64 :=
.seq loopBody51_85 loopBody51_101

def loopBody51_103 : HolLoopProg 64 :=
.mark loopBody51_102

def loopBody51_104 : HolLoopProg 64 :=
.seq loopBody51_83 loopBody51_103

def loopBody51_105 : HolLoopProg 64 :=
.mark loopBody51_104

def loopBody51_106 : HolLoopProg 64 :=
.seq loopBody51_81 loopBody51_105

def loopBody51_107 : HolLoopProg 64 :=
.mark loopBody51_106

def loopBody51_108 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_107

def loopBody51_109 : HolLoopProg 64 :=
.mark loopBody51_108

def loopBody51_110 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_109

def loopBody51_111 : HolLoopProg 64 :=
.mark loopBody51_110

def loopBody51_112 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_111

def loopBody51_113 : HolLoopProg 64 :=
.mark loopBody51_112

def loopBody51_114 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_113

def loopBody51_115 : HolLoopProg 64 :=
.mark loopBody51_114

def loopBody51_116 : HolLoopProg 64 :=
.seq loopBody51_61 loopBody51_115

def loopBody51_117 : HolLoopProg 64 :=
.mark loopBody51_116

def loopBody51_118 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_117

def loopBody51_119 : HolLoopProg 64 :=
.mark loopBody51_118

def loopBody51_120 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_119

def loopBody51_121 : HolLoopProg 64 :=
.mark loopBody51_120

def loopBody51_122 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_121

def loopBody51_123 : HolLoopProg 64 :=
.mark loopBody51_122

def loopBody51_124 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_123

def loopBody51_125 : HolLoopProg 64 :=
.mark loopBody51_124

def loopBody51_126 : HolLoopProg 64 :=
.seq loopBody51_41 loopBody51_125

def loopBody51_127 : HolLoopProg 64 :=
.mark loopBody51_126

def loopBody51_128 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_127

def loopBody51_129 : HolLoopProg 64 :=
.mark loopBody51_128

def loopBody51_130 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_129

def loopBody51_131 : HolLoopProg 64 :=
.mark loopBody51_130

def loopBody51_132 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_131

def loopBody51_133 : HolLoopProg 64 :=
.mark loopBody51_132

def loopBody51_134 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_133

def loopBody51_135 : HolLoopProg 64 :=
.mark loopBody51_134

def loopBody51_136 : HolLoopProg 64 :=
.seq loopBody51_21 loopBody51_135

def loopBody51_137 : HolLoopProg 64 :=
.mark loopBody51_136

def loopBody51_138 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_137

def loopBody51_139 : HolLoopProg 64 :=
.mark loopBody51_138

def loopBody51_140 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_139

def loopBody51_141 : HolLoopProg 64 :=
.mark loopBody51_140

def loopBody51_142 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_141

def loopBody51_143 : HolLoopProg 64 :=
.mark loopBody51_142

def loopBody51_144 : HolLoopProg 64 :=
.seq loopBody51_1 loopBody51_143

def loopBody51_145 : HolLoopProg 64 :=
.mark loopBody51_144

def output51 : Nat × List Nat × HolLoopProg 64 :=
  (115, [0, 1, 2, 3, 4, 5, 6, 7], loopBody51_145)
end InitECandidate.Proofs.FrontendStages.Loop
