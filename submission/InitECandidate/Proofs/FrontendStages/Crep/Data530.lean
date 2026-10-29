import InitECandidate.Proofs.FrontendStages.Crep.Translate514
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody530_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "get_pre_state_account"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])]

def crepBody530_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "acct_is_empty" [Flapjack.CrepExp.var 2]

def crepBody530_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "charge_state_gas" [Flapjack.CrepExp.const 183600#64]

def crepBody530_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody530_2

def crepBody530_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody530_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody530_3 crepBody530_4

def crepBody530_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody530_7 : CrepProg (BitVec 64) :=
.seq crepBody530_5 crepBody530_6

def crepBody530_8 : CrepProg (BitVec 64) :=
.seq crepBody530_1 crepBody530_7

def crepBody530_9 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody530_8

def crepBody530_10 : CrepProg (BitVec 64) :=
.seq crepBody530_0 crepBody530_9

def crepBody530_11 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody530_10

def crepBody530_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody530_11 crepBody530_4

def crepBody530_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "u256_is_zero"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody530_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "is_account_alive" [Flapjack.CrepExp.var 2]

def crepBody530_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "charge_state_gas" [Flapjack.CrepExp.const 183600#64]

def crepBody530_16 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody530_15

def crepBody530_17 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody530_16 crepBody530_4

def crepBody530_18 : CrepProg (BitVec 64) :=
.seq crepBody530_14 crepBody530_17

def crepBody530_19 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody530_18

def crepBody530_20 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody530_19 crepBody530_4

def crepBody530_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4, 5], none)) "ext_code_of" [Flapjack.CrepExp.var 2]

def crepBody530_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "get_delegated_code_address" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody530_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc" [Flapjack.CrepExp.const 24#64]

def crepBody530_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "memcpy"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 20#64]

def crepBody530_25 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody530_24

def crepBody530_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "is_warm_address" [Flapjack.CrepExp.var 9]

def crepBody530_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "charge_gas" [Flapjack.CrepExp.const 100#64]

def crepBody530_28 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody530_27

def crepBody530_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "charge_gas" [Flapjack.CrepExp.const 3000#64]

def crepBody530_30 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody530_29

def crepBody530_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "warm_address" [Flapjack.CrepExp.var 9]

def crepBody530_32 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody530_31

def crepBody530_33 : CrepProg (BitVec 64) :=
.seq crepBody530_30 crepBody530_32

def crepBody530_34 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)) crepBody530_28 crepBody530_33

def crepBody530_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12], none)) "ext_code_of" [Flapjack.CrepExp.var 9]

def crepBody530_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 11)

def crepBody530_37 : CrepProg (BitVec 64) :=
.seq crepBody530_36 crepBody530_4

def crepBody530_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 12)

def crepBody530_39 : CrepProg (BitVec 64) :=
.seq crepBody530_38 crepBody530_4

def crepBody530_40 : CrepProg (BitVec 64) :=
.seq crepBody530_37 crepBody530_39

def crepBody530_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 14)

def crepBody530_42 : CrepProg (BitVec 64) :=
.seq crepBody530_41 crepBody530_4

def crepBody530_43 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 1#64) crepBody530_42

def crepBody530_44 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 168#64]) crepBody530_43

def crepBody530_45 : CrepProg (BitVec 64) :=
.seq crepBody530_40 crepBody530_44

def crepBody530_46 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 9) crepBody530_42

def crepBody530_47 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 104#64]) crepBody530_46

def crepBody530_48 : CrepProg (BitVec 64) :=
.seq crepBody530_45 crepBody530_47

def crepBody530_49 : CrepProg (BitVec 64) :=
.seq crepBody530_35 crepBody530_48

def crepBody530_50 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody530_49

def crepBody530_51 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody530_50

def crepBody530_52 : CrepProg (BitVec 64) :=
.seq crepBody530_34 crepBody530_51

def crepBody530_53 : CrepProg (BitVec 64) :=
.seq crepBody530_26 crepBody530_52

def crepBody530_54 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody530_53

def crepBody530_55 : CrepProg (BitVec 64) :=
.seq crepBody530_25 crepBody530_54

def crepBody530_56 : CrepProg (BitVec 64) :=
.seq crepBody530_23 crepBody530_55

def crepBody530_57 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody530_56

def crepBody530_58 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 0#64)) crepBody530_57 crepBody530_4

def crepBody530_59 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 10)

def crepBody530_60 : CrepProg (BitVec 64) :=
.seq crepBody530_59 crepBody530_4

def crepBody530_61 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 6) crepBody530_60

def crepBody530_62 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 112#64]) crepBody530_61

def crepBody530_63 : CrepProg (BitVec 64) :=
.seq crepBody530_58 crepBody530_62

def crepBody530_64 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 7) crepBody530_60

def crepBody530_65 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 120#64]) crepBody530_64

def crepBody530_66 : CrepProg (BitVec 64) :=
.seq crepBody530_63 crepBody530_65

def crepBody530_67 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 48#64]) crepBody530_61

def crepBody530_68 : CrepProg (BitVec 64) :=
.seq crepBody530_66 crepBody530_67

def crepBody530_69 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 56#64]) crepBody530_64

def crepBody530_70 : CrepProg (BitVec 64) :=
.seq crepBody530_68 crepBody530_69

def crepBody530_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "compute_jumpdests" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody530_72 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 11)

def crepBody530_73 : CrepProg (BitVec 64) :=
.seq crepBody530_72 crepBody530_4

def crepBody530_74 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 9) crepBody530_73

def crepBody530_75 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 80#64]) crepBody530_74

def crepBody530_76 : CrepProg (BitVec 64) :=
.seq crepBody530_75 crepBody530_6

def crepBody530_77 : CrepProg (BitVec 64) :=
.seq crepBody530_71 crepBody530_76

def crepBody530_78 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody530_77

def crepBody530_79 : CrepProg (BitVec 64) :=
.seq crepBody530_70 crepBody530_78

def crepBody530_80 : CrepProg (BitVec 64) :=
.seq crepBody530_22 crepBody530_79

def crepBody530_81 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody530_80

def crepBody530_82 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 5) crepBody530_81

def crepBody530_83 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody530_82

def crepBody530_84 : CrepProg (BitVec 64) :=
.seq crepBody530_21 crepBody530_83

def crepBody530_85 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody530_84

def crepBody530_86 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody530_85

def crepBody530_87 : CrepProg (BitVec 64) :=
.seq crepBody530_20 crepBody530_86

def crepBody530_88 : CrepProg (BitVec 64) :=
.seq crepBody530_13 crepBody530_87

def crepBody530_89 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody530_88

def crepBody530_90 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])) crepBody530_89

def crepBody530_91 : CrepProg (BitVec 64) :=
.seq crepBody530_12 crepBody530_90

def crepBody530_92 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody530_91

def data530 : CrepProg (BitVec 64) := crepBody530_92
def output530 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 112#8, 97#8, 114#8, 101#8, 95#8, 100#8, 105#8, 115#8, 112#8, 97#8, 116#8, 99#8, 104#8], [], crepProgToHOL data530)
end InitECandidate.Proofs.FrontendStages.Crep
