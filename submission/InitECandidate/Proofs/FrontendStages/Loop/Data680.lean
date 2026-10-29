import InitECandidate.Proofs.FrontendStages.Loop.Translate664
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody680_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody680_1 : HolLoopProg 64 :=
.mark loopBody680_0

def loopBody680_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody680_3 : HolLoopProg 64 :=
.mark loopBody680_2

def loopBody680_4 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 69) ([]) (some (5, loopBody680_3, loopBody680_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody680_5 : HolLoopProg 64 :=
.mark loopBody680_4

def loopBody680_6 : HolLoopProg 64 :=
.seq loopBody680_5 loopBody680_1

def loopBody680_7 : HolLoopProg 64 :=
.mark loopBody680_6

def loopBody680_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 96#64)

def loopBody680_9 : HolLoopProg 64 :=
.mark loopBody680_8

def loopBody680_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody680_11 : HolLoopProg 64 :=
.mark loopBody680_10

def loopBody680_12 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([6]) (some (6, loopBody680_11, loopBody680_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody680_13 : HolLoopProg 64 :=
.mark loopBody680_12

def loopBody680_14 : HolLoopProg 64 :=
.seq loopBody680_13 loopBody680_1

def loopBody680_15 : HolLoopProg 64 :=
.mark loopBody680_14

def loopBody680_16 : HolLoopProg 64 :=
.seq loopBody680_9 loopBody680_15

def loopBody680_17 : HolLoopProg 64 :=
.mark loopBody680_16

def loopBody680_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 96#64)

def loopBody680_19 : HolLoopProg 64 :=
.mark loopBody680_18

def loopBody680_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody680_21 : HolLoopProg 64 :=
.mark loopBody680_20

def loopBody680_22 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([7]) (some (7, loopBody680_21, loopBody680_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody680_23 : HolLoopProg 64 :=
.mark loopBody680_22

def loopBody680_24 : HolLoopProg 64 :=
.seq loopBody680_23 loopBody680_1

def loopBody680_25 : HolLoopProg 64 :=
.mark loopBody680_24

def loopBody680_26 : HolLoopProg 64 :=
.seq loopBody680_19 loopBody680_25

def loopBody680_27 : HolLoopProg 64 :=
.mark loopBody680_26

def loopBody680_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody680_29 : HolLoopProg 64 :=
.mark loopBody680_28

def loopBody680_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody680_31 : HolLoopProg 64 :=
.mark loopBody680_30

def loopBody680_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody680_33 : HolLoopProg 64 :=
.mark loopBody680_32

def loopBody680_34 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 729) ([8, 9]) (some (8, loopBody680_33, loopBody680_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody680_35 : HolLoopProg 64 :=
.mark loopBody680_34

def loopBody680_36 : HolLoopProg 64 :=
.seq loopBody680_35 loopBody680_1

def loopBody680_37 : HolLoopProg 64 :=
.mark loopBody680_36

def loopBody680_38 : HolLoopProg 64 :=
.seq loopBody680_31 loopBody680_37

def loopBody680_39 : HolLoopProg 64 :=
.mark loopBody680_38

def loopBody680_40 : HolLoopProg 64 :=
.seq loopBody680_29 loopBody680_39

def loopBody680_41 : HolLoopProg 64 :=
.mark loopBody680_40

def loopBody680_42 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_41

def loopBody680_43 : HolLoopProg 64 :=
.mark loopBody680_42

def loopBody680_44 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_43

def loopBody680_45 : HolLoopProg 64 :=
.mark loopBody680_44

def loopBody680_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody680_47 : HolLoopProg 64 :=
.mark loopBody680_46

def loopBody680_48 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 731) ([8]) (some (8, loopBody680_33, loopBody680_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody680_49 : HolLoopProg 64 :=
.mark loopBody680_48

def loopBody680_50 : HolLoopProg 64 :=
.seq loopBody680_49 loopBody680_1

def loopBody680_51 : HolLoopProg 64 :=
.mark loopBody680_50

def loopBody680_52 : HolLoopProg 64 :=
.seq loopBody680_47 loopBody680_51

def loopBody680_53 : HolLoopProg 64 :=
.mark loopBody680_52

def loopBody680_54 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_53

def loopBody680_55 : HolLoopProg 64 :=
.mark loopBody680_54

def loopBody680_56 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_55

def loopBody680_57 : HolLoopProg 64 :=
.mark loopBody680_56

def loopBody680_58 : HolLoopProg 64 :=
.seq loopBody680_45 loopBody680_57

def loopBody680_59 : HolLoopProg 64 :=
.mark loopBody680_58

def loopBody680_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody680_61 : HolLoopProg 64 :=
.mark loopBody680_60

def loopBody680_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 6#64))

def loopBody680_63 : HolLoopProg 64 :=
.mark loopBody680_62

def loopBody680_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody680_65 : HolLoopProg 64 :=
.mark loopBody680_64

def loopBody680_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 8)

def loopBody680_67 : HolLoopProg 64 :=
.mark loopBody680_66

def loopBody680_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody680_69 : HolLoopProg 64 :=
.mark loopBody680_68

def loopBody680_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.RegImm.reg 11) loopBody680_69 loopBody680_65 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody680_71 : HolLoopProg 64 :=
.mark loopBody680_70

def loopBody680_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody680_73 : HolLoopProg 64 :=
.mark loopBody680_72

def loopBody680_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 8, Flapjack.HolLoopExp.const 1#64])

def loopBody680_75 : HolLoopProg 64 :=
.mark loopBody680_74

def loopBody680_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 9)

def loopBody680_77 : HolLoopProg 64 :=
.mark loopBody680_76

def loopBody680_78 : HolLoopProg 64 :=
.seq loopBody680_77 loopBody680_1

def loopBody680_79 : HolLoopProg 64 :=
.mark loopBody680_78

def loopBody680_80 : HolLoopProg 64 :=
.seq loopBody680_79 loopBody680_1

def loopBody680_81 : HolLoopProg 64 :=
.mark loopBody680_80

def loopBody680_82 : HolLoopProg 64 :=
.seq loopBody680_75 loopBody680_81

def loopBody680_83 : HolLoopProg 64 :=
.mark loopBody680_82

def loopBody680_84 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_83

def loopBody680_85 : HolLoopProg 64 :=
.mark loopBody680_84

def loopBody680_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 7)

def loopBody680_87 : HolLoopProg 64 :=
.mark loopBody680_86

def loopBody680_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 1#64)

def loopBody680_89 : HolLoopProg 64 :=
.mark loopBody680_88

def loopBody680_90 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.RegImm.reg 11) loopBody680_69 loopBody680_65 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody680_91 : HolLoopProg 64 :=
.mark loopBody680_90

def loopBody680_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody680_93 : HolLoopProg 64 :=
.mark loopBody680_92

def loopBody680_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 6)

def loopBody680_95 : HolLoopProg 64 :=
.mark loopBody680_94

def loopBody680_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody680_97 : HolLoopProg 64 :=
.mark loopBody680_96

def loopBody680_98 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 740) ([10, 11]) (some (10, loopBody680_97, loopBody680_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody680_99 : HolLoopProg 64 :=
.mark loopBody680_98

def loopBody680_100 : HolLoopProg 64 :=
.seq loopBody680_99 loopBody680_1

def loopBody680_101 : HolLoopProg 64 :=
.mark loopBody680_100

def loopBody680_102 : HolLoopProg 64 :=
.seq loopBody680_95 loopBody680_101

def loopBody680_103 : HolLoopProg 64 :=
.mark loopBody680_102

def loopBody680_104 : HolLoopProg 64 :=
.seq loopBody680_93 loopBody680_103

def loopBody680_105 : HolLoopProg 64 :=
.mark loopBody680_104

def loopBody680_106 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_105

def loopBody680_107 : HolLoopProg 64 :=
.mark loopBody680_106

def loopBody680_108 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_107

def loopBody680_109 : HolLoopProg 64 :=
.mark loopBody680_108

def loopBody680_110 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody680_109 loopBody680_1 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody680_111 : HolLoopProg 64 :=
.mark loopBody680_110

def loopBody680_112 : HolLoopProg 64 :=
.seq loopBody680_111 loopBody680_1

def loopBody680_113 : HolLoopProg 64 :=
.mark loopBody680_112

def loopBody680_114 : HolLoopProg 64 :=
.seq loopBody680_73 loopBody680_113

def loopBody680_115 : HolLoopProg 64 :=
.mark loopBody680_114

def loopBody680_116 : HolLoopProg 64 :=
.seq loopBody680_91 loopBody680_115

def loopBody680_117 : HolLoopProg 64 :=
.mark loopBody680_116

def loopBody680_118 : HolLoopProg 64 :=
.seq loopBody680_89 loopBody680_117

def loopBody680_119 : HolLoopProg 64 :=
.mark loopBody680_118

def loopBody680_120 : HolLoopProg 64 :=
.seq loopBody680_87 loopBody680_119

def loopBody680_121 : HolLoopProg 64 :=
.mark loopBody680_120

def loopBody680_122 : HolLoopProg 64 :=
.seq loopBody680_85 loopBody680_121

def loopBody680_123 : HolLoopProg 64 :=
.mark loopBody680_122

def loopBody680_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr
        (Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.var 2,
              Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
                (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 8)
                  (Flapjack.HolLoopExp.const 6#64))
                (Flapjack.HolLoopExp.const 3#64)]))
        (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 8, Flapjack.HolLoopExp.const 63#64]),
      Flapjack.HolLoopExp.const 1#64])

def loopBody680_125 : HolLoopProg 64 :=
.mark loopBody680_124

def loopBody680_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody680_127 : HolLoopProg 64 :=
.mark loopBody680_126

def loopBody680_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody680_129 : HolLoopProg 64 :=
.mark loopBody680_128

def loopBody680_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody680_131 : HolLoopProg 64 :=
.mark loopBody680_130

def loopBody680_132 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.RegImm.reg 12) loopBody680_89 loopBody680_131 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody680_133 : HolLoopProg 64 :=
.mark loopBody680_132

def loopBody680_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 11)

def loopBody680_135 : HolLoopProg 64 :=
.mark loopBody680_134

def loopBody680_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 6)

def loopBody680_137 : HolLoopProg 64 :=
.mark loopBody680_136

def loopBody680_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 5)

def loopBody680_139 : HolLoopProg 64 :=
.mark loopBody680_138

def loopBody680_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody680_141 : HolLoopProg 64 :=
.mark loopBody680_140

def loopBody680_142 : HolLoopProg 64 :=
.call (some
  ([10],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 739) ([11, 12, 13]) (some (11, loopBody680_141, loopBody680_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody680_143 : HolLoopProg 64 :=
.mark loopBody680_142

def loopBody680_144 : HolLoopProg 64 :=
.seq loopBody680_143 loopBody680_1

def loopBody680_145 : HolLoopProg 64 :=
.mark loopBody680_144

def loopBody680_146 : HolLoopProg 64 :=
.seq loopBody680_139 loopBody680_145

def loopBody680_147 : HolLoopProg 64 :=
.mark loopBody680_146

def loopBody680_148 : HolLoopProg 64 :=
.seq loopBody680_137 loopBody680_147

def loopBody680_149 : HolLoopProg 64 :=
.mark loopBody680_148

def loopBody680_150 : HolLoopProg 64 :=
.seq loopBody680_95 loopBody680_149

def loopBody680_151 : HolLoopProg 64 :=
.mark loopBody680_150

def loopBody680_152 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_151

def loopBody680_153 : HolLoopProg 64 :=
.mark loopBody680_152

def loopBody680_154 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_153

def loopBody680_155 : HolLoopProg 64 :=
.mark loopBody680_154

def loopBody680_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody680_157 : HolLoopProg 64 :=
.mark loopBody680_156

def loopBody680_158 : HolLoopProg 64 :=
.seq loopBody680_157 loopBody680_1

def loopBody680_159 : HolLoopProg 64 :=
.mark loopBody680_158

def loopBody680_160 : HolLoopProg 64 :=
.seq loopBody680_159 loopBody680_1

def loopBody680_161 : HolLoopProg 64 :=
.mark loopBody680_160

def loopBody680_162 : HolLoopProg 64 :=
.seq loopBody680_155 loopBody680_161

def loopBody680_163 : HolLoopProg 64 :=
.mark loopBody680_162

def loopBody680_164 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.imm 0#64) loopBody680_163 loopBody680_1 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody680_165 : HolLoopProg 64 :=
.mark loopBody680_164

def loopBody680_166 : HolLoopProg 64 :=
.seq loopBody680_165 loopBody680_1

def loopBody680_167 : HolLoopProg 64 :=
.mark loopBody680_166

def loopBody680_168 : HolLoopProg 64 :=
.seq loopBody680_135 loopBody680_167

def loopBody680_169 : HolLoopProg 64 :=
.mark loopBody680_168

def loopBody680_170 : HolLoopProg 64 :=
.seq loopBody680_133 loopBody680_169

def loopBody680_171 : HolLoopProg 64 :=
.mark loopBody680_170

def loopBody680_172 : HolLoopProg 64 :=
.seq loopBody680_129 loopBody680_171

def loopBody680_173 : HolLoopProg 64 :=
.mark loopBody680_172

def loopBody680_174 : HolLoopProg 64 :=
.seq loopBody680_127 loopBody680_173

def loopBody680_175 : HolLoopProg 64 :=
.mark loopBody680_174

def loopBody680_176 : HolLoopProg 64 :=
.seq loopBody680_125 loopBody680_175

def loopBody680_177 : HolLoopProg 64 :=
.mark loopBody680_176

def loopBody680_178 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_177

def loopBody680_179 : HolLoopProg 64 :=
.mark loopBody680_178

def loopBody680_180 : HolLoopProg 64 :=
.seq loopBody680_123 loopBody680_179

def loopBody680_181 : HolLoopProg 64 :=
.mark loopBody680_180

def loopBody680_182 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody680_183 : HolLoopProg 64 :=
.mark loopBody680_182

def loopBody680_184 : HolLoopProg 64 :=
.seq loopBody680_181 loopBody680_183

def loopBody680_185 : HolLoopProg 64 :=
.mark loopBody680_184

def loopBody680_186 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody680_187 : HolLoopProg 64 :=
.mark loopBody680_186

def loopBody680_188 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody680_185 loopBody680_187 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody680_189 : HolLoopProg 64 :=
.mark loopBody680_188

def loopBody680_190 : HolLoopProg 64 :=
.seq loopBody680_189 loopBody680_1

def loopBody680_191 : HolLoopProg 64 :=
.mark loopBody680_190

def loopBody680_192 : HolLoopProg 64 :=
.seq loopBody680_73 loopBody680_191

def loopBody680_193 : HolLoopProg 64 :=
.mark loopBody680_192

def loopBody680_194 : HolLoopProg 64 :=
.seq loopBody680_71 loopBody680_193

def loopBody680_195 : HolLoopProg 64 :=
.mark loopBody680_194

def loopBody680_196 : HolLoopProg 64 :=
.seq loopBody680_67 loopBody680_195

def loopBody680_197 : HolLoopProg 64 :=
.mark loopBody680_196

def loopBody680_198 : HolLoopProg 64 :=
.seq loopBody680_65 loopBody680_197

def loopBody680_199 : HolLoopProg 64 :=
.mark loopBody680_198

def loopBody680_200 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody680_199 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody680_201 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 0)

def loopBody680_202 : HolLoopProg 64 :=
.mark loopBody680_201

def loopBody680_203 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 729) ([10, 11]) (some (10, loopBody680_97, loopBody680_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody680_204 : HolLoopProg 64 :=
.mark loopBody680_203

def loopBody680_205 : HolLoopProg 64 :=
.seq loopBody680_204 loopBody680_1

def loopBody680_206 : HolLoopProg 64 :=
.mark loopBody680_205

def loopBody680_207 : HolLoopProg 64 :=
.seq loopBody680_95 loopBody680_206

def loopBody680_208 : HolLoopProg 64 :=
.mark loopBody680_207

def loopBody680_209 : HolLoopProg 64 :=
.seq loopBody680_202 loopBody680_208

def loopBody680_210 : HolLoopProg 64 :=
.mark loopBody680_209

def loopBody680_211 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_210

def loopBody680_212 : HolLoopProg 64 :=
.mark loopBody680_211

def loopBody680_213 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_212

def loopBody680_214 : HolLoopProg 64 :=
.mark loopBody680_213

def loopBody680_215 : HolLoopProg 64 :=
.seq loopBody680_200 loopBody680_214

def loopBody680_216 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody680_217 : HolLoopProg 64 :=
.mark loopBody680_216

def loopBody680_218 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 70) ([10]) (some (10, loopBody680_97, loopBody680_1, (Flapjack.Spt.ln)))

def loopBody680_219 : HolLoopProg 64 :=
.mark loopBody680_218

def loopBody680_220 : HolLoopProg 64 :=
.seq loopBody680_219 loopBody680_1

def loopBody680_221 : HolLoopProg 64 :=
.mark loopBody680_220

def loopBody680_222 : HolLoopProg 64 :=
.seq loopBody680_217 loopBody680_221

def loopBody680_223 : HolLoopProg 64 :=
.mark loopBody680_222

def loopBody680_224 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_223

def loopBody680_225 : HolLoopProg 64 :=
.mark loopBody680_224

def loopBody680_226 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_225

def loopBody680_227 : HolLoopProg 64 :=
.mark loopBody680_226

def loopBody680_228 : HolLoopProg 64 :=
.seq loopBody680_215 loopBody680_227

def loopBody680_229 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody680_230 : HolLoopProg 64 :=
.mark loopBody680_229

def loopBody680_231 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody680_232 : HolLoopProg 64 :=
.mark loopBody680_231

def loopBody680_233 : HolLoopProg 64 :=
.seq loopBody680_232 loopBody680_1

def loopBody680_234 : HolLoopProg 64 :=
.mark loopBody680_233

def loopBody680_235 : HolLoopProg 64 :=
.seq loopBody680_230 loopBody680_234

def loopBody680_236 : HolLoopProg 64 :=
.mark loopBody680_235

def loopBody680_237 : HolLoopProg 64 :=
.seq loopBody680_228 loopBody680_236

def loopBody680_238 : HolLoopProg 64 :=
.seq loopBody680_63 loopBody680_237

def loopBody680_239 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_238

def loopBody680_240 : HolLoopProg 64 :=
.seq loopBody680_61 loopBody680_239

def loopBody680_241 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_240

def loopBody680_242 : HolLoopProg 64 :=
.seq loopBody680_59 loopBody680_241

def loopBody680_243 : HolLoopProg 64 :=
.seq loopBody680_27 loopBody680_242

def loopBody680_244 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_243

def loopBody680_245 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_244

def loopBody680_246 : HolLoopProg 64 :=
.seq loopBody680_17 loopBody680_245

def loopBody680_247 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_246

def loopBody680_248 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_247

def loopBody680_249 : HolLoopProg 64 :=
.seq loopBody680_7 loopBody680_248

def loopBody680_250 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_249

def loopBody680_251 : HolLoopProg 64 :=
.seq loopBody680_1 loopBody680_250

def output680 : Nat × List Nat × HolLoopProg 64 :=
  (744, [0, 1, 2, 3], loopBody680_251)
end InitECandidate.Proofs.FrontendStages.Loop
