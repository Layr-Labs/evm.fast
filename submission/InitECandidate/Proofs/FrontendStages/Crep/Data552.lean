import InitECandidate.Proofs.FrontendStages.Crep.Translate536
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody552_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 7)

def crepBody552_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody552_2 : CrepProg (BitVec 64) :=
.seq crepBody552_0 crepBody552_1

def crepBody552_3 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 4#64) crepBody552_2

def crepBody552_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody552_5 : CrepProg (BitVec 64) :=
.seq crepBody552_3 crepBody552_4

def crepBody552_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 131072#64) (Flapjack.CrepExp.var 6)) crepBody552_5 crepBody552_1

def crepBody552_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "set_retdata" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 0#64]

def crepBody552_8 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody552_7

def crepBody552_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "get_account" [Flapjack.CrepExp.var 10]

def crepBody552_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "u256_lt"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody552_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "stack_push"
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody552_12 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody552_11

def crepBody552_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody552_14 : CrepProg (BitVec 64) :=
.seq crepBody552_12 crepBody552_13

def crepBody552_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 0#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.equal
        (Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 0#64]))
        (Flapjack.CrepExp.const 18446744073709551615#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 1024#64)
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.load
              (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 128#64]),
            Flapjack.CrepExp.const 1#64])])) crepBody552_14 crepBody552_1

def crepBody552_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "warm_address" [Flapjack.CrepExp.var 4]

def crepBody552_17 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody552_16

def crepBody552_18 : CrepProg (BitVec 64) :=
.seq crepBody552_15 crepBody552_17

def crepBody552_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "is_account_alive" [Flapjack.CrepExp.var 4]

def crepBody552_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 14 (Flapjack.CrepExp.const 1#64)

def crepBody552_21 : CrepProg (BitVec 64) :=
.seq crepBody552_20 crepBody552_1

def crepBody552_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "charge_state_gas" [Flapjack.CrepExp.const 183600#64]

def crepBody552_23 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody552_22

def crepBody552_24 : CrepProg (BitVec 64) :=
.seq crepBody552_21 crepBody552_23

def crepBody552_25 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 0#64)) crepBody552_24 crepBody552_1

def crepBody552_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.var 18)

def crepBody552_27 : CrepProg (BitVec 64) :=
.seq crepBody552_26 crepBody552_1

def crepBody552_28 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16]) crepBody552_27

def crepBody552_29 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 64#64]) crepBody552_28

def crepBody552_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "account_deployable" [Flapjack.CrepExp.var 4]

def crepBody552_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "increment_nonce" [Flapjack.CrepExp.var 10]

def crepBody552_32 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody552_31

def crepBody552_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.var 19)

def crepBody552_34 : CrepProg (BitVec 64) :=
.seq crepBody552_33 crepBody552_1

def crepBody552_35 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 184#64]),
    Flapjack.CrepExp.var 16]) crepBody552_34

def crepBody552_36 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 184#64]) crepBody552_35

def crepBody552_37 : CrepProg (BitVec 64) :=
.seq crepBody552_32 crepBody552_36

def crepBody552_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "credit_state_gas_refund" [Flapjack.CrepExp.const 183600#64]

def crepBody552_39 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody552_38

def crepBody552_40 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 0#64)) crepBody552_39 crepBody552_1

def crepBody552_41 : CrepProg (BitVec 64) :=
.seq crepBody552_37 crepBody552_40

def crepBody552_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "stack_push"
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody552_43 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody552_42

def crepBody552_44 : CrepProg (BitVec 64) :=
.seq crepBody552_41 crepBody552_43

def crepBody552_45 : CrepProg (BitVec 64) :=
.seq crepBody552_44 crepBody552_13

def crepBody552_46 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 0#64)) crepBody552_45 crepBody552_1

def crepBody552_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.var 20)

def crepBody552_48 : CrepProg (BitVec 64) :=
.seq crepBody552_47 crepBody552_1

def crepBody552_49 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody552_48

def crepBody552_50 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 72#64]) crepBody552_49

def crepBody552_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "increment_nonce" [Flapjack.CrepExp.var 10]

def crepBody552_52 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody552_51

def crepBody552_53 : CrepProg (BitVec 64) :=
.seq crepBody552_50 crepBody552_52

def crepBody552_54 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "scratch_mark" []

def crepBody552_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "frame_mem_mark" []

def crepBody552_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "child_message"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.const 0#64]

def crepBody552_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "start_child"
  [Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20,
    Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.var 4]

def crepBody552_58 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody552_57

def crepBody552_59 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody552_60 : CrepProg (BitVec 64) :=
.seq crepBody552_58 crepBody552_59

def crepBody552_61 : CrepProg (BitVec 64) :=
.seq crepBody552_56 crepBody552_60

def crepBody552_62 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody552_61

def crepBody552_63 : CrepProg (BitVec 64) :=
.seq crepBody552_55 crepBody552_62

def crepBody552_64 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody552_63

def crepBody552_65 : CrepProg (BitVec 64) :=
.seq crepBody552_54 crepBody552_64

def crepBody552_66 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody552_65

def crepBody552_67 : CrepProg (BitVec 64) :=
.seq crepBody552_53 crepBody552_66

def crepBody552_68 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 72#64])) crepBody552_67

def crepBody552_69 : CrepProg (BitVec 64) :=
.seq crepBody552_46 crepBody552_68

def crepBody552_70 : CrepProg (BitVec 64) :=
.seq crepBody552_30 crepBody552_69

def crepBody552_71 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody552_70

def crepBody552_72 : CrepProg (BitVec 64) :=
.seq crepBody552_29 crepBody552_71

def crepBody552_73 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 6#64)]) crepBody552_72

def crepBody552_74 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 64#64])) crepBody552_73

def crepBody552_75 : CrepProg (BitVec 64) :=
.seq crepBody552_25 crepBody552_74

def crepBody552_76 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody552_75

def crepBody552_77 : CrepProg (BitVec 64) :=
.seq crepBody552_19 crepBody552_76

def crepBody552_78 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody552_77

def crepBody552_79 : CrepProg (BitVec 64) :=
.seq crepBody552_18 crepBody552_78

def crepBody552_80 : CrepProg (BitVec 64) :=
.seq crepBody552_10 crepBody552_79

def crepBody552_81 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody552_80

def crepBody552_82 : CrepProg (BitVec 64) :=
.seq crepBody552_9 crepBody552_81

def crepBody552_83 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody552_82

def crepBody552_84 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 32#64])) crepBody552_83

def crepBody552_85 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody552_84

def crepBody552_86 : CrepProg (BitVec 64) :=
.seq crepBody552_8 crepBody552_85

def crepBody552_87 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 264#64])) crepBody552_86

def crepBody552_88 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 5]) crepBody552_87

def crepBody552_89 : CrepProg (BitVec 64) :=
.seq crepBody552_6 crepBody552_88

def data552 : CrepProg (BitVec 64) := crepBody552_89
def output552 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [103#8, 101#8, 110#8, 101#8, 114#8, 105#8, 99#8, 95#8, 99#8, 114#8, 101#8, 97#8, 116#8, 101#8], [0, 1, 2, 3, 4, 5, 6], crepProgToHOL data552)
end InitECandidate.Proofs.FrontendStages.Crep
