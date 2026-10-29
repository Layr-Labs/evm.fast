import InitECandidate.Proofs.FrontendStages.Loop.Translate358
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody374_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody374_1 : HolLoopProg 64 :=
.mark loopBody374_0

def loopBody374_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 20#64)

def loopBody374_3 : HolLoopProg 64 :=
.mark loopBody374_2

def loopBody374_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 64#64)

def loopBody374_5 : HolLoopProg 64 :=
.mark loopBody374_4

def loopBody374_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody374_7 : HolLoopProg 64 :=
.mark loopBody374_6

def loopBody374_8 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 182) ([2, 3]) (some (2, loopBody374_7, loopBody374_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody374_9 : HolLoopProg 64 :=
.mark loopBody374_8

def loopBody374_10 : HolLoopProg 64 :=
.seq loopBody374_9 loopBody374_1

def loopBody374_11 : HolLoopProg 64 :=
.mark loopBody374_10

def loopBody374_12 : HolLoopProg 64 :=
.seq loopBody374_5 loopBody374_11

def loopBody374_13 : HolLoopProg 64 :=
.mark loopBody374_12

def loopBody374_14 : HolLoopProg 64 :=
.seq loopBody374_3 loopBody374_13

def loopBody374_15 : HolLoopProg 64 :=
.mark loopBody374_14

def loopBody374_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 216#64])

def loopBody374_17 : HolLoopProg 64 :=
.mark loopBody374_16

def loopBody374_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody374_19 : HolLoopProg 64 :=
.mark loopBody374_18

def loopBody374_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody374_21 : HolLoopProg 64 :=
.mark loopBody374_20

def loopBody374_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 2) 4

def loopBody374_23 : HolLoopProg 64 :=
.mark loopBody374_22

def loopBody374_24 : HolLoopProg 64 :=
.seq loopBody374_23 loopBody374_1

def loopBody374_25 : HolLoopProg 64 :=
.mark loopBody374_24

def loopBody374_26 : HolLoopProg 64 :=
.seq loopBody374_21 loopBody374_25

def loopBody374_27 : HolLoopProg 64 :=
.mark loopBody374_26

def loopBody374_28 : HolLoopProg 64 :=
.seq loopBody374_27 loopBody374_1

def loopBody374_29 : HolLoopProg 64 :=
.mark loopBody374_28

def loopBody374_30 : HolLoopProg 64 :=
.seq loopBody374_19 loopBody374_29

def loopBody374_31 : HolLoopProg 64 :=
.mark loopBody374_30

def loopBody374_32 : HolLoopProg 64 :=
.seq loopBody374_1 loopBody374_31

def loopBody374_33 : HolLoopProg 64 :=
.mark loopBody374_32

def loopBody374_34 : HolLoopProg 64 :=
.seq loopBody374_17 loopBody374_33

def loopBody374_35 : HolLoopProg 64 :=
.mark loopBody374_34

def loopBody374_36 : HolLoopProg 64 :=
.seq loopBody374_1 loopBody374_35

def loopBody374_37 : HolLoopProg 64 :=
.mark loopBody374_36

def loopBody374_38 : HolLoopProg 64 :=
.seq loopBody374_15 loopBody374_37

def loopBody374_39 : HolLoopProg 64 :=
.mark loopBody374_38

def loopBody374_40 : HolLoopProg 64 :=
.seq loopBody374_1 loopBody374_39

def loopBody374_41 : HolLoopProg 64 :=
.mark loopBody374_40

def loopBody374_42 : HolLoopProg 64 :=
.seq loopBody374_1 loopBody374_41

def loopBody374_43 : HolLoopProg 64 :=
.mark loopBody374_42

def loopBody374_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 28#64)

def loopBody374_45 : HolLoopProg 64 :=
.mark loopBody374_44

def loopBody374_46 : HolLoopProg 64 :=
.seq loopBody374_45 loopBody374_13

def loopBody374_47 : HolLoopProg 64 :=
.mark loopBody374_46

def loopBody374_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 232#64])

def loopBody374_49 : HolLoopProg 64 :=
.mark loopBody374_48

def loopBody374_50 : HolLoopProg 64 :=
.seq loopBody374_49 loopBody374_33

def loopBody374_51 : HolLoopProg 64 :=
.mark loopBody374_50

def loopBody374_52 : HolLoopProg 64 :=
.seq loopBody374_1 loopBody374_51

def loopBody374_53 : HolLoopProg 64 :=
.mark loopBody374_52

def loopBody374_54 : HolLoopProg 64 :=
.seq loopBody374_47 loopBody374_53

def loopBody374_55 : HolLoopProg 64 :=
.mark loopBody374_54

def loopBody374_56 : HolLoopProg 64 :=
.seq loopBody374_1 loopBody374_55

def loopBody374_57 : HolLoopProg 64 :=
.mark loopBody374_56

def loopBody374_58 : HolLoopProg 64 :=
.seq loopBody374_1 loopBody374_57

def loopBody374_59 : HolLoopProg 64 :=
.mark loopBody374_58

def loopBody374_60 : HolLoopProg 64 :=
.seq loopBody374_43 loopBody374_59

def loopBody374_61 : HolLoopProg 64 :=
.mark loopBody374_60

def loopBody374_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 60#64)

def loopBody374_63 : HolLoopProg 64 :=
.mark loopBody374_62

def loopBody374_64 : HolLoopProg 64 :=
.seq loopBody374_63 loopBody374_13

def loopBody374_65 : HolLoopProg 64 :=
.mark loopBody374_64

def loopBody374_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 240#64])

def loopBody374_67 : HolLoopProg 64 :=
.mark loopBody374_66

def loopBody374_68 : HolLoopProg 64 :=
.seq loopBody374_67 loopBody374_33

def loopBody374_69 : HolLoopProg 64 :=
.mark loopBody374_68

def loopBody374_70 : HolLoopProg 64 :=
.seq loopBody374_1 loopBody374_69

def loopBody374_71 : HolLoopProg 64 :=
.mark loopBody374_70

def loopBody374_72 : HolLoopProg 64 :=
.seq loopBody374_65 loopBody374_71

def loopBody374_73 : HolLoopProg 64 :=
.mark loopBody374_72

def loopBody374_74 : HolLoopProg 64 :=
.seq loopBody374_1 loopBody374_73

def loopBody374_75 : HolLoopProg 64 :=
.mark loopBody374_74

def loopBody374_76 : HolLoopProg 64 :=
.seq loopBody374_1 loopBody374_75

def loopBody374_77 : HolLoopProg 64 :=
.mark loopBody374_76

def loopBody374_78 : HolLoopProg 64 :=
.seq loopBody374_61 loopBody374_77

def loopBody374_79 : HolLoopProg 64 :=
.mark loopBody374_78

def loopBody374_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 64#64)

def loopBody374_81 : HolLoopProg 64 :=
.mark loopBody374_80

def loopBody374_82 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 68) ([2]) (some (2, loopBody374_7, loopBody374_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody374_83 : HolLoopProg 64 :=
.mark loopBody374_82

def loopBody374_84 : HolLoopProg 64 :=
.seq loopBody374_83 loopBody374_1

def loopBody374_85 : HolLoopProg 64 :=
.mark loopBody374_84

def loopBody374_86 : HolLoopProg 64 :=
.seq loopBody374_81 loopBody374_85

def loopBody374_87 : HolLoopProg 64 :=
.mark loopBody374_86

def loopBody374_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 248#64])

def loopBody374_89 : HolLoopProg 64 :=
.mark loopBody374_88

def loopBody374_90 : HolLoopProg 64 :=
.seq loopBody374_89 loopBody374_33

def loopBody374_91 : HolLoopProg 64 :=
.mark loopBody374_90

def loopBody374_92 : HolLoopProg 64 :=
.seq loopBody374_1 loopBody374_91

def loopBody374_93 : HolLoopProg 64 :=
.mark loopBody374_92

def loopBody374_94 : HolLoopProg 64 :=
.seq loopBody374_87 loopBody374_93

def loopBody374_95 : HolLoopProg 64 :=
.mark loopBody374_94

def loopBody374_96 : HolLoopProg 64 :=
.seq loopBody374_1 loopBody374_95

def loopBody374_97 : HolLoopProg 64 :=
.mark loopBody374_96

def loopBody374_98 : HolLoopProg 64 :=
.seq loopBody374_1 loopBody374_97

def loopBody374_99 : HolLoopProg 64 :=
.mark loopBody374_98

def loopBody374_100 : HolLoopProg 64 :=
.seq loopBody374_79 loopBody374_99

def loopBody374_101 : HolLoopProg 64 :=
.mark loopBody374_100

def loopBody374_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 224#64])

def loopBody374_103 : HolLoopProg 64 :=
.mark loopBody374_102

def loopBody374_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody374_105 : HolLoopProg 64 :=
.mark loopBody374_104

def loopBody374_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody374_107 : HolLoopProg 64 :=
.mark loopBody374_106

def loopBody374_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 3

def loopBody374_109 : HolLoopProg 64 :=
.mark loopBody374_108

def loopBody374_110 : HolLoopProg 64 :=
.seq loopBody374_109 loopBody374_1

def loopBody374_111 : HolLoopProg 64 :=
.mark loopBody374_110

def loopBody374_112 : HolLoopProg 64 :=
.seq loopBody374_107 loopBody374_111

def loopBody374_113 : HolLoopProg 64 :=
.mark loopBody374_112

def loopBody374_114 : HolLoopProg 64 :=
.seq loopBody374_113 loopBody374_1

def loopBody374_115 : HolLoopProg 64 :=
.mark loopBody374_114

def loopBody374_116 : HolLoopProg 64 :=
.seq loopBody374_105 loopBody374_115

def loopBody374_117 : HolLoopProg 64 :=
.mark loopBody374_116

def loopBody374_118 : HolLoopProg 64 :=
.seq loopBody374_1 loopBody374_117

def loopBody374_119 : HolLoopProg 64 :=
.mark loopBody374_118

def loopBody374_120 : HolLoopProg 64 :=
.seq loopBody374_103 loopBody374_119

def loopBody374_121 : HolLoopProg 64 :=
.mark loopBody374_120

def loopBody374_122 : HolLoopProg 64 :=
.seq loopBody374_1 loopBody374_121

def loopBody374_123 : HolLoopProg 64 :=
.mark loopBody374_122

def loopBody374_124 : HolLoopProg 64 :=
.seq loopBody374_101 loopBody374_123

def loopBody374_125 : HolLoopProg 64 :=
.mark loopBody374_124

def loopBody374_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody374_127 : HolLoopProg 64 :=
.mark loopBody374_126

def loopBody374_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody374_129 : HolLoopProg 64 :=
.mark loopBody374_128

def loopBody374_130 : HolLoopProg 64 :=
.seq loopBody374_129 loopBody374_1

def loopBody374_131 : HolLoopProg 64 :=
.mark loopBody374_130

def loopBody374_132 : HolLoopProg 64 :=
.seq loopBody374_127 loopBody374_131

def loopBody374_133 : HolLoopProg 64 :=
.mark loopBody374_132

def loopBody374_134 : HolLoopProg 64 :=
.seq loopBody374_125 loopBody374_133

def loopBody374_135 : HolLoopProg 64 :=
.mark loopBody374_134

def output374 : Nat × List Nat × HolLoopProg 64 :=
  (438, [], loopBody374_135)
end InitECandidate.Proofs.FrontendStages.Loop
