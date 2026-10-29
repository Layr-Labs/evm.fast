import InitECandidate.Proofs.FrontendStages.Loop.Translate692
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody708_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody708_1 : HolLoopProg 64 :=
.mark loopBody708_0

def loopBody708_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody708_3 : HolLoopProg 64 :=
.mark loopBody708_2

def loopBody708_4 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 69) ([]) (some (5, loopBody708_3, loopBody708_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody708_5 : HolLoopProg 64 :=
.mark loopBody708_4

def loopBody708_6 : HolLoopProg 64 :=
.seq loopBody708_5 loopBody708_1

def loopBody708_7 : HolLoopProg 64 :=
.mark loopBody708_6

def loopBody708_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 144#64)

def loopBody708_9 : HolLoopProg 64 :=
.mark loopBody708_8

def loopBody708_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody708_11 : HolLoopProg 64 :=
.mark loopBody708_10

def loopBody708_12 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([6]) (some (6, loopBody708_11, loopBody708_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody708_13 : HolLoopProg 64 :=
.mark loopBody708_12

def loopBody708_14 : HolLoopProg 64 :=
.seq loopBody708_13 loopBody708_1

def loopBody708_15 : HolLoopProg 64 :=
.mark loopBody708_14

def loopBody708_16 : HolLoopProg 64 :=
.seq loopBody708_9 loopBody708_15

def loopBody708_17 : HolLoopProg 64 :=
.mark loopBody708_16

def loopBody708_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 144#64)

def loopBody708_19 : HolLoopProg 64 :=
.mark loopBody708_18

def loopBody708_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody708_21 : HolLoopProg 64 :=
.mark loopBody708_20

def loopBody708_22 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([7]) (some (7, loopBody708_21, loopBody708_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody708_23 : HolLoopProg 64 :=
.mark loopBody708_22

def loopBody708_24 : HolLoopProg 64 :=
.seq loopBody708_23 loopBody708_1

def loopBody708_25 : HolLoopProg 64 :=
.mark loopBody708_24

def loopBody708_26 : HolLoopProg 64 :=
.seq loopBody708_19 loopBody708_25

def loopBody708_27 : HolLoopProg 64 :=
.mark loopBody708_26

def loopBody708_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody708_29 : HolLoopProg 64 :=
.mark loopBody708_28

def loopBody708_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody708_31 : HolLoopProg 64 :=
.mark loopBody708_30

def loopBody708_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody708_33 : HolLoopProg 64 :=
.mark loopBody708_32

def loopBody708_34 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 768) ([8, 9]) (some (8, loopBody708_33, loopBody708_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody708_35 : HolLoopProg 64 :=
.mark loopBody708_34

def loopBody708_36 : HolLoopProg 64 :=
.seq loopBody708_35 loopBody708_1

def loopBody708_37 : HolLoopProg 64 :=
.mark loopBody708_36

def loopBody708_38 : HolLoopProg 64 :=
.seq loopBody708_31 loopBody708_37

def loopBody708_39 : HolLoopProg 64 :=
.mark loopBody708_38

def loopBody708_40 : HolLoopProg 64 :=
.seq loopBody708_29 loopBody708_39

def loopBody708_41 : HolLoopProg 64 :=
.mark loopBody708_40

def loopBody708_42 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_41

def loopBody708_43 : HolLoopProg 64 :=
.mark loopBody708_42

def loopBody708_44 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_43

def loopBody708_45 : HolLoopProg 64 :=
.mark loopBody708_44

def loopBody708_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody708_47 : HolLoopProg 64 :=
.mark loopBody708_46

def loopBody708_48 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 766) ([8]) (some (8, loopBody708_33, loopBody708_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody708_49 : HolLoopProg 64 :=
.mark loopBody708_48

def loopBody708_50 : HolLoopProg 64 :=
.seq loopBody708_49 loopBody708_1

def loopBody708_51 : HolLoopProg 64 :=
.mark loopBody708_50

def loopBody708_52 : HolLoopProg 64 :=
.seq loopBody708_47 loopBody708_51

def loopBody708_53 : HolLoopProg 64 :=
.mark loopBody708_52

def loopBody708_54 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_53

def loopBody708_55 : HolLoopProg 64 :=
.mark loopBody708_54

def loopBody708_56 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_55

def loopBody708_57 : HolLoopProg 64 :=
.mark loopBody708_56

def loopBody708_58 : HolLoopProg 64 :=
.seq loopBody708_45 loopBody708_57

def loopBody708_59 : HolLoopProg 64 :=
.mark loopBody708_58

def loopBody708_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 6#64))

def loopBody708_61 : HolLoopProg 64 :=
.mark loopBody708_60

def loopBody708_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody708_63 : HolLoopProg 64 :=
.mark loopBody708_62

def loopBody708_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody708_65 : HolLoopProg 64 :=
.mark loopBody708_64

def loopBody708_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 7)

def loopBody708_67 : HolLoopProg 64 :=
.mark loopBody708_66

def loopBody708_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody708_69 : HolLoopProg 64 :=
.mark loopBody708_68

def loopBody708_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.RegImm.reg 11) loopBody708_69 loopBody708_65 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody708_71 : HolLoopProg 64 :=
.mark loopBody708_70

def loopBody708_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody708_73 : HolLoopProg 64 :=
.mark loopBody708_72

def loopBody708_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 1#64])

def loopBody708_75 : HolLoopProg 64 :=
.mark loopBody708_74

def loopBody708_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 9)

def loopBody708_77 : HolLoopProg 64 :=
.mark loopBody708_76

def loopBody708_78 : HolLoopProg 64 :=
.seq loopBody708_77 loopBody708_1

def loopBody708_79 : HolLoopProg 64 :=
.mark loopBody708_78

def loopBody708_80 : HolLoopProg 64 :=
.seq loopBody708_79 loopBody708_1

def loopBody708_81 : HolLoopProg 64 :=
.mark loopBody708_80

def loopBody708_82 : HolLoopProg 64 :=
.seq loopBody708_75 loopBody708_81

def loopBody708_83 : HolLoopProg 64 :=
.mark loopBody708_82

def loopBody708_84 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_83

def loopBody708_85 : HolLoopProg 64 :=
.mark loopBody708_84

def loopBody708_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody708_87 : HolLoopProg 64 :=
.mark loopBody708_86

def loopBody708_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 1#64)

def loopBody708_89 : HolLoopProg 64 :=
.mark loopBody708_88

def loopBody708_90 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.RegImm.reg 11) loopBody708_69 loopBody708_65 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody708_91 : HolLoopProg 64 :=
.mark loopBody708_90

def loopBody708_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody708_93 : HolLoopProg 64 :=
.mark loopBody708_92

def loopBody708_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody708_95 : HolLoopProg 64 :=
.mark loopBody708_94

def loopBody708_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody708_97 : HolLoopProg 64 :=
.mark loopBody708_96

def loopBody708_98 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 770) ([10, 11]) (some (10, loopBody708_97, loopBody708_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody708_99 : HolLoopProg 64 :=
.mark loopBody708_98

def loopBody708_100 : HolLoopProg 64 :=
.seq loopBody708_99 loopBody708_1

def loopBody708_101 : HolLoopProg 64 :=
.mark loopBody708_100

def loopBody708_102 : HolLoopProg 64 :=
.seq loopBody708_95 loopBody708_101

def loopBody708_103 : HolLoopProg 64 :=
.mark loopBody708_102

def loopBody708_104 : HolLoopProg 64 :=
.seq loopBody708_93 loopBody708_103

def loopBody708_105 : HolLoopProg 64 :=
.mark loopBody708_104

def loopBody708_106 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_105

def loopBody708_107 : HolLoopProg 64 :=
.mark loopBody708_106

def loopBody708_108 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_107

def loopBody708_109 : HolLoopProg 64 :=
.mark loopBody708_108

def loopBody708_110 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody708_109 loopBody708_1 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody708_111 : HolLoopProg 64 :=
.mark loopBody708_110

def loopBody708_112 : HolLoopProg 64 :=
.seq loopBody708_111 loopBody708_1

def loopBody708_113 : HolLoopProg 64 :=
.mark loopBody708_112

def loopBody708_114 : HolLoopProg 64 :=
.seq loopBody708_73 loopBody708_113

def loopBody708_115 : HolLoopProg 64 :=
.mark loopBody708_114

def loopBody708_116 : HolLoopProg 64 :=
.seq loopBody708_91 loopBody708_115

def loopBody708_117 : HolLoopProg 64 :=
.mark loopBody708_116

def loopBody708_118 : HolLoopProg 64 :=
.seq loopBody708_89 loopBody708_117

def loopBody708_119 : HolLoopProg 64 :=
.mark loopBody708_118

def loopBody708_120 : HolLoopProg 64 :=
.seq loopBody708_87 loopBody708_119

def loopBody708_121 : HolLoopProg 64 :=
.mark loopBody708_120

def loopBody708_122 : HolLoopProg 64 :=
.seq loopBody708_85 loopBody708_121

def loopBody708_123 : HolLoopProg 64 :=
.mark loopBody708_122

def loopBody708_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr
        (Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.var 2,
              Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
                (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 7)
                  (Flapjack.HolLoopExp.const 6#64))
                (Flapjack.HolLoopExp.const 3#64)]))
        (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 63#64]),
      Flapjack.HolLoopExp.const 1#64])

def loopBody708_125 : HolLoopProg 64 :=
.mark loopBody708_124

def loopBody708_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody708_127 : HolLoopProg 64 :=
.mark loopBody708_126

def loopBody708_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody708_129 : HolLoopProg 64 :=
.mark loopBody708_128

def loopBody708_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody708_131 : HolLoopProg 64 :=
.mark loopBody708_130

def loopBody708_132 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.RegImm.reg 12) loopBody708_89 loopBody708_131 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody708_133 : HolLoopProg 64 :=
.mark loopBody708_132

def loopBody708_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 11)

def loopBody708_135 : HolLoopProg 64 :=
.mark loopBody708_134

def loopBody708_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 5)

def loopBody708_137 : HolLoopProg 64 :=
.mark loopBody708_136

def loopBody708_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 6)

def loopBody708_139 : HolLoopProg 64 :=
.mark loopBody708_138

def loopBody708_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody708_141 : HolLoopProg 64 :=
.mark loopBody708_140

def loopBody708_142 : HolLoopProg 64 :=
.call (some
  ([10],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 771) ([11, 12, 13]) (some (11, loopBody708_141, loopBody708_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody708_143 : HolLoopProg 64 :=
.mark loopBody708_142

def loopBody708_144 : HolLoopProg 64 :=
.seq loopBody708_143 loopBody708_1

def loopBody708_145 : HolLoopProg 64 :=
.mark loopBody708_144

def loopBody708_146 : HolLoopProg 64 :=
.seq loopBody708_139 loopBody708_145

def loopBody708_147 : HolLoopProg 64 :=
.mark loopBody708_146

def loopBody708_148 : HolLoopProg 64 :=
.seq loopBody708_137 loopBody708_147

def loopBody708_149 : HolLoopProg 64 :=
.mark loopBody708_148

def loopBody708_150 : HolLoopProg 64 :=
.seq loopBody708_95 loopBody708_149

def loopBody708_151 : HolLoopProg 64 :=
.mark loopBody708_150

def loopBody708_152 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_151

def loopBody708_153 : HolLoopProg 64 :=
.mark loopBody708_152

def loopBody708_154 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_153

def loopBody708_155 : HolLoopProg 64 :=
.mark loopBody708_154

def loopBody708_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody708_157 : HolLoopProg 64 :=
.mark loopBody708_156

def loopBody708_158 : HolLoopProg 64 :=
.seq loopBody708_157 loopBody708_1

def loopBody708_159 : HolLoopProg 64 :=
.mark loopBody708_158

def loopBody708_160 : HolLoopProg 64 :=
.seq loopBody708_159 loopBody708_1

def loopBody708_161 : HolLoopProg 64 :=
.mark loopBody708_160

def loopBody708_162 : HolLoopProg 64 :=
.seq loopBody708_155 loopBody708_161

def loopBody708_163 : HolLoopProg 64 :=
.mark loopBody708_162

def loopBody708_164 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.imm 0#64) loopBody708_163 loopBody708_1 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody708_165 : HolLoopProg 64 :=
.mark loopBody708_164

def loopBody708_166 : HolLoopProg 64 :=
.seq loopBody708_165 loopBody708_1

def loopBody708_167 : HolLoopProg 64 :=
.mark loopBody708_166

def loopBody708_168 : HolLoopProg 64 :=
.seq loopBody708_135 loopBody708_167

def loopBody708_169 : HolLoopProg 64 :=
.mark loopBody708_168

def loopBody708_170 : HolLoopProg 64 :=
.seq loopBody708_133 loopBody708_169

def loopBody708_171 : HolLoopProg 64 :=
.mark loopBody708_170

def loopBody708_172 : HolLoopProg 64 :=
.seq loopBody708_129 loopBody708_171

def loopBody708_173 : HolLoopProg 64 :=
.mark loopBody708_172

def loopBody708_174 : HolLoopProg 64 :=
.seq loopBody708_127 loopBody708_173

def loopBody708_175 : HolLoopProg 64 :=
.mark loopBody708_174

def loopBody708_176 : HolLoopProg 64 :=
.seq loopBody708_125 loopBody708_175

def loopBody708_177 : HolLoopProg 64 :=
.mark loopBody708_176

def loopBody708_178 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_177

def loopBody708_179 : HolLoopProg 64 :=
.mark loopBody708_178

def loopBody708_180 : HolLoopProg 64 :=
.seq loopBody708_123 loopBody708_179

def loopBody708_181 : HolLoopProg 64 :=
.mark loopBody708_180

def loopBody708_182 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody708_183 : HolLoopProg 64 :=
.mark loopBody708_182

def loopBody708_184 : HolLoopProg 64 :=
.seq loopBody708_181 loopBody708_183

def loopBody708_185 : HolLoopProg 64 :=
.mark loopBody708_184

def loopBody708_186 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody708_187 : HolLoopProg 64 :=
.mark loopBody708_186

def loopBody708_188 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody708_185 loopBody708_187 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody708_189 : HolLoopProg 64 :=
.mark loopBody708_188

def loopBody708_190 : HolLoopProg 64 :=
.seq loopBody708_189 loopBody708_1

def loopBody708_191 : HolLoopProg 64 :=
.mark loopBody708_190

def loopBody708_192 : HolLoopProg 64 :=
.seq loopBody708_73 loopBody708_191

def loopBody708_193 : HolLoopProg 64 :=
.mark loopBody708_192

def loopBody708_194 : HolLoopProg 64 :=
.seq loopBody708_71 loopBody708_193

def loopBody708_195 : HolLoopProg 64 :=
.mark loopBody708_194

def loopBody708_196 : HolLoopProg 64 :=
.seq loopBody708_67 loopBody708_195

def loopBody708_197 : HolLoopProg 64 :=
.mark loopBody708_196

def loopBody708_198 : HolLoopProg 64 :=
.seq loopBody708_65 loopBody708_197

def loopBody708_199 : HolLoopProg 64 :=
.mark loopBody708_198

def loopBody708_200 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody708_199 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody708_201 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 0)

def loopBody708_202 : HolLoopProg 64 :=
.mark loopBody708_201

def loopBody708_203 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 768) ([10, 11]) (some (10, loopBody708_97, loopBody708_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody708_204 : HolLoopProg 64 :=
.mark loopBody708_203

def loopBody708_205 : HolLoopProg 64 :=
.seq loopBody708_204 loopBody708_1

def loopBody708_206 : HolLoopProg 64 :=
.mark loopBody708_205

def loopBody708_207 : HolLoopProg 64 :=
.seq loopBody708_95 loopBody708_206

def loopBody708_208 : HolLoopProg 64 :=
.mark loopBody708_207

def loopBody708_209 : HolLoopProg 64 :=
.seq loopBody708_202 loopBody708_208

def loopBody708_210 : HolLoopProg 64 :=
.mark loopBody708_209

def loopBody708_211 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_210

def loopBody708_212 : HolLoopProg 64 :=
.mark loopBody708_211

def loopBody708_213 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_212

def loopBody708_214 : HolLoopProg 64 :=
.mark loopBody708_213

def loopBody708_215 : HolLoopProg 64 :=
.seq loopBody708_200 loopBody708_214

def loopBody708_216 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody708_217 : HolLoopProg 64 :=
.mark loopBody708_216

def loopBody708_218 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 70) ([10]) (some (10, loopBody708_97, loopBody708_1, (Flapjack.Spt.ln)))

def loopBody708_219 : HolLoopProg 64 :=
.mark loopBody708_218

def loopBody708_220 : HolLoopProg 64 :=
.seq loopBody708_219 loopBody708_1

def loopBody708_221 : HolLoopProg 64 :=
.mark loopBody708_220

def loopBody708_222 : HolLoopProg 64 :=
.seq loopBody708_217 loopBody708_221

def loopBody708_223 : HolLoopProg 64 :=
.mark loopBody708_222

def loopBody708_224 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_223

def loopBody708_225 : HolLoopProg 64 :=
.mark loopBody708_224

def loopBody708_226 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_225

def loopBody708_227 : HolLoopProg 64 :=
.mark loopBody708_226

def loopBody708_228 : HolLoopProg 64 :=
.seq loopBody708_215 loopBody708_227

def loopBody708_229 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody708_230 : HolLoopProg 64 :=
.mark loopBody708_229

def loopBody708_231 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody708_232 : HolLoopProg 64 :=
.mark loopBody708_231

def loopBody708_233 : HolLoopProg 64 :=
.seq loopBody708_232 loopBody708_1

def loopBody708_234 : HolLoopProg 64 :=
.mark loopBody708_233

def loopBody708_235 : HolLoopProg 64 :=
.seq loopBody708_230 loopBody708_234

def loopBody708_236 : HolLoopProg 64 :=
.mark loopBody708_235

def loopBody708_237 : HolLoopProg 64 :=
.seq loopBody708_228 loopBody708_236

def loopBody708_238 : HolLoopProg 64 :=
.seq loopBody708_63 loopBody708_237

def loopBody708_239 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_238

def loopBody708_240 : HolLoopProg 64 :=
.seq loopBody708_61 loopBody708_239

def loopBody708_241 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_240

def loopBody708_242 : HolLoopProg 64 :=
.seq loopBody708_59 loopBody708_241

def loopBody708_243 : HolLoopProg 64 :=
.seq loopBody708_27 loopBody708_242

def loopBody708_244 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_243

def loopBody708_245 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_244

def loopBody708_246 : HolLoopProg 64 :=
.seq loopBody708_17 loopBody708_245

def loopBody708_247 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_246

def loopBody708_248 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_247

def loopBody708_249 : HolLoopProg 64 :=
.seq loopBody708_7 loopBody708_248

def loopBody708_250 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_249

def loopBody708_251 : HolLoopProg 64 :=
.seq loopBody708_1 loopBody708_250

def output708 : Nat × List Nat × HolLoopProg 64 :=
  (772, [0, 1, 2, 3], loopBody708_251)
end InitECandidate.Proofs.FrontendStages.Loop
