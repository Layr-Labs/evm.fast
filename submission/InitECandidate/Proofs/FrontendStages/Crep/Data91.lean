import InitECandidate.Proofs.FrontendStages.Crep.Translate75
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody91_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 192#64]

def crepBody91_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody91_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody91_3 : CrepProg (BitVec 64) :=
.seq crepBody91_1 crepBody91_2

def crepBody91_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 1) crepBody91_3

def crepBody91_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]) crepBody91_4

def crepBody91_6 : CrepProg (BitVec 64) :=
.seq crepBody91_0 crepBody91_5

def crepBody91_7 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody91_6

def crepBody91_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 200#64]

def crepBody91_9 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 72#64]) crepBody91_4

def crepBody91_10 : CrepProg (BitVec 64) :=
.seq crepBody91_8 crepBody91_9

def crepBody91_11 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody91_10

def crepBody91_12 : CrepProg (BitVec 64) :=
.seq crepBody91_7 crepBody91_11

def crepBody91_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 136#64]

def crepBody91_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 80#64]) crepBody91_4

def crepBody91_15 : CrepProg (BitVec 64) :=
.seq crepBody91_13 crepBody91_14

def crepBody91_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody91_15

def crepBody91_17 : CrepProg (BitVec 64) :=
.seq crepBody91_12 crepBody91_16

def crepBody91_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody91_19 : CrepProg (BitVec 64) :=
.seq crepBody91_18 crepBody91_2

def crepBody91_20 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 1#64) crepBody91_19

def crepBody91_21 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 0#64]) crepBody91_20

def crepBody91_22 : CrepProg (BitVec 64) :=
.seq crepBody91_17 crepBody91_21

def crepBody91_23 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 32898#64) crepBody91_19

def crepBody91_24 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 8#64]) crepBody91_23

def crepBody91_25 : CrepProg (BitVec 64) :=
.seq crepBody91_22 crepBody91_24

def crepBody91_26 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 9223372036854808714#64) crepBody91_19

def crepBody91_27 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 16#64]) crepBody91_26

def crepBody91_28 : CrepProg (BitVec 64) :=
.seq crepBody91_25 crepBody91_27

def crepBody91_29 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 9223372039002292224#64) crepBody91_19

def crepBody91_30 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 24#64]) crepBody91_29

def crepBody91_31 : CrepProg (BitVec 64) :=
.seq crepBody91_28 crepBody91_30

def crepBody91_32 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 32907#64) crepBody91_19

def crepBody91_33 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 32#64]) crepBody91_32

def crepBody91_34 : CrepProg (BitVec 64) :=
.seq crepBody91_31 crepBody91_33

def crepBody91_35 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 2147483649#64) crepBody91_19

def crepBody91_36 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 40#64]) crepBody91_35

def crepBody91_37 : CrepProg (BitVec 64) :=
.seq crepBody91_34 crepBody91_36

def crepBody91_38 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 9223372039002292353#64) crepBody91_19

def crepBody91_39 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 48#64]) crepBody91_38

def crepBody91_40 : CrepProg (BitVec 64) :=
.seq crepBody91_37 crepBody91_39

def crepBody91_41 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 9223372036854808585#64) crepBody91_19

def crepBody91_42 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 56#64]) crepBody91_41

def crepBody91_43 : CrepProg (BitVec 64) :=
.seq crepBody91_40 crepBody91_42

def crepBody91_44 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 138#64) crepBody91_19

def crepBody91_45 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 64#64]) crepBody91_44

def crepBody91_46 : CrepProg (BitVec 64) :=
.seq crepBody91_43 crepBody91_45

def crepBody91_47 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 136#64) crepBody91_19

def crepBody91_48 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 72#64]) crepBody91_47

def crepBody91_49 : CrepProg (BitVec 64) :=
.seq crepBody91_46 crepBody91_48

def crepBody91_50 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 2147516425#64) crepBody91_19

def crepBody91_51 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 80#64]) crepBody91_50

def crepBody91_52 : CrepProg (BitVec 64) :=
.seq crepBody91_49 crepBody91_51

def crepBody91_53 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 2147483658#64) crepBody91_19

def crepBody91_54 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 88#64]) crepBody91_53

def crepBody91_55 : CrepProg (BitVec 64) :=
.seq crepBody91_52 crepBody91_54

def crepBody91_56 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 2147516555#64) crepBody91_19

def crepBody91_57 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 96#64]) crepBody91_56

def crepBody91_58 : CrepProg (BitVec 64) :=
.seq crepBody91_55 crepBody91_57

def crepBody91_59 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 9223372036854775947#64) crepBody91_19

def crepBody91_60 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 104#64]) crepBody91_59

def crepBody91_61 : CrepProg (BitVec 64) :=
.seq crepBody91_58 crepBody91_60

def crepBody91_62 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 9223372036854808713#64) crepBody91_19

def crepBody91_63 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 112#64]) crepBody91_62

def crepBody91_64 : CrepProg (BitVec 64) :=
.seq crepBody91_61 crepBody91_63

def crepBody91_65 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 9223372036854808579#64) crepBody91_19

def crepBody91_66 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 120#64]) crepBody91_65

def crepBody91_67 : CrepProg (BitVec 64) :=
.seq crepBody91_64 crepBody91_66

def crepBody91_68 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 9223372036854808578#64) crepBody91_19

def crepBody91_69 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 128#64]) crepBody91_68

def crepBody91_70 : CrepProg (BitVec 64) :=
.seq crepBody91_67 crepBody91_69

def crepBody91_71 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 9223372036854775936#64) crepBody91_19

def crepBody91_72 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 136#64]) crepBody91_71

def crepBody91_73 : CrepProg (BitVec 64) :=
.seq crepBody91_70 crepBody91_72

def crepBody91_74 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 32778#64) crepBody91_19

def crepBody91_75 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 144#64]) crepBody91_74

def crepBody91_76 : CrepProg (BitVec 64) :=
.seq crepBody91_73 crepBody91_75

def crepBody91_77 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 9223372039002259466#64) crepBody91_19

def crepBody91_78 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 152#64]) crepBody91_77

def crepBody91_79 : CrepProg (BitVec 64) :=
.seq crepBody91_76 crepBody91_78

def crepBody91_80 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 160#64]) crepBody91_38

def crepBody91_81 : CrepProg (BitVec 64) :=
.seq crepBody91_79 crepBody91_80

def crepBody91_82 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 9223372036854808704#64) crepBody91_19

def crepBody91_83 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 168#64]) crepBody91_82

def crepBody91_84 : CrepProg (BitVec 64) :=
.seq crepBody91_81 crepBody91_83

def crepBody91_85 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 176#64]) crepBody91_35

def crepBody91_86 : CrepProg (BitVec 64) :=
.seq crepBody91_84 crepBody91_85

def crepBody91_87 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 9223372039002292232#64) crepBody91_19

def crepBody91_88 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 184#64]) crepBody91_87

def crepBody91_89 : CrepProg (BitVec 64) :=
.seq crepBody91_86 crepBody91_88

def crepBody91_90 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody91_91 : CrepProg (BitVec 64) :=
.seq crepBody91_89 crepBody91_90

def data91 : CrepProg (BitVec 64) := crepBody91_91
def output91 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [107#8, 101#8, 99#8, 99#8, 97#8, 107#8, 95#8, 105#8, 110#8, 105#8, 116#8], [], crepProgToHOL data91)
end InitECandidate.Proofs.FrontendStages.Crep
