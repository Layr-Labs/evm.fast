import InitECandidate.Proofs.FrontendStages.Loop.Translate395
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody411_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody411_1 : HolLoopProg 64 :=
.mark loopBody411_0

def loopBody411_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody411_3 : HolLoopProg 64 :=
.mark loopBody411_2

def loopBody411_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody411_5 : HolLoopProg 64 :=
.mark loopBody411_4

def loopBody411_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody411_7 : HolLoopProg 64 :=
.mark loopBody411_6

def loopBody411_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody411_9 : HolLoopProg 64 :=
.mark loopBody411_8

def loopBody411_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody411_11 : HolLoopProg 64 :=
.mark loopBody411_10

def loopBody411_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody411_9 loopBody411_11 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody411_13 : HolLoopProg 64 :=
.mark loopBody411_12

def loopBody411_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody411_15 : HolLoopProg 64 :=
.mark loopBody411_14

def loopBody411_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody411_17 : HolLoopProg 64 :=
.mark loopBody411_16

def loopBody411_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 2)

def loopBody411_19 : HolLoopProg 64 :=
.mark loopBody411_18

def loopBody411_20 : HolLoopProg 64 :=
.seq loopBody411_19 loopBody411_1

def loopBody411_21 : HolLoopProg 64 :=
.mark loopBody411_20

def loopBody411_22 : HolLoopProg 64 :=
.seq loopBody411_21 loopBody411_1

def loopBody411_23 : HolLoopProg 64 :=
.mark loopBody411_22

def loopBody411_24 : HolLoopProg 64 :=
.seq loopBody411_17 loopBody411_23

def loopBody411_25 : HolLoopProg 64 :=
.mark loopBody411_24

def loopBody411_26 : HolLoopProg 64 :=
.seq loopBody411_1 loopBody411_25

def loopBody411_27 : HolLoopProg 64 :=
.mark loopBody411_26

def loopBody411_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 8#64)

def loopBody411_29 : HolLoopProg 64 :=
.mark loopBody411_28

def loopBody411_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody411_31 : HolLoopProg 64 :=
.mark loopBody411_30

def loopBody411_32 : HolLoopProg 64 :=
.seq loopBody411_29 loopBody411_31

def loopBody411_33 : HolLoopProg 64 :=
.mark loopBody411_32

def loopBody411_34 : HolLoopProg 64 :=
.seq loopBody411_27 loopBody411_33

def loopBody411_35 : HolLoopProg 64 :=
.mark loopBody411_34

def loopBody411_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody411_35 loopBody411_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody411_37 : HolLoopProg 64 :=
.mark loopBody411_36

def loopBody411_38 : HolLoopProg 64 :=
.seq loopBody411_37 loopBody411_1

def loopBody411_39 : HolLoopProg 64 :=
.mark loopBody411_38

def loopBody411_40 : HolLoopProg 64 :=
.seq loopBody411_15 loopBody411_39

def loopBody411_41 : HolLoopProg 64 :=
.mark loopBody411_40

def loopBody411_42 : HolLoopProg 64 :=
.seq loopBody411_13 loopBody411_41

def loopBody411_43 : HolLoopProg 64 :=
.mark loopBody411_42

def loopBody411_44 : HolLoopProg 64 :=
.seq loopBody411_7 loopBody411_43

def loopBody411_45 : HolLoopProg 64 :=
.mark loopBody411_44

def loopBody411_46 : HolLoopProg 64 :=
.seq loopBody411_5 loopBody411_45

def loopBody411_47 : HolLoopProg 64 :=
.mark loopBody411_46

def loopBody411_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 1#64])

def loopBody411_49 : HolLoopProg 64 :=
.mark loopBody411_48

def loopBody411_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 2)

def loopBody411_51 : HolLoopProg 64 :=
.mark loopBody411_50

def loopBody411_52 : HolLoopProg 64 :=
.seq loopBody411_51 loopBody411_1

def loopBody411_53 : HolLoopProg 64 :=
.mark loopBody411_52

def loopBody411_54 : HolLoopProg 64 :=
.seq loopBody411_53 loopBody411_1

def loopBody411_55 : HolLoopProg 64 :=
.mark loopBody411_54

def loopBody411_56 : HolLoopProg 64 :=
.seq loopBody411_49 loopBody411_55

def loopBody411_57 : HolLoopProg 64 :=
.mark loopBody411_56

def loopBody411_58 : HolLoopProg 64 :=
.seq loopBody411_1 loopBody411_57

def loopBody411_59 : HolLoopProg 64 :=
.mark loopBody411_58

def loopBody411_60 : HolLoopProg 64 :=
.seq loopBody411_47 loopBody411_59

def loopBody411_61 : HolLoopProg 64 :=
.mark loopBody411_60

def loopBody411_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 16#64])

def loopBody411_63 : HolLoopProg 64 :=
.mark loopBody411_62

def loopBody411_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody411_65 : HolLoopProg 64 :=
.mark loopBody411_64

def loopBody411_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 2) 4

def loopBody411_67 : HolLoopProg 64 :=
.mark loopBody411_66

def loopBody411_68 : HolLoopProg 64 :=
.seq loopBody411_67 loopBody411_1

def loopBody411_69 : HolLoopProg 64 :=
.mark loopBody411_68

def loopBody411_70 : HolLoopProg 64 :=
.seq loopBody411_65 loopBody411_69

def loopBody411_71 : HolLoopProg 64 :=
.mark loopBody411_70

def loopBody411_72 : HolLoopProg 64 :=
.seq loopBody411_71 loopBody411_1

def loopBody411_73 : HolLoopProg 64 :=
.mark loopBody411_72

def loopBody411_74 : HolLoopProg 64 :=
.seq loopBody411_5 loopBody411_73

def loopBody411_75 : HolLoopProg 64 :=
.mark loopBody411_74

def loopBody411_76 : HolLoopProg 64 :=
.seq loopBody411_1 loopBody411_75

def loopBody411_77 : HolLoopProg 64 :=
.mark loopBody411_76

def loopBody411_78 : HolLoopProg 64 :=
.seq loopBody411_63 loopBody411_77

def loopBody411_79 : HolLoopProg 64 :=
.mark loopBody411_78

def loopBody411_80 : HolLoopProg 64 :=
.seq loopBody411_1 loopBody411_79

def loopBody411_81 : HolLoopProg 64 :=
.mark loopBody411_80

def loopBody411_82 : HolLoopProg 64 :=
.seq loopBody411_61 loopBody411_81

def loopBody411_83 : HolLoopProg 64 :=
.mark loopBody411_82

def loopBody411_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.load
                (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                  [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
              Flapjack.HolLoopExp.const 8#64]),
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 5#64)]))

def loopBody411_85 : HolLoopProg 64 :=
.mark loopBody411_84

def loopBody411_86 : HolLoopProg 64 :=
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
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody411_87 : HolLoopProg 64 :=
.mark loopBody411_86

def loopBody411_88 : HolLoopProg 64 :=
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
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody411_89 : HolLoopProg 64 :=
.mark loopBody411_88

def loopBody411_90 : HolLoopProg 64 :=
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
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody411_91 : HolLoopProg 64 :=
.mark loopBody411_90

def loopBody411_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2, 3, 4, 5]

def loopBody411_93 : HolLoopProg 64 :=
.mark loopBody411_92

def loopBody411_94 : HolLoopProg 64 :=
.seq loopBody411_93 loopBody411_1

def loopBody411_95 : HolLoopProg 64 :=
.mark loopBody411_94

def loopBody411_96 : HolLoopProg 64 :=
.seq loopBody411_91 loopBody411_95

def loopBody411_97 : HolLoopProg 64 :=
.mark loopBody411_96

def loopBody411_98 : HolLoopProg 64 :=
.seq loopBody411_89 loopBody411_97

def loopBody411_99 : HolLoopProg 64 :=
.mark loopBody411_98

def loopBody411_100 : HolLoopProg 64 :=
.seq loopBody411_87 loopBody411_99

def loopBody411_101 : HolLoopProg 64 :=
.mark loopBody411_100

def loopBody411_102 : HolLoopProg 64 :=
.seq loopBody411_85 loopBody411_101

def loopBody411_103 : HolLoopProg 64 :=
.mark loopBody411_102

def loopBody411_104 : HolLoopProg 64 :=
.seq loopBody411_83 loopBody411_103

def loopBody411_105 : HolLoopProg 64 :=
.mark loopBody411_104

def loopBody411_106 : HolLoopProg 64 :=
.seq loopBody411_3 loopBody411_105

def loopBody411_107 : HolLoopProg 64 :=
.mark loopBody411_106

def loopBody411_108 : HolLoopProg 64 :=
.seq loopBody411_1 loopBody411_107

def loopBody411_109 : HolLoopProg 64 :=
.mark loopBody411_108

def output411 : Nat × List Nat × HolLoopProg 64 :=
  (475, [], loopBody411_109)
end InitECandidate.Proofs.FrontendStages.Loop
