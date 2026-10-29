import InitECandidate.Proofs.FrontendStages.Crep.Translate546
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody562_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody562_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody562_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody562_0 crepBody562_1

def crepBody562_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 160#64]

def crepBody562_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody562_5 : CrepProg (BitVec 64) :=
.seq crepBody562_4 crepBody562_1

def crepBody562_6 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 1) crepBody562_5

def crepBody562_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]) crepBody562_6

def crepBody562_8 : CrepProg (BitVec 64) :=
.seq crepBody562_3 crepBody562_7

def crepBody562_9 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody562_8

def crepBody562_10 : CrepProg (BitVec 64) :=
.seq crepBody562_2 crepBody562_9

def crepBody562_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 128#64]

def crepBody562_12 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 328#64]) crepBody562_6

def crepBody562_13 : CrepProg (BitVec 64) :=
.seq crepBody562_11 crepBody562_12

def crepBody562_14 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody562_13

def crepBody562_15 : CrepProg (BitVec 64) :=
.seq crepBody562_10 crepBody562_14

def crepBody562_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 40#64]

def crepBody562_17 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 336#64]) crepBody562_6

def crepBody562_18 : CrepProg (BitVec 64) :=
.seq crepBody562_16 crepBody562_17

def crepBody562_19 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody562_18

def crepBody562_20 : CrepProg (BitVec 64) :=
.seq crepBody562_15 crepBody562_19

def crepBody562_21 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 344#64]) crepBody562_6

def crepBody562_22 : CrepProg (BitVec 64) :=
.seq crepBody562_11 crepBody562_21

def crepBody562_23 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody562_22

def crepBody562_24 : CrepProg (BitVec 64) :=
.seq crepBody562_20 crepBody562_23

def crepBody562_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody562_26 : CrepProg (BitVec 64) :=
.seq crepBody562_25 crepBody562_1

def crepBody562_27 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 18364758544493064720#64) crepBody562_26

def crepBody562_28 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 0#64]) crepBody562_27

def crepBody562_29 : CrepProg (BitVec 64) :=
.seq crepBody562_24 crepBody562_28

def crepBody562_30 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 10079716825146989895#64) crepBody562_26

def crepBody562_31 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 8#64]) crepBody562_30

def crepBody562_32 : CrepProg (BitVec 64) :=
.seq crepBody562_29 crepBody562_31

def crepBody562_33 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 14248650839231647395#64) crepBody562_26

def crepBody562_34 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 16#64]) crepBody562_33

def crepBody562_35 : CrepProg (BitVec 64) :=
.seq crepBody562_32 crepBody562_34

def crepBody562_36 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 2764919063900629905#64) crepBody562_26

def crepBody562_37 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 24#64]) crepBody562_36

def crepBody562_38 : CrepProg (BitVec 64) :=
.seq crepBody562_35 crepBody562_37

def crepBody562_39 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 16099105460569216260#64) crepBody562_26

def crepBody562_40 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 32#64]) crepBody562_39

def crepBody562_41 : CrepProg (BitVec 64) :=
.seq crepBody562_38 crepBody562_40

def crepBody562_42 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 14096706008221550565#64) crepBody562_26

def crepBody562_43 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 40#64]) crepBody562_42

def crepBody562_44 : CrepProg (BitVec 64) :=
.seq crepBody562_41 crepBody562_43

def crepBody562_45 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 2419779895833949110#64) crepBody562_26

def crepBody562_46 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 48#64]) crepBody562_45

def crepBody562_47 : CrepProg (BitVec 64) :=
.seq crepBody562_44 crepBody562_46

def crepBody562_48 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 15279073663851639135#64) crepBody562_26

def crepBody562_49 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 56#64]) crepBody562_48

def crepBody562_50 : CrepProg (BitVec 64) :=
.seq crepBody562_47 crepBody562_49

def crepBody562_51 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 16895767220870911080#64) crepBody562_26

def crepBody562_52 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 64#64]) crepBody562_51

def crepBody562_53 : CrepProg (BitVec 64) :=
.seq crepBody562_50 crepBody562_52

def crepBody562_54 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 13344426445381913340#64) crepBody562_26

def crepBody562_55 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 72#64]) crepBody562_54

def crepBody562_56 : CrepProg (BitVec 64) :=
.seq crepBody562_53 crepBody562_55

def crepBody562_57 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 9905384649541406699#64) crepBody562_26

def crepBody562_58 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 80#64]) crepBody562_57

def crepBody562_59 : CrepProg (BitVec 64) :=
.seq crepBody562_56 crepBody562_58

def crepBody562_60 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 14806603881112131687#64) crepBody562_26

def crepBody562_61 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 88#64]) crepBody562_60

def crepBody562_62 : CrepProg (BitVec 64) :=
.seq crepBody562_59 crepBody562_61

def crepBody562_63 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 6324581712619534043#64) crepBody562_26

def crepBody562_64 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 96#64]) crepBody562_63

def crepBody562_65 : CrepProg (BitVec 64) :=
.seq crepBody562_62 crepBody562_64

def crepBody562_66 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 14224731476766686923#64) crepBody562_26

def crepBody562_67 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 104#64]) crepBody562_66

def crepBody562_68 : CrepProg (BitVec 64) :=
.seq crepBody562_65 crepBody562_67

def crepBody562_69 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 7317203453406000633#64) crepBody562_26

def crepBody562_70 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 112#64]) crepBody562_69

def crepBody562_71 : CrepProg (BitVec 64) :=
.seq crepBody562_68 crepBody562_70

def crepBody562_72 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 7849414023404435864#64) crepBody562_26

def crepBody562_73 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 120#64]) crepBody562_72

def crepBody562_74 : CrepProg (BitVec 64) :=
.seq crepBody562_71 crepBody562_73

def crepBody562_75 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 13688264971095146457#64) crepBody562_26

def crepBody562_76 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 128#64]) crepBody562_75

def crepBody562_77 : CrepProg (BitVec 64) :=
.seq crepBody562_74 crepBody562_76

def crepBody562_78 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 6331469388073975673#64) crepBody562_26

def crepBody562_79 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 136#64]) crepBody562_78

def crepBody562_80 : CrepProg (BitVec 64) :=
.seq crepBody562_77 crepBody562_79

def crepBody562_81 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 10330303817214507103#64) crepBody562_26

def crepBody562_82 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 144#64]) crepBody562_81

def crepBody562_83 : CrepProg (BitVec 64) :=
.seq crepBody562_80 crepBody562_82

def crepBody562_84 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 13537634492463488088#64) crepBody562_26

def crepBody562_85 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.const 152#64]) crepBody562_84

def crepBody562_86 : CrepProg (BitVec 64) :=
.seq crepBody562_83 crepBody562_85

def crepBody562_87 : CrepProg (BitVec 64) :=
.seq crepBody562_86 crepBody562_0

def data562 : CrepProg (BitVec 64) := crepBody562_87
def output562 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 105#8, 112#8, 101#8, 109#8, 100#8, 49#8, 54#8, 48#8, 95#8, 105#8, 110#8, 105#8, 116#8], [], crepProgToHOL data562)
end InitECandidate.Proofs.FrontendStages.Crep
