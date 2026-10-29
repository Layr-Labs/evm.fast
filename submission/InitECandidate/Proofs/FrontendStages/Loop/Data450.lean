import InitECandidate.Proofs.FrontendStages.Loop.Translate434
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody450_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody450_1 : HolLoopProg 64 :=
.mark loopBody450_0

def loopBody450_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody450_3 : HolLoopProg 64 :=
.mark loopBody450_2

def loopBody450_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody450_3, loopBody450_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody450_5 : HolLoopProg 64 :=
.mark loopBody450_4

def loopBody450_6 : HolLoopProg 64 :=
.seq loopBody450_5 loopBody450_1

def loopBody450_7 : HolLoopProg 64 :=
.mark loopBody450_6

def loopBody450_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody450_9 : HolLoopProg 64 :=
.mark loopBody450_8

def loopBody450_10 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody450_9, loopBody450_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody450_11 : HolLoopProg 64 :=
.mark loopBody450_10

def loopBody450_12 : HolLoopProg 64 :=
.seq loopBody450_11 loopBody450_1

def loopBody450_13 : HolLoopProg 64 :=
.mark loopBody450_12

def loopBody450_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 3#64)

def loopBody450_15 : HolLoopProg 64 :=
.mark loopBody450_14

def loopBody450_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody450_17 : HolLoopProg 64 :=
.mark loopBody450_16

def loopBody450_18 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 470) ([10]) (some (10, loopBody450_17, loopBody450_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody450_19 : HolLoopProg 64 :=
.mark loopBody450_18

def loopBody450_20 : HolLoopProg 64 :=
.seq loopBody450_19 loopBody450_1

def loopBody450_21 : HolLoopProg 64 :=
.mark loopBody450_20

def loopBody450_22 : HolLoopProg 64 :=
.seq loopBody450_15 loopBody450_21

def loopBody450_23 : HolLoopProg 64 :=
.mark loopBody450_22

def loopBody450_24 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_23

def loopBody450_25 : HolLoopProg 64 :=
.mark loopBody450_24

def loopBody450_26 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_25

def loopBody450_27 : HolLoopProg 64 :=
.mark loopBody450_26

def loopBody450_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 5])

def loopBody450_29 : HolLoopProg 64 :=
.mark loopBody450_28

def loopBody450_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 6])

def loopBody450_31 : HolLoopProg 64 :=
.mark loopBody450_30

def loopBody450_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 7])

def loopBody450_33 : HolLoopProg 64 :=
.mark loopBody450_32

def loopBody450_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 8])

def loopBody450_35 : HolLoopProg 64 :=
.mark loopBody450_34

def loopBody450_36 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 476) ([10, 11, 12, 13]) (some (10, loopBody450_17, loopBody450_1, (Flapjack.Spt.ln)))

def loopBody450_37 : HolLoopProg 64 :=
.mark loopBody450_36

def loopBody450_38 : HolLoopProg 64 :=
.seq loopBody450_37 loopBody450_1

def loopBody450_39 : HolLoopProg 64 :=
.mark loopBody450_38

def loopBody450_40 : HolLoopProg 64 :=
.seq loopBody450_35 loopBody450_39

def loopBody450_41 : HolLoopProg 64 :=
.mark loopBody450_40

def loopBody450_42 : HolLoopProg 64 :=
.seq loopBody450_33 loopBody450_41

def loopBody450_43 : HolLoopProg 64 :=
.mark loopBody450_42

def loopBody450_44 : HolLoopProg 64 :=
.seq loopBody450_31 loopBody450_43

def loopBody450_45 : HolLoopProg 64 :=
.mark loopBody450_44

def loopBody450_46 : HolLoopProg 64 :=
.seq loopBody450_29 loopBody450_45

def loopBody450_47 : HolLoopProg 64 :=
.mark loopBody450_46

def loopBody450_48 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_47

def loopBody450_49 : HolLoopProg 64 :=
.mark loopBody450_48

def loopBody450_50 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_49

def loopBody450_51 : HolLoopProg 64 :=
.mark loopBody450_50

def loopBody450_52 : HolLoopProg 64 :=
.seq loopBody450_27 loopBody450_51

def loopBody450_53 : HolLoopProg 64 :=
.mark loopBody450_52

def loopBody450_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody450_55 : HolLoopProg 64 :=
.mark loopBody450_54

def loopBody450_56 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 490) ([10]) (some (10, loopBody450_17, loopBody450_1, (Flapjack.Spt.ln)))

def loopBody450_57 : HolLoopProg 64 :=
.mark loopBody450_56

def loopBody450_58 : HolLoopProg 64 :=
.seq loopBody450_57 loopBody450_1

def loopBody450_59 : HolLoopProg 64 :=
.mark loopBody450_58

def loopBody450_60 : HolLoopProg 64 :=
.seq loopBody450_55 loopBody450_59

def loopBody450_61 : HolLoopProg 64 :=
.mark loopBody450_60

def loopBody450_62 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_61

def loopBody450_63 : HolLoopProg 64 :=
.mark loopBody450_62

def loopBody450_64 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_63

def loopBody450_65 : HolLoopProg 64 :=
.mark loopBody450_64

def loopBody450_66 : HolLoopProg 64 :=
.seq loopBody450_53 loopBody450_65

def loopBody450_67 : HolLoopProg 64 :=
.mark loopBody450_66

def loopBody450_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody450_69 : HolLoopProg 64 :=
.mark loopBody450_68

def loopBody450_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody450_71 : HolLoopProg 64 :=
.mark loopBody450_70

def loopBody450_72 : HolLoopProg 64 :=
.seq loopBody450_71 loopBody450_1

def loopBody450_73 : HolLoopProg 64 :=
.mark loopBody450_72

def loopBody450_74 : HolLoopProg 64 :=
.seq loopBody450_69 loopBody450_73

def loopBody450_75 : HolLoopProg 64 :=
.mark loopBody450_74

def loopBody450_76 : HolLoopProg 64 :=
.seq loopBody450_67 loopBody450_75

def loopBody450_77 : HolLoopProg 64 :=
.mark loopBody450_76

def loopBody450_78 : HolLoopProg 64 :=
.seq loopBody450_13 loopBody450_77

def loopBody450_79 : HolLoopProg 64 :=
.mark loopBody450_78

def loopBody450_80 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_79

def loopBody450_81 : HolLoopProg 64 :=
.mark loopBody450_80

def loopBody450_82 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_81

def loopBody450_83 : HolLoopProg 64 :=
.mark loopBody450_82

def loopBody450_84 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_83

def loopBody450_85 : HolLoopProg 64 :=
.mark loopBody450_84

def loopBody450_86 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_85

def loopBody450_87 : HolLoopProg 64 :=
.mark loopBody450_86

def loopBody450_88 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_87

def loopBody450_89 : HolLoopProg 64 :=
.mark loopBody450_88

def loopBody450_90 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_89

def loopBody450_91 : HolLoopProg 64 :=
.mark loopBody450_90

def loopBody450_92 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_91

def loopBody450_93 : HolLoopProg 64 :=
.mark loopBody450_92

def loopBody450_94 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_93

def loopBody450_95 : HolLoopProg 64 :=
.mark loopBody450_94

def loopBody450_96 : HolLoopProg 64 :=
.seq loopBody450_7 loopBody450_95

def loopBody450_97 : HolLoopProg 64 :=
.mark loopBody450_96

def loopBody450_98 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_97

def loopBody450_99 : HolLoopProg 64 :=
.mark loopBody450_98

def loopBody450_100 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_99

def loopBody450_101 : HolLoopProg 64 :=
.mark loopBody450_100

def loopBody450_102 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_101

def loopBody450_103 : HolLoopProg 64 :=
.mark loopBody450_102

def loopBody450_104 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_103

def loopBody450_105 : HolLoopProg 64 :=
.mark loopBody450_104

def loopBody450_106 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_105

def loopBody450_107 : HolLoopProg 64 :=
.mark loopBody450_106

def loopBody450_108 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_107

def loopBody450_109 : HolLoopProg 64 :=
.mark loopBody450_108

def loopBody450_110 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_109

def loopBody450_111 : HolLoopProg 64 :=
.mark loopBody450_110

def loopBody450_112 : HolLoopProg 64 :=
.seq loopBody450_1 loopBody450_111

def loopBody450_113 : HolLoopProg 64 :=
.mark loopBody450_112

def output450 : Nat × List Nat × HolLoopProg 64 :=
  (514, [], loopBody450_113)
end InitECandidate.Proofs.FrontendStages.Loop
