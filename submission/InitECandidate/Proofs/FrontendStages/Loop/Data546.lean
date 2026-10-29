import InitECandidate.Proofs.FrontendStages.Loop.Translate530
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody546_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody546_1 : HolLoopProg 64 :=
.mark loopBody546_0

def loopBody546_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody546_3 : HolLoopProg 64 :=
.mark loopBody546_2

def loopBody546_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody546_5 : HolLoopProg 64 :=
.mark loopBody546_4

def loopBody546_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 609) ([2]) (some (2, loopBody546_5, loopBody546_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody546_7 : HolLoopProg 64 :=
.mark loopBody546_6

def loopBody546_8 : HolLoopProg 64 :=
.seq loopBody546_7 loopBody546_1

def loopBody546_9 : HolLoopProg 64 :=
.mark loopBody546_8

def loopBody546_10 : HolLoopProg 64 :=
.seq loopBody546_3 loopBody546_9

def loopBody546_11 : HolLoopProg 64 :=
.mark loopBody546_10

def loopBody546_12 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_11

def loopBody546_13 : HolLoopProg 64 :=
.mark loopBody546_12

def loopBody546_14 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_13

def loopBody546_15 : HolLoopProg 64 :=
.mark loopBody546_14

def loopBody546_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 192#64])

def loopBody546_17 : HolLoopProg 64 :=
.mark loopBody546_16

def loopBody546_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 192#64]),
      Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 192#64])])

def loopBody546_19 : HolLoopProg 64 :=
.mark loopBody546_18

def loopBody546_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody546_21 : HolLoopProg 64 :=
.mark loopBody546_20

def loopBody546_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 3

def loopBody546_23 : HolLoopProg 64 :=
.mark loopBody546_22

def loopBody546_24 : HolLoopProg 64 :=
.seq loopBody546_23 loopBody546_1

def loopBody546_25 : HolLoopProg 64 :=
.mark loopBody546_24

def loopBody546_26 : HolLoopProg 64 :=
.seq loopBody546_21 loopBody546_25

def loopBody546_27 : HolLoopProg 64 :=
.mark loopBody546_26

def loopBody546_28 : HolLoopProg 64 :=
.seq loopBody546_27 loopBody546_1

def loopBody546_29 : HolLoopProg 64 :=
.mark loopBody546_28

def loopBody546_30 : HolLoopProg 64 :=
.seq loopBody546_19 loopBody546_29

def loopBody546_31 : HolLoopProg 64 :=
.mark loopBody546_30

def loopBody546_32 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_31

def loopBody546_33 : HolLoopProg 64 :=
.mark loopBody546_32

def loopBody546_34 : HolLoopProg 64 :=
.seq loopBody546_17 loopBody546_33

def loopBody546_35 : HolLoopProg 64 :=
.mark loopBody546_34

def loopBody546_36 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_35

def loopBody546_37 : HolLoopProg 64 :=
.mark loopBody546_36

def loopBody546_38 : HolLoopProg 64 :=
.seq loopBody546_15 loopBody546_37

def loopBody546_39 : HolLoopProg 64 :=
.mark loopBody546_38

def loopBody546_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 72#64]))

def loopBody546_41 : HolLoopProg 64 :=
.mark loopBody546_40

def loopBody546_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 192#64]))

def loopBody546_43 : HolLoopProg 64 :=
.mark loopBody546_42

def loopBody546_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody546_45 : HolLoopProg 64 :=
.mark loopBody546_44

def loopBody546_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody546_47 : HolLoopProg 64 :=
.mark loopBody546_46

def loopBody546_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody546_49 : HolLoopProg 64 :=
.mark loopBody546_48

def loopBody546_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody546_47 loopBody546_49 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody546_51 : HolLoopProg 64 :=
.mark loopBody546_50

def loopBody546_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody546_53 : HolLoopProg 64 :=
.mark loopBody546_52

def loopBody546_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 192#64]))

def loopBody546_55 : HolLoopProg 64 :=
.mark loopBody546_54

def loopBody546_56 : HolLoopProg 64 :=
.seq loopBody546_55 loopBody546_1

def loopBody546_57 : HolLoopProg 64 :=
.mark loopBody546_56

def loopBody546_58 : HolLoopProg 64 :=
.seq loopBody546_57 loopBody546_1

def loopBody546_59 : HolLoopProg 64 :=
.mark loopBody546_58

def loopBody546_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody546_59 loopBody546_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody546_61 : HolLoopProg 64 :=
.mark loopBody546_60

def loopBody546_62 : HolLoopProg 64 :=
.seq loopBody546_61 loopBody546_1

def loopBody546_63 : HolLoopProg 64 :=
.mark loopBody546_62

def loopBody546_64 : HolLoopProg 64 :=
.seq loopBody546_53 loopBody546_63

def loopBody546_65 : HolLoopProg 64 :=
.mark loopBody546_64

def loopBody546_66 : HolLoopProg 64 :=
.seq loopBody546_51 loopBody546_65

def loopBody546_67 : HolLoopProg 64 :=
.mark loopBody546_66

def loopBody546_68 : HolLoopProg 64 :=
.seq loopBody546_45 loopBody546_67

def loopBody546_69 : HolLoopProg 64 :=
.mark loopBody546_68

def loopBody546_70 : HolLoopProg 64 :=
.seq loopBody546_43 loopBody546_69

def loopBody546_71 : HolLoopProg 64 :=
.mark loopBody546_70

def loopBody546_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 64#64])

def loopBody546_73 : HolLoopProg 64 :=
.mark loopBody546_72

def loopBody546_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 64#64]),
      Flapjack.HolLoopExp.var 1])

def loopBody546_75 : HolLoopProg 64 :=
.mark loopBody546_74

def loopBody546_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody546_77 : HolLoopProg 64 :=
.mark loopBody546_76

def loopBody546_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 2) 4

def loopBody546_79 : HolLoopProg 64 :=
.mark loopBody546_78

def loopBody546_80 : HolLoopProg 64 :=
.seq loopBody546_79 loopBody546_1

def loopBody546_81 : HolLoopProg 64 :=
.mark loopBody546_80

def loopBody546_82 : HolLoopProg 64 :=
.seq loopBody546_77 loopBody546_81

def loopBody546_83 : HolLoopProg 64 :=
.mark loopBody546_82

def loopBody546_84 : HolLoopProg 64 :=
.seq loopBody546_83 loopBody546_1

def loopBody546_85 : HolLoopProg 64 :=
.mark loopBody546_84

def loopBody546_86 : HolLoopProg 64 :=
.seq loopBody546_75 loopBody546_85

def loopBody546_87 : HolLoopProg 64 :=
.mark loopBody546_86

def loopBody546_88 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_87

def loopBody546_89 : HolLoopProg 64 :=
.mark loopBody546_88

def loopBody546_90 : HolLoopProg 64 :=
.seq loopBody546_73 loopBody546_89

def loopBody546_91 : HolLoopProg 64 :=
.mark loopBody546_90

def loopBody546_92 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_91

def loopBody546_93 : HolLoopProg 64 :=
.mark loopBody546_92

def loopBody546_94 : HolLoopProg 64 :=
.seq loopBody546_71 loopBody546_93

def loopBody546_95 : HolLoopProg 64 :=
.mark loopBody546_94

def loopBody546_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 72#64])

def loopBody546_97 : HolLoopProg 64 :=
.mark loopBody546_96

def loopBody546_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 72#64]),
      Flapjack.HolLoopExp.var 1])

def loopBody546_99 : HolLoopProg 64 :=
.mark loopBody546_98

def loopBody546_100 : HolLoopProg 64 :=
.seq loopBody546_99 loopBody546_85

def loopBody546_101 : HolLoopProg 64 :=
.mark loopBody546_100

def loopBody546_102 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_101

def loopBody546_103 : HolLoopProg 64 :=
.mark loopBody546_102

def loopBody546_104 : HolLoopProg 64 :=
.seq loopBody546_97 loopBody546_103

def loopBody546_105 : HolLoopProg 64 :=
.mark loopBody546_104

def loopBody546_106 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_105

def loopBody546_107 : HolLoopProg 64 :=
.mark loopBody546_106

def loopBody546_108 : HolLoopProg 64 :=
.seq loopBody546_95 loopBody546_107

def loopBody546_109 : HolLoopProg 64 :=
.mark loopBody546_108

def loopBody546_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 192#64])

def loopBody546_111 : HolLoopProg 64 :=
.mark loopBody546_110

def loopBody546_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 192#64]),
      Flapjack.HolLoopExp.var 1])

def loopBody546_113 : HolLoopProg 64 :=
.mark loopBody546_112

def loopBody546_114 : HolLoopProg 64 :=
.seq loopBody546_113 loopBody546_85

def loopBody546_115 : HolLoopProg 64 :=
.mark loopBody546_114

def loopBody546_116 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_115

def loopBody546_117 : HolLoopProg 64 :=
.mark loopBody546_116

def loopBody546_118 : HolLoopProg 64 :=
.seq loopBody546_111 loopBody546_117

def loopBody546_119 : HolLoopProg 64 :=
.mark loopBody546_118

def loopBody546_120 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_119

def loopBody546_121 : HolLoopProg 64 :=
.mark loopBody546_120

def loopBody546_122 : HolLoopProg 64 :=
.seq loopBody546_109 loopBody546_121

def loopBody546_123 : HolLoopProg 64 :=
.mark loopBody546_122

def loopBody546_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 88#64]))

def loopBody546_125 : HolLoopProg 64 :=
.mark loopBody546_124

def loopBody546_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 8#64]))

def loopBody546_127 : HolLoopProg 64 :=
.mark loopBody546_126

def loopBody546_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 0#64]))

def loopBody546_129 : HolLoopProg 64 :=
.mark loopBody546_128

def loopBody546_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody546_131 : HolLoopProg 64 :=
.mark loopBody546_130

def loopBody546_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody546_133 : HolLoopProg 64 :=
.mark loopBody546_132

def loopBody546_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody546_135 : HolLoopProg 64 :=
.mark loopBody546_134

def loopBody546_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody546_137 : HolLoopProg 64 :=
.mark loopBody546_136

def loopBody546_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody546_139 : HolLoopProg 64 :=
.mark loopBody546_138

def loopBody546_140 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.RegImm.reg 8) loopBody546_137 loopBody546_139 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody546_141 : HolLoopProg 64 :=
.mark loopBody546_140

def loopBody546_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody546_143 : HolLoopProg 64 :=
.mark loopBody546_142

def loopBody546_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]))

def loopBody546_145 : HolLoopProg 64 :=
.mark loopBody546_144

def loopBody546_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 4,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 3#64)]))

def loopBody546_147 : HolLoopProg 64 :=
.mark loopBody546_146

def loopBody546_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody546_149 : HolLoopProg 64 :=
.mark loopBody546_148

def loopBody546_150 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 545) ([7, 8]) (some (7, loopBody546_149, loopBody546_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody546_151 : HolLoopProg 64 :=
.mark loopBody546_150

def loopBody546_152 : HolLoopProg 64 :=
.seq loopBody546_151 loopBody546_1

def loopBody546_153 : HolLoopProg 64 :=
.mark loopBody546_152

def loopBody546_154 : HolLoopProg 64 :=
.seq loopBody546_147 loopBody546_153

def loopBody546_155 : HolLoopProg 64 :=
.mark loopBody546_154

def loopBody546_156 : HolLoopProg 64 :=
.seq loopBody546_145 loopBody546_155

def loopBody546_157 : HolLoopProg 64 :=
.mark loopBody546_156

def loopBody546_158 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_157

def loopBody546_159 : HolLoopProg 64 :=
.mark loopBody546_158

def loopBody546_160 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_159

def loopBody546_161 : HolLoopProg 64 :=
.mark loopBody546_160

def loopBody546_162 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 1#64])

def loopBody546_163 : HolLoopProg 64 :=
.mark loopBody546_162

def loopBody546_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 6)

def loopBody546_165 : HolLoopProg 64 :=
.mark loopBody546_164

def loopBody546_166 : HolLoopProg 64 :=
.seq loopBody546_165 loopBody546_1

def loopBody546_167 : HolLoopProg 64 :=
.mark loopBody546_166

def loopBody546_168 : HolLoopProg 64 :=
.seq loopBody546_167 loopBody546_1

def loopBody546_169 : HolLoopProg 64 :=
.mark loopBody546_168

def loopBody546_170 : HolLoopProg 64 :=
.seq loopBody546_163 loopBody546_169

def loopBody546_171 : HolLoopProg 64 :=
.mark loopBody546_170

def loopBody546_172 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_171

def loopBody546_173 : HolLoopProg 64 :=
.mark loopBody546_172

def loopBody546_174 : HolLoopProg 64 :=
.seq loopBody546_161 loopBody546_173

def loopBody546_175 : HolLoopProg 64 :=
.mark loopBody546_174

def loopBody546_176 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody546_177 : HolLoopProg 64 :=
.mark loopBody546_176

def loopBody546_178 : HolLoopProg 64 :=
.seq loopBody546_175 loopBody546_177

def loopBody546_179 : HolLoopProg 64 :=
.mark loopBody546_178

def loopBody546_180 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody546_181 : HolLoopProg 64 :=
.mark loopBody546_180

def loopBody546_182 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody546_179 loopBody546_181 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody546_183 : HolLoopProg 64 :=
.mark loopBody546_182

def loopBody546_184 : HolLoopProg 64 :=
.seq loopBody546_183 loopBody546_1

def loopBody546_185 : HolLoopProg 64 :=
.mark loopBody546_184

def loopBody546_186 : HolLoopProg 64 :=
.seq loopBody546_143 loopBody546_185

def loopBody546_187 : HolLoopProg 64 :=
.mark loopBody546_186

def loopBody546_188 : HolLoopProg 64 :=
.seq loopBody546_141 loopBody546_187

def loopBody546_189 : HolLoopProg 64 :=
.mark loopBody546_188

def loopBody546_190 : HolLoopProg 64 :=
.seq loopBody546_135 loopBody546_189

def loopBody546_191 : HolLoopProg 64 :=
.mark loopBody546_190

def loopBody546_192 : HolLoopProg 64 :=
.seq loopBody546_133 loopBody546_191

def loopBody546_193 : HolLoopProg 64 :=
.mark loopBody546_192

def loopBody546_194 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody546_193 (Flapjack.Spt.ls PUnit.unit)

def loopBody546_195 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 96#64])

def loopBody546_196 : HolLoopProg 64 :=
.mark loopBody546_195

def loopBody546_197 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 96#64]),
      Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64])])

def loopBody546_198 : HolLoopProg 64 :=
.mark loopBody546_197

def loopBody546_199 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 7)

def loopBody546_200 : HolLoopProg 64 :=
.mark loopBody546_199

def loopBody546_201 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 6) 8

def loopBody546_202 : HolLoopProg 64 :=
.mark loopBody546_201

def loopBody546_203 : HolLoopProg 64 :=
.seq loopBody546_202 loopBody546_1

def loopBody546_204 : HolLoopProg 64 :=
.mark loopBody546_203

def loopBody546_205 : HolLoopProg 64 :=
.seq loopBody546_200 loopBody546_204

def loopBody546_206 : HolLoopProg 64 :=
.mark loopBody546_205

def loopBody546_207 : HolLoopProg 64 :=
.seq loopBody546_206 loopBody546_1

def loopBody546_208 : HolLoopProg 64 :=
.mark loopBody546_207

def loopBody546_209 : HolLoopProg 64 :=
.seq loopBody546_198 loopBody546_208

def loopBody546_210 : HolLoopProg 64 :=
.mark loopBody546_209

def loopBody546_211 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_210

def loopBody546_212 : HolLoopProg 64 :=
.mark loopBody546_211

def loopBody546_213 : HolLoopProg 64 :=
.seq loopBody546_196 loopBody546_212

def loopBody546_214 : HolLoopProg 64 :=
.mark loopBody546_213

def loopBody546_215 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_214

def loopBody546_216 : HolLoopProg 64 :=
.mark loopBody546_215

def loopBody546_217 : HolLoopProg 64 :=
.seq loopBody546_194 loopBody546_216

def loopBody546_218 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 136#64]))

def loopBody546_219 : HolLoopProg 64 :=
.mark loopBody546_218

def loopBody546_220 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 136#64]))

def loopBody546_221 : HolLoopProg 64 :=
.mark loopBody546_220

def loopBody546_222 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 432) ([7, 8]) (some (7, loopBody546_149, loopBody546_1, (Flapjack.Spt.ln)))

def loopBody546_223 : HolLoopProg 64 :=
.mark loopBody546_222

def loopBody546_224 : HolLoopProg 64 :=
.seq loopBody546_223 loopBody546_1

def loopBody546_225 : HolLoopProg 64 :=
.mark loopBody546_224

def loopBody546_226 : HolLoopProg 64 :=
.seq loopBody546_221 loopBody546_225

def loopBody546_227 : HolLoopProg 64 :=
.mark loopBody546_226

def loopBody546_228 : HolLoopProg 64 :=
.seq loopBody546_219 loopBody546_227

def loopBody546_229 : HolLoopProg 64 :=
.mark loopBody546_228

def loopBody546_230 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_229

def loopBody546_231 : HolLoopProg 64 :=
.mark loopBody546_230

def loopBody546_232 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_231

def loopBody546_233 : HolLoopProg 64 :=
.mark loopBody546_232

def loopBody546_234 : HolLoopProg 64 :=
.seq loopBody546_217 loopBody546_233

def loopBody546_235 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody546_236 : HolLoopProg 64 :=
.mark loopBody546_235

def loopBody546_237 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody546_238 : HolLoopProg 64 :=
.mark loopBody546_237

def loopBody546_239 : HolLoopProg 64 :=
.seq loopBody546_238 loopBody546_1

def loopBody546_240 : HolLoopProg 64 :=
.mark loopBody546_239

def loopBody546_241 : HolLoopProg 64 :=
.seq loopBody546_236 loopBody546_240

def loopBody546_242 : HolLoopProg 64 :=
.mark loopBody546_241

def loopBody546_243 : HolLoopProg 64 :=
.seq loopBody546_234 loopBody546_242

def loopBody546_244 : HolLoopProg 64 :=
.seq loopBody546_131 loopBody546_243

def loopBody546_245 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_244

def loopBody546_246 : HolLoopProg 64 :=
.seq loopBody546_129 loopBody546_245

def loopBody546_247 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_246

def loopBody546_248 : HolLoopProg 64 :=
.seq loopBody546_127 loopBody546_247

def loopBody546_249 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_248

def loopBody546_250 : HolLoopProg 64 :=
.seq loopBody546_125 loopBody546_249

def loopBody546_251 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_250

def loopBody546_252 : HolLoopProg 64 :=
.seq loopBody546_123 loopBody546_251

def loopBody546_253 : HolLoopProg 64 :=
.seq loopBody546_41 loopBody546_252

def loopBody546_254 : HolLoopProg 64 :=
.seq loopBody546_1 loopBody546_253

def loopBody546_255 : HolLoopProg 64 :=
.seq loopBody546_39 loopBody546_254

def output546 : Nat × List Nat × HolLoopProg 64 :=
  (610, [0], loopBody546_255)
end InitECandidate.Proofs.FrontendStages.Loop
