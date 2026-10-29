import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify513
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body529_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "require_not_static" []

def body529_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "kv", Flapjack.Exp.var Flapjack.VarKind.local "key"]

def body529_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "access_cost" (Flapjack.Exp.const 2100#64)

def body529_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body529_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "warm") (Flapjack.Exp.const 0#64)) body529_2 body529_3

def body529_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "check_gas" [Flapjack.Exp.var Flapjack.VarKind.local "mx"]

def body529_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "access_cost"]

def body529_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_storage_key"
  [Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]

def body529_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "warm") (Flapjack.Exp.const 0#64)) body529_7 body529_3

def body529_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "gas_cost"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "gas_cost", Flapjack.Exp.const 10000#64])

def body529_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "oc") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "cn") (Flapjack.Exp.const 0#64))]) body529_9 body529_3

def body529_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 96#64]),
      Flapjack.Exp.const 11616#64])

def body529_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "oz") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "cz") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "nz") (Flapjack.Exp.const 0#64))]) body529_11 body529_3

def body529_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 96#64]),
      Flapjack.Exp.const 11616#64])

def body529_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "oz") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "cz") (Flapjack.Exp.const 0#64))]) body529_13 body529_3

def body529_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 96#64]),
      Flapjack.Exp.const 10000#64])

def body529_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "on") (Flapjack.Exp.const 0#64)) body529_15 body529_3

def body529_17 : Prog (BitVec 64) :=
.seq body529_14 body529_16

def body529_18 : Prog (BitVec 64) :=
.seq body529_12 body529_17

def body529_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "cn") (Flapjack.Exp.const 0#64)) body529_18 body529_3

def body529_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "state_gas" (Flapjack.Exp.const 97920#64)

def body529_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "oc") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "cn") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "oz") (Flapjack.Exp.const 0#64))]) body529_20 body529_3

def body529_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "credit_state_gas_refund" [Flapjack.Exp.const 97920#64]

def body529_23 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "cn") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "on") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "oz") (Flapjack.Exp.const 0#64))]) body529_22 body529_3

def body529_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "gas_cost", Flapjack.Exp.var Flapjack.VarKind.local "access_cost"]]

def body529_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_state_gas" [Flapjack.Exp.var Flapjack.VarKind.local "state_gas"]

def body529_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_storage"
  [Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key",
    Flapjack.Exp.var Flapjack.VarKind.local "new_value"]

def body529_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body529_28 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body529_29 : Prog (BitVec 64) :=
.seq body529_27 body529_28

def body529_30 : Prog (BitVec 64) :=
.seq body529_26 body529_29

def body529_31 : Prog (BitVec 64) :=
.seq body529_25 body529_30

def body529_32 : Prog (BitVec 64) :=
.seq body529_24 body529_31

def body529_33 : Prog (BitVec 64) :=
.seq body529_23 body529_32

def body529_34 : Prog (BitVec 64) :=
.seq body529_21 body529_33

def body529_35 : Prog (BitVec 64) :=
.dec ("state_gas") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body529_34

def body529_36 : Prog (BitVec 64) :=
.seq body529_19 body529_35

def body529_37 : Prog (BitVec 64) :=
.seq body529_10 body529_36

def body529_38 : Prog (BitVec 64) :=
.dec ("gas_cost") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "access_cost") body529_37

def body529_39 : Prog (BitVec 64) :=
.decCall ("nz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "new_value"]) body529_38

def body529_40 : Prog (BitVec 64) :=
.decCall ("cz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "current"]) body529_39

def body529_41 : Prog (BitVec 64) :=
.decCall ("oz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "original"]) body529_40

def body529_42 : Prog (BitVec 64) :=
.decCall ("on") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "original", Flapjack.Exp.var Flapjack.VarKind.local "new_value"]) body529_41

def body529_43 : Prog (BitVec 64) :=
.decCall ("cn") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "current", Flapjack.Exp.var Flapjack.VarKind.local "new_value"]) body529_42

def body529_44 : Prog (BitVec 64) :=
.decCall ("oc") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "original", Flapjack.Exp.var Flapjack.VarKind.local "current"]) body529_43

def body529_45 : Prog (BitVec 64) :=
.decCall ("current") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("get_storage") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body529_44

def body529_46 : Prog (BitVec 64) :=
.decCall ("original") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("get_storage_original") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body529_45

def body529_47 : Prog (BitVec 64) :=
.seq body529_8 body529_46

def body529_48 : Prog (BitVec 64) :=
.seq body529_6 body529_47

def body529_49 : Prog (BitVec 64) :=
.seq body529_5 body529_48

def body529_50 : Prog (BitVec 64) :=
.decCall ("mx") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "access_cost",
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2300#64, Flapjack.Exp.const 1#64]]) body529_49

def body529_51 : Prog (BitVec 64) :=
.seq body529_4 body529_50

def body529_52 : Prog (BitVec 64) :=
.dec ("access_cost") (Flapjack.Shape.one) (Flapjack.Exp.const 100#64) body529_51

def body529_53 : Prog (BitVec 64) :=
.decCall ("warm") (Flapjack.Shape.one) ("is_warm_storage_key") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body529_52

def body529_54 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 32#64])) body529_53

def body529_55 : Prog (BitVec 64) :=
.seq body529_1 body529_54

def body529_56 : Prog (BitVec 64) :=
.dec ("key") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "evm_key_buf") body529_55

def body529_57 : Prog (BitVec 64) :=
.decCall ("new_value") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body529_56

def body529_58 : Prog (BitVec 64) :=
.decCall ("kv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body529_57

def body529_59 : Prog (BitVec 64) :=
.seq body529_0 body529_58

def body529_60 : Prog (BitVec 64) :=
.seq body529_5 body529_6

def body529_61 : Prog (BitVec 64) :=
.seq body529_60 body529_8

def body529_62 : Prog (BitVec 64) :=
.seq body529_12 body529_14

def body529_63 : Prog (BitVec 64) :=
.seq body529_62 body529_16

def body529_64 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "cn") (Flapjack.Exp.const 0#64)) body529_63 body529_3

def body529_65 : Prog (BitVec 64) :=
.seq body529_10 body529_64

def body529_66 : Prog (BitVec 64) :=
.seq body529_21 body529_23

def body529_67 : Prog (BitVec 64) :=
.seq body529_66 body529_24

def body529_68 : Prog (BitVec 64) :=
.seq body529_67 body529_25

def body529_69 : Prog (BitVec 64) :=
.seq body529_68 body529_26

def body529_70 : Prog (BitVec 64) :=
.seq body529_69 body529_27

def body529_71 : Prog (BitVec 64) :=
.seq body529_70 body529_28

def body529_72 : Prog (BitVec 64) :=
.dec ("state_gas") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body529_71

def body529_73 : Prog (BitVec 64) :=
.seq body529_65 body529_72

def body529_74 : Prog (BitVec 64) :=
.dec ("gas_cost") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "access_cost") body529_73

def body529_75 : Prog (BitVec 64) :=
.decCall ("nz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "new_value"]) body529_74

def body529_76 : Prog (BitVec 64) :=
.decCall ("cz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "current"]) body529_75

def body529_77 : Prog (BitVec 64) :=
.decCall ("oz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "original"]) body529_76

def body529_78 : Prog (BitVec 64) :=
.decCall ("on") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "original", Flapjack.Exp.var Flapjack.VarKind.local "new_value"]) body529_77

def body529_79 : Prog (BitVec 64) :=
.decCall ("cn") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "current", Flapjack.Exp.var Flapjack.VarKind.local "new_value"]) body529_78

def body529_80 : Prog (BitVec 64) :=
.decCall ("oc") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "original", Flapjack.Exp.var Flapjack.VarKind.local "current"]) body529_79

def body529_81 : Prog (BitVec 64) :=
.decCall ("current") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("get_storage") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body529_80

def body529_82 : Prog (BitVec 64) :=
.decCall ("original") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("get_storage_original") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body529_81

def body529_83 : Prog (BitVec 64) :=
.seq body529_61 body529_82

def body529_84 : Prog (BitVec 64) :=
.decCall ("mx") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "access_cost",
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2300#64, Flapjack.Exp.const 1#64]]) body529_83

def body529_85 : Prog (BitVec 64) :=
.seq body529_4 body529_84

def body529_86 : Prog (BitVec 64) :=
.dec ("access_cost") (Flapjack.Shape.one) (Flapjack.Exp.const 100#64) body529_85

def body529_87 : Prog (BitVec 64) :=
.decCall ("warm") (Flapjack.Shape.one) ("is_warm_storage_key") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body529_86

def body529_88 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 32#64])) body529_87

def body529_89 : Prog (BitVec 64) :=
.seq body529_1 body529_88

def body529_90 : Prog (BitVec 64) :=
.dec ("key") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "evm_key_buf") body529_89

def body529_91 : Prog (BitVec 64) :=
.decCall ("new_value") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body529_90

def body529_92 : Prog (BitVec 64) :=
.decCall ("kv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body529_91

def body529_93 : Prog (BitVec 64) :=
.seq body529_0 body529_92

def originalData529 : Decl (BitVec 64) :=
.function { name := "op_sstore", inline := false, exported := false, params := [], body := body529_59, returnShape := (Flapjack.Shape.one) }
def simplifiedData529 : Decl (BitVec 64) :=
.function { name := "op_sstore", inline := false, exported := false, params := [], body := body529_93, returnShape := (Flapjack.Shape.one) }
def original529 := Pancake.PanLang.declToHOL originalData529
def simplified529 := Pancake.PanLang.declToHOL simplifiedData529
end InitECandidate.Proofs.FrontendStages.Declarations
