import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data529
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate513
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody529_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "require_not_static" []

def globalBody529_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "kv", Flapjack.Exp.var Flapjack.VarKind.local "key"]

def globalBody529_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "access_cost" (Flapjack.Exp.const 2100#64)

def globalBody529_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody529_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "warm") (Flapjack.Exp.const 0#64)) globalBody529_2 globalBody529_3

def globalBody529_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "check_gas" [Flapjack.Exp.var Flapjack.VarKind.local "mx"]

def globalBody529_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "access_cost"]

def globalBody529_7 : Prog (BitVec 64) :=
.seq globalBody529_5 globalBody529_6

def globalBody529_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_storage_key"
  [Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]

def globalBody529_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "warm") (Flapjack.Exp.const 0#64)) globalBody529_8 globalBody529_3

def globalBody529_10 : Prog (BitVec 64) :=
.seq globalBody529_7 globalBody529_9

def globalBody529_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "gas_cost"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "gas_cost", Flapjack.Exp.const 10000#64])

def globalBody529_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "oc") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "cn") (Flapjack.Exp.const 0#64))]) globalBody529_11 globalBody529_3

def globalBody529_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 96#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
            Flapjack.Exp.const 96#64]),
      Flapjack.Exp.const 11616#64])

def globalBody529_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "oz") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "cz") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "nz") (Flapjack.Exp.const 0#64))]) globalBody529_13 globalBody529_3

def globalBody529_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 96#64])
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
            Flapjack.Exp.const 96#64]),
      Flapjack.Exp.const 11616#64])

def globalBody529_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "oz") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "cz") (Flapjack.Exp.const 0#64))]) globalBody529_15 globalBody529_3

def globalBody529_17 : Prog (BitVec 64) :=
.seq globalBody529_14 globalBody529_16

def globalBody529_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 96#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
            Flapjack.Exp.const 96#64]),
      Flapjack.Exp.const 10000#64])

def globalBody529_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "on") (Flapjack.Exp.const 0#64)) globalBody529_18 globalBody529_3

def globalBody529_20 : Prog (BitVec 64) :=
.seq globalBody529_17 globalBody529_19

def globalBody529_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "cn") (Flapjack.Exp.const 0#64)) globalBody529_20 globalBody529_3

def globalBody529_22 : Prog (BitVec 64) :=
.seq globalBody529_12 globalBody529_21

def globalBody529_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "state_gas" (Flapjack.Exp.const 97920#64)

def globalBody529_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "oc") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "cn") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "oz") (Flapjack.Exp.const 0#64))]) globalBody529_23 globalBody529_3

def globalBody529_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "credit_state_gas_refund" [Flapjack.Exp.const 97920#64]

def globalBody529_26 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "cn") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "on") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "oz") (Flapjack.Exp.const 0#64))]) globalBody529_25 globalBody529_3

def globalBody529_27 : Prog (BitVec 64) :=
.seq globalBody529_24 globalBody529_26

def globalBody529_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "gas_cost", Flapjack.Exp.var Flapjack.VarKind.local "access_cost"]]

def globalBody529_29 : Prog (BitVec 64) :=
.seq globalBody529_27 globalBody529_28

def globalBody529_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_state_gas" [Flapjack.Exp.var Flapjack.VarKind.local "state_gas"]

def globalBody529_31 : Prog (BitVec 64) :=
.seq globalBody529_29 globalBody529_30

def globalBody529_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_storage"
  [Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key",
    Flapjack.Exp.var Flapjack.VarKind.local "new_value"]

def globalBody529_33 : Prog (BitVec 64) :=
.seq globalBody529_31 globalBody529_32

def globalBody529_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody529_35 : Prog (BitVec 64) :=
.seq globalBody529_33 globalBody529_34

def globalBody529_36 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody529_37 : Prog (BitVec 64) :=
.seq globalBody529_35 globalBody529_36

def globalBody529_38 : Prog (BitVec 64) :=
.dec ("state_gas") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody529_37

def globalBody529_39 : Prog (BitVec 64) :=
.seq globalBody529_22 globalBody529_38

def globalBody529_40 : Prog (BitVec 64) :=
.dec ("gas_cost") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "access_cost") globalBody529_39

def globalBody529_41 : Prog (BitVec 64) :=
.decCall ("nz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "new_value"]) globalBody529_40

def globalBody529_42 : Prog (BitVec 64) :=
.decCall ("cz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "current"]) globalBody529_41

def globalBody529_43 : Prog (BitVec 64) :=
.decCall ("oz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "original"]) globalBody529_42

def globalBody529_44 : Prog (BitVec 64) :=
.decCall ("on") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "original", Flapjack.Exp.var Flapjack.VarKind.local "new_value"]) globalBody529_43

def globalBody529_45 : Prog (BitVec 64) :=
.decCall ("cn") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "current", Flapjack.Exp.var Flapjack.VarKind.local "new_value"]) globalBody529_44

def globalBody529_46 : Prog (BitVec 64) :=
.decCall ("oc") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "original", Flapjack.Exp.var Flapjack.VarKind.local "current"]) globalBody529_45

def globalBody529_47 : Prog (BitVec 64) :=
.decCall ("current") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("get_storage") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) globalBody529_46

def globalBody529_48 : Prog (BitVec 64) :=
.decCall ("original") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("get_storage_original") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) globalBody529_47

def globalBody529_49 : Prog (BitVec 64) :=
.seq globalBody529_10 globalBody529_48

def globalBody529_50 : Prog (BitVec 64) :=
.decCall ("mx") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "access_cost",
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2300#64, Flapjack.Exp.const 1#64]]) globalBody529_49

def globalBody529_51 : Prog (BitVec 64) :=
.seq globalBody529_4 globalBody529_50

def globalBody529_52 : Prog (BitVec 64) :=
.dec ("access_cost") (Flapjack.Shape.one) (Flapjack.Exp.const 100#64) globalBody529_51

def globalBody529_53 : Prog (BitVec 64) :=
.decCall ("warm") (Flapjack.Shape.one) ("is_warm_storage_key") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) globalBody529_52

def globalBody529_54 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
            Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 32#64])) globalBody529_53

def globalBody529_55 : Prog (BitVec 64) :=
.seq globalBody529_1 globalBody529_54

def globalBody529_56 : Prog (BitVec 64) :=
.dec ("key") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 280#64])) globalBody529_55

def globalBody529_57 : Prog (BitVec 64) :=
.decCall ("new_value") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody529_56

def globalBody529_58 : Prog (BitVec 64) :=
.decCall ("kv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody529_57

def globalBody529_59 : Prog (BitVec 64) :=
.seq globalBody529_0 globalBody529_58

def globalData529 : Decl (BitVec 64) :=
.function { name := "op_sstore", inline := false, exported := false, params := [], body := globalBody529_59, returnShape := (Flapjack.Shape.one) }
def globalOutput529 := Pancake.PanLang.declToHOL globalData529
end InitECandidate.Proofs.FrontendStages.Declarations
