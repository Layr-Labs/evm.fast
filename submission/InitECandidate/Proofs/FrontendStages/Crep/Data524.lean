import InitECandidate.Proofs.FrontendStages.Crep.Translate508
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody524_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "require_not_static" []

def crepBody524_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody524_0

def crepBody524_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody524_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "to_address_masked"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody524_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "is_warm_address" [Flapjack.CrepExp.var 5]

def crepBody524_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 8)

def crepBody524_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody524_7 : CrepProg (BitVec 64) :=
.seq crepBody524_5 crepBody524_6

def crepBody524_8 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 3000#64]) crepBody524_7

def crepBody524_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody524_8 crepBody524_6

def crepBody524_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "charge_gas" [Flapjack.CrepExp.var 7]

def crepBody524_11 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody524_10

def crepBody524_12 : CrepProg (BitVec 64) :=
.seq crepBody524_9 crepBody524_11

def crepBody524_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "warm_address" [Flapjack.CrepExp.var 5]

def crepBody524_14 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody524_13

def crepBody524_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody524_14 crepBody524_6

def crepBody524_16 : CrepProg (BitVec 64) :=
.seq crepBody524_12 crepBody524_15

def crepBody524_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "is_account_alive" [Flapjack.CrepExp.var 5]

def crepBody524_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "get_account" [Flapjack.CrepExp.var 8]

def crepBody524_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "u256_is_zero"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody524_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.const 183600#64)

def crepBody524_21 : CrepProg (BitVec 64) :=
.seq crepBody524_20 crepBody524_6

def crepBody524_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.const 9000#64)

def crepBody524_23 : CrepProg (BitVec 64) :=
.seq crepBody524_22 crepBody524_6

def crepBody524_24 : CrepProg (BitVec 64) :=
.seq crepBody524_21 crepBody524_23

def crepBody524_25 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 0#64))]) crepBody524_24 crepBody524_6

def crepBody524_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "charge_gas" [Flapjack.CrepExp.var 13]

def crepBody524_27 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody524_26

def crepBody524_28 : CrepProg (BitVec 64) :=
.seq crepBody524_25 crepBody524_27

def crepBody524_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "charge_state_gas" [Flapjack.CrepExp.var 12]

def crepBody524_30 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody524_29

def crepBody524_31 : CrepProg (BitVec 64) :=
.seq crepBody524_28 crepBody524_30

def crepBody524_32 : CrepProg (BitVec 64) :=
.seq crepBody524_31 crepBody524_18

def crepBody524_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "move_ether"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody524_34 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody524_33

def crepBody524_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "memeq"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 20#64]

def crepBody524_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "emit_transfer_log"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody524_37 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody524_36

def crepBody524_38 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 0#64)) crepBody524_37 crepBody524_6

def crepBody524_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "htab_has"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.var 8]

def crepBody524_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "htab_set"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 136#64]),
    Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 1#64]

def crepBody524_41 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody524_40

def crepBody524_42 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 0#64)) crepBody524_41 crepBody524_6

def crepBody524_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.var 21)

def crepBody524_44 : CrepProg (BitVec 64) :=
.seq crepBody524_43 crepBody524_6

def crepBody524_45 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody524_44

def crepBody524_46 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 104#64]) crepBody524_45

def crepBody524_47 : CrepProg (BitVec 64) :=
.seq crepBody524_42 crepBody524_46

def crepBody524_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody524_49 : CrepProg (BitVec 64) :=
.seq crepBody524_47 crepBody524_48

def crepBody524_50 : CrepProg (BitVec 64) :=
.seq crepBody524_39 crepBody524_49

def crepBody524_51 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody524_50

def crepBody524_52 : CrepProg (BitVec 64) :=
.seq crepBody524_38 crepBody524_51

def crepBody524_53 : CrepProg (BitVec 64) :=
.seq crepBody524_35 crepBody524_52

def crepBody524_54 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody524_53

def crepBody524_55 : CrepProg (BitVec 64) :=
.seq crepBody524_34 crepBody524_54

def crepBody524_56 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
      Flapjack.CrepExp.const 24#64])) crepBody524_55

def crepBody524_57 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
      Flapjack.CrepExp.const 16#64])) crepBody524_56

def crepBody524_58 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
      Flapjack.CrepExp.const 8#64])) crepBody524_57

def crepBody524_59 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64])) crepBody524_58

def crepBody524_60 : CrepProg (BitVec 64) :=
.seq crepBody524_32 crepBody524_59

def crepBody524_61 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody524_60

def crepBody524_62 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody524_61

def crepBody524_63 : CrepProg (BitVec 64) :=
.seq crepBody524_19 crepBody524_62

def crepBody524_64 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody524_63

def crepBody524_65 : CrepProg (BitVec 64) :=
.seq crepBody524_18 crepBody524_64

def crepBody524_66 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody524_65

def crepBody524_67 : CrepProg (BitVec 64) :=
.seq crepBody524_17 crepBody524_66

def crepBody524_68 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody524_67

def crepBody524_69 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.load
              (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
            Flapjack.CrepExp.const 112#64]),
      Flapjack.CrepExp.const 32#64])) crepBody524_68

def crepBody524_70 : CrepProg (BitVec 64) :=
.seq crepBody524_16 crepBody524_69

def crepBody524_71 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 5000#64) crepBody524_70

def crepBody524_72 : CrepProg (BitVec 64) :=
.seq crepBody524_4 crepBody524_71

def crepBody524_73 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody524_72

def crepBody524_74 : CrepProg (BitVec 64) :=
.seq crepBody524_3 crepBody524_73

def crepBody524_75 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody524_74

def crepBody524_76 : CrepProg (BitVec 64) :=
.seq crepBody524_2 crepBody524_75

def crepBody524_77 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody524_76

def crepBody524_78 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody524_77

def crepBody524_79 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody524_78

def crepBody524_80 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody524_79

def crepBody524_81 : CrepProg (BitVec 64) :=
.seq crepBody524_1 crepBody524_80

def data524 : CrepProg (BitVec 64) := crepBody524_81
def output524 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 115#8, 101#8, 108#8, 102#8, 100#8, 101#8, 115#8, 116#8, 114#8, 117#8, 99#8, 116#8], [], crepProgToHOL data524)
end InitECandidate.Proofs.FrontendStages.Crep
