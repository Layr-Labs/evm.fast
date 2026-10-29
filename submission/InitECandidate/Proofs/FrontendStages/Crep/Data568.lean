import InitECandidate.Proofs.FrontendStages.Crep.Translate552
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody568_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody568_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody568_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody568_0 crepBody568_1

def crepBody568_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 80#64]

def crepBody568_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody568_5 : CrepProg (BitVec 64) :=
.seq crepBody568_4 crepBody568_1

def crepBody568_6 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 1) crepBody568_5

def crepBody568_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]) crepBody568_6

def crepBody568_8 : CrepProg (BitVec 64) :=
.seq crepBody568_3 crepBody568_7

def crepBody568_9 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody568_8

def crepBody568_10 : CrepProg (BitVec 64) :=
.seq crepBody568_2 crepBody568_9

def crepBody568_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody568_12 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 360#64]) crepBody568_6

def crepBody568_13 : CrepProg (BitVec 64) :=
.seq crepBody568_11 crepBody568_12

def crepBody568_14 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody568_13

def crepBody568_15 : CrepProg (BitVec 64) :=
.seq crepBody568_10 crepBody568_14

def crepBody568_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 128#64]

def crepBody568_17 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 368#64]) crepBody568_6

def crepBody568_18 : CrepProg (BitVec 64) :=
.seq crepBody568_16 crepBody568_17

def crepBody568_19 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody568_18

def crepBody568_20 : CrepProg (BitVec 64) :=
.seq crepBody568_15 crepBody568_19

def crepBody568_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody568_22 : CrepProg (BitVec 64) :=
.seq crepBody568_21 crepBody568_1

def crepBody568_23 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 18364758544493064720#64) crepBody568_22

def crepBody568_24 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
    Flapjack.CrepExp.const 0#64]) crepBody568_23

def crepBody568_25 : CrepProg (BitVec 64) :=
.seq crepBody568_20 crepBody568_24

def crepBody568_26 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 3853709921291437230#64) crepBody568_22

def crepBody568_27 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
    Flapjack.CrepExp.const 8#64]) crepBody568_26

def crepBody568_28 : CrepProg (BitVec 64) :=
.seq crepBody568_25 crepBody568_27

def crepBody568_29 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 5266788149650328715#64) crepBody568_22

def crepBody568_30 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
    Flapjack.CrepExp.const 16#64]) crepBody568_29

def crepBody568_31 : CrepProg (BitVec 64) :=
.seq crepBody568_28 crepBody568_30

def crepBody568_32 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 10305543691612001175#64) crepBody568_22

def crepBody568_33 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
    Flapjack.CrepExp.const 24#64]) crepBody568_32

def crepBody568_34 : CrepProg (BitVec 64) :=
.seq crepBody568_31 crepBody568_33

def crepBody568_35 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 15242093322790139145#64) crepBody568_22

def crepBody568_36 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
    Flapjack.CrepExp.const 32#64]) crepBody568_35

def crepBody568_37 : CrepProg (BitVec 64) :=
.seq crepBody568_34 crepBody568_36

def crepBody568_38 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 10515720223929181890#64) crepBody568_22

def crepBody568_39 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
    Flapjack.CrepExp.const 40#64]) crepBody568_38

def crepBody568_40 : CrepProg (BitVec 64) :=
.seq crepBody568_37 crepBody568_39

def crepBody568_41 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 13270197634454188380#64) crepBody568_22

def crepBody568_42 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
    Flapjack.CrepExp.const 48#64]) crepBody568_41

def crepBody568_43 : CrepProg (BitVec 64) :=
.seq crepBody568_40 crepBody568_42

def crepBody568_44 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 11702690517083809725#64) crepBody568_22

def crepBody568_45 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
    Flapjack.CrepExp.const 56#64]) crepBody568_44

def crepBody568_46 : CrepProg (BitVec 64) :=
.seq crepBody568_43 crepBody568_45

def crepBody568_47 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 6503616966983130870#64) crepBody568_22

def crepBody568_48 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
    Flapjack.CrepExp.const 64#64]) crepBody568_47

def crepBody568_49 : CrepProg (BitVec 64) :=
.seq crepBody568_46 crepBody568_48

def crepBody568_50 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 991893350865389610#64) crepBody568_22

def crepBody568_51 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
    Flapjack.CrepExp.const 72#64]) crepBody568_50

def crepBody568_52 : CrepProg (BitVec 64) :=
.seq crepBody568_49 crepBody568_51

def crepBody568_53 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 7640891576956012808#64) crepBody568_22

def crepBody568_54 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 360#64]),
    Flapjack.CrepExp.const 0#64]) crepBody568_53

def crepBody568_55 : CrepProg (BitVec 64) :=
.seq crepBody568_52 crepBody568_54

def crepBody568_56 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 13503953896175478587#64) crepBody568_22

def crepBody568_57 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 360#64]),
    Flapjack.CrepExp.const 8#64]) crepBody568_56

def crepBody568_58 : CrepProg (BitVec 64) :=
.seq crepBody568_55 crepBody568_57

def crepBody568_59 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 4354685564936845355#64) crepBody568_22

def crepBody568_60 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 360#64]),
    Flapjack.CrepExp.const 16#64]) crepBody568_59

def crepBody568_61 : CrepProg (BitVec 64) :=
.seq crepBody568_58 crepBody568_60

def crepBody568_62 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 11912009170470909681#64) crepBody568_22

def crepBody568_63 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 360#64]),
    Flapjack.CrepExp.const 24#64]) crepBody568_62

def crepBody568_64 : CrepProg (BitVec 64) :=
.seq crepBody568_61 crepBody568_63

def crepBody568_65 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 5840696475078001361#64) crepBody568_22

def crepBody568_66 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 360#64]),
    Flapjack.CrepExp.const 32#64]) crepBody568_65

def crepBody568_67 : CrepProg (BitVec 64) :=
.seq crepBody568_64 crepBody568_66

def crepBody568_68 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 11170449401992604703#64) crepBody568_22

def crepBody568_69 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 360#64]),
    Flapjack.CrepExp.const 40#64]) crepBody568_68

def crepBody568_70 : CrepProg (BitVec 64) :=
.seq crepBody568_67 crepBody568_69

def crepBody568_71 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 2270897969802886507#64) crepBody568_22

def crepBody568_72 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 360#64]),
    Flapjack.CrepExp.const 48#64]) crepBody568_71

def crepBody568_73 : CrepProg (BitVec 64) :=
.seq crepBody568_70 crepBody568_72

def crepBody568_74 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 6620516959819538809#64) crepBody568_22

def crepBody568_75 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 360#64]),
    Flapjack.CrepExp.const 56#64]) crepBody568_74

def crepBody568_76 : CrepProg (BitVec 64) :=
.seq crepBody568_73 crepBody568_75

def crepBody568_77 : CrepProg (BitVec 64) :=
.seq crepBody568_76 crepBody568_0

def data568 : CrepProg (BitVec 64) := crepBody568_77
def output568 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 95#8, 105#8, 110#8, 105#8, 116#8], [], crepProgToHOL data568)
end InitECandidate.Proofs.FrontendStages.Crep
