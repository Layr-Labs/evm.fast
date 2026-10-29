import InitECandidate.Proofs.FrontendStages.Crep.Translate545
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody561_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody561_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "memzero" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]

def crepBody561_2 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody561_1

def crepBody561_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "account_deployable"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])]

def crepBody561_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 5)

def crepBody561_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody561_6 : CrepProg (BitVec 64) :=
.seq crepBody561_4 crepBody561_5

def crepBody561_7 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 12#64) crepBody561_6

def crepBody561_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]) crepBody561_7

def crepBody561_9 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64])) crepBody561_6

def crepBody561_10 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64]) crepBody561_9

def crepBody561_11 : CrepProg (BitVec 64) :=
.seq crepBody561_8 crepBody561_10

def crepBody561_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64])) crepBody561_6

def crepBody561_13 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 64#64]) crepBody561_12

def crepBody561_14 : CrepProg (BitVec 64) :=
.seq crepBody561_11 crepBody561_13

def crepBody561_15 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 264#64])) crepBody561_6

def crepBody561_16 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64]) crepBody561_15

def crepBody561_17 : CrepProg (BitVec 64) :=
.seq crepBody561_14 crepBody561_16

def crepBody561_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody561_19 : CrepProg (BitVec 64) :=
.seq crepBody561_17 crepBody561_18

def crepBody561_20 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody561_19 crepBody561_5

def crepBody561_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "process_create_message" [Flapjack.CrepExp.var 0]

def crepBody561_22 : CrepProg (BitVec 64) :=
.seq crepBody561_20 crepBody561_21

def crepBody561_23 : CrepProg (BitVec 64) :=
.seq crepBody561_3 crepBody561_22

def crepBody561_24 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody561_23

def crepBody561_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "process_message" [Flapjack.CrepExp.var 0]

def crepBody561_26 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody561_24 crepBody561_25

def crepBody561_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody561_28 : CrepProg (BitVec 64) :=
.seq crepBody561_27 crepBody561_5

def crepBody561_29 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 64#64])) crepBody561_28

def crepBody561_30 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64]) crepBody561_29

def crepBody561_31 : CrepProg (BitVec 64) :=
.seq crepBody561_26 crepBody561_30

def crepBody561_32 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 160#64])) crepBody561_28

def crepBody561_33 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]) crepBody561_32

def crepBody561_34 : CrepProg (BitVec 64) :=
.seq crepBody561_31 crepBody561_33

def crepBody561_35 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 120#64])) crepBody561_28

def crepBody561_36 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64]) crepBody561_35

def crepBody561_37 : CrepProg (BitVec 64) :=
.seq crepBody561_34 crepBody561_36

def crepBody561_38 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 128#64])) crepBody561_28

def crepBody561_39 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64]) crepBody561_38

def crepBody561_40 : CrepProg (BitVec 64) :=
.seq crepBody561_37 crepBody561_39

def crepBody561_41 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 72#64])) crepBody561_28

def crepBody561_42 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64]) crepBody561_41

def crepBody561_43 : CrepProg (BitVec 64) :=
.seq crepBody561_40 crepBody561_42

def crepBody561_44 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 184#64])) crepBody561_28

def crepBody561_45 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 64#64]) crepBody561_44

def crepBody561_46 : CrepProg (BitVec 64) :=
.seq crepBody561_43 crepBody561_45

def crepBody561_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "frame_state_gas_used" [Flapjack.CrepExp.var 2]

def crepBody561_48 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 200#64])]) crepBody561_6

def crepBody561_49 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 72#64]) crepBody561_48

def crepBody561_50 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 88#64])) crepBody561_6

def crepBody561_51 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]) crepBody561_50

def crepBody561_52 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 136#64])) crepBody561_6

def crepBody561_53 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64]) crepBody561_52

def crepBody561_54 : CrepProg (BitVec 64) :=
.seq crepBody561_51 crepBody561_53

def crepBody561_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.const 0#64)

def crepBody561_56 : CrepProg (BitVec 64) :=
.seq crepBody561_55 crepBody561_5

def crepBody561_57 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody561_56 crepBody561_5

def crepBody561_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody561_59 : CrepProg (BitVec 64) :=
.seq crepBody561_58 crepBody561_5

def crepBody561_60 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody561_59

def crepBody561_61 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64]) crepBody561_60

def crepBody561_62 : CrepProg (BitVec 64) :=
.seq crepBody561_57 crepBody561_61

def crepBody561_63 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 96#64])) crepBody561_62

def crepBody561_64 : CrepProg (BitVec 64) :=
.seq crepBody561_54 crepBody561_63

def crepBody561_65 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 160#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody561_64 crepBody561_5

def crepBody561_66 : CrepProg (BitVec 64) :=
.seq crepBody561_49 crepBody561_65

def crepBody561_67 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 208#64])) crepBody561_6

def crepBody561_68 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 80#64]) crepBody561_67

def crepBody561_69 : CrepProg (BitVec 64) :=
.seq crepBody561_66 crepBody561_68

def crepBody561_70 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 224#64])) crepBody561_6

def crepBody561_71 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]) crepBody561_70

def crepBody561_72 : CrepProg (BitVec 64) :=
.seq crepBody561_69 crepBody561_71

def crepBody561_73 : CrepProg (BitVec 64) :=
.seq crepBody561_72 crepBody561_18

def crepBody561_74 : CrepProg (BitVec 64) :=
.seq crepBody561_47 crepBody561_73

def crepBody561_75 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody561_74

def crepBody561_76 : CrepProg (BitVec 64) :=
.seq crepBody561_46 crepBody561_75

def crepBody561_77 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody561_76

def crepBody561_78 : CrepProg (BitVec 64) :=
.seq crepBody561_2 crepBody561_77

def crepBody561_79 : CrepProg (BitVec 64) :=
.seq crepBody561_0 crepBody561_78

def crepBody561_80 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody561_79

def data561 : CrepProg (BitVec 64) := crepBody561_80
def output561 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 111#8, 99#8, 101#8, 115#8, 115#8, 95#8, 109#8, 101#8, 115#8, 115#8, 97#8, 103#8, 101#8, 95#8, 99#8,
    97#8, 108#8, 108#8], [0], crepProgToHOL data561)
end InitECandidate.Proofs.FrontendStages.Crep
