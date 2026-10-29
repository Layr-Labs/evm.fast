import InitECandidate.Proofs.FrontendStages.Crep.Translate532
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody548_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "msg_new_scratch" []

def crepBody548_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.var 20)

def crepBody548_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody548_3 : CrepProg (BitVec 64) :=
.seq crepBody548_1 crepBody548_2

def crepBody548_4 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 0#64])) crepBody548_3

def crepBody548_5 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 0#64]) crepBody548_4

def crepBody548_6 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 8#64])) crepBody548_3

def crepBody548_7 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 8#64]) crepBody548_6

def crepBody548_8 : CrepProg (BitVec 64) :=
.seq crepBody548_5 crepBody548_7

def crepBody548_9 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 0) crepBody548_3

def crepBody548_10 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 16#64]) crepBody548_9

def crepBody548_11 : CrepProg (BitVec 64) :=
.seq crepBody548_8 crepBody548_10

def crepBody548_12 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 1) crepBody548_3

def crepBody548_13 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 24#64]) crepBody548_12

def crepBody548_14 : CrepProg (BitVec 64) :=
.seq crepBody548_11 crepBody548_13

def crepBody548_15 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 2) crepBody548_3

def crepBody548_16 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 32#64]) crepBody548_15

def crepBody548_17 : CrepProg (BitVec 64) :=
.seq crepBody548_14 crepBody548_16

def crepBody548_18 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 3) crepBody548_3

def crepBody548_19 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 40#64]) crepBody548_18

def crepBody548_20 : CrepProg (BitVec 64) :=
.seq crepBody548_17 crepBody548_19

def crepBody548_21 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 4) crepBody548_3

def crepBody548_22 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 48#64]) crepBody548_21

def crepBody548_23 : CrepProg (BitVec 64) :=
.seq crepBody548_20 crepBody548_22

def crepBody548_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 21)

def crepBody548_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 22)

def crepBody548_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 23)

def crepBody548_27 : CrepProg (BitVec 64) :=
.seq crepBody548_26 crepBody548_2

def crepBody548_28 : CrepProg (BitVec 64) :=
.seq crepBody548_25 crepBody548_27

def crepBody548_29 : CrepProg (BitVec 64) :=
.seq crepBody548_24 crepBody548_28

def crepBody548_30 : CrepProg (BitVec 64) :=
.seq crepBody548_1 crepBody548_29

def crepBody548_31 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.var 8) crepBody548_30

def crepBody548_32 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 7) crepBody548_31

def crepBody548_33 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 6) crepBody548_32

def crepBody548_34 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 5) crepBody548_33

def crepBody548_35 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 56#64]) crepBody548_34

def crepBody548_36 : CrepProg (BitVec 64) :=
.seq crepBody548_23 crepBody548_35

def crepBody548_37 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 9) crepBody548_3

def crepBody548_38 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 88#64]) crepBody548_37

def crepBody548_39 : CrepProg (BitVec 64) :=
.seq crepBody548_36 crepBody548_38

def crepBody548_40 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 10) crepBody548_3

def crepBody548_41 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 96#64]) crepBody548_40

def crepBody548_42 : CrepProg (BitVec 64) :=
.seq crepBody548_39 crepBody548_41

def crepBody548_43 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 11) crepBody548_3

def crepBody548_44 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 104#64]) crepBody548_43

def crepBody548_45 : CrepProg (BitVec 64) :=
.seq crepBody548_42 crepBody548_44

def crepBody548_46 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 12) crepBody548_3

def crepBody548_47 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 112#64]) crepBody548_46

def crepBody548_48 : CrepProg (BitVec 64) :=
.seq crepBody548_45 crepBody548_47

def crepBody548_49 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 13) crepBody548_3

def crepBody548_50 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 120#64]) crepBody548_49

def crepBody548_51 : CrepProg (BitVec 64) :=
.seq crepBody548_48 crepBody548_50

def crepBody548_52 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 128#64]),
    Flapjack.CrepExp.const 1#64]) crepBody548_3

def crepBody548_53 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 128#64]) crepBody548_52

def crepBody548_54 : CrepProg (BitVec 64) :=
.seq crepBody548_51 crepBody548_53

def crepBody548_55 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 14) crepBody548_3

def crepBody548_56 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 136#64]) crepBody548_55

def crepBody548_57 : CrepProg (BitVec 64) :=
.seq crepBody548_54 crepBody548_56

def crepBody548_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 19 (Flapjack.CrepExp.const 1#64)

def crepBody548_59 : CrepProg (BitVec 64) :=
.seq crepBody548_58 crepBody548_2

def crepBody548_60 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 144#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody548_59 crepBody548_2

def crepBody548_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.var 21)

def crepBody548_62 : CrepProg (BitVec 64) :=
.seq crepBody548_61 crepBody548_2

def crepBody548_63 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 19) crepBody548_62

def crepBody548_64 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 144#64]) crepBody548_63

def crepBody548_65 : CrepProg (BitVec 64) :=
.seq crepBody548_60 crepBody548_64

def crepBody548_66 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 168#64])) crepBody548_62

def crepBody548_67 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 152#64]) crepBody548_66

def crepBody548_68 : CrepProg (BitVec 64) :=
.seq crepBody548_65 crepBody548_67

def crepBody548_69 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 176#64])) crepBody548_62

def crepBody548_70 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 160#64]) crepBody548_69

def crepBody548_71 : CrepProg (BitVec 64) :=
.seq crepBody548_68 crepBody548_70

def crepBody548_72 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 16) crepBody548_62

def crepBody548_73 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 168#64]) crepBody548_72

def crepBody548_74 : CrepProg (BitVec 64) :=
.seq crepBody548_71 crepBody548_73

def crepBody548_75 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 18]

def crepBody548_76 : CrepProg (BitVec 64) :=
.seq crepBody548_74 crepBody548_75

def crepBody548_77 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.var 15) crepBody548_76

def crepBody548_78 : CrepProg (BitVec 64) :=
.seq crepBody548_57 crepBody548_77

def crepBody548_79 : CrepProg (BitVec 64) :=
.seq crepBody548_0 crepBody548_78

def crepBody548_80 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody548_79

def crepBody548_81 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody548_80

def data548 : CrepProg (BitVec 64) := crepBody548_81
def output548 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 104#8, 105#8, 108#8, 100#8, 95#8, 109#8, 101#8, 115#8, 115#8, 97#8, 103#8, 101#8], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], crepProgToHOL data548)
end InitECandidate.Proofs.FrontendStages.Crep
