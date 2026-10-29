import InitECandidate.Proofs.FrontendStages.Crep.Translate541
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody557_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody557_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody557_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "to_address_masked"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody557_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13], none)) "stack_pop" []

def crepBody557_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17], none)) "stack_pop" []

def crepBody557_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18, 19, 20, 21], none)) "stack_pop" []

def crepBody557_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22, 23, 24, 25], none)) "stack_pop" []

def crepBody557_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26, 27, 28, 29], none)) "stack_pop" []

def crepBody557_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([31], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody557_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 32)

def crepBody557_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody557_11 : CrepProg (BitVec 64) :=
.seq crepBody557_9 crepBody557_10

def crepBody557_12 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 8#64) crepBody557_11

def crepBody557_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody557_14 : CrepProg (BitVec 64) :=
.seq crepBody557_12 crepBody557_13

def crepBody557_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
        (Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 30, Flapjack.CrepExp.const 144#64]))
        (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 31) (Flapjack.CrepExp.const 0#64))]) crepBody557_14 crepBody557_10

def crepBody557_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32, 33], none)) "extend_memory_cost2"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21,
    Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25,
    Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28, Flapjack.CrepExp.var 29]

def crepBody557_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([34], none)) "is_warm_address" [Flapjack.CrepExp.var 9]

def crepBody557_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 35 (Flapjack.CrepExp.const 3000#64)

def crepBody557_19 : CrepProg (BitVec 64) :=
.seq crepBody557_18 crepBody557_10

def crepBody557_20 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 34) (Flapjack.CrepExp.const 0#64)) crepBody557_19 crepBody557_10

def crepBody557_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 36 (Flapjack.CrepExp.const 11300#64)

def crepBody557_22 : CrepProg (BitVec 64) :=
.seq crepBody557_21 crepBody557_10

def crepBody557_23 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 31) (Flapjack.CrepExp.const 0#64)) crepBody557_22 crepBody557_10

def crepBody557_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([37], none)) "add_sat"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36], Flapjack.CrepExp.var 32]

def crepBody557_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([38], none)) "charge_gas" [Flapjack.CrepExp.var 37]

def crepBody557_26 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody557_25

def crepBody557_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([38], none)) "warm_address" [Flapjack.CrepExp.var 9]

def crepBody557_28 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody557_27

def crepBody557_29 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 34) (Flapjack.CrepExp.const 0#64)) crepBody557_28 crepBody557_10

def crepBody557_30 : CrepProg (BitVec 64) :=
.seq crepBody557_26 crepBody557_29

def crepBody557_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([38, 39, 40], none)) "calculate_delegation_cost" [Flapjack.CrepExp.var 9]

def crepBody557_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([42], none)) "charge_gas" [Flapjack.CrepExp.var 40]

def crepBody557_33 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.const 0#64) crepBody557_32

def crepBody557_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([42], none)) "warm_address" [Flapjack.CrepExp.var 41]

def crepBody557_35 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.const 0#64) crepBody557_34

def crepBody557_36 : CrepProg (BitVec 64) :=
.seq crepBody557_33 crepBody557_35

def crepBody557_37 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 38) (Flapjack.CrepExp.const 0#64)) crepBody557_36 crepBody557_10

def crepBody557_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([42, 43], none)) "ext_code_of" [Flapjack.CrepExp.var 41]

def crepBody557_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([45], none)) "is_account_alive" [Flapjack.CrepExp.var 9]

def crepBody557_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 44 (Flapjack.CrepExp.const 1#64)

def crepBody557_41 : CrepProg (BitVec 64) :=
.seq crepBody557_40 crepBody557_10

def crepBody557_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([46], none)) "charge_state_gas" [Flapjack.CrepExp.const 183600#64]

def crepBody557_43 : CrepProg (BitVec 64) :=
.dec 46 (Flapjack.CrepExp.const 0#64) crepBody557_42

def crepBody557_44 : CrepProg (BitVec 64) :=
.seq crepBody557_41 crepBody557_43

def crepBody557_45 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 45) (Flapjack.CrepExp.const 0#64)) crepBody557_44 crepBody557_10

def crepBody557_46 : CrepProg (BitVec 64) :=
.seq crepBody557_39 crepBody557_45

def crepBody557_47 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.const 0#64) crepBody557_46

def crepBody557_48 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 31) (Flapjack.CrepExp.const 0#64)) crepBody557_47 crepBody557_10

def crepBody557_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([45], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody557_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([46, 47], none)) "calculate_message_call_gas"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13,
    Flapjack.CrepExp.var 45,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody557_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([48], none)) "charge_gas" [Flapjack.CrepExp.var 46]

def crepBody557_52 : CrepProg (BitVec 64) :=
.dec 48 (Flapjack.CrepExp.const 0#64) crepBody557_51

def crepBody557_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 48) (Flapjack.CrepExp.var 49)

def crepBody557_54 : CrepProg (BitVec 64) :=
.seq crepBody557_53 crepBody557_10

def crepBody557_55 : CrepProg (BitVec 64) :=
.dec 49 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 184#64]),
    Flapjack.CrepExp.var 47]) crepBody557_54

def crepBody557_56 : CrepProg (BitVec 64) :=
.dec 48 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 184#64]) crepBody557_55

def crepBody557_57 : CrepProg (BitVec 64) :=
.seq crepBody557_52 crepBody557_56

def crepBody557_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([48], none)) "extend_memory" [Flapjack.CrepExp.var 33]

def crepBody557_59 : CrepProg (BitVec 64) :=
.dec 48 (Flapjack.CrepExp.const 0#64) crepBody557_58

def crepBody557_60 : CrepProg (BitVec 64) :=
.seq crepBody557_57 crepBody557_59

def crepBody557_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 49) (Flapjack.CrepExp.var 50)

def crepBody557_62 : CrepProg (BitVec 64) :=
.seq crepBody557_61 crepBody557_10

def crepBody557_63 : CrepProg (BitVec 64) :=
.dec 50 (Flapjack.CrepExp.const 0#64) crepBody557_62

def crepBody557_64 : CrepProg (BitVec 64) :=
.dec 49 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 72#64]) crepBody557_63

def crepBody557_65 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([49], none)) "get_account"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 30, Flapjack.CrepExp.const 32#64])]

def crepBody557_66 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([50], none)) "u256_lt"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 49, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 49, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 49, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 49, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody557_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([52], none)) "stack_push"
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody557_68 : CrepProg (BitVec 64) :=
.dec 52 (Flapjack.CrepExp.const 0#64) crepBody557_67

def crepBody557_69 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([53], none)) "set_retdata" [Flapjack.CrepExp.var 52, Flapjack.CrepExp.const 0#64]

def crepBody557_70 : CrepProg (BitVec 64) :=
.dec 53 (Flapjack.CrepExp.const 0#64) crepBody557_69

def crepBody557_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 53) (Flapjack.CrepExp.var 54)

def crepBody557_72 : CrepProg (BitVec 64) :=
.seq crepBody557_71 crepBody557_10

def crepBody557_73 : CrepProg (BitVec 64) :=
.dec 54 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.var 47]) crepBody557_72

def crepBody557_74 : CrepProg (BitVec 64) :=
.dec 53 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 64#64]) crepBody557_73

def crepBody557_75 : CrepProg (BitVec 64) :=
.seq crepBody557_70 crepBody557_74

def crepBody557_76 : CrepProg (BitVec 64) :=
.dec 54 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 72#64]),
    Flapjack.CrepExp.var 48]) crepBody557_72

def crepBody557_77 : CrepProg (BitVec 64) :=
.dec 53 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 72#64]) crepBody557_76

def crepBody557_78 : CrepProg (BitVec 64) :=
.seq crepBody557_75 crepBody557_77

def crepBody557_79 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([53], none)) "credit_state_gas_refund" [Flapjack.CrepExp.const 183600#64]

def crepBody557_80 : CrepProg (BitVec 64) :=
.dec 53 (Flapjack.CrepExp.const 0#64) crepBody557_79

def crepBody557_81 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 44) (Flapjack.CrepExp.const 0#64)) crepBody557_80 crepBody557_10

def crepBody557_82 : CrepProg (BitVec 64) :=
.seq crepBody557_78 crepBody557_81

def crepBody557_83 : CrepProg (BitVec 64) :=
.dec 52 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 264#64])) crepBody557_82

def crepBody557_84 : CrepProg (BitVec 64) :=
.seq crepBody557_68 crepBody557_83

def crepBody557_85 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([52], none)) "sat_word"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody557_86 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([53], none)) "sat_word"
  [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]

def crepBody557_87 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([54], none)) "sat_word"
  [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]

def crepBody557_88 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([55], none)) "sat_word"
  [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28, Flapjack.CrepExp.var 29]

def crepBody557_89 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([51], none)) "generic_call"
  [Flapjack.CrepExp.var 47, Flapjack.CrepExp.var 48, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 30, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 41, Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.var 52, Flapjack.CrepExp.var 53, Flapjack.CrepExp.var 54, Flapjack.CrepExp.var 55,
    Flapjack.CrepExp.var 42, Flapjack.CrepExp.var 43, Flapjack.CrepExp.var 38, Flapjack.CrepExp.var 44]

def crepBody557_90 : CrepProg (BitVec 64) :=
.seq crepBody557_88 crepBody557_89

def crepBody557_91 : CrepProg (BitVec 64) :=
.dec 55 (Flapjack.CrepExp.const 0#64) crepBody557_90

def crepBody557_92 : CrepProg (BitVec 64) :=
.seq crepBody557_87 crepBody557_91

def crepBody557_93 : CrepProg (BitVec 64) :=
.dec 54 (Flapjack.CrepExp.const 0#64) crepBody557_92

def crepBody557_94 : CrepProg (BitVec 64) :=
.seq crepBody557_86 crepBody557_93

def crepBody557_95 : CrepProg (BitVec 64) :=
.dec 53 (Flapjack.CrepExp.const 0#64) crepBody557_94

def crepBody557_96 : CrepProg (BitVec 64) :=
.seq crepBody557_85 crepBody557_95

def crepBody557_97 : CrepProg (BitVec 64) :=
.dec 52 (Flapjack.CrepExp.const 0#64) crepBody557_96

def crepBody557_98 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 50) (Flapjack.CrepExp.const 0#64)) crepBody557_84 crepBody557_97

def crepBody557_99 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([52], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody557_100 : CrepProg (BitVec 64) :=
.dec 52 (Flapjack.CrepExp.const 0#64) crepBody557_99

def crepBody557_101 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 51) (Flapjack.CrepExp.const 0#64)) crepBody557_100 crepBody557_10

def crepBody557_102 : CrepProg (BitVec 64) :=
.seq crepBody557_98 crepBody557_101

def crepBody557_103 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody557_104 : CrepProg (BitVec 64) :=
.seq crepBody557_102 crepBody557_103

def crepBody557_105 : CrepProg (BitVec 64) :=
.dec 51 (Flapjack.CrepExp.const 0#64) crepBody557_104

def crepBody557_106 : CrepProg (BitVec 64) :=
.seq crepBody557_66 crepBody557_105

def crepBody557_107 : CrepProg (BitVec 64) :=
.dec 50 (Flapjack.CrepExp.const 0#64) crepBody557_106

def crepBody557_108 : CrepProg (BitVec 64) :=
.seq crepBody557_65 crepBody557_107

def crepBody557_109 : CrepProg (BitVec 64) :=
.dec 49 (Flapjack.CrepExp.const 0#64) crepBody557_108

def crepBody557_110 : CrepProg (BitVec 64) :=
.seq crepBody557_64 crepBody557_109

def crepBody557_111 : CrepProg (BitVec 64) :=
.dec 48 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 72#64])) crepBody557_110

def crepBody557_112 : CrepProg (BitVec 64) :=
.seq crepBody557_60 crepBody557_111

def crepBody557_113 : CrepProg (BitVec 64) :=
.seq crepBody557_50 crepBody557_112

def crepBody557_114 : CrepProg (BitVec 64) :=
.dec 47 (Flapjack.CrepExp.const 0#64) crepBody557_113

def crepBody557_115 : CrepProg (BitVec 64) :=
.dec 46 (Flapjack.CrepExp.const 0#64) crepBody557_114

def crepBody557_116 : CrepProg (BitVec 64) :=
.seq crepBody557_49 crepBody557_115

def crepBody557_117 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.const 0#64) crepBody557_116

def crepBody557_118 : CrepProg (BitVec 64) :=
.seq crepBody557_48 crepBody557_117

def crepBody557_119 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.const 0#64) crepBody557_118

def crepBody557_120 : CrepProg (BitVec 64) :=
.seq crepBody557_38 crepBody557_119

def crepBody557_121 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.const 0#64) crepBody557_120

def crepBody557_122 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.const 0#64) crepBody557_121

def crepBody557_123 : CrepProg (BitVec 64) :=
.seq crepBody557_37 crepBody557_122

def crepBody557_124 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.var 39) crepBody557_123

def crepBody557_125 : CrepProg (BitVec 64) :=
.seq crepBody557_31 crepBody557_124

def crepBody557_126 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.const 0#64) crepBody557_125

def crepBody557_127 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 0#64) crepBody557_126

def crepBody557_128 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody557_127

def crepBody557_129 : CrepProg (BitVec 64) :=
.seq crepBody557_30 crepBody557_128

def crepBody557_130 : CrepProg (BitVec 64) :=
.seq crepBody557_24 crepBody557_129

def crepBody557_131 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody557_130

def crepBody557_132 : CrepProg (BitVec 64) :=
.seq crepBody557_23 crepBody557_131

def crepBody557_133 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody557_132

def crepBody557_134 : CrepProg (BitVec 64) :=
.seq crepBody557_20 crepBody557_133

def crepBody557_135 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 100#64) crepBody557_134

def crepBody557_136 : CrepProg (BitVec 64) :=
.seq crepBody557_17 crepBody557_135

def crepBody557_137 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody557_136

def crepBody557_138 : CrepProg (BitVec 64) :=
.seq crepBody557_16 crepBody557_137

def crepBody557_139 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody557_138

def crepBody557_140 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody557_139

def crepBody557_141 : CrepProg (BitVec 64) :=
.seq crepBody557_15 crepBody557_140

def crepBody557_142 : CrepProg (BitVec 64) :=
.seq crepBody557_8 crepBody557_141

def crepBody557_143 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody557_142

def crepBody557_144 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody557_143

def crepBody557_145 : CrepProg (BitVec 64) :=
.seq crepBody557_7 crepBody557_144

def crepBody557_146 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody557_145

def crepBody557_147 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody557_146

def crepBody557_148 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody557_147

def crepBody557_149 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody557_148

def crepBody557_150 : CrepProg (BitVec 64) :=
.seq crepBody557_6 crepBody557_149

def crepBody557_151 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody557_150

def crepBody557_152 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody557_151

def crepBody557_153 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody557_152

def crepBody557_154 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody557_153

def crepBody557_155 : CrepProg (BitVec 64) :=
.seq crepBody557_5 crepBody557_154

def crepBody557_156 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody557_155

def crepBody557_157 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody557_156

def crepBody557_158 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody557_157

def crepBody557_159 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody557_158

def crepBody557_160 : CrepProg (BitVec 64) :=
.seq crepBody557_4 crepBody557_159

def crepBody557_161 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody557_160

def crepBody557_162 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody557_161

def crepBody557_163 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody557_162

def crepBody557_164 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody557_163

def crepBody557_165 : CrepProg (BitVec 64) :=
.seq crepBody557_3 crepBody557_164

def crepBody557_166 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody557_165

def crepBody557_167 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody557_166

def crepBody557_168 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody557_167

def crepBody557_169 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody557_168

def crepBody557_170 : CrepProg (BitVec 64) :=
.seq crepBody557_2 crepBody557_169

def crepBody557_171 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody557_170

def crepBody557_172 : CrepProg (BitVec 64) :=
.seq crepBody557_1 crepBody557_171

def crepBody557_173 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody557_172

def crepBody557_174 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody557_173

def crepBody557_175 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody557_174

def crepBody557_176 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody557_175

def crepBody557_177 : CrepProg (BitVec 64) :=
.seq crepBody557_0 crepBody557_176

def crepBody557_178 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody557_177

def crepBody557_179 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody557_178

def crepBody557_180 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody557_179

def crepBody557_181 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody557_180

def data557 : CrepProg (BitVec 64) := crepBody557_181
def output557 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 99#8, 97#8, 108#8, 108#8], [], crepProgToHOL data557)
end InitECandidate.Proofs.FrontendStages.Crep
