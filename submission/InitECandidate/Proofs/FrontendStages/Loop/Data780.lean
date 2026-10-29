import InitECandidate.Proofs.FrontendStages.Loop.Translate764
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody780_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody780_1 : HolLoopProg 64 :=
.mark loopBody780_0

def loopBody780_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody780_3 : HolLoopProg 64 :=
.mark loopBody780_2

def loopBody780_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 2 2

def loopBody780_5 : HolLoopProg 64 :=
.mark loopBody780_4

def loopBody780_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody780_7 : HolLoopProg 64 :=
.mark loopBody780_6

def loopBody780_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 3 3

def loopBody780_9 : HolLoopProg 64 :=
.mark loopBody780_8

def loopBody780_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 2#64])

def loopBody780_11 : HolLoopProg 64 :=
.mark loopBody780_10

def loopBody780_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 4 4

def loopBody780_13 : HolLoopProg 64 :=
.mark loopBody780_12

def loopBody780_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 3#64])

def loopBody780_15 : HolLoopProg 64 :=
.mark loopBody780_14

def loopBody780_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 5 5

def loopBody780_17 : HolLoopProg 64 :=
.mark loopBody780_16

def loopBody780_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64])

def loopBody780_19 : HolLoopProg 64 :=
.mark loopBody780_18

def loopBody780_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 6 6

def loopBody780_21 : HolLoopProg 64 :=
.mark loopBody780_20

def loopBody780_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64, Flapjack.HolLoopExp.const 1#64])

def loopBody780_23 : HolLoopProg 64 :=
.mark loopBody780_22

def loopBody780_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 7 7

def loopBody780_25 : HolLoopProg 64 :=
.mark loopBody780_24

def loopBody780_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64, Flapjack.HolLoopExp.const 2#64])

def loopBody780_27 : HolLoopProg 64 :=
.mark loopBody780_26

def loopBody780_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 8 8

def loopBody780_29 : HolLoopProg 64 :=
.mark loopBody780_28

def loopBody780_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64, Flapjack.HolLoopExp.const 3#64])

def loopBody780_31 : HolLoopProg 64 :=
.mark loopBody780_30

def loopBody780_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 9 9

def loopBody780_33 : HolLoopProg 64 :=
.mark loopBody780_32

def loopBody780_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 8#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 16#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 24#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.op Flapjack.BinOp.or
          [Flapjack.HolLoopExp.var 6,
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.const 8#64),
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 8) (Flapjack.HolLoopExp.const 16#64),
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 9) (Flapjack.HolLoopExp.const 24#64)])
        (Flapjack.HolLoopExp.const 32#64)])

def loopBody780_35 : HolLoopProg 64 :=
.mark loopBody780_34

def loopBody780_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody780_37 : HolLoopProg 64 :=
.mark loopBody780_36

def loopBody780_38 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 181) ([10]) (some (2, loopBody780_37, loopBody780_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody780_39 : HolLoopProg 64 :=
.mark loopBody780_38

def loopBody780_40 : HolLoopProg 64 :=
.seq loopBody780_39 loopBody780_1

def loopBody780_41 : HolLoopProg 64 :=
.mark loopBody780_40

def loopBody780_42 : HolLoopProg 64 :=
.seq loopBody780_35 loopBody780_41

def loopBody780_43 : HolLoopProg 64 :=
.mark loopBody780_42

def loopBody780_44 : HolLoopProg 64 :=
.seq loopBody780_33 loopBody780_43

def loopBody780_45 : HolLoopProg 64 :=
.mark loopBody780_44

def loopBody780_46 : HolLoopProg 64 :=
.seq loopBody780_31 loopBody780_45

def loopBody780_47 : HolLoopProg 64 :=
.mark loopBody780_46

def loopBody780_48 : HolLoopProg 64 :=
.seq loopBody780_29 loopBody780_47

def loopBody780_49 : HolLoopProg 64 :=
.mark loopBody780_48

def loopBody780_50 : HolLoopProg 64 :=
.seq loopBody780_27 loopBody780_49

def loopBody780_51 : HolLoopProg 64 :=
.mark loopBody780_50

def loopBody780_52 : HolLoopProg 64 :=
.seq loopBody780_25 loopBody780_51

def loopBody780_53 : HolLoopProg 64 :=
.mark loopBody780_52

def loopBody780_54 : HolLoopProg 64 :=
.seq loopBody780_23 loopBody780_53

def loopBody780_55 : HolLoopProg 64 :=
.mark loopBody780_54

def loopBody780_56 : HolLoopProg 64 :=
.seq loopBody780_21 loopBody780_55

def loopBody780_57 : HolLoopProg 64 :=
.mark loopBody780_56

def loopBody780_58 : HolLoopProg 64 :=
.seq loopBody780_19 loopBody780_57

def loopBody780_59 : HolLoopProg 64 :=
.mark loopBody780_58

def loopBody780_60 : HolLoopProg 64 :=
.seq loopBody780_17 loopBody780_59

def loopBody780_61 : HolLoopProg 64 :=
.mark loopBody780_60

def loopBody780_62 : HolLoopProg 64 :=
.seq loopBody780_15 loopBody780_61

def loopBody780_63 : HolLoopProg 64 :=
.mark loopBody780_62

def loopBody780_64 : HolLoopProg 64 :=
.seq loopBody780_13 loopBody780_63

def loopBody780_65 : HolLoopProg 64 :=
.mark loopBody780_64

def loopBody780_66 : HolLoopProg 64 :=
.seq loopBody780_11 loopBody780_65

def loopBody780_67 : HolLoopProg 64 :=
.mark loopBody780_66

def loopBody780_68 : HolLoopProg 64 :=
.seq loopBody780_9 loopBody780_67

def loopBody780_69 : HolLoopProg 64 :=
.mark loopBody780_68

def loopBody780_70 : HolLoopProg 64 :=
.seq loopBody780_7 loopBody780_69

def loopBody780_71 : HolLoopProg 64 :=
.mark loopBody780_70

def loopBody780_72 : HolLoopProg 64 :=
.seq loopBody780_5 loopBody780_71

def loopBody780_73 : HolLoopProg 64 :=
.mark loopBody780_72

def loopBody780_74 : HolLoopProg 64 :=
.seq loopBody780_3 loopBody780_73

def loopBody780_75 : HolLoopProg 64 :=
.mark loopBody780_74

def loopBody780_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64])

def loopBody780_77 : HolLoopProg 64 :=
.mark loopBody780_76

def loopBody780_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64, Flapjack.HolLoopExp.const 1#64])

def loopBody780_79 : HolLoopProg 64 :=
.mark loopBody780_78

def loopBody780_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64, Flapjack.HolLoopExp.const 2#64])

def loopBody780_81 : HolLoopProg 64 :=
.mark loopBody780_80

def loopBody780_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64, Flapjack.HolLoopExp.const 3#64])

def loopBody780_83 : HolLoopProg 64 :=
.mark loopBody780_82

def loopBody780_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64, Flapjack.HolLoopExp.const 4#64])

def loopBody780_85 : HolLoopProg 64 :=
.mark loopBody780_84

def loopBody780_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64, Flapjack.HolLoopExp.const 4#64,
      Flapjack.HolLoopExp.const 1#64])

def loopBody780_87 : HolLoopProg 64 :=
.mark loopBody780_86

def loopBody780_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64, Flapjack.HolLoopExp.const 4#64,
      Flapjack.HolLoopExp.const 2#64])

def loopBody780_89 : HolLoopProg 64 :=
.mark loopBody780_88

def loopBody780_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64, Flapjack.HolLoopExp.const 4#64,
      Flapjack.HolLoopExp.const 3#64])

def loopBody780_91 : HolLoopProg 64 :=
.mark loopBody780_90

def loopBody780_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 10 10

def loopBody780_93 : HolLoopProg 64 :=
.mark loopBody780_92

def loopBody780_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 8#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 16#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 24#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.op Flapjack.BinOp.or
          [Flapjack.HolLoopExp.var 7,
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 8) (Flapjack.HolLoopExp.const 8#64),
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 9) (Flapjack.HolLoopExp.const 16#64),
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 10)
              (Flapjack.HolLoopExp.const 24#64)])
        (Flapjack.HolLoopExp.const 32#64)])

def loopBody780_95 : HolLoopProg 64 :=
.mark loopBody780_94

def loopBody780_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody780_97 : HolLoopProg 64 :=
.mark loopBody780_96

def loopBody780_98 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 181) ([11]) (some (3, loopBody780_97, loopBody780_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody780_99 : HolLoopProg 64 :=
.mark loopBody780_98

def loopBody780_100 : HolLoopProg 64 :=
.seq loopBody780_99 loopBody780_1

def loopBody780_101 : HolLoopProg 64 :=
.mark loopBody780_100

def loopBody780_102 : HolLoopProg 64 :=
.seq loopBody780_95 loopBody780_101

def loopBody780_103 : HolLoopProg 64 :=
.mark loopBody780_102

def loopBody780_104 : HolLoopProg 64 :=
.seq loopBody780_93 loopBody780_103

def loopBody780_105 : HolLoopProg 64 :=
.mark loopBody780_104

def loopBody780_106 : HolLoopProg 64 :=
.seq loopBody780_91 loopBody780_105

def loopBody780_107 : HolLoopProg 64 :=
.mark loopBody780_106

def loopBody780_108 : HolLoopProg 64 :=
.seq loopBody780_33 loopBody780_107

def loopBody780_109 : HolLoopProg 64 :=
.mark loopBody780_108

def loopBody780_110 : HolLoopProg 64 :=
.seq loopBody780_89 loopBody780_109

def loopBody780_111 : HolLoopProg 64 :=
.mark loopBody780_110

def loopBody780_112 : HolLoopProg 64 :=
.seq loopBody780_29 loopBody780_111

def loopBody780_113 : HolLoopProg 64 :=
.mark loopBody780_112

def loopBody780_114 : HolLoopProg 64 :=
.seq loopBody780_87 loopBody780_113

def loopBody780_115 : HolLoopProg 64 :=
.mark loopBody780_114

def loopBody780_116 : HolLoopProg 64 :=
.seq loopBody780_25 loopBody780_115

def loopBody780_117 : HolLoopProg 64 :=
.mark loopBody780_116

def loopBody780_118 : HolLoopProg 64 :=
.seq loopBody780_85 loopBody780_117

def loopBody780_119 : HolLoopProg 64 :=
.mark loopBody780_118

def loopBody780_120 : HolLoopProg 64 :=
.seq loopBody780_21 loopBody780_119

def loopBody780_121 : HolLoopProg 64 :=
.mark loopBody780_120

def loopBody780_122 : HolLoopProg 64 :=
.seq loopBody780_83 loopBody780_121

def loopBody780_123 : HolLoopProg 64 :=
.mark loopBody780_122

def loopBody780_124 : HolLoopProg 64 :=
.seq loopBody780_17 loopBody780_123

def loopBody780_125 : HolLoopProg 64 :=
.mark loopBody780_124

def loopBody780_126 : HolLoopProg 64 :=
.seq loopBody780_81 loopBody780_125

def loopBody780_127 : HolLoopProg 64 :=
.mark loopBody780_126

def loopBody780_128 : HolLoopProg 64 :=
.seq loopBody780_13 loopBody780_127

def loopBody780_129 : HolLoopProg 64 :=
.mark loopBody780_128

def loopBody780_130 : HolLoopProg 64 :=
.seq loopBody780_79 loopBody780_129

def loopBody780_131 : HolLoopProg 64 :=
.mark loopBody780_130

def loopBody780_132 : HolLoopProg 64 :=
.seq loopBody780_9 loopBody780_131

def loopBody780_133 : HolLoopProg 64 :=
.mark loopBody780_132

def loopBody780_134 : HolLoopProg 64 :=
.seq loopBody780_77 loopBody780_133

def loopBody780_135 : HolLoopProg 64 :=
.mark loopBody780_134

def loopBody780_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64])

def loopBody780_137 : HolLoopProg 64 :=
.mark loopBody780_136

def loopBody780_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64, Flapjack.HolLoopExp.const 1#64])

def loopBody780_139 : HolLoopProg 64 :=
.mark loopBody780_138

def loopBody780_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64, Flapjack.HolLoopExp.const 2#64])

def loopBody780_141 : HolLoopProg 64 :=
.mark loopBody780_140

def loopBody780_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64, Flapjack.HolLoopExp.const 3#64])

def loopBody780_143 : HolLoopProg 64 :=
.mark loopBody780_142

def loopBody780_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64, Flapjack.HolLoopExp.const 4#64])

def loopBody780_145 : HolLoopProg 64 :=
.mark loopBody780_144

def loopBody780_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64, Flapjack.HolLoopExp.const 4#64,
      Flapjack.HolLoopExp.const 1#64])

def loopBody780_147 : HolLoopProg 64 :=
.mark loopBody780_146

def loopBody780_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64, Flapjack.HolLoopExp.const 4#64,
      Flapjack.HolLoopExp.const 2#64])

def loopBody780_149 : HolLoopProg 64 :=
.mark loopBody780_148

def loopBody780_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64, Flapjack.HolLoopExp.const 4#64,
      Flapjack.HolLoopExp.const 3#64])

def loopBody780_151 : HolLoopProg 64 :=
.mark loopBody780_150

def loopBody780_152 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 11 11

def loopBody780_153 : HolLoopProg 64 :=
.mark loopBody780_152

def loopBody780_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 4,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 8#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 16#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.const 24#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.op Flapjack.BinOp.or
          [Flapjack.HolLoopExp.var 8,
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 9) (Flapjack.HolLoopExp.const 8#64),
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 10) (Flapjack.HolLoopExp.const 16#64),
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 11)
              (Flapjack.HolLoopExp.const 24#64)])
        (Flapjack.HolLoopExp.const 32#64)])

def loopBody780_155 : HolLoopProg 64 :=
.mark loopBody780_154

def loopBody780_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody780_157 : HolLoopProg 64 :=
.mark loopBody780_156

def loopBody780_158 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 181) ([12]) (some (4, loopBody780_157, loopBody780_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody780_159 : HolLoopProg 64 :=
.mark loopBody780_158

def loopBody780_160 : HolLoopProg 64 :=
.seq loopBody780_159 loopBody780_1

def loopBody780_161 : HolLoopProg 64 :=
.mark loopBody780_160

def loopBody780_162 : HolLoopProg 64 :=
.seq loopBody780_155 loopBody780_161

def loopBody780_163 : HolLoopProg 64 :=
.mark loopBody780_162

def loopBody780_164 : HolLoopProg 64 :=
.seq loopBody780_153 loopBody780_163

def loopBody780_165 : HolLoopProg 64 :=
.mark loopBody780_164

def loopBody780_166 : HolLoopProg 64 :=
.seq loopBody780_151 loopBody780_165

def loopBody780_167 : HolLoopProg 64 :=
.mark loopBody780_166

def loopBody780_168 : HolLoopProg 64 :=
.seq loopBody780_93 loopBody780_167

def loopBody780_169 : HolLoopProg 64 :=
.mark loopBody780_168

def loopBody780_170 : HolLoopProg 64 :=
.seq loopBody780_149 loopBody780_169

def loopBody780_171 : HolLoopProg 64 :=
.mark loopBody780_170

def loopBody780_172 : HolLoopProg 64 :=
.seq loopBody780_33 loopBody780_171

def loopBody780_173 : HolLoopProg 64 :=
.mark loopBody780_172

def loopBody780_174 : HolLoopProg 64 :=
.seq loopBody780_147 loopBody780_173

def loopBody780_175 : HolLoopProg 64 :=
.mark loopBody780_174

def loopBody780_176 : HolLoopProg 64 :=
.seq loopBody780_29 loopBody780_175

def loopBody780_177 : HolLoopProg 64 :=
.mark loopBody780_176

def loopBody780_178 : HolLoopProg 64 :=
.seq loopBody780_145 loopBody780_177

def loopBody780_179 : HolLoopProg 64 :=
.mark loopBody780_178

def loopBody780_180 : HolLoopProg 64 :=
.seq loopBody780_25 loopBody780_179

def loopBody780_181 : HolLoopProg 64 :=
.mark loopBody780_180

def loopBody780_182 : HolLoopProg 64 :=
.seq loopBody780_143 loopBody780_181

def loopBody780_183 : HolLoopProg 64 :=
.mark loopBody780_182

def loopBody780_184 : HolLoopProg 64 :=
.seq loopBody780_21 loopBody780_183

def loopBody780_185 : HolLoopProg 64 :=
.mark loopBody780_184

def loopBody780_186 : HolLoopProg 64 :=
.seq loopBody780_141 loopBody780_185

def loopBody780_187 : HolLoopProg 64 :=
.mark loopBody780_186

def loopBody780_188 : HolLoopProg 64 :=
.seq loopBody780_17 loopBody780_187

def loopBody780_189 : HolLoopProg 64 :=
.mark loopBody780_188

def loopBody780_190 : HolLoopProg 64 :=
.seq loopBody780_139 loopBody780_189

def loopBody780_191 : HolLoopProg 64 :=
.mark loopBody780_190

def loopBody780_192 : HolLoopProg 64 :=
.seq loopBody780_13 loopBody780_191

def loopBody780_193 : HolLoopProg 64 :=
.mark loopBody780_192

def loopBody780_194 : HolLoopProg 64 :=
.seq loopBody780_137 loopBody780_193

def loopBody780_195 : HolLoopProg 64 :=
.mark loopBody780_194

def loopBody780_196 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 21#64, Flapjack.HolLoopExp.var 3])

def loopBody780_197 : HolLoopProg 64 :=
.mark loopBody780_196

def loopBody780_198 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody780_199 : HolLoopProg 64 :=
.mark loopBody780_198

def loopBody780_200 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody780_201 : HolLoopProg 64 :=
.mark loopBody780_200

def loopBody780_202 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 180) ([6]) (some (6, loopBody780_201, loopBody780_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody780_203 : HolLoopProg 64 :=
.mark loopBody780_202

def loopBody780_204 : HolLoopProg 64 :=
.seq loopBody780_203 loopBody780_1

def loopBody780_205 : HolLoopProg 64 :=
.mark loopBody780_204

def loopBody780_206 : HolLoopProg 64 :=
.seq loopBody780_199 loopBody780_205

def loopBody780_207 : HolLoopProg 64 :=
.mark loopBody780_206

def loopBody780_208 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 5])

def loopBody780_209 : HolLoopProg 64 :=
.mark loopBody780_208

def loopBody780_210 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody780_211 : HolLoopProg 64 :=
.mark loopBody780_210

def loopBody780_212 : HolLoopProg 64 :=
.seq loopBody780_211 loopBody780_1

def loopBody780_213 : HolLoopProg 64 :=
.mark loopBody780_212

def loopBody780_214 : HolLoopProg 64 :=
.seq loopBody780_209 loopBody780_213

def loopBody780_215 : HolLoopProg 64 :=
.mark loopBody780_214

def loopBody780_216 : HolLoopProg 64 :=
.seq loopBody780_207 loopBody780_215

def loopBody780_217 : HolLoopProg 64 :=
.mark loopBody780_216

def loopBody780_218 : HolLoopProg 64 :=
.seq loopBody780_1 loopBody780_217

def loopBody780_219 : HolLoopProg 64 :=
.mark loopBody780_218

def loopBody780_220 : HolLoopProg 64 :=
.seq loopBody780_1 loopBody780_219

def loopBody780_221 : HolLoopProg 64 :=
.mark loopBody780_220

def loopBody780_222 : HolLoopProg 64 :=
.seq loopBody780_197 loopBody780_221

def loopBody780_223 : HolLoopProg 64 :=
.mark loopBody780_222

def loopBody780_224 : HolLoopProg 64 :=
.seq loopBody780_1 loopBody780_223

def loopBody780_225 : HolLoopProg 64 :=
.mark loopBody780_224

def loopBody780_226 : HolLoopProg 64 :=
.seq loopBody780_195 loopBody780_225

def loopBody780_227 : HolLoopProg 64 :=
.mark loopBody780_226

def loopBody780_228 : HolLoopProg 64 :=
.seq loopBody780_1 loopBody780_227

def loopBody780_229 : HolLoopProg 64 :=
.mark loopBody780_228

def loopBody780_230 : HolLoopProg 64 :=
.seq loopBody780_1 loopBody780_229

def loopBody780_231 : HolLoopProg 64 :=
.mark loopBody780_230

def loopBody780_232 : HolLoopProg 64 :=
.seq loopBody780_135 loopBody780_231

def loopBody780_233 : HolLoopProg 64 :=
.mark loopBody780_232

def loopBody780_234 : HolLoopProg 64 :=
.seq loopBody780_1 loopBody780_233

def loopBody780_235 : HolLoopProg 64 :=
.mark loopBody780_234

def loopBody780_236 : HolLoopProg 64 :=
.seq loopBody780_1 loopBody780_235

def loopBody780_237 : HolLoopProg 64 :=
.mark loopBody780_236

def loopBody780_238 : HolLoopProg 64 :=
.seq loopBody780_75 loopBody780_237

def loopBody780_239 : HolLoopProg 64 :=
.mark loopBody780_238

def loopBody780_240 : HolLoopProg 64 :=
.seq loopBody780_1 loopBody780_239

def loopBody780_241 : HolLoopProg 64 :=
.mark loopBody780_240

def loopBody780_242 : HolLoopProg 64 :=
.seq loopBody780_1 loopBody780_241

def loopBody780_243 : HolLoopProg 64 :=
.mark loopBody780_242

def output780 : Nat × List Nat × HolLoopProg 64 :=
  (844, [0], loopBody780_243)
end InitECandidate.Proofs.FrontendStages.Loop
