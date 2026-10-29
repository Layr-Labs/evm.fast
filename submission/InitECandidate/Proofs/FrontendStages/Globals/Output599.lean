import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data599
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate583
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody599_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 4#64)

def globalBody599_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody599_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 131072#64) (Flapjack.Exp.var Flapjack.VarKind.local "msize")) globalBody599_0 globalBody599_1

def globalBody599_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_retdata"
  [Flapjack.Exp.var Flapjack.VarKind.local "empty", Flapjack.Exp.const 0#64]

def globalBody599_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def globalBody599_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody599_6 : Prog (BitVec 64) :=
.seq globalBody599_4 globalBody599_5

def globalBody599_7 : Prog (BitVec 64) :=
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
            Flapjack.Exp.const 1#64])])) globalBody599_6 globalBody599_1

def globalBody599_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_address" [Flapjack.Exp.var Flapjack.VarKind.local "contract_address"]

def globalBody599_9 : Prog (BitVec 64) :=
.seq globalBody599_7 globalBody599_8

def globalBody599_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "new_account_charged" (Flapjack.Exp.const 1#64)

def globalBody599_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_state_gas" [Flapjack.Exp.const 183600#64]

def globalBody599_12 : Prog (BitVec 64) :=
.seq globalBody599_10 globalBody599_11

def globalBody599_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "alive") (Flapjack.Exp.const 0#64)) globalBody599_12 globalBody599_1

def globalBody599_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 64#64])
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "gl", Flapjack.Exp.var Flapjack.VarKind.local "create_gas"])

def globalBody599_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "increment_nonce" [Flapjack.Exp.var Flapjack.VarKind.local "sender_address"]

def globalBody599_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 184#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
            Flapjack.Exp.const 184#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "create_gas"])

def globalBody599_17 : Prog (BitVec 64) :=
.seq globalBody599_15 globalBody599_16

def globalBody599_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "credit_state_gas_refund" [Flapjack.Exp.const 183600#64]

def globalBody599_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "new_account_charged")
  (Flapjack.Exp.const 0#64)) globalBody599_18 globalBody599_1

def globalBody599_20 : Prog (BitVec 64) :=
.seq globalBody599_17 globalBody599_19

def globalBody599_21 : Prog (BitVec 64) :=
.seq globalBody599_20 globalBody599_4

def globalBody599_22 : Prog (BitVec 64) :=
.seq globalBody599_21 globalBody599_5

def globalBody599_23 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "deployable") (Flapjack.Exp.const 0#64)) globalBody599_22 globalBody599_1

def globalBody599_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 0#64)

def globalBody599_25 : Prog (BitVec 64) :=
.seq globalBody599_24 globalBody599_15

def globalBody599_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "start_child"
  [Flapjack.Exp.var Flapjack.VarKind.local "cm", Flapjack.Exp.const 2#64,
    Flapjack.Exp.var Flapjack.VarKind.local "child_mark", Flapjack.Exp.var Flapjack.VarKind.local "child_mem_mark",
    Flapjack.Exp.var Flapjack.VarKind.local "new_account_charged", Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
    Flapjack.Exp.var Flapjack.VarKind.local "contract_address"]

def globalBody599_27 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody599_28 : Prog (BitVec 64) :=
.seq globalBody599_26 globalBody599_27

def globalBody599_29 : Prog (BitVec 64) :=
.decCall ("cm") (Flapjack.Shape.one) ("child_message") ([Flapjack.Exp.var Flapjack.VarKind.local "sender_address", Flapjack.Exp.const 0#64,
  Flapjack.Exp.var Flapjack.VarKind.local "contract_address", Flapjack.Exp.var Flapjack.VarKind.local "create_gas",
  Flapjack.Exp.var Flapjack.VarKind.local "reservoir", Flapjack.Exp.var Flapjack.VarKind.local "endowment",
  Flapjack.Exp.var Flapjack.VarKind.local "empty", Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
  Flapjack.Exp.var Flapjack.VarKind.local "call_data", Flapjack.Exp.var Flapjack.VarKind.local "msize",
  Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody599_28

def globalBody599_30 : Prog (BitVec 64) :=
.decCall ("child_mem_mark") (Flapjack.Shape.one) ("frame_mem_mark") ([]) globalBody599_29

def globalBody599_31 : Prog (BitVec 64) :=
.decCall ("child_mark") (Flapjack.Shape.one) ("scratch_mark") ([]) globalBody599_30

def globalBody599_32 : Prog (BitVec 64) :=
.seq globalBody599_25 globalBody599_31

def globalBody599_33 : Prog (BitVec 64) :=
.dec ("reservoir") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 72#64])) globalBody599_32

def globalBody599_34 : Prog (BitVec 64) :=
.seq globalBody599_23 globalBody599_33

def globalBody599_35 : Prog (BitVec 64) :=
.decCall ("deployable") (Flapjack.Shape.one) ("account_deployable") ([Flapjack.Exp.var Flapjack.VarKind.local "contract_address"]) globalBody599_34

def globalBody599_36 : Prog (BitVec 64) :=
.seq globalBody599_14 globalBody599_35

def globalBody599_37 : Prog (BitVec 64) :=
.dec ("create_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "gl",
    Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "gl") (Flapjack.Exp.const 6#64)]) globalBody599_36

def globalBody599_38 : Prog (BitVec 64) :=
.dec ("gl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 64#64])) globalBody599_37

def globalBody599_39 : Prog (BitVec 64) :=
.seq globalBody599_13 globalBody599_38

def globalBody599_40 : Prog (BitVec 64) :=
.dec ("new_account_charged") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody599_39

def globalBody599_41 : Prog (BitVec 64) :=
.decCall ("alive") (Flapjack.Shape.one) ("is_account_alive") ([Flapjack.Exp.var Flapjack.VarKind.local "contract_address"]) globalBody599_40

def globalBody599_42 : Prog (BitVec 64) :=
.seq globalBody599_9 globalBody599_41

def globalBody599_43 : Prog (BitVec 64) :=
.decCall ("insufficient") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sender", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "endowment"]) globalBody599_42

def globalBody599_44 : Prog (BitVec 64) :=
.decCall ("sender") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender_address"]) globalBody599_43

def globalBody599_45 : Prog (BitVec 64) :=
.dec ("sender_address") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64])) globalBody599_44

def globalBody599_46 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 112#64])) globalBody599_45

def globalBody599_47 : Prog (BitVec 64) :=
.seq globalBody599_3 globalBody599_46

def globalBody599_48 : Prog (BitVec 64) :=
.dec ("empty") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 264#64])) globalBody599_47

def globalBody599_49 : Prog (BitVec 64) :=
.dec ("call_data") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
          Flapjack.Exp.const 24#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "mstart"]) globalBody599_48

def globalBody599_50 : Prog (BitVec 64) :=
.seq globalBody599_2 globalBody599_49

def globalData599 : Decl (BitVec 64) :=
.function { name := "generic_create", inline := false, exported := false, params := [("endowment", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("contract_address", Flapjack.Shape.one), ("mstart", Flapjack.Shape.one), ("msize", Flapjack.Shape.one)], body := globalBody599_50, returnShape := (Flapjack.Shape.one) }
def globalOutput599 := Pancake.PanLang.declToHOL globalData599
end InitECandidate.Proofs.FrontendStages.Declarations
