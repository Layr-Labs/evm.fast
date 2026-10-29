import InitECandidate.Proofs.FrontendStages.Loop.Translate556
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody572_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody572_1 : HolLoopProg 64 :=
.mark loopBody572_0

def loopBody572_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody572_3 : HolLoopProg 64 :=
.mark loopBody572_2

def loopBody572_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody572_5 : HolLoopProg 64 :=
.mark loopBody572_4

def loopBody572_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody572_7 : HolLoopProg 64 :=
.mark loopBody572_6

def loopBody572_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody572_9 : HolLoopProg 64 :=
.mark loopBody572_8

def loopBody572_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody572_11 : HolLoopProg 64 :=
.mark loopBody572_10

def loopBody572_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.RegImm.reg 7) loopBody572_9 loopBody572_11 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody572_13 : HolLoopProg 64 :=
.mark loopBody572_12

def loopBody572_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody572_15 : HolLoopProg 64 :=
.mark loopBody572_14

def loopBody572_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64],
      Flapjack.HolLoopExp.var 4])

def loopBody572_17 : HolLoopProg 64 :=
.mark loopBody572_16

def loopBody572_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 2#64))

def loopBody572_19 : HolLoopProg 64 :=
.mark loopBody572_18

def loopBody572_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody572_21 : HolLoopProg 64 :=
.mark loopBody572_20

def loopBody572_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody572_23 : HolLoopProg 64 :=
.mark loopBody572_22

def loopBody572_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody572_25 : HolLoopProg 64 :=
.mark loopBody572_24

def loopBody572_26 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.RegImm.reg 9) loopBody572_23 loopBody572_25 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody572_27 : HolLoopProg 64 :=
.mark loopBody572_26

def loopBody572_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody572_29 : HolLoopProg 64 :=
.mark loopBody572_28

def loopBody572_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr
        (Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.var 0,
              Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
                (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 5)
                  (Flapjack.HolLoopExp.const 2#64))
                (Flapjack.HolLoopExp.const 3#64)]))
        (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
          (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 3#64])
          (Flapjack.HolLoopExp.const 3#64)),
      Flapjack.HolLoopExp.const 255#64])

def loopBody572_31 : HolLoopProg 64 :=
.mark loopBody572_30

def loopBody572_32 : HolLoopProg 64 :=
.seq loopBody572_31 loopBody572_1

def loopBody572_33 : HolLoopProg 64 :=
.mark loopBody572_32

def loopBody572_34 : HolLoopProg 64 :=
.seq loopBody572_33 loopBody572_1

def loopBody572_35 : HolLoopProg 64 :=
.mark loopBody572_34

def loopBody572_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody572_35 loopBody572_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody572_37 : HolLoopProg 64 :=
.mark loopBody572_36

def loopBody572_38 : HolLoopProg 64 :=
.seq loopBody572_37 loopBody572_1

def loopBody572_39 : HolLoopProg 64 :=
.mark loopBody572_38

def loopBody572_40 : HolLoopProg 64 :=
.seq loopBody572_29 loopBody572_39

def loopBody572_41 : HolLoopProg 64 :=
.mark loopBody572_40

def loopBody572_42 : HolLoopProg 64 :=
.seq loopBody572_27 loopBody572_41

def loopBody572_43 : HolLoopProg 64 :=
.mark loopBody572_42

def loopBody572_44 : HolLoopProg 64 :=
.seq loopBody572_21 loopBody572_43

def loopBody572_45 : HolLoopProg 64 :=
.mark loopBody572_44

def loopBody572_46 : HolLoopProg 64 :=
.seq loopBody572_19 loopBody572_45

def loopBody572_47 : HolLoopProg 64 :=
.mark loopBody572_46

def loopBody572_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 4])

def loopBody572_49 : HolLoopProg 64 :=
.mark loopBody572_48

def loopBody572_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 7 8

def loopBody572_51 : HolLoopProg 64 :=
.mark loopBody572_50

def loopBody572_52 : HolLoopProg 64 :=
.seq loopBody572_51 loopBody572_1

def loopBody572_53 : HolLoopProg 64 :=
.mark loopBody572_52

def loopBody572_54 : HolLoopProg 64 :=
.seq loopBody572_15 loopBody572_53

def loopBody572_55 : HolLoopProg 64 :=
.mark loopBody572_54

def loopBody572_56 : HolLoopProg 64 :=
.seq loopBody572_49 loopBody572_55

def loopBody572_57 : HolLoopProg 64 :=
.mark loopBody572_56

def loopBody572_58 : HolLoopProg 64 :=
.seq loopBody572_47 loopBody572_57

def loopBody572_59 : HolLoopProg 64 :=
.mark loopBody572_58

def loopBody572_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody572_61 : HolLoopProg 64 :=
.mark loopBody572_60

def loopBody572_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 7)

def loopBody572_63 : HolLoopProg 64 :=
.mark loopBody572_62

def loopBody572_64 : HolLoopProg 64 :=
.seq loopBody572_63 loopBody572_1

def loopBody572_65 : HolLoopProg 64 :=
.mark loopBody572_64

def loopBody572_66 : HolLoopProg 64 :=
.seq loopBody572_65 loopBody572_1

def loopBody572_67 : HolLoopProg 64 :=
.mark loopBody572_66

def loopBody572_68 : HolLoopProg 64 :=
.seq loopBody572_61 loopBody572_67

def loopBody572_69 : HolLoopProg 64 :=
.mark loopBody572_68

def loopBody572_70 : HolLoopProg 64 :=
.seq loopBody572_1 loopBody572_69

def loopBody572_71 : HolLoopProg 64 :=
.mark loopBody572_70

def loopBody572_72 : HolLoopProg 64 :=
.seq loopBody572_59 loopBody572_71

def loopBody572_73 : HolLoopProg 64 :=
.mark loopBody572_72

def loopBody572_74 : HolLoopProg 64 :=
.seq loopBody572_11 loopBody572_73

def loopBody572_75 : HolLoopProg 64 :=
.mark loopBody572_74

def loopBody572_76 : HolLoopProg 64 :=
.seq loopBody572_1 loopBody572_75

def loopBody572_77 : HolLoopProg 64 :=
.mark loopBody572_76

def loopBody572_78 : HolLoopProg 64 :=
.seq loopBody572_17 loopBody572_77

def loopBody572_79 : HolLoopProg 64 :=
.mark loopBody572_78

def loopBody572_80 : HolLoopProg 64 :=
.seq loopBody572_1 loopBody572_79

def loopBody572_81 : HolLoopProg 64 :=
.mark loopBody572_80

def loopBody572_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody572_83 : HolLoopProg 64 :=
.mark loopBody572_82

def loopBody572_84 : HolLoopProg 64 :=
.seq loopBody572_81 loopBody572_83

def loopBody572_85 : HolLoopProg 64 :=
.mark loopBody572_84

def loopBody572_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody572_87 : HolLoopProg 64 :=
.mark loopBody572_86

def loopBody572_88 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody572_85 loopBody572_87 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody572_89 : HolLoopProg 64 :=
.mark loopBody572_88

def loopBody572_90 : HolLoopProg 64 :=
.seq loopBody572_89 loopBody572_1

def loopBody572_91 : HolLoopProg 64 :=
.mark loopBody572_90

def loopBody572_92 : HolLoopProg 64 :=
.seq loopBody572_15 loopBody572_91

def loopBody572_93 : HolLoopProg 64 :=
.mark loopBody572_92

def loopBody572_94 : HolLoopProg 64 :=
.seq loopBody572_13 loopBody572_93

def loopBody572_95 : HolLoopProg 64 :=
.mark loopBody572_94

def loopBody572_96 : HolLoopProg 64 :=
.seq loopBody572_7 loopBody572_95

def loopBody572_97 : HolLoopProg 64 :=
.mark loopBody572_96

def loopBody572_98 : HolLoopProg 64 :=
.seq loopBody572_5 loopBody572_97

def loopBody572_99 : HolLoopProg 64 :=
.mark loopBody572_98

def loopBody572_100 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody572_99 (Flapjack.Spt.ln)

def loopBody572_101 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody572_102 : HolLoopProg 64 :=
.mark loopBody572_101

def loopBody572_103 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody572_104 : HolLoopProg 64 :=
.mark loopBody572_103

def loopBody572_105 : HolLoopProg 64 :=
.seq loopBody572_104 loopBody572_1

def loopBody572_106 : HolLoopProg 64 :=
.mark loopBody572_105

def loopBody572_107 : HolLoopProg 64 :=
.seq loopBody572_102 loopBody572_106

def loopBody572_108 : HolLoopProg 64 :=
.mark loopBody572_107

def loopBody572_109 : HolLoopProg 64 :=
.seq loopBody572_100 loopBody572_108

def loopBody572_110 : HolLoopProg 64 :=
.seq loopBody572_3 loopBody572_109

def loopBody572_111 : HolLoopProg 64 :=
.seq loopBody572_1 loopBody572_110

def output572 : Nat × List Nat × HolLoopProg 64 :=
  (636, [0, 1, 2, 3], loopBody572_111)
end InitECandidate.Proofs.FrontendStages.Loop
