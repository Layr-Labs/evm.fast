import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify896
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body912_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_fresh_tx" []

def body912_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "bal_index"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 1#64])

def body912_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 24#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64]])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "enc"))

def body912_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 24#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "enc"))

def body912_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body912_5 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 100#64)

def body912_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "cid"))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 0#64]))) body912_5 body912_4

def body912_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "cid"))
  (Flapjack.Exp.const 0#64)) body912_6 body912_4

def body912_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "recover_sender_with_chain_id"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 0#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "sender"]

def body912_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "blob_gas_fee"
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bgf"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "bgf"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "bgf"),
      Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "bgf")])

def body912_10 : Prog (BitVec 64) :=
.decCall ("bgf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas_used", Flapjack.Exp.var Flapjack.VarKind.local "bgp"]) body912_9

def body912_11 : Prog (BitVec 64) :=
.decCall ("bgp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_blob_gas_price") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 96#64])]) body912_10

def body912_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas_used")
  (Flapjack.Exp.const 0#64)) body912_11 body912_4

def body912_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "increment_nonce" [Flapjack.Exp.var Flapjack.VarKind.local "sender"]

def body912_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "bal"), none)) "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "bal", Flapjack.Exp.var Flapjack.VarKind.local "effective_gas_fee"]

def body912_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "bal"), none)) "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "bal", Flapjack.Exp.var Flapjack.VarKind.local "blob_gas_fee"]

def body912_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_account_balance"
  [Flapjack.Exp.var Flapjack.VarKind.local "sender", Flapjack.Exp.var Flapjack.VarKind.local "bal"]

def body912_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "sender")

def body912_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def body912_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64]))

def body912_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "price")

def body912_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "mgas")

def body912_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "reservoir")

def body912_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nal"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 216#64]))

def body912_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "hal") (Flapjack.Exp.const 0#64)) body912_23 body912_4

def body912_25 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "al_addrs")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 32#64]))

def body912_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "al_addrs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.const 0#64]))

def body912_27 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nkeys"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nkeys",
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.const 16#64])])

def body912_28 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body912_29 : Prog (BitVec 64) :=
.seq body912_27 body912_28

def body912_30 : Prog (BitVec 64) :=
.seq body912_26 body912_29

def body912_31 : Prog (BitVec 64) :=
.dec ("acc") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) body912_30

def body912_32 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nal")) body912_31

def body912_33 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def body912_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "al_keys",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 52#64]],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc2", Flapjack.Exp.const 0#64]),
    Flapjack.Exp.const 20#64]

def body912_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "al_keys",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 52#64],
        Flapjack.Exp.const 20#64],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "acc2", Flapjack.Exp.const 8#64]),
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 32#64]],
    Flapjack.Exp.const 32#64]

def body912_36 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def body912_37 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body912_38 : Prog (BitVec 64) :=
.seq body912_36 body912_37

def body912_39 : Prog (BitVec 64) :=
.seq body912_35 body912_38

def body912_40 : Prog (BitVec 64) :=
.seq body912_34 body912_39

def body912_41 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "ns")) body912_40

def body912_42 : Prog (BitVec 64) :=
.seq body912_41 body912_28

def body912_43 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body912_42

def body912_44 : Prog (BitVec 64) :=
.dec ("ns") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc2", Flapjack.Exp.const 16#64])) body912_43

def body912_45 : Prog (BitVec 64) :=
.dec ("acc2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) body912_44

def body912_46 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nal")) body912_45

def body912_47 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "al_addrs")

def body912_48 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nal", Flapjack.Exp.const 1#64])

def body912_49 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "al_keys")

def body912_50 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nkeys")

def body912_51 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 256#64]))

def body912_52 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64]))

def body912_53 : Prog (BitVec 64) :=
.seq body912_51 body912_52

def body912_54 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "isb") (Flapjack.Exp.const 0#64)) body912_53 body912_4

def body912_55 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 272#64]))

def body912_56 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 280#64]))

def body912_57 : Prog (BitVec 64) :=
.seq body912_55 body912_56

def body912_58 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "issc") (Flapjack.Exp.const 0#64)) body912_57 body912_4

def body912_59 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.const 1#64)

def body912_60 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "index")

def body912_61 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "enc"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "enc"),
    Flapjack.Exp.var Flapjack.VarKind.local "txh"]

def body912_62 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 176#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "txh")

def body912_63 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 184#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"))

def body912_64 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"))

def body912_65 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "be")

def body912_66 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "te")

def body912_67 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "sender")

def body912_68 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def body912_69 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "mgas")

def body912_70 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "reservoir")

def body912_71 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64]))

def body912_72 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa", Flapjack.Exp.var Flapjack.VarKind.local "sender",
    Flapjack.Exp.const 1#64]

def body912_73 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "precompile_addrs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 20#64]],
    Flapjack.Exp.const 1#64]

def body912_74 : Prog (BitVec 64) :=
.seq body912_73 body912_28

def body912_75 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 18#64)) body912_74

def body912_76 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "al_addrs",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.const 1#64]

def body912_77 : Prog (BitVec 64) :=
.seq body912_76 body912_28

def body912_78 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nal", Flapjack.Exp.const 1#64])) body912_77

def body912_79 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "ak",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "al_keys",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 52#64]],
    Flapjack.Exp.const 1#64]

def body912_80 : Prog (BitVec 64) :=
.seq body912_79 body912_28

def body912_81 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nkeys")) body912_80

def body912_82 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "compute_contract_address"
  [Flapjack.Exp.var Flapjack.VarKind.local "sender",
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sa", Flapjack.Exp.const 0#64]),
        Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "ct"]

def body912_83 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ct")

def body912_84 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "empty")

def body912_85 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.const 0#64)

def body912_86 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 192#64]))

def body912_87 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64]))

def body912_88 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 0#64)

def body912_89 : Prog (BitVec 64) :=
.seq body912_87 body912_88

def body912_90 : Prog (BitVec 64) :=
.seq body912_86 body912_89

def body912_91 : Prog (BitVec 64) :=
.seq body912_85 body912_90

def body912_92 : Prog (BitVec 64) :=
.seq body912_84 body912_91

def body912_93 : Prog (BitVec 64) :=
.seq body912_83 body912_92

def body912_94 : Prog (BitVec 64) :=
.seq body912_82 body912_93

def body912_95 : Prog (BitVec 64) :=
.decCall ("ct") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) body912_94

def body912_96 : Prog (BitVec 64) :=
.decCall ("sa") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body912_95

def body912_97 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def body912_98 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 192#64]))

def body912_99 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64]))

def body912_100 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "empty")

def body912_101 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.const 0#64)

def body912_102 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def body912_103 : Prog (BitVec 64) :=
.seq body912_101 body912_102

def body912_104 : Prog (BitVec 64) :=
.seq body912_100 body912_103

def body912_105 : Prog (BitVec 64) :=
.seq body912_99 body912_104

def body912_106 : Prog (BitVec 64) :=
.seq body912_98 body912_105

def body912_107 : Prog (BitVec 64) :=
.seq body912_97 body912_106

def body912_108 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))
  (Flapjack.Exp.const 0#64)) body912_96 body912_107

def body912_109 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.const 1#64)

def body912_110 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 1#64]

def body912_111 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "aa")

def body912_112 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ak")

def body912_113 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "create_ether"
  [Flapjack.Exp.var Flapjack.VarKind.local "sender",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "gra"),
        Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "gra"),
        Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "gra"),
        Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "gra")]]

def body912_114 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "create_ether"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "tf"),
        Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "tf"),
        Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "tf"),
        Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "tf")]]

def body912_115 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "tx_state_gas_nat" (Flapjack.Exp.const 0#64)

def body912_116 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas") (Flapjack.Exp.const 0#64)) body912_115 body912_4

def body912_117 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 0#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_regular_gas"])

def body912_118 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 8#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas_nat"])

def body912_119 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 48#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas_used"])

def body912_120 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 16#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used"])

def body912_121 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "logs"), none)) "lst_new"
  [Flapjack.Exp.const 8#64, Flapjack.Exp.const 1#64]

def body912_122 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "logs") (Flapjack.Exp.const 0#64)) body912_121 body912_4

def body912_123 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "succeeded" (Flapjack.Exp.const 0#64)

def body912_124 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]))
  (Flapjack.Exp.const 0#64)) body912_123 body912_4

def body912_125 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 32#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64]])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "rc"))

def body912_126 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 32#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "rc"))

def body912_127 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "slot")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "lp",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]))

def body912_128 : Prog (BitVec 64) :=
.seq body912_127 body912_28

def body912_129 : Prog (BitVec 64) :=
.decCall ("slot") (Flapjack.Shape.one) ("lst_push") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 40#64]),
  Flapjack.Exp.const 8#64]) body912_128

def body912_130 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")) body912_129

def body912_131 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "stable_log_cap" (Flapjack.Exp.const 1#64)

def body912_132 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "stable_log_cap") (Flapjack.Exp.const 0#64)) body912_131 body912_4

def body912_133 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stable_logs", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")

def body912_134 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "stable_lp",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "lp",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]))

def body912_135 : Prog (BitVec 64) :=
.seq body912_134 body912_28

def body912_136 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")) body912_135

def body912_137 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "rl")
  (Flapjack.Exp.var Flapjack.VarKind.local "stable_logs")

def body912_138 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "clear_account_preserving_balance"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s")]

def body912_139 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) body912_138 body912_4

def body912_140 : Prog (BitVec 64) :=
.seq body912_139 body912_28

def body912_141 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "del", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body912_140

def body912_142 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "dcap")) body912_141

def body912_143 : Prog (BitVec 64) :=
.seq body912_33 body912_142

def body912_144 : Prog (BitVec 64) :=
.dec ("dcap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "del", Flapjack.Exp.const 24#64])) body912_143

def body912_145 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "del") (Flapjack.Exp.const 0#64)) body912_144 body912_4

def body912_146 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "incorporate_tx_into_block" []

def body912_147 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "tx_frame_mark"]

def body912_148 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_mem_release"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 88#64])]

def body912_149 : Prog (BitVec 64) :=
.seq body912_147 body912_148

def body912_150 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "tx_frame_mark")
  (Flapjack.Exp.const 0#64)) body912_149 body912_4

def body912_151 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body912_152 : Prog (BitVec 64) :=
.seq body912_150 body912_151

def body912_153 : Prog (BitVec 64) :=
.dec ("tx_frame_mark") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 80#64])) body912_152

def body912_154 : Prog (BitVec 64) :=
.seq body912_146 body912_153

def body912_155 : Prog (BitVec 64) :=
.seq body912_145 body912_154

def body912_156 : Prog (BitVec 64) :=
.dec ("del") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 24#64])) body912_155

def body912_157 : Prog (BitVec 64) :=
.seq body912_137 body912_156

def body912_158 : Prog (BitVec 64) :=
.decCall ("rl") (Flapjack.Shape.one) ("lst_push") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 72#64]),
  Flapjack.Exp.const 8#64]) body912_157

def body912_159 : Prog (BitVec 64) :=
.seq body912_136 body912_158

def body912_160 : Prog (BitVec 64) :=
.seq body912_33 body912_159

def body912_161 : Prog (BitVec 64) :=
.dec ("stable_lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stable_logs", Flapjack.Exp.const 0#64])) body912_160

def body912_162 : Prog (BitVec 64) :=
.seq body912_133 body912_161

def body912_163 : Prog (BitVec 64) :=
.decCall ("stable_logs") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.var Flapjack.VarKind.local "stable_log_cap"]) body912_162

def body912_164 : Prog (BitVec 64) :=
.seq body912_132 body912_163

def body912_165 : Prog (BitVec 64) :=
.dec ("stable_log_cap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "nl") body912_164

def body912_166 : Prog (BitVec 64) :=
.seq body912_130 body912_165

def body912_167 : Prog (BitVec 64) :=
.seq body912_33 body912_166

def body912_168 : Prog (BitVec 64) :=
.dec ("lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 0#64])) body912_167

def body912_169 : Prog (BitVec 64) :=
.dec ("nl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 8#64])) body912_168

def body912_170 : Prog (BitVec 64) :=
.seq body912_126 body912_169

def body912_171 : Prog (BitVec 64) :=
.seq body912_125 body912_170

def body912_172 : Prog (BitVec 64) :=
.decCall ("rc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_receipt") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "succeeded",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 16#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "logs"]) body912_171

def body912_173 : Prog (BitVec 64) :=
.seq body912_124 body912_172

def body912_174 : Prog (BitVec 64) :=
.dec ("succeeded") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body912_173

def body912_175 : Prog (BitVec 64) :=
.seq body912_122 body912_174

def body912_176 : Prog (BitVec 64) :=
.dec ("logs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64])) body912_175

def body912_177 : Prog (BitVec 64) :=
.seq body912_4 body912_176

def body912_178 : Prog (BitVec 64) :=
.seq body912_120 body912_177

def body912_179 : Prog (BitVec 64) :=
.seq body912_119 body912_178

def body912_180 : Prog (BitVec 64) :=
.seq body912_118 body912_179

def body912_181 : Prog (BitVec 64) :=
.seq body912_117 body912_180

def body912_182 : Prog (BitVec 64) :=
.decCall ("tx_regular_gas") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund",
      Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas_nat"],
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body912_181

def body912_183 : Prog (BitVec 64) :=
.seq body912_116 body912_182

def body912_184 : Prog (BitVec 64) :=
.dec ("tx_state_gas_nat") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas") body912_183

def body912_185 : Prog (BitVec 64) :=
.dec ("tx_state_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 72#64])]) body912_184

def body912_186 : Prog (BitVec 64) :=
.seq body912_114 body912_185

def body912_187 : Prog (BitVec 64) :=
.seq body912_113 body912_186

def body912_188 : Prog (BitVec 64) :=
.decCall ("tf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used", Flapjack.Exp.var Flapjack.VarKind.local "priority_fee"]) body912_187

def body912_189 : Prog (BitVec 64) :=
.decCall ("priority_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "price",
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 48#64])]) body912_188

def body912_190 : Prog (BitVec 64) :=
.decCall ("gra") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_left", Flapjack.Exp.var Flapjack.VarKind.local "price"]) body912_189

def body912_191 : Prog (BitVec 64) :=
.dec ("tx_gas_left") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used"]) body912_190

def body912_192 : Prog (BitVec 64) :=
.decCall ("tx_gas_used") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "used_after_refund",
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body912_191

def body912_193 : Prog (BitVec 64) :=
.dec ("used_after_refund") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund", Flapjack.Exp.var Flapjack.VarKind.local "refund"]) body912_192

def body912_194 : Prog (BitVec 64) :=
.decCall ("refund") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.var Flapjack.VarKind.local "ubr5",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 8#64])]) body912_193

def body912_195 : Prog (BitVec 64) :=
.decCall ("ubr5") (Flapjack.Shape.one) ("udiv_small5") ([Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund"]) body912_194

def body912_196 : Prog (BitVec 64) :=
.dec ("used_before_refund") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "gas",
        Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 0#64])],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 56#64])]) body912_195

def body912_197 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("process_message_call") ([Flapjack.Exp.var Flapjack.VarKind.local "m"]) body912_196

def body912_198 : Prog (BitVec 64) :=
.seq body912_112 body912_197

def body912_199 : Prog (BitVec 64) :=
.seq body912_111 body912_198

def body912_200 : Prog (BitVec 64) :=
.seq body912_4 body912_199

def body912_201 : Prog (BitVec 64) :=
.seq body912_110 body912_200

def body912_202 : Prog (BitVec 64) :=
.seq body912_109 body912_201

def body912_203 : Prog (BitVec 64) :=
.seq body912_4 body912_202

def body912_204 : Prog (BitVec 64) :=
.seq body912_108 body912_203

def body912_205 : Prog (BitVec 64) :=
.decCall ("empty") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) body912_204

def body912_206 : Prog (BitVec 64) :=
.seq body912_4 body912_205

def body912_207 : Prog (BitVec 64) :=
.seq body912_81 body912_206

def body912_208 : Prog (BitVec 64) :=
.seq body912_33 body912_207

def body912_209 : Prog (BitVec 64) :=
.decCall ("ak") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 52#64, Flapjack.Exp.const 16#64]) body912_208

def body912_210 : Prog (BitVec 64) :=
.seq body912_4 body912_209

def body912_211 : Prog (BitVec 64) :=
.seq body912_78 body912_210

def body912_212 : Prog (BitVec 64) :=
.seq body912_33 body912_211

def body912_213 : Prog (BitVec 64) :=
.seq body912_75 body912_212

def body912_214 : Prog (BitVec 64) :=
.seq body912_33 body912_213

def body912_215 : Prog (BitVec 64) :=
.seq body912_4 body912_214

def body912_216 : Prog (BitVec 64) :=
.seq body912_72 body912_215

def body912_217 : Prog (BitVec 64) :=
.seq body912_4 body912_216

def body912_218 : Prog (BitVec 64) :=
.decCall ("aa") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]) body912_217

def body912_219 : Prog (BitVec 64) :=
.seq body912_71 body912_218

def body912_220 : Prog (BitVec 64) :=
.seq body912_70 body912_219

def body912_221 : Prog (BitVec 64) :=
.seq body912_69 body912_220

def body912_222 : Prog (BitVec 64) :=
.seq body912_68 body912_221

def body912_223 : Prog (BitVec 64) :=
.seq body912_67 body912_222

def body912_224 : Prog (BitVec 64) :=
.seq body912_66 body912_223

def body912_225 : Prog (BitVec 64) :=
.seq body912_65 body912_224

def body912_226 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("msg_new") ([]) body912_225

def body912_227 : Prog (BitVec 64) :=
.seq body912_4 body912_226

def body912_228 : Prog (BitVec 64) :=
.seq body912_64 body912_227

def body912_229 : Prog (BitVec 64) :=
.seq body912_63 body912_228

def body912_230 : Prog (BitVec 64) :=
.seq body912_62 body912_229

def body912_231 : Prog (BitVec 64) :=
.seq body912_61 body912_230

def body912_232 : Prog (BitVec 64) :=
.decCall ("txh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body912_231

def body912_233 : Prog (BitVec 64) :=
.seq body912_60 body912_232

def body912_234 : Prog (BitVec 64) :=
.seq body912_59 body912_233

def body912_235 : Prog (BitVec 64) :=
.seq body912_58 body912_234

def body912_236 : Prog (BitVec 64) :=
.decCall ("issc") (Flapjack.Shape.one) ("tx_is_setcode") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body912_235

def body912_237 : Prog (BitVec 64) :=
.seq body912_54 body912_236

def body912_238 : Prog (BitVec 64) :=
.decCall ("isb") (Flapjack.Shape.one) ("tx_is_blob") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body912_237

def body912_239 : Prog (BitVec 64) :=
.seq body912_50 body912_238

def body912_240 : Prog (BitVec 64) :=
.seq body912_49 body912_239

def body912_241 : Prog (BitVec 64) :=
.seq body912_48 body912_240

def body912_242 : Prog (BitVec 64) :=
.seq body912_47 body912_241

def body912_243 : Prog (BitVec 64) :=
.seq body912_46 body912_242

def body912_244 : Prog (BitVec 64) :=
.seq body912_33 body912_243

def body912_245 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body912_244

def body912_246 : Prog (BitVec 64) :=
.decCall ("al_keys") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nkeys", Flapjack.Exp.const 52#64],
      Flapjack.Exp.const 8#64]]) body912_245

def body912_247 : Prog (BitVec 64) :=
.seq body912_32 body912_246

def body912_248 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body912_247

def body912_249 : Prog (BitVec 64) :=
.dec ("nkeys") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body912_248

def body912_250 : Prog (BitVec 64) :=
.seq body912_25 body912_249

def body912_251 : Prog (BitVec 64) :=
.decCall ("al_addrs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nal", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) body912_250

def body912_252 : Prog (BitVec 64) :=
.seq body912_24 body912_251

def body912_253 : Prog (BitVec 64) :=
.decCall ("hal") (Flapjack.Shape.one) ("tx_has_access_list") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body912_252

def body912_254 : Prog (BitVec 64) :=
.dec ("nal") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body912_253

def body912_255 : Prog (BitVec 64) :=
.seq body912_22 body912_254

def body912_256 : Prog (BitVec 64) :=
.seq body912_21 body912_255

def body912_257 : Prog (BitVec 64) :=
.seq body912_20 body912_256

def body912_258 : Prog (BitVec 64) :=
.seq body912_19 body912_257

def body912_259 : Prog (BitVec 64) :=
.seq body912_18 body912_258

def body912_260 : Prog (BitVec 64) :=
.seq body912_17 body912_259

def body912_261 : Prog (BitVec 64) :=
.decCall ("te") (Flapjack.Shape.one) ("te_new") ([]) body912_260

def body912_262 : Prog (BitVec 64) :=
.seq body912_4 body912_261

def body912_263 : Prog (BitVec 64) :=
.seq body912_16 body912_262

def body912_264 : Prog (BitVec 64) :=
.seq body912_15 body912_263

def body912_265 : Prog (BitVec 64) :=
.seq body912_14 body912_264

def body912_266 : Prog (BitVec 64) :=
.dec ("bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 8#64])) body912_265

def body912_267 : Prog (BitVec 64) :=
.seq body912_13 body912_266

def body912_268 : Prog (BitVec 64) :=
.dec ("reservoir") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "execution_gas", Flapjack.Exp.var Flapjack.VarKind.local "mgas"]) body912_267

def body912_269 : Prog (BitVec 64) :=
.decCall ("mgas") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.var Flapjack.VarKind.local "regular_budget", Flapjack.Exp.var Flapjack.VarKind.local "execution_gas"]) body912_268

def body912_270 : Prog (BitVec 64) :=
.dec ("regular_budget") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.const 16777216#64, Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body912_269

def body912_271 : Prog (BitVec 64) :=
.dec ("execution_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "intrinsic_gas"]) body912_270

def body912_272 : Prog (BitVec 64) :=
.dec ("effective_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "egf")]) body912_271

def body912_273 : Prog (BitVec 64) :=
.decCall ("egf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "price"]) body912_272

def body912_274 : Prog (BitVec 64) :=
.dec ("gas") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])) body912_273

def body912_275 : Prog (BitVec 64) :=
.seq body912_12 body912_274

def body912_276 : Prog (BitVec 64) :=
.dec ("blob_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body912_275

def body912_277 : Prog (BitVec 64) :=
.seq body912_4 body912_276

def body912_278 : Prog (BitVec 64) :=
.decCall ("acct") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body912_277

def body912_279 : Prog (BitVec 64) :=
.decCall ("tx_blob_gas_used") (Flapjack.Shape.one) ("calculate_total_blob_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body912_278

def body912_280 : Prog (BitVec 64) :=
.seq body912_4 body912_279

def body912_281 : Prog (BitVec 64) :=
.decCall ("price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("check_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body912_280

def body912_282 : Prog (BitVec 64) :=
.dec ("intrinsic_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body912_281

def body912_283 : Prog (BitVec 64) :=
.seq body912_4 body912_282

def body912_284 : Prog (BitVec 64) :=
.decCall ("intrinsic") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("validate_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body912_283

def body912_285 : Prog (BitVec 64) :=
.seq body912_4 body912_284

def body912_286 : Prog (BitVec 64) :=
.seq body912_8 body912_285

def body912_287 : Prog (BitVec 64) :=
.decCall ("sender") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) body912_286

def body912_288 : Prog (BitVec 64) :=
.seq body912_7 body912_287

def body912_289 : Prog (BitVec 64) :=
.decCall ("cid") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_chain_id") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body912_288

def body912_290 : Prog (BitVec 64) :=
.seq body912_4 body912_289

def body912_291 : Prog (BitVec 64) :=
.seq body912_3 body912_290

def body912_292 : Prog (BitVec 64) :=
.seq body912_2 body912_291

def body912_293 : Prog (BitVec 64) :=
.decCall ("enc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body912_292

def body912_294 : Prog (BitVec 64) :=
.seq body912_1 body912_293

def body912_295 : Prog (BitVec 64) :=
.seq body912_0 body912_294

def body912_296 : Prog (BitVec 64) :=
.seq body912_0 body912_1

def body912_297 : Prog (BitVec 64) :=
.seq body912_2 body912_3

def body912_298 : Prog (BitVec 64) :=
.seq body912_14 body912_15

def body912_299 : Prog (BitVec 64) :=
.seq body912_298 body912_16

def body912_300 : Prog (BitVec 64) :=
.seq body912_17 body912_18

def body912_301 : Prog (BitVec 64) :=
.seq body912_300 body912_19

def body912_302 : Prog (BitVec 64) :=
.seq body912_301 body912_20

def body912_303 : Prog (BitVec 64) :=
.seq body912_302 body912_21

def body912_304 : Prog (BitVec 64) :=
.seq body912_303 body912_22

def body912_305 : Prog (BitVec 64) :=
.seq body912_26 body912_27

def body912_306 : Prog (BitVec 64) :=
.seq body912_305 body912_28

def body912_307 : Prog (BitVec 64) :=
.dec ("acc") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) body912_306

def body912_308 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nal")) body912_307

def body912_309 : Prog (BitVec 64) :=
.seq body912_34 body912_35

def body912_310 : Prog (BitVec 64) :=
.seq body912_309 body912_36

def body912_311 : Prog (BitVec 64) :=
.seq body912_310 body912_37

def body912_312 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "ns")) body912_311

def body912_313 : Prog (BitVec 64) :=
.seq body912_312 body912_28

def body912_314 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body912_313

def body912_315 : Prog (BitVec 64) :=
.dec ("ns") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc2", Flapjack.Exp.const 16#64])) body912_314

def body912_316 : Prog (BitVec 64) :=
.dec ("acc2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) body912_315

def body912_317 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nal")) body912_316

def body912_318 : Prog (BitVec 64) :=
.seq body912_33 body912_317

def body912_319 : Prog (BitVec 64) :=
.seq body912_318 body912_47

def body912_320 : Prog (BitVec 64) :=
.seq body912_319 body912_48

def body912_321 : Prog (BitVec 64) :=
.seq body912_320 body912_49

def body912_322 : Prog (BitVec 64) :=
.seq body912_321 body912_50

def body912_323 : Prog (BitVec 64) :=
.seq body912_58 body912_59

def body912_324 : Prog (BitVec 64) :=
.seq body912_323 body912_60

def body912_325 : Prog (BitVec 64) :=
.seq body912_61 body912_62

def body912_326 : Prog (BitVec 64) :=
.seq body912_325 body912_63

def body912_327 : Prog (BitVec 64) :=
.seq body912_326 body912_64

def body912_328 : Prog (BitVec 64) :=
.seq body912_65 body912_66

def body912_329 : Prog (BitVec 64) :=
.seq body912_328 body912_67

def body912_330 : Prog (BitVec 64) :=
.seq body912_329 body912_68

def body912_331 : Prog (BitVec 64) :=
.seq body912_330 body912_69

def body912_332 : Prog (BitVec 64) :=
.seq body912_331 body912_70

def body912_333 : Prog (BitVec 64) :=
.seq body912_332 body912_71

def body912_334 : Prog (BitVec 64) :=
.seq body912_72 body912_33

def body912_335 : Prog (BitVec 64) :=
.seq body912_334 body912_75

def body912_336 : Prog (BitVec 64) :=
.seq body912_335 body912_33

def body912_337 : Prog (BitVec 64) :=
.seq body912_336 body912_78

def body912_338 : Prog (BitVec 64) :=
.seq body912_33 body912_81

def body912_339 : Prog (BitVec 64) :=
.seq body912_82 body912_83

def body912_340 : Prog (BitVec 64) :=
.seq body912_339 body912_84

def body912_341 : Prog (BitVec 64) :=
.seq body912_340 body912_85

def body912_342 : Prog (BitVec 64) :=
.seq body912_341 body912_86

def body912_343 : Prog (BitVec 64) :=
.seq body912_342 body912_87

def body912_344 : Prog (BitVec 64) :=
.seq body912_343 body912_88

def body912_345 : Prog (BitVec 64) :=
.decCall ("ct") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) body912_344

def body912_346 : Prog (BitVec 64) :=
.decCall ("sa") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body912_345

def body912_347 : Prog (BitVec 64) :=
.seq body912_97 body912_98

def body912_348 : Prog (BitVec 64) :=
.seq body912_347 body912_99

def body912_349 : Prog (BitVec 64) :=
.seq body912_348 body912_100

def body912_350 : Prog (BitVec 64) :=
.seq body912_349 body912_101

def body912_351 : Prog (BitVec 64) :=
.seq body912_350 body912_102

def body912_352 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))
  (Flapjack.Exp.const 0#64)) body912_346 body912_351

def body912_353 : Prog (BitVec 64) :=
.seq body912_352 body912_109

def body912_354 : Prog (BitVec 64) :=
.seq body912_353 body912_110

def body912_355 : Prog (BitVec 64) :=
.seq body912_354 body912_111

def body912_356 : Prog (BitVec 64) :=
.seq body912_355 body912_112

def body912_357 : Prog (BitVec 64) :=
.seq body912_113 body912_114

def body912_358 : Prog (BitVec 64) :=
.seq body912_117 body912_118

def body912_359 : Prog (BitVec 64) :=
.seq body912_358 body912_119

def body912_360 : Prog (BitVec 64) :=
.seq body912_359 body912_120

def body912_361 : Prog (BitVec 64) :=
.seq body912_125 body912_126

def body912_362 : Prog (BitVec 64) :=
.seq body912_33 body912_130

def body912_363 : Prog (BitVec 64) :=
.seq body912_33 body912_136

def body912_364 : Prog (BitVec 64) :=
.seq body912_145 body912_146

def body912_365 : Prog (BitVec 64) :=
.seq body912_364 body912_153

def body912_366 : Prog (BitVec 64) :=
.dec ("del") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 24#64])) body912_365

def body912_367 : Prog (BitVec 64) :=
.seq body912_137 body912_366

def body912_368 : Prog (BitVec 64) :=
.decCall ("rl") (Flapjack.Shape.one) ("lst_push") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 72#64]),
  Flapjack.Exp.const 8#64]) body912_367

def body912_369 : Prog (BitVec 64) :=
.seq body912_363 body912_368

def body912_370 : Prog (BitVec 64) :=
.dec ("stable_lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stable_logs", Flapjack.Exp.const 0#64])) body912_369

def body912_371 : Prog (BitVec 64) :=
.seq body912_133 body912_370

def body912_372 : Prog (BitVec 64) :=
.decCall ("stable_logs") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.var Flapjack.VarKind.local "stable_log_cap"]) body912_371

def body912_373 : Prog (BitVec 64) :=
.seq body912_132 body912_372

def body912_374 : Prog (BitVec 64) :=
.dec ("stable_log_cap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "nl") body912_373

def body912_375 : Prog (BitVec 64) :=
.seq body912_362 body912_374

def body912_376 : Prog (BitVec 64) :=
.dec ("lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 0#64])) body912_375

def body912_377 : Prog (BitVec 64) :=
.dec ("nl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 8#64])) body912_376

def body912_378 : Prog (BitVec 64) :=
.seq body912_361 body912_377

def body912_379 : Prog (BitVec 64) :=
.decCall ("rc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_receipt") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "succeeded",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 16#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "logs"]) body912_378

def body912_380 : Prog (BitVec 64) :=
.seq body912_124 body912_379

def body912_381 : Prog (BitVec 64) :=
.dec ("succeeded") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body912_380

def body912_382 : Prog (BitVec 64) :=
.seq body912_122 body912_381

def body912_383 : Prog (BitVec 64) :=
.dec ("logs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64])) body912_382

def body912_384 : Prog (BitVec 64) :=
.seq body912_360 body912_383

def body912_385 : Prog (BitVec 64) :=
.decCall ("tx_regular_gas") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund",
      Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas_nat"],
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body912_384

def body912_386 : Prog (BitVec 64) :=
.seq body912_116 body912_385

def body912_387 : Prog (BitVec 64) :=
.dec ("tx_state_gas_nat") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas") body912_386

def body912_388 : Prog (BitVec 64) :=
.dec ("tx_state_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 72#64])]) body912_387

def body912_389 : Prog (BitVec 64) :=
.seq body912_357 body912_388

def body912_390 : Prog (BitVec 64) :=
.decCall ("tf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used", Flapjack.Exp.var Flapjack.VarKind.local "priority_fee"]) body912_389

def body912_391 : Prog (BitVec 64) :=
.decCall ("priority_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "price",
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 48#64])]) body912_390

def body912_392 : Prog (BitVec 64) :=
.decCall ("gra") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_left", Flapjack.Exp.var Flapjack.VarKind.local "price"]) body912_391

def body912_393 : Prog (BitVec 64) :=
.dec ("tx_gas_left") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used"]) body912_392

def body912_394 : Prog (BitVec 64) :=
.decCall ("tx_gas_used") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "used_after_refund",
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body912_393

def body912_395 : Prog (BitVec 64) :=
.dec ("used_after_refund") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund", Flapjack.Exp.var Flapjack.VarKind.local "refund"]) body912_394

def body912_396 : Prog (BitVec 64) :=
.decCall ("refund") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.var Flapjack.VarKind.local "ubr5",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 8#64])]) body912_395

def body912_397 : Prog (BitVec 64) :=
.decCall ("ubr5") (Flapjack.Shape.one) ("udiv_small5") ([Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund"]) body912_396

def body912_398 : Prog (BitVec 64) :=
.dec ("used_before_refund") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "gas",
        Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 0#64])],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 56#64])]) body912_397

def body912_399 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("process_message_call") ([Flapjack.Exp.var Flapjack.VarKind.local "m"]) body912_398

def body912_400 : Prog (BitVec 64) :=
.seq body912_356 body912_399

def body912_401 : Prog (BitVec 64) :=
.decCall ("empty") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) body912_400

def body912_402 : Prog (BitVec 64) :=
.seq body912_338 body912_401

def body912_403 : Prog (BitVec 64) :=
.decCall ("ak") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 52#64, Flapjack.Exp.const 16#64]) body912_402

def body912_404 : Prog (BitVec 64) :=
.seq body912_337 body912_403

def body912_405 : Prog (BitVec 64) :=
.decCall ("aa") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]) body912_404

def body912_406 : Prog (BitVec 64) :=
.seq body912_333 body912_405

def body912_407 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("msg_new") ([]) body912_406

def body912_408 : Prog (BitVec 64) :=
.seq body912_327 body912_407

def body912_409 : Prog (BitVec 64) :=
.decCall ("txh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body912_408

def body912_410 : Prog (BitVec 64) :=
.seq body912_324 body912_409

def body912_411 : Prog (BitVec 64) :=
.decCall ("issc") (Flapjack.Shape.one) ("tx_is_setcode") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body912_410

def body912_412 : Prog (BitVec 64) :=
.seq body912_54 body912_411

def body912_413 : Prog (BitVec 64) :=
.decCall ("isb") (Flapjack.Shape.one) ("tx_is_blob") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body912_412

def body912_414 : Prog (BitVec 64) :=
.seq body912_322 body912_413

def body912_415 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body912_414

def body912_416 : Prog (BitVec 64) :=
.decCall ("al_keys") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nkeys", Flapjack.Exp.const 52#64],
      Flapjack.Exp.const 8#64]]) body912_415

def body912_417 : Prog (BitVec 64) :=
.seq body912_308 body912_416

def body912_418 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body912_417

def body912_419 : Prog (BitVec 64) :=
.dec ("nkeys") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body912_418

def body912_420 : Prog (BitVec 64) :=
.seq body912_25 body912_419

def body912_421 : Prog (BitVec 64) :=
.decCall ("al_addrs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nal", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) body912_420

def body912_422 : Prog (BitVec 64) :=
.seq body912_24 body912_421

def body912_423 : Prog (BitVec 64) :=
.decCall ("hal") (Flapjack.Shape.one) ("tx_has_access_list") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body912_422

def body912_424 : Prog (BitVec 64) :=
.dec ("nal") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body912_423

def body912_425 : Prog (BitVec 64) :=
.seq body912_304 body912_424

def body912_426 : Prog (BitVec 64) :=
.decCall ("te") (Flapjack.Shape.one) ("te_new") ([]) body912_425

def body912_427 : Prog (BitVec 64) :=
.seq body912_299 body912_426

def body912_428 : Prog (BitVec 64) :=
.dec ("bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 8#64])) body912_427

def body912_429 : Prog (BitVec 64) :=
.seq body912_13 body912_428

def body912_430 : Prog (BitVec 64) :=
.dec ("reservoir") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "execution_gas", Flapjack.Exp.var Flapjack.VarKind.local "mgas"]) body912_429

def body912_431 : Prog (BitVec 64) :=
.decCall ("mgas") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.var Flapjack.VarKind.local "regular_budget", Flapjack.Exp.var Flapjack.VarKind.local "execution_gas"]) body912_430

def body912_432 : Prog (BitVec 64) :=
.dec ("regular_budget") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.const 16777216#64, Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body912_431

def body912_433 : Prog (BitVec 64) :=
.dec ("execution_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "intrinsic_gas"]) body912_432

def body912_434 : Prog (BitVec 64) :=
.dec ("effective_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "egf")]) body912_433

def body912_435 : Prog (BitVec 64) :=
.decCall ("egf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "price"]) body912_434

def body912_436 : Prog (BitVec 64) :=
.dec ("gas") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])) body912_435

def body912_437 : Prog (BitVec 64) :=
.seq body912_12 body912_436

def body912_438 : Prog (BitVec 64) :=
.dec ("blob_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body912_437

def body912_439 : Prog (BitVec 64) :=
.decCall ("acct") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body912_438

def body912_440 : Prog (BitVec 64) :=
.decCall ("tx_blob_gas_used") (Flapjack.Shape.one) ("calculate_total_blob_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body912_439

def body912_441 : Prog (BitVec 64) :=
.decCall ("price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("check_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body912_440

def body912_442 : Prog (BitVec 64) :=
.dec ("intrinsic_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body912_441

def body912_443 : Prog (BitVec 64) :=
.decCall ("intrinsic") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("validate_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body912_442

def body912_444 : Prog (BitVec 64) :=
.seq body912_8 body912_443

def body912_445 : Prog (BitVec 64) :=
.decCall ("sender") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) body912_444

def body912_446 : Prog (BitVec 64) :=
.seq body912_7 body912_445

def body912_447 : Prog (BitVec 64) :=
.decCall ("cid") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_chain_id") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body912_446

def body912_448 : Prog (BitVec 64) :=
.seq body912_297 body912_447

def body912_449 : Prog (BitVec 64) :=
.decCall ("enc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body912_448

def body912_450 : Prog (BitVec 64) :=
.seq body912_296 body912_449

def originalData912 : Decl (BitVec 64) :=
.function { name := "process_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("index", Flapjack.Shape.one)], body := body912_295, returnShape := (Flapjack.Shape.one) }
def simplifiedData912 : Decl (BitVec 64) :=
.function { name := "process_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("index", Flapjack.Shape.one)], body := body912_450, returnShape := (Flapjack.Shape.one) }
def original912 := Pancake.PanLang.declToHOL originalData912
def simplified912 := Pancake.PanLang.declToHOL simplifiedData912
end InitECandidate.Proofs.FrontendStages.Declarations
