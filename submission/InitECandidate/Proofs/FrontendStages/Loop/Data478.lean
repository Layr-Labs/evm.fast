import InitECandidate.Proofs.FrontendStages.Loop.Translate462
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody478_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody478_1 : HolLoopProg 64 :=
.mark loopBody478_0

def loopBody478_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 3#64)

def loopBody478_3 : HolLoopProg 64 :=
.mark loopBody478_2

def loopBody478_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody478_5 : HolLoopProg 64 :=
.mark loopBody478_4

def loopBody478_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody478_5, loopBody478_1, (Flapjack.Spt.ln)))

def loopBody478_7 : HolLoopProg 64 :=
.mark loopBody478_6

def loopBody478_8 : HolLoopProg 64 :=
.seq loopBody478_7 loopBody478_1

def loopBody478_9 : HolLoopProg 64 :=
.mark loopBody478_8

def loopBody478_10 : HolLoopProg 64 :=
.seq loopBody478_3 loopBody478_9

def loopBody478_11 : HolLoopProg 64 :=
.mark loopBody478_10

def loopBody478_12 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_11

def loopBody478_13 : HolLoopProg 64 :=
.mark loopBody478_12

def loopBody478_14 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_13

def loopBody478_15 : HolLoopProg 64 :=
.mark loopBody478_14

def loopBody478_16 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 540) ([]) (some (2, loopBody478_5, loopBody478_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody478_17 : HolLoopProg 64 :=
.mark loopBody478_16

def loopBody478_18 : HolLoopProg 64 :=
.seq loopBody478_17 loopBody478_1

def loopBody478_19 : HolLoopProg 64 :=
.mark loopBody478_18

def loopBody478_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody478_21 : HolLoopProg 64 :=
.mark loopBody478_20

def loopBody478_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody478_23 : HolLoopProg 64 :=
.mark loopBody478_22

def loopBody478_24 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 541) ([3]) (some (3, loopBody478_23, loopBody478_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody478_25 : HolLoopProg 64 :=
.mark loopBody478_24

def loopBody478_26 : HolLoopProg 64 :=
.seq loopBody478_25 loopBody478_1

def loopBody478_27 : HolLoopProg 64 :=
.mark loopBody478_26

def loopBody478_28 : HolLoopProg 64 :=
.seq loopBody478_21 loopBody478_27

def loopBody478_29 : HolLoopProg 64 :=
.mark loopBody478_28

def loopBody478_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody478_31 : HolLoopProg 64 :=
.mark loopBody478_30

def loopBody478_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody478_33 : HolLoopProg 64 :=
.mark loopBody478_32

def loopBody478_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody478_35 : HolLoopProg 64 :=
.mark loopBody478_34

def loopBody478_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody478_37 : HolLoopProg 64 :=
.mark loopBody478_36

def loopBody478_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody478_35 loopBody478_37 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody478_39 : HolLoopProg 64 :=
.mark loopBody478_38

def loopBody478_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody478_41 : HolLoopProg 64 :=
.mark loopBody478_40

def loopBody478_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 2#64)

def loopBody478_43 : HolLoopProg 64 :=
.mark loopBody478_42

def loopBody478_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 3)

def loopBody478_45 : HolLoopProg 64 :=
.mark loopBody478_44

def loopBody478_46 : HolLoopProg 64 :=
.seq loopBody478_45 loopBody478_1

def loopBody478_47 : HolLoopProg 64 :=
.mark loopBody478_46

def loopBody478_48 : HolLoopProg 64 :=
.seq loopBody478_47 loopBody478_1

def loopBody478_49 : HolLoopProg 64 :=
.mark loopBody478_48

def loopBody478_50 : HolLoopProg 64 :=
.seq loopBody478_43 loopBody478_49

def loopBody478_51 : HolLoopProg 64 :=
.mark loopBody478_50

def loopBody478_52 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_51

def loopBody478_53 : HolLoopProg 64 :=
.mark loopBody478_52

def loopBody478_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 8#64)

def loopBody478_55 : HolLoopProg 64 :=
.mark loopBody478_54

def loopBody478_56 : HolLoopProg 64 :=
.seq loopBody478_55 loopBody478_23

def loopBody478_57 : HolLoopProg 64 :=
.mark loopBody478_56

def loopBody478_58 : HolLoopProg 64 :=
.seq loopBody478_53 loopBody478_57

def loopBody478_59 : HolLoopProg 64 :=
.mark loopBody478_58

def loopBody478_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody478_59 loopBody478_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody478_61 : HolLoopProg 64 :=
.mark loopBody478_60

def loopBody478_62 : HolLoopProg 64 :=
.seq loopBody478_61 loopBody478_1

def loopBody478_63 : HolLoopProg 64 :=
.mark loopBody478_62

def loopBody478_64 : HolLoopProg 64 :=
.seq loopBody478_41 loopBody478_63

def loopBody478_65 : HolLoopProg 64 :=
.mark loopBody478_64

def loopBody478_66 : HolLoopProg 64 :=
.seq loopBody478_39 loopBody478_65

def loopBody478_67 : HolLoopProg 64 :=
.mark loopBody478_66

def loopBody478_68 : HolLoopProg 64 :=
.seq loopBody478_33 loopBody478_67

def loopBody478_69 : HolLoopProg 64 :=
.mark loopBody478_68

def loopBody478_70 : HolLoopProg 64 :=
.seq loopBody478_31 loopBody478_69

def loopBody478_71 : HolLoopProg 64 :=
.mark loopBody478_70

def loopBody478_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody478_73 : HolLoopProg 64 :=
.mark loopBody478_72

def loopBody478_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.load
                (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                  [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
              Flapjack.HolLoopExp.const 8#64]),
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 2])
          (Flapjack.HolLoopExp.const 5#64)]))

def loopBody478_75 : HolLoopProg 64 :=
.mark loopBody478_74

def loopBody478_76 : HolLoopProg 64 :=
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
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 2])
              (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody478_77 : HolLoopProg 64 :=
.mark loopBody478_76

def loopBody478_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
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
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 2])
              (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody478_79 : HolLoopProg 64 :=
.mark loopBody478_78

def loopBody478_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
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
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 2])
              (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody478_81 : HolLoopProg 64 :=
.mark loopBody478_80

def loopBody478_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody478_83 : HolLoopProg 64 :=
.mark loopBody478_82

def loopBody478_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody478_85 : HolLoopProg 64 :=
.mark loopBody478_84

def loopBody478_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 6)

def loopBody478_87 : HolLoopProg 64 :=
.mark loopBody478_86

def loopBody478_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 7)

def loopBody478_89 : HolLoopProg 64 :=
.mark loopBody478_88

def loopBody478_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody478_91 : HolLoopProg 64 :=
.mark loopBody478_90

def loopBody478_92 : HolLoopProg 64 :=
.call (some ([8], Flapjack.Spt.ln)) (some 476) ([9, 10, 11, 12]) (some (9, loopBody478_91, loopBody478_1, (Flapjack.Spt.ln)))

def loopBody478_93 : HolLoopProg 64 :=
.mark loopBody478_92

def loopBody478_94 : HolLoopProg 64 :=
.seq loopBody478_93 loopBody478_1

def loopBody478_95 : HolLoopProg 64 :=
.mark loopBody478_94

def loopBody478_96 : HolLoopProg 64 :=
.seq loopBody478_89 loopBody478_95

def loopBody478_97 : HolLoopProg 64 :=
.mark loopBody478_96

def loopBody478_98 : HolLoopProg 64 :=
.seq loopBody478_87 loopBody478_97

def loopBody478_99 : HolLoopProg 64 :=
.mark loopBody478_98

def loopBody478_100 : HolLoopProg 64 :=
.seq loopBody478_85 loopBody478_99

def loopBody478_101 : HolLoopProg 64 :=
.mark loopBody478_100

def loopBody478_102 : HolLoopProg 64 :=
.seq loopBody478_83 loopBody478_101

def loopBody478_103 : HolLoopProg 64 :=
.mark loopBody478_102

def loopBody478_104 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_103

def loopBody478_105 : HolLoopProg 64 :=
.mark loopBody478_104

def loopBody478_106 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_105

def loopBody478_107 : HolLoopProg 64 :=
.mark loopBody478_106

def loopBody478_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 2#64)

def loopBody478_109 : HolLoopProg 64 :=
.mark loopBody478_108

def loopBody478_110 : HolLoopProg 64 :=
.call (some ([8], Flapjack.Spt.ln)) (some 490) ([9]) (some (9, loopBody478_91, loopBody478_1, (Flapjack.Spt.ln)))

def loopBody478_111 : HolLoopProg 64 :=
.mark loopBody478_110

def loopBody478_112 : HolLoopProg 64 :=
.seq loopBody478_111 loopBody478_1

def loopBody478_113 : HolLoopProg 64 :=
.mark loopBody478_112

def loopBody478_114 : HolLoopProg 64 :=
.seq loopBody478_109 loopBody478_113

def loopBody478_115 : HolLoopProg 64 :=
.mark loopBody478_114

def loopBody478_116 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_115

def loopBody478_117 : HolLoopProg 64 :=
.mark loopBody478_116

def loopBody478_118 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_117

def loopBody478_119 : HolLoopProg 64 :=
.mark loopBody478_118

def loopBody478_120 : HolLoopProg 64 :=
.seq loopBody478_107 loopBody478_119

def loopBody478_121 : HolLoopProg 64 :=
.mark loopBody478_120

def loopBody478_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody478_123 : HolLoopProg 64 :=
.mark loopBody478_122

def loopBody478_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody478_125 : HolLoopProg 64 :=
.mark loopBody478_124

def loopBody478_126 : HolLoopProg 64 :=
.seq loopBody478_125 loopBody478_1

def loopBody478_127 : HolLoopProg 64 :=
.mark loopBody478_126

def loopBody478_128 : HolLoopProg 64 :=
.seq loopBody478_123 loopBody478_127

def loopBody478_129 : HolLoopProg 64 :=
.mark loopBody478_128

def loopBody478_130 : HolLoopProg 64 :=
.seq loopBody478_121 loopBody478_129

def loopBody478_131 : HolLoopProg 64 :=
.mark loopBody478_130

def loopBody478_132 : HolLoopProg 64 :=
.seq loopBody478_81 loopBody478_131

def loopBody478_133 : HolLoopProg 64 :=
.mark loopBody478_132

def loopBody478_134 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_133

def loopBody478_135 : HolLoopProg 64 :=
.mark loopBody478_134

def loopBody478_136 : HolLoopProg 64 :=
.seq loopBody478_79 loopBody478_135

def loopBody478_137 : HolLoopProg 64 :=
.mark loopBody478_136

def loopBody478_138 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_137

def loopBody478_139 : HolLoopProg 64 :=
.mark loopBody478_138

def loopBody478_140 : HolLoopProg 64 :=
.seq loopBody478_77 loopBody478_139

def loopBody478_141 : HolLoopProg 64 :=
.mark loopBody478_140

def loopBody478_142 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_141

def loopBody478_143 : HolLoopProg 64 :=
.mark loopBody478_142

def loopBody478_144 : HolLoopProg 64 :=
.seq loopBody478_75 loopBody478_143

def loopBody478_145 : HolLoopProg 64 :=
.mark loopBody478_144

def loopBody478_146 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_145

def loopBody478_147 : HolLoopProg 64 :=
.mark loopBody478_146

def loopBody478_148 : HolLoopProg 64 :=
.seq loopBody478_73 loopBody478_147

def loopBody478_149 : HolLoopProg 64 :=
.mark loopBody478_148

def loopBody478_150 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_149

def loopBody478_151 : HolLoopProg 64 :=
.mark loopBody478_150

def loopBody478_152 : HolLoopProg 64 :=
.seq loopBody478_71 loopBody478_151

def loopBody478_153 : HolLoopProg 64 :=
.mark loopBody478_152

def loopBody478_154 : HolLoopProg 64 :=
.seq loopBody478_29 loopBody478_153

def loopBody478_155 : HolLoopProg 64 :=
.mark loopBody478_154

def loopBody478_156 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_155

def loopBody478_157 : HolLoopProg 64 :=
.mark loopBody478_156

def loopBody478_158 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_157

def loopBody478_159 : HolLoopProg 64 :=
.mark loopBody478_158

def loopBody478_160 : HolLoopProg 64 :=
.seq loopBody478_19 loopBody478_159

def loopBody478_161 : HolLoopProg 64 :=
.mark loopBody478_160

def loopBody478_162 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_161

def loopBody478_163 : HolLoopProg 64 :=
.mark loopBody478_162

def loopBody478_164 : HolLoopProg 64 :=
.seq loopBody478_1 loopBody478_163

def loopBody478_165 : HolLoopProg 64 :=
.mark loopBody478_164

def loopBody478_166 : HolLoopProg 64 :=
.seq loopBody478_15 loopBody478_165

def loopBody478_167 : HolLoopProg 64 :=
.mark loopBody478_166

def output478 : Nat × List Nat × HolLoopProg 64 :=
  (542, [], loopBody478_167)
end InitECandidate.Proofs.FrontendStages.Loop
