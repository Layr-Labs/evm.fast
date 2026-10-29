import InitECandidate.Proofs.FrontendStages.Loop.Translate131
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody147_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody147_1 : HolLoopProg 64 :=
.mark loopBody147_0

def loopBody147_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody147_3 : HolLoopProg 64 :=
.mark loopBody147_2

def loopBody147_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody147_5 : HolLoopProg 64 :=
.mark loopBody147_4

def loopBody147_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody147_7 : HolLoopProg 64 :=
.mark loopBody147_6

def loopBody147_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 9 (Flapjack.RegImm.reg 10) loopBody147_5 loopBody147_7 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody147_9 : HolLoopProg 64 :=
.mark loopBody147_8

def loopBody147_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody147_11 : HolLoopProg 64 :=
.mark loopBody147_10

def loopBody147_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 63#64)])

def loopBody147_13 : HolLoopProg 64 :=
.mark loopBody147_12

def loopBody147_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 63#64)])

def loopBody147_15 : HolLoopProg 64 :=
.mark loopBody147_14

def loopBody147_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 63#64)])

def loopBody147_17 : HolLoopProg 64 :=
.mark loopBody147_16

def loopBody147_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 1#64))

def loopBody147_19 : HolLoopProg 64 :=
.mark loopBody147_18

def loopBody147_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8, 9, 10, 11]

def loopBody147_21 : HolLoopProg 64 :=
.mark loopBody147_20

def loopBody147_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody147_23 : HolLoopProg 64 :=
.mark loopBody147_22

def loopBody147_24 : HolLoopProg 64 :=
.seq loopBody147_21 loopBody147_23

def loopBody147_25 : HolLoopProg 64 :=
.mark loopBody147_24

def loopBody147_26 : HolLoopProg 64 :=
.seq loopBody147_19 loopBody147_25

def loopBody147_27 : HolLoopProg 64 :=
.mark loopBody147_26

def loopBody147_28 : HolLoopProg 64 :=
.seq loopBody147_17 loopBody147_27

def loopBody147_29 : HolLoopProg 64 :=
.mark loopBody147_28

def loopBody147_30 : HolLoopProg 64 :=
.seq loopBody147_15 loopBody147_29

def loopBody147_31 : HolLoopProg 64 :=
.mark loopBody147_30

def loopBody147_32 : HolLoopProg 64 :=
.seq loopBody147_13 loopBody147_31

def loopBody147_33 : HolLoopProg 64 :=
.mark loopBody147_32

def loopBody147_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody147_33 loopBody147_23 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody147_35 : HolLoopProg 64 :=
.mark loopBody147_34

def loopBody147_36 : HolLoopProg 64 :=
.seq loopBody147_35 loopBody147_23

def loopBody147_37 : HolLoopProg 64 :=
.mark loopBody147_36

def loopBody147_38 : HolLoopProg 64 :=
.seq loopBody147_11 loopBody147_37

def loopBody147_39 : HolLoopProg 64 :=
.mark loopBody147_38

def loopBody147_40 : HolLoopProg 64 :=
.seq loopBody147_9 loopBody147_39

def loopBody147_41 : HolLoopProg 64 :=
.mark loopBody147_40

def loopBody147_42 : HolLoopProg 64 :=
.seq loopBody147_3 loopBody147_41

def loopBody147_43 : HolLoopProg 64 :=
.mark loopBody147_42

def loopBody147_44 : HolLoopProg 64 :=
.seq loopBody147_1 loopBody147_43

def loopBody147_45 : HolLoopProg 64 :=
.mark loopBody147_44

def loopBody147_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 0)

def loopBody147_47 : HolLoopProg 64 :=
.mark loopBody147_46

def loopBody147_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 1)

def loopBody147_49 : HolLoopProg 64 :=
.mark loopBody147_48

def loopBody147_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 2)

def loopBody147_51 : HolLoopProg 64 :=
.mark loopBody147_50

def loopBody147_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 3)

def loopBody147_53 : HolLoopProg 64 :=
.mark loopBody147_52

def loopBody147_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 4)

def loopBody147_55 : HolLoopProg 64 :=
.mark loopBody147_54

def loopBody147_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 5)

def loopBody147_57 : HolLoopProg 64 :=
.mark loopBody147_56

def loopBody147_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 6)

def loopBody147_59 : HolLoopProg 64 :=
.mark loopBody147_58

def loopBody147_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 7)

def loopBody147_61 : HolLoopProg 64 :=
.mark loopBody147_60

def loopBody147_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody147_63 : HolLoopProg 64 :=
.mark loopBody147_62

def loopBody147_64 : HolLoopProg 64 :=
.call (some ([8, 9, 10, 11, 12], Flapjack.Spt.ln)) (some 115) ([13, 14, 15, 16, 17, 18, 19, 20]) (some (13, loopBody147_63, loopBody147_23, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody147_65 : HolLoopProg 64 :=
.mark loopBody147_64

def loopBody147_66 : HolLoopProg 64 :=
.seq loopBody147_65 loopBody147_23

def loopBody147_67 : HolLoopProg 64 :=
.mark loopBody147_66

def loopBody147_68 : HolLoopProg 64 :=
.seq loopBody147_61 loopBody147_67

def loopBody147_69 : HolLoopProg 64 :=
.mark loopBody147_68

def loopBody147_70 : HolLoopProg 64 :=
.seq loopBody147_59 loopBody147_69

def loopBody147_71 : HolLoopProg 64 :=
.mark loopBody147_70

def loopBody147_72 : HolLoopProg 64 :=
.seq loopBody147_57 loopBody147_71

def loopBody147_73 : HolLoopProg 64 :=
.mark loopBody147_72

def loopBody147_74 : HolLoopProg 64 :=
.seq loopBody147_55 loopBody147_73

def loopBody147_75 : HolLoopProg 64 :=
.mark loopBody147_74

def loopBody147_76 : HolLoopProg 64 :=
.seq loopBody147_53 loopBody147_75

def loopBody147_77 : HolLoopProg 64 :=
.mark loopBody147_76

def loopBody147_78 : HolLoopProg 64 :=
.seq loopBody147_51 loopBody147_77

def loopBody147_79 : HolLoopProg 64 :=
.mark loopBody147_78

def loopBody147_80 : HolLoopProg 64 :=
.seq loopBody147_49 loopBody147_79

def loopBody147_81 : HolLoopProg 64 :=
.mark loopBody147_80

def loopBody147_82 : HolLoopProg 64 :=
.seq loopBody147_47 loopBody147_81

def loopBody147_83 : HolLoopProg 64 :=
.mark loopBody147_82

def loopBody147_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 8) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 9) (Flapjack.HolLoopExp.const 63#64)])

def loopBody147_85 : HolLoopProg 64 :=
.mark loopBody147_84

def loopBody147_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 9) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 10) (Flapjack.HolLoopExp.const 63#64)])

def loopBody147_87 : HolLoopProg 64 :=
.mark loopBody147_86

def loopBody147_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 10) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 11) (Flapjack.HolLoopExp.const 63#64)])

def loopBody147_89 : HolLoopProg 64 :=
.mark loopBody147_88

def loopBody147_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 11) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 12) (Flapjack.HolLoopExp.const 63#64)])

def loopBody147_91 : HolLoopProg 64 :=
.mark loopBody147_90

def loopBody147_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [13, 14, 15, 16]

def loopBody147_93 : HolLoopProg 64 :=
.mark loopBody147_92

def loopBody147_94 : HolLoopProg 64 :=
.seq loopBody147_93 loopBody147_23

def loopBody147_95 : HolLoopProg 64 :=
.mark loopBody147_94

def loopBody147_96 : HolLoopProg 64 :=
.seq loopBody147_91 loopBody147_95

def loopBody147_97 : HolLoopProg 64 :=
.mark loopBody147_96

def loopBody147_98 : HolLoopProg 64 :=
.seq loopBody147_89 loopBody147_97

def loopBody147_99 : HolLoopProg 64 :=
.mark loopBody147_98

def loopBody147_100 : HolLoopProg 64 :=
.seq loopBody147_87 loopBody147_99

def loopBody147_101 : HolLoopProg 64 :=
.mark loopBody147_100

def loopBody147_102 : HolLoopProg 64 :=
.seq loopBody147_85 loopBody147_101

def loopBody147_103 : HolLoopProg 64 :=
.mark loopBody147_102

def loopBody147_104 : HolLoopProg 64 :=
.seq loopBody147_83 loopBody147_103

def loopBody147_105 : HolLoopProg 64 :=
.mark loopBody147_104

def loopBody147_106 : HolLoopProg 64 :=
.seq loopBody147_23 loopBody147_105

def loopBody147_107 : HolLoopProg 64 :=
.mark loopBody147_106

def loopBody147_108 : HolLoopProg 64 :=
.seq loopBody147_23 loopBody147_107

def loopBody147_109 : HolLoopProg 64 :=
.mark loopBody147_108

def loopBody147_110 : HolLoopProg 64 :=
.seq loopBody147_23 loopBody147_109

def loopBody147_111 : HolLoopProg 64 :=
.mark loopBody147_110

def loopBody147_112 : HolLoopProg 64 :=
.seq loopBody147_23 loopBody147_111

def loopBody147_113 : HolLoopProg 64 :=
.mark loopBody147_112

def loopBody147_114 : HolLoopProg 64 :=
.seq loopBody147_23 loopBody147_113

def loopBody147_115 : HolLoopProg 64 :=
.mark loopBody147_114

def loopBody147_116 : HolLoopProg 64 :=
.seq loopBody147_23 loopBody147_115

def loopBody147_117 : HolLoopProg 64 :=
.mark loopBody147_116

def loopBody147_118 : HolLoopProg 64 :=
.seq loopBody147_23 loopBody147_117

def loopBody147_119 : HolLoopProg 64 :=
.mark loopBody147_118

def loopBody147_120 : HolLoopProg 64 :=
.seq loopBody147_23 loopBody147_119

def loopBody147_121 : HolLoopProg 64 :=
.mark loopBody147_120

def loopBody147_122 : HolLoopProg 64 :=
.seq loopBody147_23 loopBody147_121

def loopBody147_123 : HolLoopProg 64 :=
.mark loopBody147_122

def loopBody147_124 : HolLoopProg 64 :=
.seq loopBody147_23 loopBody147_123

def loopBody147_125 : HolLoopProg 64 :=
.mark loopBody147_124

def loopBody147_126 : HolLoopProg 64 :=
.seq loopBody147_45 loopBody147_125

def loopBody147_127 : HolLoopProg 64 :=
.mark loopBody147_126

def output147 : Nat × List Nat × HolLoopProg 64 :=
  (211, [0, 1, 2, 3, 4, 5, 6, 7], loopBody147_127)
end InitECandidate.Proofs.FrontendStages.Loop
