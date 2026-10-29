import InitECandidate.Proofs.FrontendStages.Loop.Translate457
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody473_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody473_1 : HolLoopProg 64 :=
.mark loopBody473_0

def loopBody473_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 3#64)

def loopBody473_3 : HolLoopProg 64 :=
.mark loopBody473_2

def loopBody473_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody473_5 : HolLoopProg 64 :=
.mark loopBody473_4

def loopBody473_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 470) ([2]) (some (2, loopBody473_5, loopBody473_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody473_7 : HolLoopProg 64 :=
.mark loopBody473_6

def loopBody473_8 : HolLoopProg 64 :=
.seq loopBody473_7 loopBody473_1

def loopBody473_9 : HolLoopProg 64 :=
.mark loopBody473_8

def loopBody473_10 : HolLoopProg 64 :=
.seq loopBody473_3 loopBody473_9

def loopBody473_11 : HolLoopProg 64 :=
.mark loopBody473_10

def loopBody473_12 : HolLoopProg 64 :=
.seq loopBody473_1 loopBody473_11

def loopBody473_13 : HolLoopProg 64 :=
.mark loopBody473_12

def loopBody473_14 : HolLoopProg 64 :=
.seq loopBody473_1 loopBody473_13

def loopBody473_15 : HolLoopProg 64 :=
.mark loopBody473_14

def loopBody473_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody473_17 : HolLoopProg 64 :=
.mark loopBody473_16

def loopBody473_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody473_19 : HolLoopProg 64 :=
.mark loopBody473_18

def loopBody473_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody473_21 : HolLoopProg 64 :=
.mark loopBody473_20

def loopBody473_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody473_23 : HolLoopProg 64 :=
.mark loopBody473_22

def loopBody473_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody473_25 : HolLoopProg 64 :=
.mark loopBody473_24

def loopBody473_26 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.RegImm.reg 4) loopBody473_23 loopBody473_25 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody473_27 : HolLoopProg 64 :=
.mark loopBody473_26

def loopBody473_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody473_29 : HolLoopProg 64 :=
.mark loopBody473_28

def loopBody473_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody473_31 : HolLoopProg 64 :=
.mark loopBody473_30

def loopBody473_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 2)

def loopBody473_33 : HolLoopProg 64 :=
.mark loopBody473_32

def loopBody473_34 : HolLoopProg 64 :=
.seq loopBody473_33 loopBody473_1

def loopBody473_35 : HolLoopProg 64 :=
.mark loopBody473_34

def loopBody473_36 : HolLoopProg 64 :=
.seq loopBody473_35 loopBody473_1

def loopBody473_37 : HolLoopProg 64 :=
.mark loopBody473_36

def loopBody473_38 : HolLoopProg 64 :=
.seq loopBody473_31 loopBody473_37

def loopBody473_39 : HolLoopProg 64 :=
.mark loopBody473_38

def loopBody473_40 : HolLoopProg 64 :=
.seq loopBody473_1 loopBody473_39

def loopBody473_41 : HolLoopProg 64 :=
.mark loopBody473_40

def loopBody473_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 8#64)

def loopBody473_43 : HolLoopProg 64 :=
.mark loopBody473_42

def loopBody473_44 : HolLoopProg 64 :=
.seq loopBody473_43 loopBody473_5

def loopBody473_45 : HolLoopProg 64 :=
.mark loopBody473_44

def loopBody473_46 : HolLoopProg 64 :=
.seq loopBody473_41 loopBody473_45

def loopBody473_47 : HolLoopProg 64 :=
.mark loopBody473_46

def loopBody473_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody473_47 loopBody473_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody473_49 : HolLoopProg 64 :=
.mark loopBody473_48

def loopBody473_50 : HolLoopProg 64 :=
.seq loopBody473_49 loopBody473_1

def loopBody473_51 : HolLoopProg 64 :=
.mark loopBody473_50

def loopBody473_52 : HolLoopProg 64 :=
.seq loopBody473_29 loopBody473_51

def loopBody473_53 : HolLoopProg 64 :=
.mark loopBody473_52

def loopBody473_54 : HolLoopProg 64 :=
.seq loopBody473_27 loopBody473_53

def loopBody473_55 : HolLoopProg 64 :=
.mark loopBody473_54

def loopBody473_56 : HolLoopProg 64 :=
.seq loopBody473_21 loopBody473_55

def loopBody473_57 : HolLoopProg 64 :=
.mark loopBody473_56

def loopBody473_58 : HolLoopProg 64 :=
.seq loopBody473_19 loopBody473_57

def loopBody473_59 : HolLoopProg 64 :=
.mark loopBody473_58

def loopBody473_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.load
                (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                  [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
              Flapjack.HolLoopExp.const 8#64]),
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
            [Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 1#64],
              Flapjack.HolLoopExp.var 0])
          (Flapjack.HolLoopExp.const 5#64)]))

def loopBody473_61 : HolLoopProg 64 :=
.mark loopBody473_60

def loopBody473_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.add
                [Flapjack.HolLoopExp.load
                    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                      [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
                  Flapjack.HolLoopExp.const 8#64]),
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 1#64],
                  Flapjack.HolLoopExp.var 0])
              (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody473_63 : HolLoopProg 64 :=
.mark loopBody473_62

def loopBody473_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.add
                [Flapjack.HolLoopExp.load
                    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                      [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
                  Flapjack.HolLoopExp.const 8#64]),
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 1#64],
                  Flapjack.HolLoopExp.var 0])
              (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody473_65 : HolLoopProg 64 :=
.mark loopBody473_64

def loopBody473_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.add
                [Flapjack.HolLoopExp.load
                    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                      [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
                  Flapjack.HolLoopExp.const 8#64]),
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 1#64],
                  Flapjack.HolLoopExp.var 0])
              (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody473_67 : HolLoopProg 64 :=
.mark loopBody473_66

def loopBody473_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody473_69 : HolLoopProg 64 :=
.mark loopBody473_68

def loopBody473_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody473_71 : HolLoopProg 64 :=
.mark loopBody473_70

def loopBody473_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody473_73 : HolLoopProg 64 :=
.mark loopBody473_72

def loopBody473_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody473_75 : HolLoopProg 64 :=
.mark loopBody473_74

def loopBody473_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody473_77 : HolLoopProg 64 :=
.mark loopBody473_76

def loopBody473_78 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 476) ([7, 8, 9, 10]) (some (7, loopBody473_77, loopBody473_1, (Flapjack.Spt.ln)))

def loopBody473_79 : HolLoopProg 64 :=
.mark loopBody473_78

def loopBody473_80 : HolLoopProg 64 :=
.seq loopBody473_79 loopBody473_1

def loopBody473_81 : HolLoopProg 64 :=
.mark loopBody473_80

def loopBody473_82 : HolLoopProg 64 :=
.seq loopBody473_75 loopBody473_81

def loopBody473_83 : HolLoopProg 64 :=
.mark loopBody473_82

def loopBody473_84 : HolLoopProg 64 :=
.seq loopBody473_73 loopBody473_83

def loopBody473_85 : HolLoopProg 64 :=
.mark loopBody473_84

def loopBody473_86 : HolLoopProg 64 :=
.seq loopBody473_71 loopBody473_85

def loopBody473_87 : HolLoopProg 64 :=
.mark loopBody473_86

def loopBody473_88 : HolLoopProg 64 :=
.seq loopBody473_69 loopBody473_87

def loopBody473_89 : HolLoopProg 64 :=
.mark loopBody473_88

def loopBody473_90 : HolLoopProg 64 :=
.seq loopBody473_1 loopBody473_89

def loopBody473_91 : HolLoopProg 64 :=
.mark loopBody473_90

def loopBody473_92 : HolLoopProg 64 :=
.seq loopBody473_1 loopBody473_91

def loopBody473_93 : HolLoopProg 64 :=
.mark loopBody473_92

def loopBody473_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody473_95 : HolLoopProg 64 :=
.mark loopBody473_94

def loopBody473_96 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 490) ([7]) (some (7, loopBody473_77, loopBody473_1, (Flapjack.Spt.ln)))

def loopBody473_97 : HolLoopProg 64 :=
.mark loopBody473_96

def loopBody473_98 : HolLoopProg 64 :=
.seq loopBody473_97 loopBody473_1

def loopBody473_99 : HolLoopProg 64 :=
.mark loopBody473_98

def loopBody473_100 : HolLoopProg 64 :=
.seq loopBody473_95 loopBody473_99

def loopBody473_101 : HolLoopProg 64 :=
.mark loopBody473_100

def loopBody473_102 : HolLoopProg 64 :=
.seq loopBody473_1 loopBody473_101

def loopBody473_103 : HolLoopProg 64 :=
.mark loopBody473_102

def loopBody473_104 : HolLoopProg 64 :=
.seq loopBody473_1 loopBody473_103

def loopBody473_105 : HolLoopProg 64 :=
.mark loopBody473_104

def loopBody473_106 : HolLoopProg 64 :=
.seq loopBody473_93 loopBody473_105

def loopBody473_107 : HolLoopProg 64 :=
.mark loopBody473_106

def loopBody473_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody473_109 : HolLoopProg 64 :=
.mark loopBody473_108

def loopBody473_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody473_111 : HolLoopProg 64 :=
.mark loopBody473_110

def loopBody473_112 : HolLoopProg 64 :=
.seq loopBody473_111 loopBody473_1

def loopBody473_113 : HolLoopProg 64 :=
.mark loopBody473_112

def loopBody473_114 : HolLoopProg 64 :=
.seq loopBody473_109 loopBody473_113

def loopBody473_115 : HolLoopProg 64 :=
.mark loopBody473_114

def loopBody473_116 : HolLoopProg 64 :=
.seq loopBody473_107 loopBody473_115

def loopBody473_117 : HolLoopProg 64 :=
.mark loopBody473_116

def loopBody473_118 : HolLoopProg 64 :=
.seq loopBody473_67 loopBody473_117

def loopBody473_119 : HolLoopProg 64 :=
.mark loopBody473_118

def loopBody473_120 : HolLoopProg 64 :=
.seq loopBody473_1 loopBody473_119

def loopBody473_121 : HolLoopProg 64 :=
.mark loopBody473_120

def loopBody473_122 : HolLoopProg 64 :=
.seq loopBody473_65 loopBody473_121

def loopBody473_123 : HolLoopProg 64 :=
.mark loopBody473_122

def loopBody473_124 : HolLoopProg 64 :=
.seq loopBody473_1 loopBody473_123

def loopBody473_125 : HolLoopProg 64 :=
.mark loopBody473_124

def loopBody473_126 : HolLoopProg 64 :=
.seq loopBody473_63 loopBody473_125

def loopBody473_127 : HolLoopProg 64 :=
.mark loopBody473_126

def loopBody473_128 : HolLoopProg 64 :=
.seq loopBody473_1 loopBody473_127

def loopBody473_129 : HolLoopProg 64 :=
.mark loopBody473_128

def loopBody473_130 : HolLoopProg 64 :=
.seq loopBody473_61 loopBody473_129

def loopBody473_131 : HolLoopProg 64 :=
.mark loopBody473_130

def loopBody473_132 : HolLoopProg 64 :=
.seq loopBody473_1 loopBody473_131

def loopBody473_133 : HolLoopProg 64 :=
.mark loopBody473_132

def loopBody473_134 : HolLoopProg 64 :=
.seq loopBody473_59 loopBody473_133

def loopBody473_135 : HolLoopProg 64 :=
.mark loopBody473_134

def loopBody473_136 : HolLoopProg 64 :=
.seq loopBody473_17 loopBody473_135

def loopBody473_137 : HolLoopProg 64 :=
.mark loopBody473_136

def loopBody473_138 : HolLoopProg 64 :=
.seq loopBody473_1 loopBody473_137

def loopBody473_139 : HolLoopProg 64 :=
.mark loopBody473_138

def loopBody473_140 : HolLoopProg 64 :=
.seq loopBody473_15 loopBody473_139

def loopBody473_141 : HolLoopProg 64 :=
.mark loopBody473_140

def output473 : Nat × List Nat × HolLoopProg 64 :=
  (537, [0], loopBody473_141)
end InitECandidate.Proofs.FrontendStages.Loop
