import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify583
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body599_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 4#64)

def body599_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body599_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 131072#64) (Flapjack.Exp.var Flapjack.VarKind.local "msize")) body599_0 body599_1

def body599_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_retdata"
  [Flapjack.Exp.var Flapjack.VarKind.local "empty", Flapjack.Exp.const 0#64]

def body599_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def body599_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body599_6 : Prog (BitVec 64) :=
.seq body599_4 body599_5

def body599_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "insufficient")
        (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.equal
        (Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "sender", Flapjack.Exp.const 0#64]))
        (Flapjack.Exp.const 18446744073709551615#64),
      Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1024#64)
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 128#64]),
            Flapjack.Exp.const 1#64])])) body599_6 body599_1

def body599_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_address" [Flapjack.Exp.var Flapjack.VarKind.local "contract_address"]

def body599_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "new_account_charged" (Flapjack.Exp.const 1#64)

def body599_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_state_gas" [Flapjack.Exp.const 183600#64]

def body599_11 : Prog (BitVec 64) :=
.seq body599_9 body599_10

def body599_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "alive") (Flapjack.Exp.const 0#64)) body599_11 body599_1

def body599_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "gl", Flapjack.Exp.var Flapjack.VarKind.local "create_gas"])

def body599_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "increment_nonce" [Flapjack.Exp.var Flapjack.VarKind.local "sender_address"]

def body599_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 184#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 184#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "create_gas"])

def body599_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "credit_state_gas_refund" [Flapjack.Exp.const 183600#64]

def body599_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "new_account_charged")
  (Flapjack.Exp.const 0#64)) body599_16 body599_1

def body599_18 : Prog (BitVec 64) :=
.seq body599_17 body599_6

def body599_19 : Prog (BitVec 64) :=
.seq body599_15 body599_18

def body599_20 : Prog (BitVec 64) :=
.seq body599_14 body599_19

def body599_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "deployable") (Flapjack.Exp.const 0#64)) body599_20 body599_1

def body599_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 0#64)

def body599_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "start_child"
  [Flapjack.Exp.var Flapjack.VarKind.local "cm", Flapjack.Exp.const 2#64,
    Flapjack.Exp.var Flapjack.VarKind.local "child_mark", Flapjack.Exp.var Flapjack.VarKind.local "child_mem_mark",
    Flapjack.Exp.var Flapjack.VarKind.local "new_account_charged", Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
    Flapjack.Exp.var Flapjack.VarKind.local "contract_address"]

def body599_24 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body599_25 : Prog (BitVec 64) :=
.seq body599_23 body599_24

def body599_26 : Prog (BitVec 64) :=
.decCall ("cm") (Flapjack.Shape.one) ("child_message") ([Flapjack.Exp.var Flapjack.VarKind.local "sender_address", Flapjack.Exp.const 0#64,
  Flapjack.Exp.var Flapjack.VarKind.local "contract_address", Flapjack.Exp.var Flapjack.VarKind.local "create_gas",
  Flapjack.Exp.var Flapjack.VarKind.local "reservoir", Flapjack.Exp.var Flapjack.VarKind.local "endowment",
  Flapjack.Exp.var Flapjack.VarKind.local "empty", Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
  Flapjack.Exp.var Flapjack.VarKind.local "call_data", Flapjack.Exp.var Flapjack.VarKind.local "msize",
  Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body599_25

def body599_27 : Prog (BitVec 64) :=
.decCall ("child_mem_mark") (Flapjack.Shape.one) ("frame_mem_mark") ([]) body599_26

def body599_28 : Prog (BitVec 64) :=
.decCall ("child_mark") (Flapjack.Shape.one) ("scratch_mark") ([]) body599_27

def body599_29 : Prog (BitVec 64) :=
.seq body599_14 body599_28

def body599_30 : Prog (BitVec 64) :=
.seq body599_22 body599_29

def body599_31 : Prog (BitVec 64) :=
.dec ("reservoir") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 72#64])) body599_30

def body599_32 : Prog (BitVec 64) :=
.seq body599_21 body599_31

def body599_33 : Prog (BitVec 64) :=
.decCall ("deployable") (Flapjack.Shape.one) ("account_deployable") ([Flapjack.Exp.var Flapjack.VarKind.local "contract_address"]) body599_32

def body599_34 : Prog (BitVec 64) :=
.seq body599_13 body599_33

def body599_35 : Prog (BitVec 64) :=
.dec ("create_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "gl",
    Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "gl") (Flapjack.Exp.const 6#64)]) body599_34

def body599_36 : Prog (BitVec 64) :=
.dec ("gl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64])) body599_35

def body599_37 : Prog (BitVec 64) :=
.seq body599_12 body599_36

def body599_38 : Prog (BitVec 64) :=
.dec ("new_account_charged") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body599_37

def body599_39 : Prog (BitVec 64) :=
.decCall ("alive") (Flapjack.Shape.one) ("is_account_alive") ([Flapjack.Exp.var Flapjack.VarKind.local "contract_address"]) body599_38

def body599_40 : Prog (BitVec 64) :=
.seq body599_8 body599_39

def body599_41 : Prog (BitVec 64) :=
.seq body599_7 body599_40

def body599_42 : Prog (BitVec 64) :=
.decCall ("insufficient") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sender", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "endowment"]) body599_41

def body599_43 : Prog (BitVec 64) :=
.decCall ("sender") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender_address"]) body599_42

def body599_44 : Prog (BitVec 64) :=
.dec ("sender_address") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64])) body599_43

def body599_45 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body599_44

def body599_46 : Prog (BitVec 64) :=
.seq body599_3 body599_45

def body599_47 : Prog (BitVec 64) :=
.dec ("empty") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "evm_empty") body599_46

def body599_48 : Prog (BitVec 64) :=
.dec ("call_data") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "mstart"]) body599_47

def body599_49 : Prog (BitVec 64) :=
.seq body599_2 body599_48

def body599_50 : Prog (BitVec 64) :=
.seq body599_7 body599_8

def body599_51 : Prog (BitVec 64) :=
.seq body599_14 body599_15

def body599_52 : Prog (BitVec 64) :=
.seq body599_51 body599_17

def body599_53 : Prog (BitVec 64) :=
.seq body599_52 body599_4

def body599_54 : Prog (BitVec 64) :=
.seq body599_53 body599_5

def body599_55 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "deployable") (Flapjack.Exp.const 0#64)) body599_54 body599_1

def body599_56 : Prog (BitVec 64) :=
.seq body599_22 body599_14

def body599_57 : Prog (BitVec 64) :=
.seq body599_56 body599_28

def body599_58 : Prog (BitVec 64) :=
.dec ("reservoir") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 72#64])) body599_57

def body599_59 : Prog (BitVec 64) :=
.seq body599_55 body599_58

def body599_60 : Prog (BitVec 64) :=
.decCall ("deployable") (Flapjack.Shape.one) ("account_deployable") ([Flapjack.Exp.var Flapjack.VarKind.local "contract_address"]) body599_59

def body599_61 : Prog (BitVec 64) :=
.seq body599_13 body599_60

def body599_62 : Prog (BitVec 64) :=
.dec ("create_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "gl",
    Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "gl") (Flapjack.Exp.const 6#64)]) body599_61

def body599_63 : Prog (BitVec 64) :=
.dec ("gl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64])) body599_62

def body599_64 : Prog (BitVec 64) :=
.seq body599_12 body599_63

def body599_65 : Prog (BitVec 64) :=
.dec ("new_account_charged") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body599_64

def body599_66 : Prog (BitVec 64) :=
.decCall ("alive") (Flapjack.Shape.one) ("is_account_alive") ([Flapjack.Exp.var Flapjack.VarKind.local "contract_address"]) body599_65

def body599_67 : Prog (BitVec 64) :=
.seq body599_50 body599_66

def body599_68 : Prog (BitVec 64) :=
.decCall ("insufficient") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sender", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "endowment"]) body599_67

def body599_69 : Prog (BitVec 64) :=
.decCall ("sender") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender_address"]) body599_68

def body599_70 : Prog (BitVec 64) :=
.dec ("sender_address") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64])) body599_69

def body599_71 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body599_70

def body599_72 : Prog (BitVec 64) :=
.seq body599_3 body599_71

def body599_73 : Prog (BitVec 64) :=
.dec ("empty") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "evm_empty") body599_72

def body599_74 : Prog (BitVec 64) :=
.dec ("call_data") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "mstart"]) body599_73

def body599_75 : Prog (BitVec 64) :=
.seq body599_2 body599_74

def originalData599 : Decl (BitVec 64) :=
.function { name := "generic_create", inline := false, exported := false, params := [("endowment", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("contract_address", Flapjack.Shape.one), ("mstart", Flapjack.Shape.one), ("msize", Flapjack.Shape.one)], body := body599_49, returnShape := (Flapjack.Shape.one) }
def simplifiedData599 : Decl (BitVec 64) :=
.function { name := "generic_create", inline := false, exported := false, params := [("endowment", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("contract_address", Flapjack.Shape.one), ("mstart", Flapjack.Shape.one), ("msize", Flapjack.Shape.one)], body := body599_75, returnShape := (Flapjack.Shape.one) }
def original599 := Pancake.PanLang.declToHOL originalData599
def simplified599 := Pancake.PanLang.declToHOL simplifiedData599
end InitECandidate.Proofs.FrontendStages.Declarations
