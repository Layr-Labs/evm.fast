import InitECandidate.Proofs.FrontendStages.Loop.Translate436
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody452_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody452_1 : HolLoopProg 64 :=
.mark loopBody452_0

def loopBody452_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody452_3 : HolLoopProg 64 :=
.mark loopBody452_2

def loopBody452_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody452_3, loopBody452_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody452_5 : HolLoopProg 64 :=
.mark loopBody452_4

def loopBody452_6 : HolLoopProg 64 :=
.seq loopBody452_5 loopBody452_1

def loopBody452_7 : HolLoopProg 64 :=
.mark loopBody452_6

def loopBody452_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody452_9 : HolLoopProg 64 :=
.mark loopBody452_8

def loopBody452_10 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody452_9, loopBody452_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody452_11 : HolLoopProg 64 :=
.mark loopBody452_10

def loopBody452_12 : HolLoopProg 64 :=
.seq loopBody452_11 loopBody452_1

def loopBody452_13 : HolLoopProg 64 :=
.mark loopBody452_12

def loopBody452_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 3#64)

def loopBody452_15 : HolLoopProg 64 :=
.mark loopBody452_14

def loopBody452_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody452_17 : HolLoopProg 64 :=
.mark loopBody452_16

def loopBody452_18 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 470) ([10]) (some (10, loopBody452_17, loopBody452_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody452_19 : HolLoopProg 64 :=
.mark loopBody452_18

def loopBody452_20 : HolLoopProg 64 :=
.seq loopBody452_19 loopBody452_1

def loopBody452_21 : HolLoopProg 64 :=
.mark loopBody452_20

def loopBody452_22 : HolLoopProg 64 :=
.seq loopBody452_15 loopBody452_21

def loopBody452_23 : HolLoopProg 64 :=
.mark loopBody452_22

def loopBody452_24 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_23

def loopBody452_25 : HolLoopProg 64 :=
.mark loopBody452_24

def loopBody452_26 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_25

def loopBody452_27 : HolLoopProg 64 :=
.mark loopBody452_26

def loopBody452_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 5])

def loopBody452_29 : HolLoopProg 64 :=
.mark loopBody452_28

def loopBody452_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 6])

def loopBody452_31 : HolLoopProg 64 :=
.mark loopBody452_30

def loopBody452_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 7])

def loopBody452_33 : HolLoopProg 64 :=
.mark loopBody452_32

def loopBody452_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 8])

def loopBody452_35 : HolLoopProg 64 :=
.mark loopBody452_34

def loopBody452_36 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 476) ([10, 11, 12, 13]) (some (10, loopBody452_17, loopBody452_1, (Flapjack.Spt.ln)))

def loopBody452_37 : HolLoopProg 64 :=
.mark loopBody452_36

def loopBody452_38 : HolLoopProg 64 :=
.seq loopBody452_37 loopBody452_1

def loopBody452_39 : HolLoopProg 64 :=
.mark loopBody452_38

def loopBody452_40 : HolLoopProg 64 :=
.seq loopBody452_35 loopBody452_39

def loopBody452_41 : HolLoopProg 64 :=
.mark loopBody452_40

def loopBody452_42 : HolLoopProg 64 :=
.seq loopBody452_33 loopBody452_41

def loopBody452_43 : HolLoopProg 64 :=
.mark loopBody452_42

def loopBody452_44 : HolLoopProg 64 :=
.seq loopBody452_31 loopBody452_43

def loopBody452_45 : HolLoopProg 64 :=
.mark loopBody452_44

def loopBody452_46 : HolLoopProg 64 :=
.seq loopBody452_29 loopBody452_45

def loopBody452_47 : HolLoopProg 64 :=
.mark loopBody452_46

def loopBody452_48 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_47

def loopBody452_49 : HolLoopProg 64 :=
.mark loopBody452_48

def loopBody452_50 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_49

def loopBody452_51 : HolLoopProg 64 :=
.mark loopBody452_50

def loopBody452_52 : HolLoopProg 64 :=
.seq loopBody452_27 loopBody452_51

def loopBody452_53 : HolLoopProg 64 :=
.mark loopBody452_52

def loopBody452_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody452_55 : HolLoopProg 64 :=
.mark loopBody452_54

def loopBody452_56 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 490) ([10]) (some (10, loopBody452_17, loopBody452_1, (Flapjack.Spt.ln)))

def loopBody452_57 : HolLoopProg 64 :=
.mark loopBody452_56

def loopBody452_58 : HolLoopProg 64 :=
.seq loopBody452_57 loopBody452_1

def loopBody452_59 : HolLoopProg 64 :=
.mark loopBody452_58

def loopBody452_60 : HolLoopProg 64 :=
.seq loopBody452_55 loopBody452_59

def loopBody452_61 : HolLoopProg 64 :=
.mark loopBody452_60

def loopBody452_62 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_61

def loopBody452_63 : HolLoopProg 64 :=
.mark loopBody452_62

def loopBody452_64 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_63

def loopBody452_65 : HolLoopProg 64 :=
.mark loopBody452_64

def loopBody452_66 : HolLoopProg 64 :=
.seq loopBody452_53 loopBody452_65

def loopBody452_67 : HolLoopProg 64 :=
.mark loopBody452_66

def loopBody452_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody452_69 : HolLoopProg 64 :=
.mark loopBody452_68

def loopBody452_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody452_71 : HolLoopProg 64 :=
.mark loopBody452_70

def loopBody452_72 : HolLoopProg 64 :=
.seq loopBody452_71 loopBody452_1

def loopBody452_73 : HolLoopProg 64 :=
.mark loopBody452_72

def loopBody452_74 : HolLoopProg 64 :=
.seq loopBody452_69 loopBody452_73

def loopBody452_75 : HolLoopProg 64 :=
.mark loopBody452_74

def loopBody452_76 : HolLoopProg 64 :=
.seq loopBody452_67 loopBody452_75

def loopBody452_77 : HolLoopProg 64 :=
.mark loopBody452_76

def loopBody452_78 : HolLoopProg 64 :=
.seq loopBody452_13 loopBody452_77

def loopBody452_79 : HolLoopProg 64 :=
.mark loopBody452_78

def loopBody452_80 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_79

def loopBody452_81 : HolLoopProg 64 :=
.mark loopBody452_80

def loopBody452_82 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_81

def loopBody452_83 : HolLoopProg 64 :=
.mark loopBody452_82

def loopBody452_84 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_83

def loopBody452_85 : HolLoopProg 64 :=
.mark loopBody452_84

def loopBody452_86 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_85

def loopBody452_87 : HolLoopProg 64 :=
.mark loopBody452_86

def loopBody452_88 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_87

def loopBody452_89 : HolLoopProg 64 :=
.mark loopBody452_88

def loopBody452_90 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_89

def loopBody452_91 : HolLoopProg 64 :=
.mark loopBody452_90

def loopBody452_92 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_91

def loopBody452_93 : HolLoopProg 64 :=
.mark loopBody452_92

def loopBody452_94 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_93

def loopBody452_95 : HolLoopProg 64 :=
.mark loopBody452_94

def loopBody452_96 : HolLoopProg 64 :=
.seq loopBody452_7 loopBody452_95

def loopBody452_97 : HolLoopProg 64 :=
.mark loopBody452_96

def loopBody452_98 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_97

def loopBody452_99 : HolLoopProg 64 :=
.mark loopBody452_98

def loopBody452_100 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_99

def loopBody452_101 : HolLoopProg 64 :=
.mark loopBody452_100

def loopBody452_102 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_101

def loopBody452_103 : HolLoopProg 64 :=
.mark loopBody452_102

def loopBody452_104 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_103

def loopBody452_105 : HolLoopProg 64 :=
.mark loopBody452_104

def loopBody452_106 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_105

def loopBody452_107 : HolLoopProg 64 :=
.mark loopBody452_106

def loopBody452_108 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_107

def loopBody452_109 : HolLoopProg 64 :=
.mark loopBody452_108

def loopBody452_110 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_109

def loopBody452_111 : HolLoopProg 64 :=
.mark loopBody452_110

def loopBody452_112 : HolLoopProg 64 :=
.seq loopBody452_1 loopBody452_111

def loopBody452_113 : HolLoopProg 64 :=
.mark loopBody452_112

def output452 : Nat × List Nat × HolLoopProg 64 :=
  (516, [], loopBody452_113)
end InitECandidate.Proofs.FrontendStages.Loop
