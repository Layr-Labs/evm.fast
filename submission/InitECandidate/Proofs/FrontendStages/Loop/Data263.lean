import InitECandidate.Proofs.FrontendStages.Loop.Translate247
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody263_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody263_1 : HolLoopProg 64 :=
.mark loopBody263_0

def loopBody263_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody263_3 : HolLoopProg 64 :=
.mark loopBody263_2

def loopBody263_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody263_5 : HolLoopProg 64 :=
.mark loopBody263_4

def loopBody263_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody263_7 : HolLoopProg 64 :=
.mark loopBody263_6

def loopBody263_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.RegImm.reg 3) loopBody263_5 loopBody263_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody263_9 : HolLoopProg 64 :=
.mark loopBody263_8

def loopBody263_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody263_11 : HolLoopProg 64 :=
.mark loopBody263_10

def loopBody263_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 1#64)

def loopBody263_13 : HolLoopProg 64 :=
.mark loopBody263_12

def loopBody263_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody263_15 : HolLoopProg 64 :=
.mark loopBody263_14

def loopBody263_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody263_17 : HolLoopProg 64 :=
.mark loopBody263_16

def loopBody263_18 : HolLoopProg 64 :=
.seq loopBody263_15 loopBody263_17

def loopBody263_19 : HolLoopProg 64 :=
.mark loopBody263_18

def loopBody263_20 : HolLoopProg 64 :=
.seq loopBody263_13 loopBody263_19

def loopBody263_21 : HolLoopProg 64 :=
.mark loopBody263_20

def loopBody263_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody263_21 loopBody263_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody263_23 : HolLoopProg 64 :=
.mark loopBody263_22

def loopBody263_24 : HolLoopProg 64 :=
.seq loopBody263_23 loopBody263_17

def loopBody263_25 : HolLoopProg 64 :=
.mark loopBody263_24

def loopBody263_26 : HolLoopProg 64 :=
.seq loopBody263_11 loopBody263_25

def loopBody263_27 : HolLoopProg 64 :=
.mark loopBody263_26

def loopBody263_28 : HolLoopProg 64 :=
.seq loopBody263_9 loopBody263_27

def loopBody263_29 : HolLoopProg 64 :=
.mark loopBody263_28

def loopBody263_30 : HolLoopProg 64 :=
.seq loopBody263_3 loopBody263_29

def loopBody263_31 : HolLoopProg 64 :=
.mark loopBody263_30

def loopBody263_32 : HolLoopProg 64 :=
.seq loopBody263_1 loopBody263_31

def loopBody263_33 : HolLoopProg 64 :=
.mark loopBody263_32

def loopBody263_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody263_35 : HolLoopProg 64 :=
.mark loopBody263_34

def loopBody263_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 33#64)

def loopBody263_37 : HolLoopProg 64 :=
.mark loopBody263_36

def loopBody263_38 : HolLoopProg 64 :=
.seq loopBody263_37 loopBody263_19

def loopBody263_39 : HolLoopProg 64 :=
.mark loopBody263_38

def loopBody263_40 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody263_39 loopBody263_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody263_41 : HolLoopProg 64 :=
.mark loopBody263_40

def loopBody263_42 : HolLoopProg 64 :=
.seq loopBody263_41 loopBody263_17

def loopBody263_43 : HolLoopProg 64 :=
.mark loopBody263_42

def loopBody263_44 : HolLoopProg 64 :=
.seq loopBody263_11 loopBody263_43

def loopBody263_45 : HolLoopProg 64 :=
.mark loopBody263_44

def loopBody263_46 : HolLoopProg 64 :=
.seq loopBody263_9 loopBody263_45

def loopBody263_47 : HolLoopProg 64 :=
.mark loopBody263_46

def loopBody263_48 : HolLoopProg 64 :=
.seq loopBody263_3 loopBody263_47

def loopBody263_49 : HolLoopProg 64 :=
.mark loopBody263_48

def loopBody263_50 : HolLoopProg 64 :=
.seq loopBody263_35 loopBody263_49

def loopBody263_51 : HolLoopProg 64 :=
.mark loopBody263_50

def loopBody263_52 : HolLoopProg 64 :=
.seq loopBody263_33 loopBody263_51

def loopBody263_53 : HolLoopProg 64 :=
.mark loopBody263_52

def loopBody263_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody263_55 : HolLoopProg 64 :=
.mark loopBody263_54

def loopBody263_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 13#64)

def loopBody263_57 : HolLoopProg 64 :=
.mark loopBody263_56

def loopBody263_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody263_59 : HolLoopProg 64 :=
.mark loopBody263_58

def loopBody263_60 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 286) ([2]) (some (2, loopBody263_59, loopBody263_17, (Flapjack.Spt.ls PUnit.unit)))

def loopBody263_61 : HolLoopProg 64 :=
.mark loopBody263_60

def loopBody263_62 : HolLoopProg 64 :=
.seq loopBody263_61 loopBody263_17

def loopBody263_63 : HolLoopProg 64 :=
.mark loopBody263_62

def loopBody263_64 : HolLoopProg 64 :=
.seq loopBody263_57 loopBody263_63

def loopBody263_65 : HolLoopProg 64 :=
.mark loopBody263_64

def loopBody263_66 : HolLoopProg 64 :=
.seq loopBody263_17 loopBody263_65

def loopBody263_67 : HolLoopProg 64 :=
.mark loopBody263_66

def loopBody263_68 : HolLoopProg 64 :=
.seq loopBody263_17 loopBody263_67

def loopBody263_69 : HolLoopProg 64 :=
.mark loopBody263_68

def loopBody263_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody263_69 loopBody263_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody263_71 : HolLoopProg 64 :=
.mark loopBody263_70

def loopBody263_72 : HolLoopProg 64 :=
.seq loopBody263_71 loopBody263_17

def loopBody263_73 : HolLoopProg 64 :=
.mark loopBody263_72

def loopBody263_74 : HolLoopProg 64 :=
.seq loopBody263_11 loopBody263_73

def loopBody263_75 : HolLoopProg 64 :=
.mark loopBody263_74

def loopBody263_76 : HolLoopProg 64 :=
.seq loopBody263_9 loopBody263_75

def loopBody263_77 : HolLoopProg 64 :=
.mark loopBody263_76

def loopBody263_78 : HolLoopProg 64 :=
.seq loopBody263_3 loopBody263_77

def loopBody263_79 : HolLoopProg 64 :=
.mark loopBody263_78

def loopBody263_80 : HolLoopProg 64 :=
.seq loopBody263_55 loopBody263_79

def loopBody263_81 : HolLoopProg 64 :=
.mark loopBody263_80

def loopBody263_82 : HolLoopProg 64 :=
.seq loopBody263_53 loopBody263_81

def loopBody263_83 : HolLoopProg 64 :=
.mark loopBody263_82

def loopBody263_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64]))

def loopBody263_85 : HolLoopProg 64 :=
.mark loopBody263_84

def loopBody263_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody263_87 : HolLoopProg 64 :=
.mark loopBody263_86

def loopBody263_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 32#64)

def loopBody263_89 : HolLoopProg 64 :=
.mark loopBody263_88

def loopBody263_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody263_91 : HolLoopProg 64 :=
.mark loopBody263_90

def loopBody263_92 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody263_91 loopBody263_3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody263_93 : HolLoopProg 64 :=
.mark loopBody263_92

def loopBody263_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody263_95 : HolLoopProg 64 :=
.mark loopBody263_94

def loopBody263_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody263_97 : HolLoopProg 64 :=
.mark loopBody263_96

def loopBody263_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody263_99 : HolLoopProg 64 :=
.mark loopBody263_98

def loopBody263_100 : HolLoopProg 64 :=
.seq loopBody263_99 loopBody263_17

def loopBody263_101 : HolLoopProg 64 :=
.mark loopBody263_100

def loopBody263_102 : HolLoopProg 64 :=
.seq loopBody263_97 loopBody263_101

def loopBody263_103 : HolLoopProg 64 :=
.mark loopBody263_102

def loopBody263_104 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody263_103 loopBody263_17 (Flapjack.Spt.ln)

def loopBody263_105 : HolLoopProg 64 :=
.mark loopBody263_104

def loopBody263_106 : HolLoopProg 64 :=
.seq loopBody263_105 loopBody263_17

def loopBody263_107 : HolLoopProg 64 :=
.mark loopBody263_106

def loopBody263_108 : HolLoopProg 64 :=
.seq loopBody263_95 loopBody263_107

def loopBody263_109 : HolLoopProg 64 :=
.mark loopBody263_108

def loopBody263_110 : HolLoopProg 64 :=
.seq loopBody263_93 loopBody263_109

def loopBody263_111 : HolLoopProg 64 :=
.mark loopBody263_110

def loopBody263_112 : HolLoopProg 64 :=
.seq loopBody263_89 loopBody263_111

def loopBody263_113 : HolLoopProg 64 :=
.mark loopBody263_112

def loopBody263_114 : HolLoopProg 64 :=
.seq loopBody263_87 loopBody263_113

def loopBody263_115 : HolLoopProg 64 :=
.mark loopBody263_114

def loopBody263_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 33#64)

def loopBody263_117 : HolLoopProg 64 :=
.mark loopBody263_116

def loopBody263_118 : HolLoopProg 64 :=
.seq loopBody263_117 loopBody263_101

def loopBody263_119 : HolLoopProg 64 :=
.mark loopBody263_118

def loopBody263_120 : HolLoopProg 64 :=
.seq loopBody263_115 loopBody263_119

def loopBody263_121 : HolLoopProg 64 :=
.mark loopBody263_120

def loopBody263_122 : HolLoopProg 64 :=
.seq loopBody263_85 loopBody263_121

def loopBody263_123 : HolLoopProg 64 :=
.mark loopBody263_122

def loopBody263_124 : HolLoopProg 64 :=
.seq loopBody263_17 loopBody263_123

def loopBody263_125 : HolLoopProg 64 :=
.mark loopBody263_124

def loopBody263_126 : HolLoopProg 64 :=
.seq loopBody263_83 loopBody263_125

def loopBody263_127 : HolLoopProg 64 :=
.mark loopBody263_126

def output263 : Nat × List Nat × HolLoopProg 64 :=
  (327, [0], loopBody263_127)
end InitECandidate.Proofs.FrontendStages.Loop
