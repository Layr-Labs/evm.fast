import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data571
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate551
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody571_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "require_not_static" []

def globalBody571_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "gas_cost"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "gas_cost", Flapjack.Exp.const 3000#64])

def globalBody571_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody571_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "warm") (Flapjack.Exp.const 0#64)) globalBody571_1 globalBody571_2

def globalBody571_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "gas_cost"]

def globalBody571_5 : Prog (BitVec 64) :=
.seq globalBody571_3 globalBody571_4

def globalBody571_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_address" [Flapjack.Exp.var Flapjack.VarKind.local "beneficiary"]

def globalBody571_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "warm") (Flapjack.Exp.const 0#64)) globalBody571_6 globalBody571_2

def globalBody571_8 : Prog (BitVec 64) :=
.seq globalBody571_5 globalBody571_7

def globalBody571_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "state_gas" (Flapjack.Exp.const 183600#64)

def globalBody571_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "aw" (Flapjack.Exp.const 9000#64)

def globalBody571_11 : Prog (BitVec 64) :=
.seq globalBody571_9 globalBody571_10

def globalBody571_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "alive") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "obz") (Flapjack.Exp.const 0#64))]) globalBody571_11 globalBody571_2

def globalBody571_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "aw"]

def globalBody571_14 : Prog (BitVec 64) :=
.seq globalBody571_12 globalBody571_13

def globalBody571_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_state_gas" [Flapjack.Exp.var Flapjack.VarKind.local "state_gas"]

def globalBody571_16 : Prog (BitVec 64) :=
.seq globalBody571_14 globalBody571_15

def globalBody571_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "oa"), none)) "get_account"
  [Flapjack.Exp.var Flapjack.VarKind.local "originator"]

def globalBody571_18 : Prog (BitVec 64) :=
.seq globalBody571_16 globalBody571_17

def globalBody571_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "move_ether"
  [Flapjack.Exp.var Flapjack.VarKind.local "originator", Flapjack.Exp.var Flapjack.VarKind.local "beneficiary",
    Flapjack.Exp.var Flapjack.VarKind.local "bal"]

def globalBody571_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "emit_transfer_log"
  [Flapjack.Exp.var Flapjack.VarKind.local "originator", Flapjack.Exp.var Flapjack.VarKind.local "beneficiary",
    Flapjack.Exp.var Flapjack.VarKind.local "bal"]

def globalBody571_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "same") (Flapjack.Exp.const 0#64)) globalBody571_20 globalBody571_2

def globalBody571_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
          Flapjack.Exp.const 136#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "originator", Flapjack.Exp.const 1#64]

def globalBody571_23 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "created") (Flapjack.Exp.const 0#64)) globalBody571_22 globalBody571_2

def globalBody571_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 0#64)

def globalBody571_25 : Prog (BitVec 64) :=
.seq globalBody571_23 globalBody571_24

def globalBody571_26 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody571_27 : Prog (BitVec 64) :=
.seq globalBody571_25 globalBody571_26

def globalBody571_28 : Prog (BitVec 64) :=
.decCall ("created") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64]),
        Flapjack.Exp.const 56#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "originator"]) globalBody571_27

def globalBody571_29 : Prog (BitVec 64) :=
.seq globalBody571_21 globalBody571_28

def globalBody571_30 : Prog (BitVec 64) :=
.decCall ("same") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "beneficiary", Flapjack.Exp.var Flapjack.VarKind.local "originator",
  Flapjack.Exp.const 20#64]) globalBody571_29

def globalBody571_31 : Prog (BitVec 64) :=
.seq globalBody571_19 globalBody571_30

def globalBody571_32 : Prog (BitVec 64) :=
.dec ("bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "oa", Flapjack.Exp.const 8#64])) globalBody571_31

def globalBody571_33 : Prog (BitVec 64) :=
.seq globalBody571_18 globalBody571_32

def globalBody571_34 : Prog (BitVec 64) :=
.dec ("aw") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody571_33

def globalBody571_35 : Prog (BitVec 64) :=
.dec ("state_gas") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody571_34

def globalBody571_36 : Prog (BitVec 64) :=
.decCall ("obz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "oa", Flapjack.Exp.const 8#64])]) globalBody571_35

def globalBody571_37 : Prog (BitVec 64) :=
.decCall ("oa") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "originator"]) globalBody571_36

def globalBody571_38 : Prog (BitVec 64) :=
.decCall ("alive") (Flapjack.Shape.one) ("is_account_alive") ([Flapjack.Exp.var Flapjack.VarKind.local "beneficiary"]) globalBody571_37

def globalBody571_39 : Prog (BitVec 64) :=
.dec ("originator") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
            Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 32#64])) globalBody571_38

def globalBody571_40 : Prog (BitVec 64) :=
.seq globalBody571_8 globalBody571_39

def globalBody571_41 : Prog (BitVec 64) :=
.dec ("gas_cost") (Flapjack.Shape.one) (Flapjack.Exp.const 5000#64) globalBody571_40

def globalBody571_42 : Prog (BitVec 64) :=
.decCall ("warm") (Flapjack.Shape.one) ("is_warm_address") ([Flapjack.Exp.var Flapjack.VarKind.local "beneficiary"]) globalBody571_41

def globalBody571_43 : Prog (BitVec 64) :=
.decCall ("beneficiary") (Flapjack.Shape.one) ("to_address_masked") ([Flapjack.Exp.var Flapjack.VarKind.local "bv"]) globalBody571_42

def globalBody571_44 : Prog (BitVec 64) :=
.decCall ("bv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody571_43

def globalBody571_45 : Prog (BitVec 64) :=
.seq globalBody571_0 globalBody571_44

def globalData571 : Decl (BitVec 64) :=
.function { name := "op_selfdestruct", inline := false, exported := false, params := [], body := globalBody571_45, returnShape := (Flapjack.Shape.one) }
def globalOutput571 := Pancake.PanLang.declToHOL globalData571
end InitECandidate.Proofs.FrontendStages.Declarations
