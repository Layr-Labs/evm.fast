import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify555
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body571_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "require_not_static" []

def body571_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "gas_cost"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "gas_cost", Flapjack.Exp.const 3000#64])

def body571_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body571_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "warm") (Flapjack.Exp.const 0#64)) body571_1 body571_2

def body571_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "gas_cost"]

def body571_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_address" [Flapjack.Exp.var Flapjack.VarKind.local "beneficiary"]

def body571_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "warm") (Flapjack.Exp.const 0#64)) body571_5 body571_2

def body571_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "state_gas" (Flapjack.Exp.const 183600#64)

def body571_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "aw" (Flapjack.Exp.const 9000#64)

def body571_9 : Prog (BitVec 64) :=
.seq body571_7 body571_8

def body571_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "alive") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "obz") (Flapjack.Exp.const 0#64))]) body571_9 body571_2

def body571_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "aw"]

def body571_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_state_gas" [Flapjack.Exp.var Flapjack.VarKind.local "state_gas"]

def body571_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "oa"), none)) "get_account"
  [Flapjack.Exp.var Flapjack.VarKind.local "originator"]

def body571_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "move_ether"
  [Flapjack.Exp.var Flapjack.VarKind.local "originator", Flapjack.Exp.var Flapjack.VarKind.local "beneficiary",
    Flapjack.Exp.var Flapjack.VarKind.local "bal"]

def body571_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "emit_transfer_log"
  [Flapjack.Exp.var Flapjack.VarKind.local "originator", Flapjack.Exp.var Flapjack.VarKind.local "beneficiary",
    Flapjack.Exp.var Flapjack.VarKind.local "bal"]

def body571_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "same") (Flapjack.Exp.const 0#64)) body571_15 body571_2

def body571_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 136#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "originator", Flapjack.Exp.const 1#64]

def body571_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "created") (Flapjack.Exp.const 0#64)) body571_17 body571_2

def body571_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 0#64)

def body571_20 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body571_21 : Prog (BitVec 64) :=
.seq body571_19 body571_20

def body571_22 : Prog (BitVec 64) :=
.seq body571_18 body571_21

def body571_23 : Prog (BitVec 64) :=
.decCall ("created") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 56#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "originator"]) body571_22

def body571_24 : Prog (BitVec 64) :=
.seq body571_16 body571_23

def body571_25 : Prog (BitVec 64) :=
.decCall ("same") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "beneficiary", Flapjack.Exp.var Flapjack.VarKind.local "originator",
  Flapjack.Exp.const 20#64]) body571_24

def body571_26 : Prog (BitVec 64) :=
.seq body571_14 body571_25

def body571_27 : Prog (BitVec 64) :=
.dec ("bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "oa", Flapjack.Exp.const 8#64])) body571_26

def body571_28 : Prog (BitVec 64) :=
.seq body571_13 body571_27

def body571_29 : Prog (BitVec 64) :=
.seq body571_12 body571_28

def body571_30 : Prog (BitVec 64) :=
.seq body571_11 body571_29

def body571_31 : Prog (BitVec 64) :=
.seq body571_10 body571_30

def body571_32 : Prog (BitVec 64) :=
.dec ("aw") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body571_31

def body571_33 : Prog (BitVec 64) :=
.dec ("state_gas") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body571_32

def body571_34 : Prog (BitVec 64) :=
.decCall ("obz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "oa", Flapjack.Exp.const 8#64])]) body571_33

def body571_35 : Prog (BitVec 64) :=
.decCall ("oa") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "originator"]) body571_34

def body571_36 : Prog (BitVec 64) :=
.decCall ("alive") (Flapjack.Shape.one) ("is_account_alive") ([Flapjack.Exp.var Flapjack.VarKind.local "beneficiary"]) body571_35

def body571_37 : Prog (BitVec 64) :=
.dec ("originator") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 32#64])) body571_36

def body571_38 : Prog (BitVec 64) :=
.seq body571_6 body571_37

def body571_39 : Prog (BitVec 64) :=
.seq body571_4 body571_38

def body571_40 : Prog (BitVec 64) :=
.seq body571_3 body571_39

def body571_41 : Prog (BitVec 64) :=
.dec ("gas_cost") (Flapjack.Shape.one) (Flapjack.Exp.const 5000#64) body571_40

def body571_42 : Prog (BitVec 64) :=
.decCall ("warm") (Flapjack.Shape.one) ("is_warm_address") ([Flapjack.Exp.var Flapjack.VarKind.local "beneficiary"]) body571_41

def body571_43 : Prog (BitVec 64) :=
.decCall ("beneficiary") (Flapjack.Shape.one) ("to_address_masked") ([Flapjack.Exp.var Flapjack.VarKind.local "bv"]) body571_42

def body571_44 : Prog (BitVec 64) :=
.decCall ("bv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body571_43

def body571_45 : Prog (BitVec 64) :=
.seq body571_0 body571_44

def body571_46 : Prog (BitVec 64) :=
.seq body571_3 body571_4

def body571_47 : Prog (BitVec 64) :=
.seq body571_46 body571_6

def body571_48 : Prog (BitVec 64) :=
.seq body571_10 body571_11

def body571_49 : Prog (BitVec 64) :=
.seq body571_48 body571_12

def body571_50 : Prog (BitVec 64) :=
.seq body571_49 body571_13

def body571_51 : Prog (BitVec 64) :=
.seq body571_18 body571_19

def body571_52 : Prog (BitVec 64) :=
.seq body571_51 body571_20

def body571_53 : Prog (BitVec 64) :=
.decCall ("created") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 56#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "originator"]) body571_52

def body571_54 : Prog (BitVec 64) :=
.seq body571_16 body571_53

def body571_55 : Prog (BitVec 64) :=
.decCall ("same") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "beneficiary", Flapjack.Exp.var Flapjack.VarKind.local "originator",
  Flapjack.Exp.const 20#64]) body571_54

def body571_56 : Prog (BitVec 64) :=
.seq body571_14 body571_55

def body571_57 : Prog (BitVec 64) :=
.dec ("bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "oa", Flapjack.Exp.const 8#64])) body571_56

def body571_58 : Prog (BitVec 64) :=
.seq body571_50 body571_57

def body571_59 : Prog (BitVec 64) :=
.dec ("aw") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body571_58

def body571_60 : Prog (BitVec 64) :=
.dec ("state_gas") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body571_59

def body571_61 : Prog (BitVec 64) :=
.decCall ("obz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "oa", Flapjack.Exp.const 8#64])]) body571_60

def body571_62 : Prog (BitVec 64) :=
.decCall ("oa") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "originator"]) body571_61

def body571_63 : Prog (BitVec 64) :=
.decCall ("alive") (Flapjack.Shape.one) ("is_account_alive") ([Flapjack.Exp.var Flapjack.VarKind.local "beneficiary"]) body571_62

def body571_64 : Prog (BitVec 64) :=
.dec ("originator") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 32#64])) body571_63

def body571_65 : Prog (BitVec 64) :=
.seq body571_47 body571_64

def body571_66 : Prog (BitVec 64) :=
.dec ("gas_cost") (Flapjack.Shape.one) (Flapjack.Exp.const 5000#64) body571_65

def body571_67 : Prog (BitVec 64) :=
.decCall ("warm") (Flapjack.Shape.one) ("is_warm_address") ([Flapjack.Exp.var Flapjack.VarKind.local "beneficiary"]) body571_66

def body571_68 : Prog (BitVec 64) :=
.decCall ("beneficiary") (Flapjack.Shape.one) ("to_address_masked") ([Flapjack.Exp.var Flapjack.VarKind.local "bv"]) body571_67

def body571_69 : Prog (BitVec 64) :=
.decCall ("bv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body571_68

def body571_70 : Prog (BitVec 64) :=
.seq body571_0 body571_69

def originalData571 : Decl (BitVec 64) :=
.function { name := "op_selfdestruct", inline := false, exported := false, params := [], body := body571_45, returnShape := (Flapjack.Shape.one) }
def simplifiedData571 : Decl (BitVec 64) :=
.function { name := "op_selfdestruct", inline := false, exported := false, params := [], body := body571_70, returnShape := (Flapjack.Shape.one) }
def original571 := Pancake.PanLang.declToHOL originalData571
def simplified571 := Pancake.PanLang.declToHOL simplifiedData571
end InitECandidate.Proofs.FrontendStages.Declarations
