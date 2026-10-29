import InitECandidate.Proofs.FrontendStages.Loop.Translate303
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody319_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody319_1 : HolLoopProg 64 :=
.mark loopBody319_0

def loopBody319_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody319_3 : HolLoopProg 64 :=
.mark loopBody319_2

def loopBody319_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody319_5 : HolLoopProg 64 :=
.mark loopBody319_4

def loopBody319_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody319_7 : HolLoopProg 64 :=
.mark loopBody319_6

def loopBody319_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody319_9 : HolLoopProg 64 :=
.mark loopBody319_8

def loopBody319_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody319_11 : HolLoopProg 64 :=
.mark loopBody319_10

def loopBody319_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody319_13 : HolLoopProg 64 :=
.mark loopBody319_12

def loopBody319_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.RegImm.reg 6) loopBody319_11 loopBody319_13 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody319_15 : HolLoopProg 64 :=
.mark loopBody319_14

def loopBody319_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody319_17 : HolLoopProg 64 :=
.mark loopBody319_16

def loopBody319_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3])

def loopBody319_19 : HolLoopProg 64 :=
.mark loopBody319_18

def loopBody319_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 4 4

def loopBody319_21 : HolLoopProg 64 :=
.mark loopBody319_20

def loopBody319_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody319_23 : HolLoopProg 64 :=
.mark loopBody319_22

def loopBody319_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody319_25 : HolLoopProg 64 :=
.mark loopBody319_24

def loopBody319_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody319_27 : HolLoopProg 64 :=
.mark loopBody319_26

def loopBody319_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody319_29 : HolLoopProg 64 :=
.mark loopBody319_28

def loopBody319_30 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody319_27 loopBody319_29 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody319_31 : HolLoopProg 64 :=
.mark loopBody319_30

def loopBody319_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody319_33 : HolLoopProg 64 :=
.mark loopBody319_32

def loopBody319_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64])

def loopBody319_35 : HolLoopProg 64 :=
.mark loopBody319_34

def loopBody319_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 4)

def loopBody319_37 : HolLoopProg 64 :=
.mark loopBody319_36

def loopBody319_38 : HolLoopProg 64 :=
.seq loopBody319_37 loopBody319_1

def loopBody319_39 : HolLoopProg 64 :=
.mark loopBody319_38

def loopBody319_40 : HolLoopProg 64 :=
.seq loopBody319_39 loopBody319_1

def loopBody319_41 : HolLoopProg 64 :=
.mark loopBody319_40

def loopBody319_42 : HolLoopProg 64 :=
.seq loopBody319_35 loopBody319_41

def loopBody319_43 : HolLoopProg 64 :=
.mark loopBody319_42

def loopBody319_44 : HolLoopProg 64 :=
.seq loopBody319_1 loopBody319_43

def loopBody319_45 : HolLoopProg 64 :=
.mark loopBody319_44

def loopBody319_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody319_45 loopBody319_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody319_47 : HolLoopProg 64 :=
.mark loopBody319_46

def loopBody319_48 : HolLoopProg 64 :=
.seq loopBody319_47 loopBody319_1

def loopBody319_49 : HolLoopProg 64 :=
.mark loopBody319_48

def loopBody319_50 : HolLoopProg 64 :=
.seq loopBody319_33 loopBody319_49

def loopBody319_51 : HolLoopProg 64 :=
.mark loopBody319_50

def loopBody319_52 : HolLoopProg 64 :=
.seq loopBody319_31 loopBody319_51

def loopBody319_53 : HolLoopProg 64 :=
.mark loopBody319_52

def loopBody319_54 : HolLoopProg 64 :=
.seq loopBody319_25 loopBody319_53

def loopBody319_55 : HolLoopProg 64 :=
.mark loopBody319_54

def loopBody319_56 : HolLoopProg 64 :=
.seq loopBody319_23 loopBody319_55

def loopBody319_57 : HolLoopProg 64 :=
.mark loopBody319_56

def loopBody319_58 : HolLoopProg 64 :=
.seq loopBody319_21 loopBody319_57

def loopBody319_59 : HolLoopProg 64 :=
.mark loopBody319_58

def loopBody319_60 : HolLoopProg 64 :=
.seq loopBody319_19 loopBody319_59

def loopBody319_61 : HolLoopProg 64 :=
.mark loopBody319_60

def loopBody319_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody319_63 : HolLoopProg 64 :=
.mark loopBody319_62

def loopBody319_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 4)

def loopBody319_65 : HolLoopProg 64 :=
.mark loopBody319_64

def loopBody319_66 : HolLoopProg 64 :=
.seq loopBody319_65 loopBody319_1

def loopBody319_67 : HolLoopProg 64 :=
.mark loopBody319_66

def loopBody319_68 : HolLoopProg 64 :=
.seq loopBody319_67 loopBody319_1

def loopBody319_69 : HolLoopProg 64 :=
.mark loopBody319_68

def loopBody319_70 : HolLoopProg 64 :=
.seq loopBody319_63 loopBody319_69

def loopBody319_71 : HolLoopProg 64 :=
.mark loopBody319_70

def loopBody319_72 : HolLoopProg 64 :=
.seq loopBody319_1 loopBody319_71

def loopBody319_73 : HolLoopProg 64 :=
.mark loopBody319_72

def loopBody319_74 : HolLoopProg 64 :=
.seq loopBody319_61 loopBody319_73

def loopBody319_75 : HolLoopProg 64 :=
.mark loopBody319_74

def loopBody319_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody319_77 : HolLoopProg 64 :=
.mark loopBody319_76

def loopBody319_78 : HolLoopProg 64 :=
.seq loopBody319_75 loopBody319_77

def loopBody319_79 : HolLoopProg 64 :=
.mark loopBody319_78

def loopBody319_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody319_81 : HolLoopProg 64 :=
.mark loopBody319_80

def loopBody319_82 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody319_79 loopBody319_81 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody319_83 : HolLoopProg 64 :=
.mark loopBody319_82

def loopBody319_84 : HolLoopProg 64 :=
.seq loopBody319_83 loopBody319_1

def loopBody319_85 : HolLoopProg 64 :=
.mark loopBody319_84

def loopBody319_86 : HolLoopProg 64 :=
.seq loopBody319_17 loopBody319_85

def loopBody319_87 : HolLoopProg 64 :=
.mark loopBody319_86

def loopBody319_88 : HolLoopProg 64 :=
.seq loopBody319_15 loopBody319_87

def loopBody319_89 : HolLoopProg 64 :=
.mark loopBody319_88

def loopBody319_90 : HolLoopProg 64 :=
.seq loopBody319_9 loopBody319_89

def loopBody319_91 : HolLoopProg 64 :=
.mark loopBody319_90

def loopBody319_92 : HolLoopProg 64 :=
.seq loopBody319_7 loopBody319_91

def loopBody319_93 : HolLoopProg 64 :=
.mark loopBody319_92

def loopBody319_94 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody319_93 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))

def loopBody319_95 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2])
        (Flapjack.HolLoopExp.const 2#64)])

def loopBody319_96 : HolLoopProg 64 :=
.mark loopBody319_95

def loopBody319_97 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody319_98 : HolLoopProg 64 :=
.mark loopBody319_97

def loopBody319_99 : HolLoopProg 64 :=
.seq loopBody319_98 loopBody319_1

def loopBody319_100 : HolLoopProg 64 :=
.mark loopBody319_99

def loopBody319_101 : HolLoopProg 64 :=
.seq loopBody319_96 loopBody319_100

def loopBody319_102 : HolLoopProg 64 :=
.mark loopBody319_101

def loopBody319_103 : HolLoopProg 64 :=
.seq loopBody319_94 loopBody319_102

def loopBody319_104 : HolLoopProg 64 :=
.seq loopBody319_5 loopBody319_103

def loopBody319_105 : HolLoopProg 64 :=
.seq loopBody319_1 loopBody319_104

def loopBody319_106 : HolLoopProg 64 :=
.seq loopBody319_3 loopBody319_105

def loopBody319_107 : HolLoopProg 64 :=
.seq loopBody319_1 loopBody319_106

def output319 : Nat × List Nat × HolLoopProg 64 :=
  (383, [0, 1], loopBody319_107)
end InitECandidate.Proofs.FrontendStages.Loop
