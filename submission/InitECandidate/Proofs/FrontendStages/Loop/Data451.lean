import InitECandidate.Proofs.FrontendStages.Loop.Translate435
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody451_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody451_1 : HolLoopProg 64 :=
.mark loopBody451_0

def loopBody451_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody451_3 : HolLoopProg 64 :=
.mark loopBody451_2

def loopBody451_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody451_3, loopBody451_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody451_5 : HolLoopProg 64 :=
.mark loopBody451_4

def loopBody451_6 : HolLoopProg 64 :=
.seq loopBody451_5 loopBody451_1

def loopBody451_7 : HolLoopProg 64 :=
.mark loopBody451_6

def loopBody451_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody451_9 : HolLoopProg 64 :=
.mark loopBody451_8

def loopBody451_10 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody451_9, loopBody451_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody451_11 : HolLoopProg 64 :=
.mark loopBody451_10

def loopBody451_12 : HolLoopProg 64 :=
.seq loopBody451_11 loopBody451_1

def loopBody451_13 : HolLoopProg 64 :=
.mark loopBody451_12

def loopBody451_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 3#64)

def loopBody451_15 : HolLoopProg 64 :=
.mark loopBody451_14

def loopBody451_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody451_17 : HolLoopProg 64 :=
.mark loopBody451_16

def loopBody451_18 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 470) ([10]) (some (10, loopBody451_17, loopBody451_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody451_19 : HolLoopProg 64 :=
.mark loopBody451_18

def loopBody451_20 : HolLoopProg 64 :=
.seq loopBody451_19 loopBody451_1

def loopBody451_21 : HolLoopProg 64 :=
.mark loopBody451_20

def loopBody451_22 : HolLoopProg 64 :=
.seq loopBody451_15 loopBody451_21

def loopBody451_23 : HolLoopProg 64 :=
.mark loopBody451_22

def loopBody451_24 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_23

def loopBody451_25 : HolLoopProg 64 :=
.mark loopBody451_24

def loopBody451_26 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_25

def loopBody451_27 : HolLoopProg 64 :=
.mark loopBody451_26

def loopBody451_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 5])

def loopBody451_29 : HolLoopProg 64 :=
.mark loopBody451_28

def loopBody451_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 6])

def loopBody451_31 : HolLoopProg 64 :=
.mark loopBody451_30

def loopBody451_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 7])

def loopBody451_33 : HolLoopProg 64 :=
.mark loopBody451_32

def loopBody451_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 8])

def loopBody451_35 : HolLoopProg 64 :=
.mark loopBody451_34

def loopBody451_36 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 476) ([10, 11, 12, 13]) (some (10, loopBody451_17, loopBody451_1, (Flapjack.Spt.ln)))

def loopBody451_37 : HolLoopProg 64 :=
.mark loopBody451_36

def loopBody451_38 : HolLoopProg 64 :=
.seq loopBody451_37 loopBody451_1

def loopBody451_39 : HolLoopProg 64 :=
.mark loopBody451_38

def loopBody451_40 : HolLoopProg 64 :=
.seq loopBody451_35 loopBody451_39

def loopBody451_41 : HolLoopProg 64 :=
.mark loopBody451_40

def loopBody451_42 : HolLoopProg 64 :=
.seq loopBody451_33 loopBody451_41

def loopBody451_43 : HolLoopProg 64 :=
.mark loopBody451_42

def loopBody451_44 : HolLoopProg 64 :=
.seq loopBody451_31 loopBody451_43

def loopBody451_45 : HolLoopProg 64 :=
.mark loopBody451_44

def loopBody451_46 : HolLoopProg 64 :=
.seq loopBody451_29 loopBody451_45

def loopBody451_47 : HolLoopProg 64 :=
.mark loopBody451_46

def loopBody451_48 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_47

def loopBody451_49 : HolLoopProg 64 :=
.mark loopBody451_48

def loopBody451_50 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_49

def loopBody451_51 : HolLoopProg 64 :=
.mark loopBody451_50

def loopBody451_52 : HolLoopProg 64 :=
.seq loopBody451_27 loopBody451_51

def loopBody451_53 : HolLoopProg 64 :=
.mark loopBody451_52

def loopBody451_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody451_55 : HolLoopProg 64 :=
.mark loopBody451_54

def loopBody451_56 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 490) ([10]) (some (10, loopBody451_17, loopBody451_1, (Flapjack.Spt.ln)))

def loopBody451_57 : HolLoopProg 64 :=
.mark loopBody451_56

def loopBody451_58 : HolLoopProg 64 :=
.seq loopBody451_57 loopBody451_1

def loopBody451_59 : HolLoopProg 64 :=
.mark loopBody451_58

def loopBody451_60 : HolLoopProg 64 :=
.seq loopBody451_55 loopBody451_59

def loopBody451_61 : HolLoopProg 64 :=
.mark loopBody451_60

def loopBody451_62 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_61

def loopBody451_63 : HolLoopProg 64 :=
.mark loopBody451_62

def loopBody451_64 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_63

def loopBody451_65 : HolLoopProg 64 :=
.mark loopBody451_64

def loopBody451_66 : HolLoopProg 64 :=
.seq loopBody451_53 loopBody451_65

def loopBody451_67 : HolLoopProg 64 :=
.mark loopBody451_66

def loopBody451_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody451_69 : HolLoopProg 64 :=
.mark loopBody451_68

def loopBody451_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody451_71 : HolLoopProg 64 :=
.mark loopBody451_70

def loopBody451_72 : HolLoopProg 64 :=
.seq loopBody451_71 loopBody451_1

def loopBody451_73 : HolLoopProg 64 :=
.mark loopBody451_72

def loopBody451_74 : HolLoopProg 64 :=
.seq loopBody451_69 loopBody451_73

def loopBody451_75 : HolLoopProg 64 :=
.mark loopBody451_74

def loopBody451_76 : HolLoopProg 64 :=
.seq loopBody451_67 loopBody451_75

def loopBody451_77 : HolLoopProg 64 :=
.mark loopBody451_76

def loopBody451_78 : HolLoopProg 64 :=
.seq loopBody451_13 loopBody451_77

def loopBody451_79 : HolLoopProg 64 :=
.mark loopBody451_78

def loopBody451_80 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_79

def loopBody451_81 : HolLoopProg 64 :=
.mark loopBody451_80

def loopBody451_82 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_81

def loopBody451_83 : HolLoopProg 64 :=
.mark loopBody451_82

def loopBody451_84 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_83

def loopBody451_85 : HolLoopProg 64 :=
.mark loopBody451_84

def loopBody451_86 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_85

def loopBody451_87 : HolLoopProg 64 :=
.mark loopBody451_86

def loopBody451_88 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_87

def loopBody451_89 : HolLoopProg 64 :=
.mark loopBody451_88

def loopBody451_90 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_89

def loopBody451_91 : HolLoopProg 64 :=
.mark loopBody451_90

def loopBody451_92 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_91

def loopBody451_93 : HolLoopProg 64 :=
.mark loopBody451_92

def loopBody451_94 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_93

def loopBody451_95 : HolLoopProg 64 :=
.mark loopBody451_94

def loopBody451_96 : HolLoopProg 64 :=
.seq loopBody451_7 loopBody451_95

def loopBody451_97 : HolLoopProg 64 :=
.mark loopBody451_96

def loopBody451_98 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_97

def loopBody451_99 : HolLoopProg 64 :=
.mark loopBody451_98

def loopBody451_100 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_99

def loopBody451_101 : HolLoopProg 64 :=
.mark loopBody451_100

def loopBody451_102 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_101

def loopBody451_103 : HolLoopProg 64 :=
.mark loopBody451_102

def loopBody451_104 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_103

def loopBody451_105 : HolLoopProg 64 :=
.mark loopBody451_104

def loopBody451_106 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_105

def loopBody451_107 : HolLoopProg 64 :=
.mark loopBody451_106

def loopBody451_108 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_107

def loopBody451_109 : HolLoopProg 64 :=
.mark loopBody451_108

def loopBody451_110 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_109

def loopBody451_111 : HolLoopProg 64 :=
.mark loopBody451_110

def loopBody451_112 : HolLoopProg 64 :=
.seq loopBody451_1 loopBody451_111

def loopBody451_113 : HolLoopProg 64 :=
.mark loopBody451_112

def output451 : Nat × List Nat × HolLoopProg 64 :=
  (515, [], loopBody451_113)
end InitECandidate.Proofs.FrontendStages.Loop
