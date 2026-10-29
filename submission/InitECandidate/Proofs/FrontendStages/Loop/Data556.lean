import InitECandidate.Proofs.FrontendStages.Loop.Translate540
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody556_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody556_1 : HolLoopProg 64 :=
.mark loopBody556_0

def loopBody556_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody556_3 : HolLoopProg 64 :=
.mark loopBody556_2

def loopBody556_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody556_5 : HolLoopProg 64 :=
.mark loopBody556_4

def loopBody556_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody556_7 : HolLoopProg 64 :=
.mark loopBody556_6

def loopBody556_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody556_9 : HolLoopProg 64 :=
.mark loopBody556_8

def loopBody556_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody556_11 : HolLoopProg 64 :=
.mark loopBody556_10

def loopBody556_12 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 102) ([9, 10, 11, 12]) (some (9, loopBody556_11, loopBody556_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody556_13 : HolLoopProg 64 :=
.mark loopBody556_12

def loopBody556_14 : HolLoopProg 64 :=
.seq loopBody556_13 loopBody556_1

def loopBody556_15 : HolLoopProg 64 :=
.mark loopBody556_14

def loopBody556_16 : HolLoopProg 64 :=
.seq loopBody556_9 loopBody556_15

def loopBody556_17 : HolLoopProg 64 :=
.mark loopBody556_16

def loopBody556_18 : HolLoopProg 64 :=
.seq loopBody556_7 loopBody556_17

def loopBody556_19 : HolLoopProg 64 :=
.mark loopBody556_18

def loopBody556_20 : HolLoopProg 64 :=
.seq loopBody556_5 loopBody556_19

def loopBody556_21 : HolLoopProg 64 :=
.mark loopBody556_20

def loopBody556_22 : HolLoopProg 64 :=
.seq loopBody556_3 loopBody556_21

def loopBody556_23 : HolLoopProg 64 :=
.mark loopBody556_22

def loopBody556_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody556_25 : HolLoopProg 64 :=
.mark loopBody556_24

def loopBody556_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 8)

def loopBody556_27 : HolLoopProg 64 :=
.mark loopBody556_26

def loopBody556_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody556_29 : HolLoopProg 64 :=
.mark loopBody556_28

def loopBody556_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 1#64)

def loopBody556_31 : HolLoopProg 64 :=
.mark loopBody556_30

def loopBody556_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody556_33 : HolLoopProg 64 :=
.mark loopBody556_32

def loopBody556_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.RegImm.reg 12) loopBody556_31 loopBody556_33 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody556_35 : HolLoopProg 64 :=
.mark loopBody556_34

def loopBody556_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 11)

def loopBody556_37 : HolLoopProg 64 :=
.mark loopBody556_36

def loopBody556_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 2300#64)

def loopBody556_39 : HolLoopProg 64 :=
.mark loopBody556_38

def loopBody556_40 : HolLoopProg 64 :=
.seq loopBody556_39 loopBody556_1

def loopBody556_41 : HolLoopProg 64 :=
.mark loopBody556_40

def loopBody556_42 : HolLoopProg 64 :=
.seq loopBody556_41 loopBody556_1

def loopBody556_43 : HolLoopProg 64 :=
.mark loopBody556_42

def loopBody556_44 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.imm 0#64) loopBody556_43 loopBody556_1 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody556_45 : HolLoopProg 64 :=
.mark loopBody556_44

def loopBody556_46 : HolLoopProg 64 :=
.seq loopBody556_45 loopBody556_1

def loopBody556_47 : HolLoopProg 64 :=
.mark loopBody556_46

def loopBody556_48 : HolLoopProg 64 :=
.seq loopBody556_37 loopBody556_47

def loopBody556_49 : HolLoopProg 64 :=
.mark loopBody556_48

def loopBody556_50 : HolLoopProg 64 :=
.seq loopBody556_35 loopBody556_49

def loopBody556_51 : HolLoopProg 64 :=
.mark loopBody556_50

def loopBody556_52 : HolLoopProg 64 :=
.seq loopBody556_29 loopBody556_51

def loopBody556_53 : HolLoopProg 64 :=
.mark loopBody556_52

def loopBody556_54 : HolLoopProg 64 :=
.seq loopBody556_27 loopBody556_53

def loopBody556_55 : HolLoopProg 64 :=
.mark loopBody556_54

def loopBody556_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 7)

def loopBody556_57 : HolLoopProg 64 :=
.mark loopBody556_56

def loopBody556_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 6)

def loopBody556_59 : HolLoopProg 64 :=
.mark loopBody556_58

def loopBody556_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody556_61 : HolLoopProg 64 :=
.mark loopBody556_60

def loopBody556_62 : HolLoopProg 64 :=
.call (some
  ([10],
    Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 463) ([11, 12]) (some (11, loopBody556_61, loopBody556_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody556_63 : HolLoopProg 64 :=
.mark loopBody556_62

def loopBody556_64 : HolLoopProg 64 :=
.seq loopBody556_63 loopBody556_1

def loopBody556_65 : HolLoopProg 64 :=
.mark loopBody556_64

def loopBody556_66 : HolLoopProg 64 :=
.seq loopBody556_59 loopBody556_65

def loopBody556_67 : HolLoopProg 64 :=
.mark loopBody556_66

def loopBody556_68 : HolLoopProg 64 :=
.seq loopBody556_57 loopBody556_67

def loopBody556_69 : HolLoopProg 64 :=
.mark loopBody556_68

def loopBody556_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 5)

def loopBody556_71 : HolLoopProg 64 :=
.mark loopBody556_70

def loopBody556_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 10)

def loopBody556_73 : HolLoopProg 64 :=
.mark loopBody556_72

def loopBody556_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody556_75 : HolLoopProg 64 :=
.mark loopBody556_74

def loopBody556_76 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.RegImm.reg 13) loopBody556_75 loopBody556_29 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody556_77 : HolLoopProg 64 :=
.mark loopBody556_76

def loopBody556_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 12)

def loopBody556_79 : HolLoopProg 64 :=
.mark loopBody556_78

def loopBody556_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 4)

def loopBody556_81 : HolLoopProg 64 :=
.mark loopBody556_80

def loopBody556_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 7)

def loopBody556_83 : HolLoopProg 64 :=
.mark loopBody556_82

def loopBody556_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 12

def loopBody556_85 : HolLoopProg 64 :=
.mark loopBody556_84

def loopBody556_86 : HolLoopProg 64 :=
.call (some
  ([11],
    Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))) (some 463) ([12, 13]) (some (12, loopBody556_85, loopBody556_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody556_87 : HolLoopProg 64 :=
.mark loopBody556_86

def loopBody556_88 : HolLoopProg 64 :=
.seq loopBody556_87 loopBody556_1

def loopBody556_89 : HolLoopProg 64 :=
.mark loopBody556_88

def loopBody556_90 : HolLoopProg 64 :=
.seq loopBody556_83 loopBody556_89

def loopBody556_91 : HolLoopProg 64 :=
.mark loopBody556_90

def loopBody556_92 : HolLoopProg 64 :=
.seq loopBody556_81 loopBody556_91

def loopBody556_93 : HolLoopProg 64 :=
.mark loopBody556_92

def loopBody556_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody556_95 : HolLoopProg 64 :=
.mark loopBody556_94

def loopBody556_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody556_97 : HolLoopProg 64 :=
.mark loopBody556_96

def loopBody556_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody556_99 : HolLoopProg 64 :=
.mark loopBody556_98

def loopBody556_100 : HolLoopProg 64 :=
.call (some
  ([12],
    Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))) (some 463) ([13, 14]) (some (13, loopBody556_99, loopBody556_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody556_101 : HolLoopProg 64 :=
.mark loopBody556_100

def loopBody556_102 : HolLoopProg 64 :=
.seq loopBody556_101 loopBody556_1

def loopBody556_103 : HolLoopProg 64 :=
.mark loopBody556_102

def loopBody556_104 : HolLoopProg 64 :=
.seq loopBody556_97 loopBody556_103

def loopBody556_105 : HolLoopProg 64 :=
.mark loopBody556_104

def loopBody556_106 : HolLoopProg 64 :=
.seq loopBody556_95 loopBody556_105

def loopBody556_107 : HolLoopProg 64 :=
.mark loopBody556_106

def loopBody556_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [13, 14]

def loopBody556_109 : HolLoopProg 64 :=
.mark loopBody556_108

def loopBody556_110 : HolLoopProg 64 :=
.seq loopBody556_109 loopBody556_1

def loopBody556_111 : HolLoopProg 64 :=
.mark loopBody556_110

def loopBody556_112 : HolLoopProg 64 :=
.seq loopBody556_79 loopBody556_111

def loopBody556_113 : HolLoopProg 64 :=
.mark loopBody556_112

def loopBody556_114 : HolLoopProg 64 :=
.seq loopBody556_37 loopBody556_113

def loopBody556_115 : HolLoopProg 64 :=
.mark loopBody556_114

def loopBody556_116 : HolLoopProg 64 :=
.seq loopBody556_107 loopBody556_115

def loopBody556_117 : HolLoopProg 64 :=
.mark loopBody556_116

def loopBody556_118 : HolLoopProg 64 :=
.seq loopBody556_1 loopBody556_117

def loopBody556_119 : HolLoopProg 64 :=
.mark loopBody556_118

def loopBody556_120 : HolLoopProg 64 :=
.seq loopBody556_1 loopBody556_119

def loopBody556_121 : HolLoopProg 64 :=
.mark loopBody556_120

def loopBody556_122 : HolLoopProg 64 :=
.seq loopBody556_93 loopBody556_121

def loopBody556_123 : HolLoopProg 64 :=
.mark loopBody556_122

def loopBody556_124 : HolLoopProg 64 :=
.seq loopBody556_1 loopBody556_123

def loopBody556_125 : HolLoopProg 64 :=
.mark loopBody556_124

def loopBody556_126 : HolLoopProg 64 :=
.seq loopBody556_1 loopBody556_125

def loopBody556_127 : HolLoopProg 64 :=
.mark loopBody556_126

def loopBody556_128 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody556_127 loopBody556_1 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody556_129 : HolLoopProg 64 :=
.mark loopBody556_128

def loopBody556_130 : HolLoopProg 64 :=
.seq loopBody556_129 loopBody556_1

def loopBody556_131 : HolLoopProg 64 :=
.mark loopBody556_130

def loopBody556_132 : HolLoopProg 64 :=
.seq loopBody556_79 loopBody556_131

def loopBody556_133 : HolLoopProg 64 :=
.mark loopBody556_132

def loopBody556_134 : HolLoopProg 64 :=
.seq loopBody556_77 loopBody556_133

def loopBody556_135 : HolLoopProg 64 :=
.mark loopBody556_134

def loopBody556_136 : HolLoopProg 64 :=
.seq loopBody556_73 loopBody556_135

def loopBody556_137 : HolLoopProg 64 :=
.mark loopBody556_136

def loopBody556_138 : HolLoopProg 64 :=
.seq loopBody556_71 loopBody556_137

def loopBody556_139 : HolLoopProg 64 :=
.mark loopBody556_138

def loopBody556_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 6],
      Flapjack.HolLoopExp.var 7])

def loopBody556_141 : HolLoopProg 64 :=
.mark loopBody556_140

def loopBody556_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.var 11,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 11) (Flapjack.HolLoopExp.const 6#64)])

def loopBody556_143 : HolLoopProg 64 :=
.mark loopBody556_142

def loopBody556_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 12)

def loopBody556_145 : HolLoopProg 64 :=
.mark loopBody556_144

def loopBody556_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 13)

def loopBody556_147 : HolLoopProg 64 :=
.mark loopBody556_146

def loopBody556_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 1#64)

def loopBody556_149 : HolLoopProg 64 :=
.mark loopBody556_148

def loopBody556_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 0#64)

def loopBody556_151 : HolLoopProg 64 :=
.mark loopBody556_150

def loopBody556_152 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 15 (Flapjack.RegImm.reg 16) loopBody556_149 loopBody556_151 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody556_153 : HolLoopProg 64 :=
.mark loopBody556_152

def loopBody556_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 15)

def loopBody556_155 : HolLoopProg 64 :=
.mark loopBody556_154

def loopBody556_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 12)

def loopBody556_157 : HolLoopProg 64 :=
.mark loopBody556_156

def loopBody556_158 : HolLoopProg 64 :=
.seq loopBody556_157 loopBody556_1

def loopBody556_159 : HolLoopProg 64 :=
.mark loopBody556_158

def loopBody556_160 : HolLoopProg 64 :=
.seq loopBody556_159 loopBody556_1

def loopBody556_161 : HolLoopProg 64 :=
.mark loopBody556_160

def loopBody556_162 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 17 (Flapjack.RegImm.imm 0#64) loopBody556_161 loopBody556_1 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody556_163 : HolLoopProg 64 :=
.mark loopBody556_162

def loopBody556_164 : HolLoopProg 64 :=
.seq loopBody556_163 loopBody556_1

def loopBody556_165 : HolLoopProg 64 :=
.mark loopBody556_164

def loopBody556_166 : HolLoopProg 64 :=
.seq loopBody556_155 loopBody556_165

def loopBody556_167 : HolLoopProg 64 :=
.mark loopBody556_166

def loopBody556_168 : HolLoopProg 64 :=
.seq loopBody556_153 loopBody556_167

def loopBody556_169 : HolLoopProg 64 :=
.mark loopBody556_168

def loopBody556_170 : HolLoopProg 64 :=
.seq loopBody556_147 loopBody556_169

def loopBody556_171 : HolLoopProg 64 :=
.mark loopBody556_170

def loopBody556_172 : HolLoopProg 64 :=
.seq loopBody556_145 loopBody556_171

def loopBody556_173 : HolLoopProg 64 :=
.mark loopBody556_172

def loopBody556_174 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 13, Flapjack.HolLoopExp.var 7])

def loopBody556_175 : HolLoopProg 64 :=
.mark loopBody556_174

def loopBody556_176 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 13, Flapjack.HolLoopExp.var 9])

def loopBody556_177 : HolLoopProg 64 :=
.mark loopBody556_176

def loopBody556_178 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [14, 15]

def loopBody556_179 : HolLoopProg 64 :=
.mark loopBody556_178

def loopBody556_180 : HolLoopProg 64 :=
.seq loopBody556_179 loopBody556_1

def loopBody556_181 : HolLoopProg 64 :=
.mark loopBody556_180

def loopBody556_182 : HolLoopProg 64 :=
.seq loopBody556_177 loopBody556_181

def loopBody556_183 : HolLoopProg 64 :=
.mark loopBody556_182

def loopBody556_184 : HolLoopProg 64 :=
.seq loopBody556_175 loopBody556_183

def loopBody556_185 : HolLoopProg 64 :=
.mark loopBody556_184

def loopBody556_186 : HolLoopProg 64 :=
.seq loopBody556_173 loopBody556_185

def loopBody556_187 : HolLoopProg 64 :=
.mark loopBody556_186

def loopBody556_188 : HolLoopProg 64 :=
.seq loopBody556_95 loopBody556_187

def loopBody556_189 : HolLoopProg 64 :=
.mark loopBody556_188

def loopBody556_190 : HolLoopProg 64 :=
.seq loopBody556_1 loopBody556_189

def loopBody556_191 : HolLoopProg 64 :=
.mark loopBody556_190

def loopBody556_192 : HolLoopProg 64 :=
.seq loopBody556_143 loopBody556_191

def loopBody556_193 : HolLoopProg 64 :=
.mark loopBody556_192

def loopBody556_194 : HolLoopProg 64 :=
.seq loopBody556_1 loopBody556_193

def loopBody556_195 : HolLoopProg 64 :=
.mark loopBody556_194

def loopBody556_196 : HolLoopProg 64 :=
.seq loopBody556_141 loopBody556_195

def loopBody556_197 : HolLoopProg 64 :=
.mark loopBody556_196

def loopBody556_198 : HolLoopProg 64 :=
.seq loopBody556_1 loopBody556_197

def loopBody556_199 : HolLoopProg 64 :=
.mark loopBody556_198

def loopBody556_200 : HolLoopProg 64 :=
.seq loopBody556_139 loopBody556_199

def loopBody556_201 : HolLoopProg 64 :=
.mark loopBody556_200

def loopBody556_202 : HolLoopProg 64 :=
.seq loopBody556_69 loopBody556_201

def loopBody556_203 : HolLoopProg 64 :=
.mark loopBody556_202

def loopBody556_204 : HolLoopProg 64 :=
.seq loopBody556_1 loopBody556_203

def loopBody556_205 : HolLoopProg 64 :=
.mark loopBody556_204

def loopBody556_206 : HolLoopProg 64 :=
.seq loopBody556_1 loopBody556_205

def loopBody556_207 : HolLoopProg 64 :=
.mark loopBody556_206

def loopBody556_208 : HolLoopProg 64 :=
.seq loopBody556_55 loopBody556_207

def loopBody556_209 : HolLoopProg 64 :=
.mark loopBody556_208

def loopBody556_210 : HolLoopProg 64 :=
.seq loopBody556_25 loopBody556_209

def loopBody556_211 : HolLoopProg 64 :=
.mark loopBody556_210

def loopBody556_212 : HolLoopProg 64 :=
.seq loopBody556_1 loopBody556_211

def loopBody556_213 : HolLoopProg 64 :=
.mark loopBody556_212

def loopBody556_214 : HolLoopProg 64 :=
.seq loopBody556_23 loopBody556_213

def loopBody556_215 : HolLoopProg 64 :=
.mark loopBody556_214

def loopBody556_216 : HolLoopProg 64 :=
.seq loopBody556_1 loopBody556_215

def loopBody556_217 : HolLoopProg 64 :=
.mark loopBody556_216

def loopBody556_218 : HolLoopProg 64 :=
.seq loopBody556_1 loopBody556_217

def loopBody556_219 : HolLoopProg 64 :=
.mark loopBody556_218

def output556 : Nat × List Nat × HolLoopProg 64 :=
  (620, [0, 1, 2, 3, 4, 5, 6, 7], loopBody556_219)
end InitECandidate.Proofs.FrontendStages.Loop
