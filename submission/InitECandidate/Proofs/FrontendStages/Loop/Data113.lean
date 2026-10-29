import InitECandidate.Proofs.FrontendStages.Loop.Translate97
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody113_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody113_1 : HolLoopProg 64 :=
.mark loopBody113_0

def loopBody113_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody113_3 : HolLoopProg 64 :=
.mark loopBody113_2

def loopBody113_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody113_5 : HolLoopProg 64 :=
.mark loopBody113_4

def loopBody113_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody113_7 : HolLoopProg 64 :=
.mark loopBody113_6

def loopBody113_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody113_5 loopBody113_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody113_9 : HolLoopProg 64 :=
.mark loopBody113_8

def loopBody113_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody113_11 : HolLoopProg 64 :=
.mark loopBody113_10

def loopBody113_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody113_13 : HolLoopProg 64 :=
.mark loopBody113_12

def loopBody113_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 128#64)

def loopBody113_15 : HolLoopProg 64 :=
.mark loopBody113_14

def loopBody113_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 2 3

def loopBody113_17 : HolLoopProg 64 :=
.mark loopBody113_16

def loopBody113_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody113_19 : HolLoopProg 64 :=
.mark loopBody113_18

def loopBody113_20 : HolLoopProg 64 :=
.seq loopBody113_17 loopBody113_19

def loopBody113_21 : HolLoopProg 64 :=
.mark loopBody113_20

def loopBody113_22 : HolLoopProg 64 :=
.seq loopBody113_15 loopBody113_21

def loopBody113_23 : HolLoopProg 64 :=
.mark loopBody113_22

def loopBody113_24 : HolLoopProg 64 :=
.seq loopBody113_13 loopBody113_23

def loopBody113_25 : HolLoopProg 64 :=
.mark loopBody113_24

def loopBody113_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody113_27 : HolLoopProg 64 :=
.mark loopBody113_26

def loopBody113_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody113_29 : HolLoopProg 64 :=
.mark loopBody113_28

def loopBody113_30 : HolLoopProg 64 :=
.seq loopBody113_29 loopBody113_19

def loopBody113_31 : HolLoopProg 64 :=
.mark loopBody113_30

def loopBody113_32 : HolLoopProg 64 :=
.seq loopBody113_27 loopBody113_31

def loopBody113_33 : HolLoopProg 64 :=
.mark loopBody113_32

def loopBody113_34 : HolLoopProg 64 :=
.seq loopBody113_25 loopBody113_33

def loopBody113_35 : HolLoopProg 64 :=
.mark loopBody113_34

def loopBody113_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody113_35 loopBody113_19 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody113_37 : HolLoopProg 64 :=
.mark loopBody113_36

def loopBody113_38 : HolLoopProg 64 :=
.seq loopBody113_37 loopBody113_19

def loopBody113_39 : HolLoopProg 64 :=
.mark loopBody113_38

def loopBody113_40 : HolLoopProg 64 :=
.seq loopBody113_11 loopBody113_39

def loopBody113_41 : HolLoopProg 64 :=
.mark loopBody113_40

def loopBody113_42 : HolLoopProg 64 :=
.seq loopBody113_9 loopBody113_41

def loopBody113_43 : HolLoopProg 64 :=
.mark loopBody113_42

def loopBody113_44 : HolLoopProg 64 :=
.seq loopBody113_3 loopBody113_43

def loopBody113_45 : HolLoopProg 64 :=
.mark loopBody113_44

def loopBody113_46 : HolLoopProg 64 :=
.seq loopBody113_1 loopBody113_45

def loopBody113_47 : HolLoopProg 64 :=
.mark loopBody113_46

def loopBody113_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 128#64)

def loopBody113_49 : HolLoopProg 64 :=
.mark loopBody113_48

def loopBody113_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody113_5 loopBody113_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody113_51 : HolLoopProg 64 :=
.mark loopBody113_50

def loopBody113_52 : HolLoopProg 64 :=
.seq loopBody113_1 loopBody113_21

def loopBody113_53 : HolLoopProg 64 :=
.mark loopBody113_52

def loopBody113_54 : HolLoopProg 64 :=
.seq loopBody113_13 loopBody113_53

def loopBody113_55 : HolLoopProg 64 :=
.mark loopBody113_54

def loopBody113_56 : HolLoopProg 64 :=
.seq loopBody113_55 loopBody113_33

def loopBody113_57 : HolLoopProg 64 :=
.mark loopBody113_56

def loopBody113_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody113_57 loopBody113_19 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody113_59 : HolLoopProg 64 :=
.mark loopBody113_58

def loopBody113_60 : HolLoopProg 64 :=
.seq loopBody113_59 loopBody113_19

def loopBody113_61 : HolLoopProg 64 :=
.mark loopBody113_60

def loopBody113_62 : HolLoopProg 64 :=
.seq loopBody113_11 loopBody113_61

def loopBody113_63 : HolLoopProg 64 :=
.mark loopBody113_62

def loopBody113_64 : HolLoopProg 64 :=
.seq loopBody113_51 loopBody113_63

def loopBody113_65 : HolLoopProg 64 :=
.mark loopBody113_64

def loopBody113_66 : HolLoopProg 64 :=
.seq loopBody113_49 loopBody113_65

def loopBody113_67 : HolLoopProg 64 :=
.mark loopBody113_66

def loopBody113_68 : HolLoopProg 64 :=
.seq loopBody113_1 loopBody113_67

def loopBody113_69 : HolLoopProg 64 :=
.mark loopBody113_68

def loopBody113_70 : HolLoopProg 64 :=
.seq loopBody113_47 loopBody113_69

def loopBody113_71 : HolLoopProg 64 :=
.mark loopBody113_70

def loopBody113_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody113_73 : HolLoopProg 64 :=
.mark loopBody113_72

def loopBody113_74 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 172) ([3]) (some (3, loopBody113_73, loopBody113_19, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody113_75 : HolLoopProg 64 :=
.mark loopBody113_74

def loopBody113_76 : HolLoopProg 64 :=
.seq loopBody113_75 loopBody113_19

def loopBody113_77 : HolLoopProg 64 :=
.mark loopBody113_76

def loopBody113_78 : HolLoopProg 64 :=
.seq loopBody113_1 loopBody113_77

def loopBody113_79 : HolLoopProg 64 :=
.mark loopBody113_78

def loopBody113_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody113_81 : HolLoopProg 64 :=
.mark loopBody113_80

def loopBody113_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 128#64, Flapjack.HolLoopExp.var 2])

def loopBody113_83 : HolLoopProg 64 :=
.mark loopBody113_82

def loopBody113_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 3 4

def loopBody113_85 : HolLoopProg 64 :=
.mark loopBody113_84

def loopBody113_86 : HolLoopProg 64 :=
.seq loopBody113_85 loopBody113_19

def loopBody113_87 : HolLoopProg 64 :=
.mark loopBody113_86

def loopBody113_88 : HolLoopProg 64 :=
.seq loopBody113_83 loopBody113_87

def loopBody113_89 : HolLoopProg 64 :=
.mark loopBody113_88

def loopBody113_90 : HolLoopProg 64 :=
.seq loopBody113_81 loopBody113_89

def loopBody113_91 : HolLoopProg 64 :=
.mark loopBody113_90

def loopBody113_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody113_93 : HolLoopProg 64 :=
.mark loopBody113_92

def loopBody113_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody113_95 : HolLoopProg 64 :=
.mark loopBody113_94

def loopBody113_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody113_97 : HolLoopProg 64 :=
.mark loopBody113_96

def loopBody113_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody113_99 : HolLoopProg 64 :=
.mark loopBody113_98

def loopBody113_100 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 173) ([4, 5, 6]) (some (4, loopBody113_99, loopBody113_19, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody113_101 : HolLoopProg 64 :=
.mark loopBody113_100

def loopBody113_102 : HolLoopProg 64 :=
.seq loopBody113_101 loopBody113_19

def loopBody113_103 : HolLoopProg 64 :=
.mark loopBody113_102

def loopBody113_104 : HolLoopProg 64 :=
.seq loopBody113_97 loopBody113_103

def loopBody113_105 : HolLoopProg 64 :=
.mark loopBody113_104

def loopBody113_106 : HolLoopProg 64 :=
.seq loopBody113_95 loopBody113_105

def loopBody113_107 : HolLoopProg 64 :=
.mark loopBody113_106

def loopBody113_108 : HolLoopProg 64 :=
.seq loopBody113_93 loopBody113_107

def loopBody113_109 : HolLoopProg 64 :=
.mark loopBody113_108

def loopBody113_110 : HolLoopProg 64 :=
.seq loopBody113_19 loopBody113_109

def loopBody113_111 : HolLoopProg 64 :=
.mark loopBody113_110

def loopBody113_112 : HolLoopProg 64 :=
.seq loopBody113_19 loopBody113_111

def loopBody113_113 : HolLoopProg 64 :=
.mark loopBody113_112

def loopBody113_114 : HolLoopProg 64 :=
.seq loopBody113_91 loopBody113_113

def loopBody113_115 : HolLoopProg 64 :=
.mark loopBody113_114

def loopBody113_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 1#64, Flapjack.HolLoopExp.var 2])

def loopBody113_117 : HolLoopProg 64 :=
.mark loopBody113_116

def loopBody113_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody113_119 : HolLoopProg 64 :=
.mark loopBody113_118

def loopBody113_120 : HolLoopProg 64 :=
.seq loopBody113_119 loopBody113_19

def loopBody113_121 : HolLoopProg 64 :=
.mark loopBody113_120

def loopBody113_122 : HolLoopProg 64 :=
.seq loopBody113_117 loopBody113_121

def loopBody113_123 : HolLoopProg 64 :=
.mark loopBody113_122

def loopBody113_124 : HolLoopProg 64 :=
.seq loopBody113_115 loopBody113_123

def loopBody113_125 : HolLoopProg 64 :=
.mark loopBody113_124

def loopBody113_126 : HolLoopProg 64 :=
.seq loopBody113_79 loopBody113_125

def loopBody113_127 : HolLoopProg 64 :=
.mark loopBody113_126

def loopBody113_128 : HolLoopProg 64 :=
.seq loopBody113_19 loopBody113_127

def loopBody113_129 : HolLoopProg 64 :=
.mark loopBody113_128

def loopBody113_130 : HolLoopProg 64 :=
.seq loopBody113_19 loopBody113_129

def loopBody113_131 : HolLoopProg 64 :=
.mark loopBody113_130

def loopBody113_132 : HolLoopProg 64 :=
.seq loopBody113_71 loopBody113_131

def loopBody113_133 : HolLoopProg 64 :=
.mark loopBody113_132

def output113 : Nat × List Nat × HolLoopProg 64 :=
  (177, [0, 1], loopBody113_133)
end InitECandidate.Proofs.FrontendStages.Loop
