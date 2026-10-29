import InitECandidate.Proofs.FrontendStages.Loop.Translate5
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody21_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 7#64])

def loopBody21_1 : HolLoopProg 64 :=
.mark loopBody21_0

def loopBody21_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody21_3 : HolLoopProg 64 :=
.mark loopBody21_2

def loopBody21_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody21_5 : HolLoopProg 64 :=
.mark loopBody21_4

def loopBody21_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody21_7 : HolLoopProg 64 :=
.mark loopBody21_6

def loopBody21_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.RegImm.reg 3) loopBody21_5 loopBody21_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody21_9 : HolLoopProg 64 :=
.mark loopBody21_8

def loopBody21_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody21_11 : HolLoopProg 64 :=
.mark loopBody21_10

def loopBody21_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 0))

def loopBody21_13 : HolLoopProg 64 :=
.mark loopBody21_12

def loopBody21_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 84) [1] none

def loopBody21_15 : HolLoopProg 64 :=
.mark loopBody21_14

def loopBody21_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody21_17 : HolLoopProg 64 :=
.mark loopBody21_16

def loopBody21_18 : HolLoopProg 64 :=
.seq loopBody21_15 loopBody21_17

def loopBody21_19 : HolLoopProg 64 :=
.mark loopBody21_18

def loopBody21_20 : HolLoopProg 64 :=
.seq loopBody21_13 loopBody21_19

def loopBody21_21 : HolLoopProg 64 :=
.mark loopBody21_20

def loopBody21_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody21_21 loopBody21_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody21_23 : HolLoopProg 64 :=
.mark loopBody21_22

def loopBody21_24 : HolLoopProg 64 :=
.seq loopBody21_23 loopBody21_17

def loopBody21_25 : HolLoopProg 64 :=
.mark loopBody21_24

def loopBody21_26 : HolLoopProg 64 :=
.seq loopBody21_11 loopBody21_25

def loopBody21_27 : HolLoopProg 64 :=
.mark loopBody21_26

def loopBody21_28 : HolLoopProg 64 :=
.seq loopBody21_9 loopBody21_27

def loopBody21_29 : HolLoopProg 64 :=
.mark loopBody21_28

def loopBody21_30 : HolLoopProg 64 :=
.seq loopBody21_3 loopBody21_29

def loopBody21_31 : HolLoopProg 64 :=
.mark loopBody21_30

def loopBody21_32 : HolLoopProg 64 :=
.seq loopBody21_1 loopBody21_31

def loopBody21_33 : HolLoopProg 64 :=
.mark loopBody21_32

def loopBody21_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 0)

def loopBody21_35 : HolLoopProg 64 :=
.mark loopBody21_34

def loopBody21_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 1 1

def loopBody21_37 : HolLoopProg 64 :=
.mark loopBody21_36

def loopBody21_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody21_39 : HolLoopProg 64 :=
.mark loopBody21_38

def loopBody21_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 2 2

def loopBody21_41 : HolLoopProg 64 :=
.mark loopBody21_40

def loopBody21_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 2#64])

def loopBody21_43 : HolLoopProg 64 :=
.mark loopBody21_42

def loopBody21_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 3 3

def loopBody21_45 : HolLoopProg 64 :=
.mark loopBody21_44

def loopBody21_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 3#64])

def loopBody21_47 : HolLoopProg 64 :=
.mark loopBody21_46

def loopBody21_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 4 4

def loopBody21_49 : HolLoopProg 64 :=
.mark loopBody21_48

def loopBody21_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64])

def loopBody21_51 : HolLoopProg 64 :=
.mark loopBody21_50

def loopBody21_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 5 5

def loopBody21_53 : HolLoopProg 64 :=
.mark loopBody21_52

def loopBody21_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64, Flapjack.HolLoopExp.const 1#64])

def loopBody21_55 : HolLoopProg 64 :=
.mark loopBody21_54

def loopBody21_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 6 6

def loopBody21_57 : HolLoopProg 64 :=
.mark loopBody21_56

def loopBody21_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64, Flapjack.HolLoopExp.const 2#64])

def loopBody21_59 : HolLoopProg 64 :=
.mark loopBody21_58

def loopBody21_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 7 7

def loopBody21_61 : HolLoopProg 64 :=
.mark loopBody21_60

def loopBody21_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64, Flapjack.HolLoopExp.const 3#64])

def loopBody21_63 : HolLoopProg 64 :=
.mark loopBody21_62

def loopBody21_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 8 8

def loopBody21_65 : HolLoopProg 64 :=
.mark loopBody21_64

def loopBody21_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.op Flapjack.BinOp.or
          [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 24#64),
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 16#64),
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 8#64),
            Flapjack.HolLoopExp.var 4])
        (Flapjack.HolLoopExp.const 32#64),
      Flapjack.HolLoopExp.op Flapjack.BinOp.or
        [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 24#64),
          Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 16#64),
          Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.const 8#64),
          Flapjack.HolLoopExp.var 8]])

def loopBody21_67 : HolLoopProg 64 :=
.mark loopBody21_66

def loopBody21_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody21_69 : HolLoopProg 64 :=
.mark loopBody21_68

def loopBody21_70 : HolLoopProg 64 :=
.seq loopBody21_69 loopBody21_17

def loopBody21_71 : HolLoopProg 64 :=
.mark loopBody21_70

def loopBody21_72 : HolLoopProg 64 :=
.seq loopBody21_67 loopBody21_71

def loopBody21_73 : HolLoopProg 64 :=
.mark loopBody21_72

def loopBody21_74 : HolLoopProg 64 :=
.seq loopBody21_65 loopBody21_73

def loopBody21_75 : HolLoopProg 64 :=
.mark loopBody21_74

def loopBody21_76 : HolLoopProg 64 :=
.seq loopBody21_63 loopBody21_75

def loopBody21_77 : HolLoopProg 64 :=
.mark loopBody21_76

def loopBody21_78 : HolLoopProg 64 :=
.seq loopBody21_61 loopBody21_77

def loopBody21_79 : HolLoopProg 64 :=
.mark loopBody21_78

def loopBody21_80 : HolLoopProg 64 :=
.seq loopBody21_59 loopBody21_79

def loopBody21_81 : HolLoopProg 64 :=
.mark loopBody21_80

def loopBody21_82 : HolLoopProg 64 :=
.seq loopBody21_57 loopBody21_81

def loopBody21_83 : HolLoopProg 64 :=
.mark loopBody21_82

def loopBody21_84 : HolLoopProg 64 :=
.seq loopBody21_55 loopBody21_83

def loopBody21_85 : HolLoopProg 64 :=
.mark loopBody21_84

def loopBody21_86 : HolLoopProg 64 :=
.seq loopBody21_53 loopBody21_85

def loopBody21_87 : HolLoopProg 64 :=
.mark loopBody21_86

def loopBody21_88 : HolLoopProg 64 :=
.seq loopBody21_51 loopBody21_87

def loopBody21_89 : HolLoopProg 64 :=
.mark loopBody21_88

def loopBody21_90 : HolLoopProg 64 :=
.seq loopBody21_49 loopBody21_89

def loopBody21_91 : HolLoopProg 64 :=
.mark loopBody21_90

def loopBody21_92 : HolLoopProg 64 :=
.seq loopBody21_47 loopBody21_91

def loopBody21_93 : HolLoopProg 64 :=
.mark loopBody21_92

def loopBody21_94 : HolLoopProg 64 :=
.seq loopBody21_45 loopBody21_93

def loopBody21_95 : HolLoopProg 64 :=
.mark loopBody21_94

def loopBody21_96 : HolLoopProg 64 :=
.seq loopBody21_43 loopBody21_95

def loopBody21_97 : HolLoopProg 64 :=
.mark loopBody21_96

def loopBody21_98 : HolLoopProg 64 :=
.seq loopBody21_41 loopBody21_97

def loopBody21_99 : HolLoopProg 64 :=
.mark loopBody21_98

def loopBody21_100 : HolLoopProg 64 :=
.seq loopBody21_39 loopBody21_99

def loopBody21_101 : HolLoopProg 64 :=
.mark loopBody21_100

def loopBody21_102 : HolLoopProg 64 :=
.seq loopBody21_37 loopBody21_101

def loopBody21_103 : HolLoopProg 64 :=
.mark loopBody21_102

def loopBody21_104 : HolLoopProg 64 :=
.seq loopBody21_35 loopBody21_103

def loopBody21_105 : HolLoopProg 64 :=
.mark loopBody21_104

def loopBody21_106 : HolLoopProg 64 :=
.seq loopBody21_33 loopBody21_105

def loopBody21_107 : HolLoopProg 64 :=
.mark loopBody21_106

def output21 : Nat × List Nat × HolLoopProg 64 :=
  (85, [0], loopBody21_107)
end InitECandidate.Proofs.FrontendStages.Loop
