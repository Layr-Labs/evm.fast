import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify858
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body874_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_fresh_tx" []

def body874_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "bal_index"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 1#64])

def body874_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 24#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64]])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "enc"))

def body874_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 24#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "enc"))

def body874_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body874_5 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 100#64)

def body874_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "cid"))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 0#64]))) body874_5 body874_4

def body874_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "cid"))
  (Flapjack.Exp.const 0#64)) body874_6 body874_4

def body874_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "recover_sender_with_chain_id"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 0#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "sender"]

def body874_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "blob_gas_fee"
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bgf"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "bgf"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "bgf"),
      Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "bgf")])

def body874_10 : Prog (BitVec 64) :=
.decCall ("bgf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas_used", Flapjack.Exp.var Flapjack.VarKind.local "bgp"]) body874_9

def body874_11 : Prog (BitVec 64) :=
.decCall ("bgp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_blob_gas_price") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 96#64])]) body874_10

def body874_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas_used")
  (Flapjack.Exp.const 0#64)) body874_11 body874_4

def body874_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "increment_nonce" [Flapjack.Exp.var Flapjack.VarKind.local "sender"]

def body874_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "bal"), none)) "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "bal", Flapjack.Exp.var Flapjack.VarKind.local "effective_gas_fee"]

def body874_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "bal"), none)) "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "bal", Flapjack.Exp.var Flapjack.VarKind.local "blob_gas_fee"]

def body874_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_account_balance"
  [Flapjack.Exp.var Flapjack.VarKind.local "sender", Flapjack.Exp.var Flapjack.VarKind.local "bal"]

def body874_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "sender")

def body874_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def body874_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64]))

def body874_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "price")

def body874_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "mgas")

def body874_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "reservoir")

def body874_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nal"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 216#64]))

def body874_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "hal") (Flapjack.Exp.const 0#64)) body874_23 body874_4

def body874_25 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "al_addrs")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 32#64]))

def body874_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "al_addrs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.const 0#64]))

def body874_27 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nkeys"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nkeys",
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.const 16#64])])

def body874_28 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body874_29 : Prog (BitVec 64) :=
.seq body874_27 body874_28

def body874_30 : Prog (BitVec 64) :=
.seq body874_26 body874_29

def body874_31 : Prog (BitVec 64) :=
.dec ("acc") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) body874_30

def body874_32 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nal")) body874_31

def body874_33 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def body874_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "al_keys",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 52#64]],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc2", Flapjack.Exp.const 0#64]),
    Flapjack.Exp.const 20#64]

def body874_35 : Prog (BitVec 64) :=
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

def body874_36 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def body874_37 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body874_38 : Prog (BitVec 64) :=
.seq body874_36 body874_37

def body874_39 : Prog (BitVec 64) :=
.seq body874_35 body874_38

def body874_40 : Prog (BitVec 64) :=
.seq body874_34 body874_39

def body874_41 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "ns")) body874_40

def body874_42 : Prog (BitVec 64) :=
.seq body874_41 body874_28

def body874_43 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body874_42

def body874_44 : Prog (BitVec 64) :=
.dec ("ns") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc2", Flapjack.Exp.const 16#64])) body874_43

def body874_45 : Prog (BitVec 64) :=
.dec ("acc2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) body874_44

def body874_46 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nal")) body874_45

def body874_47 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "al_addrs")

def body874_48 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nal", Flapjack.Exp.const 1#64])

def body874_49 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "al_keys")

def body874_50 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nkeys")

def body874_51 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 256#64]))

def body874_52 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64]))

def body874_53 : Prog (BitVec 64) :=
.seq body874_51 body874_52

def body874_54 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "isb") (Flapjack.Exp.const 0#64)) body874_53 body874_4

def body874_55 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 272#64]))

def body874_56 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 280#64]))

def body874_57 : Prog (BitVec 64) :=
.seq body874_55 body874_56

def body874_58 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "issc") (Flapjack.Exp.const 0#64)) body874_57 body874_4

def body874_59 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.const 1#64)

def body874_60 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "index")

def body874_61 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "enc"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "enc"),
    Flapjack.Exp.var Flapjack.VarKind.local "txh"]

def body874_62 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 176#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "txh")

def body874_63 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 184#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"))

def body874_64 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"))

def body874_65 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "be")

def body874_66 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "te")

def body874_67 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "sender")

def body874_68 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def body874_69 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "mgas")

def body874_70 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "reservoir")

def body874_71 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64]))

def body874_72 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa", Flapjack.Exp.var Flapjack.VarKind.local "sender",
    Flapjack.Exp.const 1#64]

def body874_73 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "precompile_addrs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 20#64]],
    Flapjack.Exp.const 1#64]

def body874_74 : Prog (BitVec 64) :=
.seq body874_73 body874_28

def body874_75 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 18#64)) body874_74

def body874_76 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "al_addrs",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.const 1#64]

def body874_77 : Prog (BitVec 64) :=
.seq body874_76 body874_28

def body874_78 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nal", Flapjack.Exp.const 1#64])) body874_77

def body874_79 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "ak",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "al_keys",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 52#64]],
    Flapjack.Exp.const 1#64]

def body874_80 : Prog (BitVec 64) :=
.seq body874_79 body874_28

def body874_81 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nkeys")) body874_80

def body874_82 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "compute_contract_address"
  [Flapjack.Exp.var Flapjack.VarKind.local "sender",
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sa", Flapjack.Exp.const 0#64]),
        Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "ct"]

def body874_83 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ct")

def body874_84 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "empty")

def body874_85 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.const 0#64)

def body874_86 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 192#64]))

def body874_87 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64]))

def body874_88 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 0#64)

def body874_89 : Prog (BitVec 64) :=
.seq body874_87 body874_88

def body874_90 : Prog (BitVec 64) :=
.seq body874_86 body874_89

def body874_91 : Prog (BitVec 64) :=
.seq body874_85 body874_90

def body874_92 : Prog (BitVec 64) :=
.seq body874_84 body874_91

def body874_93 : Prog (BitVec 64) :=
.seq body874_83 body874_92

def body874_94 : Prog (BitVec 64) :=
.seq body874_82 body874_93

def body874_95 : Prog (BitVec 64) :=
.decCall ("ct") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) body874_94

def body874_96 : Prog (BitVec 64) :=
.decCall ("sa") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body874_95

def body874_97 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def body874_98 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 192#64]))

def body874_99 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64]))

def body874_100 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "empty")

def body874_101 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.const 0#64)

def body874_102 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def body874_103 : Prog (BitVec 64) :=
.seq body874_101 body874_102

def body874_104 : Prog (BitVec 64) :=
.seq body874_100 body874_103

def body874_105 : Prog (BitVec 64) :=
.seq body874_99 body874_104

def body874_106 : Prog (BitVec 64) :=
.seq body874_98 body874_105

def body874_107 : Prog (BitVec 64) :=
.seq body874_97 body874_106

def body874_108 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))
  (Flapjack.Exp.const 0#64)) body874_96 body874_107

def body874_109 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.const 1#64)

def body874_110 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 1#64]

def body874_111 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "aa")

def body874_112 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ak")

def body874_113 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "create_ether"
  [Flapjack.Exp.var Flapjack.VarKind.local "sender",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "gra"),
        Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "gra"),
        Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "gra"),
        Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "gra")]]

def body874_114 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "create_ether"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "tf"),
        Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "tf"),
        Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "tf"),
        Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "tf")]]

def body874_115 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "tx_state_gas_nat" (Flapjack.Exp.const 0#64)

def body874_116 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas") (Flapjack.Exp.const 0#64)) body874_115 body874_4

def body874_117 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 0#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_regular_gas"])

def body874_118 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 8#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas_nat"])

def body874_119 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 48#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas_used"])

def body874_120 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 16#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used"])

def body874_121 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "logs"), none)) "lst_new"
  [Flapjack.Exp.const 8#64, Flapjack.Exp.const 1#64]

def body874_122 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "logs") (Flapjack.Exp.const 0#64)) body874_121 body874_4

def body874_123 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "succeeded" (Flapjack.Exp.const 0#64)

def body874_124 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]))
  (Flapjack.Exp.const 0#64)) body874_123 body874_4

def body874_125 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 32#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64]])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "rc"))

def body874_126 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 32#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "rc"))

def body874_127 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "slot")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "lp",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]))

def body874_128 : Prog (BitVec 64) :=
.seq body874_127 body874_28

def body874_129 : Prog (BitVec 64) :=
.decCall ("slot") (Flapjack.Shape.one) ("lst_push") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 40#64]),
  Flapjack.Exp.const 8#64]) body874_128

def body874_130 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")) body874_129

def body874_131 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "stable_log_cap" (Flapjack.Exp.const 1#64)

def body874_132 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "stable_log_cap") (Flapjack.Exp.const 0#64)) body874_131 body874_4

def body874_133 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stable_logs", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")

def body874_134 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "stable_lp",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "lp",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]))

def body874_135 : Prog (BitVec 64) :=
.seq body874_134 body874_28

def body874_136 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")) body874_135

def body874_137 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "rl")
  (Flapjack.Exp.var Flapjack.VarKind.local "stable_logs")

def body874_138 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "clear_account_preserving_balance"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s")]

def body874_139 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) body874_138 body874_4

def body874_140 : Prog (BitVec 64) :=
.seq body874_139 body874_28

def body874_141 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "del", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body874_140

def body874_142 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "dcap")) body874_141

def body874_143 : Prog (BitVec 64) :=
.seq body874_33 body874_142

def body874_144 : Prog (BitVec 64) :=
.dec ("dcap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "del", Flapjack.Exp.const 24#64])) body874_143

def body874_145 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "del") (Flapjack.Exp.const 0#64)) body874_144 body874_4

def body874_146 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "incorporate_tx_into_block" []

def body874_147 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "tx_frame_mark"]

def body874_148 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_mem_release"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 88#64])]

def body874_149 : Prog (BitVec 64) :=
.seq body874_147 body874_148

def body874_150 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "tx_frame_mark")
  (Flapjack.Exp.const 0#64)) body874_149 body874_4

def body874_151 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body874_152 : Prog (BitVec 64) :=
.seq body874_150 body874_151

def body874_153 : Prog (BitVec 64) :=
.dec ("tx_frame_mark") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 80#64])) body874_152

def body874_154 : Prog (BitVec 64) :=
.seq body874_146 body874_153

def body874_155 : Prog (BitVec 64) :=
.seq body874_145 body874_154

def body874_156 : Prog (BitVec 64) :=
.dec ("del") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 24#64])) body874_155

def body874_157 : Prog (BitVec 64) :=
.seq body874_137 body874_156

def body874_158 : Prog (BitVec 64) :=
.decCall ("rl") (Flapjack.Shape.one) ("lst_push") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 72#64]),
  Flapjack.Exp.const 8#64]) body874_157

def body874_159 : Prog (BitVec 64) :=
.seq body874_136 body874_158

def body874_160 : Prog (BitVec 64) :=
.seq body874_33 body874_159

def body874_161 : Prog (BitVec 64) :=
.dec ("stable_lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stable_logs", Flapjack.Exp.const 0#64])) body874_160

def body874_162 : Prog (BitVec 64) :=
.seq body874_133 body874_161

def body874_163 : Prog (BitVec 64) :=
.decCall ("stable_logs") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.var Flapjack.VarKind.local "stable_log_cap"]) body874_162

def body874_164 : Prog (BitVec 64) :=
.seq body874_132 body874_163

def body874_165 : Prog (BitVec 64) :=
.dec ("stable_log_cap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "nl") body874_164

def body874_166 : Prog (BitVec 64) :=
.seq body874_130 body874_165

def body874_167 : Prog (BitVec 64) :=
.seq body874_33 body874_166

def body874_168 : Prog (BitVec 64) :=
.dec ("lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 0#64])) body874_167

def body874_169 : Prog (BitVec 64) :=
.dec ("nl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 8#64])) body874_168

def body874_170 : Prog (BitVec 64) :=
.seq body874_126 body874_169

def body874_171 : Prog (BitVec 64) :=
.seq body874_125 body874_170

def body874_172 : Prog (BitVec 64) :=
.decCall ("rc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_receipt") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "succeeded",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 16#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "logs"]) body874_171

def body874_173 : Prog (BitVec 64) :=
.seq body874_124 body874_172

def body874_174 : Prog (BitVec 64) :=
.dec ("succeeded") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body874_173

def body874_175 : Prog (BitVec 64) :=
.seq body874_122 body874_174

def body874_176 : Prog (BitVec 64) :=
.dec ("logs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64])) body874_175

def body874_177 : Prog (BitVec 64) :=
.seq body874_4 body874_176

def body874_178 : Prog (BitVec 64) :=
.seq body874_120 body874_177

def body874_179 : Prog (BitVec 64) :=
.seq body874_119 body874_178

def body874_180 : Prog (BitVec 64) :=
.seq body874_118 body874_179

def body874_181 : Prog (BitVec 64) :=
.seq body874_117 body874_180

def body874_182 : Prog (BitVec 64) :=
.decCall ("tx_regular_gas") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund",
      Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas_nat"],
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body874_181

def body874_183 : Prog (BitVec 64) :=
.seq body874_116 body874_182

def body874_184 : Prog (BitVec 64) :=
.dec ("tx_state_gas_nat") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas") body874_183

def body874_185 : Prog (BitVec 64) :=
.dec ("tx_state_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 72#64])]) body874_184

def body874_186 : Prog (BitVec 64) :=
.seq body874_114 body874_185

def body874_187 : Prog (BitVec 64) :=
.seq body874_113 body874_186

def body874_188 : Prog (BitVec 64) :=
.decCall ("tf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used", Flapjack.Exp.var Flapjack.VarKind.local "priority_fee"]) body874_187

def body874_189 : Prog (BitVec 64) :=
.decCall ("priority_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "price",
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 48#64])]) body874_188

def body874_190 : Prog (BitVec 64) :=
.decCall ("gra") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_left", Flapjack.Exp.var Flapjack.VarKind.local "price"]) body874_189

def body874_191 : Prog (BitVec 64) :=
.dec ("tx_gas_left") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used"]) body874_190

def body874_192 : Prog (BitVec 64) :=
.decCall ("tx_gas_used") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "used_after_refund",
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body874_191

def body874_193 : Prog (BitVec 64) :=
.dec ("used_after_refund") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund", Flapjack.Exp.var Flapjack.VarKind.local "refund"]) body874_192

def body874_194 : Prog (BitVec 64) :=
.decCall ("refund") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.var Flapjack.VarKind.local "ubr5",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 8#64])]) body874_193

def body874_195 : Prog (BitVec 64) :=
.decCall ("ubr5") (Flapjack.Shape.one) ("udiv_small5") ([Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund"]) body874_194

def body874_196 : Prog (BitVec 64) :=
.dec ("used_before_refund") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "gas",
        Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 0#64])],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 56#64])]) body874_195

def body874_197 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("process_message_call") ([Flapjack.Exp.var Flapjack.VarKind.local "m"]) body874_196

def body874_198 : Prog (BitVec 64) :=
.seq body874_112 body874_197

def body874_199 : Prog (BitVec 64) :=
.seq body874_111 body874_198

def body874_200 : Prog (BitVec 64) :=
.seq body874_4 body874_199

def body874_201 : Prog (BitVec 64) :=
.seq body874_110 body874_200

def body874_202 : Prog (BitVec 64) :=
.seq body874_109 body874_201

def body874_203 : Prog (BitVec 64) :=
.seq body874_4 body874_202

def body874_204 : Prog (BitVec 64) :=
.seq body874_108 body874_203

def body874_205 : Prog (BitVec 64) :=
.decCall ("empty") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) body874_204

def body874_206 : Prog (BitVec 64) :=
.seq body874_4 body874_205

def body874_207 : Prog (BitVec 64) :=
.seq body874_81 body874_206

def body874_208 : Prog (BitVec 64) :=
.seq body874_33 body874_207

def body874_209 : Prog (BitVec 64) :=
.decCall ("ak") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 52#64, Flapjack.Exp.const 16#64]) body874_208

def body874_210 : Prog (BitVec 64) :=
.seq body874_4 body874_209

def body874_211 : Prog (BitVec 64) :=
.seq body874_78 body874_210

def body874_212 : Prog (BitVec 64) :=
.seq body874_33 body874_211

def body874_213 : Prog (BitVec 64) :=
.seq body874_75 body874_212

def body874_214 : Prog (BitVec 64) :=
.seq body874_33 body874_213

def body874_215 : Prog (BitVec 64) :=
.seq body874_4 body874_214

def body874_216 : Prog (BitVec 64) :=
.seq body874_72 body874_215

def body874_217 : Prog (BitVec 64) :=
.seq body874_4 body874_216

def body874_218 : Prog (BitVec 64) :=
.decCall ("aa") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]) body874_217

def body874_219 : Prog (BitVec 64) :=
.seq body874_71 body874_218

def body874_220 : Prog (BitVec 64) :=
.seq body874_70 body874_219

def body874_221 : Prog (BitVec 64) :=
.seq body874_69 body874_220

def body874_222 : Prog (BitVec 64) :=
.seq body874_68 body874_221

def body874_223 : Prog (BitVec 64) :=
.seq body874_67 body874_222

def body874_224 : Prog (BitVec 64) :=
.seq body874_66 body874_223

def body874_225 : Prog (BitVec 64) :=
.seq body874_65 body874_224

def body874_226 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("msg_new") ([]) body874_225

def body874_227 : Prog (BitVec 64) :=
.seq body874_4 body874_226

def body874_228 : Prog (BitVec 64) :=
.seq body874_64 body874_227

def body874_229 : Prog (BitVec 64) :=
.seq body874_63 body874_228

def body874_230 : Prog (BitVec 64) :=
.seq body874_62 body874_229

def body874_231 : Prog (BitVec 64) :=
.seq body874_61 body874_230

def body874_232 : Prog (BitVec 64) :=
.decCall ("txh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body874_231

def body874_233 : Prog (BitVec 64) :=
.seq body874_60 body874_232

def body874_234 : Prog (BitVec 64) :=
.seq body874_59 body874_233

def body874_235 : Prog (BitVec 64) :=
.seq body874_58 body874_234

def body874_236 : Prog (BitVec 64) :=
.decCall ("issc") (Flapjack.Shape.one) ("tx_is_setcode") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body874_235

def body874_237 : Prog (BitVec 64) :=
.seq body874_54 body874_236

def body874_238 : Prog (BitVec 64) :=
.decCall ("isb") (Flapjack.Shape.one) ("tx_is_blob") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body874_237

def body874_239 : Prog (BitVec 64) :=
.seq body874_50 body874_238

def body874_240 : Prog (BitVec 64) :=
.seq body874_49 body874_239

def body874_241 : Prog (BitVec 64) :=
.seq body874_48 body874_240

def body874_242 : Prog (BitVec 64) :=
.seq body874_47 body874_241

def body874_243 : Prog (BitVec 64) :=
.seq body874_46 body874_242

def body874_244 : Prog (BitVec 64) :=
.seq body874_33 body874_243

def body874_245 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body874_244

def body874_246 : Prog (BitVec 64) :=
.decCall ("al_keys") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nkeys", Flapjack.Exp.const 52#64],
      Flapjack.Exp.const 8#64]]) body874_245

def body874_247 : Prog (BitVec 64) :=
.seq body874_32 body874_246

def body874_248 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body874_247

def body874_249 : Prog (BitVec 64) :=
.dec ("nkeys") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body874_248

def body874_250 : Prog (BitVec 64) :=
.seq body874_25 body874_249

def body874_251 : Prog (BitVec 64) :=
.decCall ("al_addrs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nal", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) body874_250

def body874_252 : Prog (BitVec 64) :=
.seq body874_24 body874_251

def body874_253 : Prog (BitVec 64) :=
.decCall ("hal") (Flapjack.Shape.one) ("tx_has_access_list") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body874_252

def body874_254 : Prog (BitVec 64) :=
.dec ("nal") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body874_253

def body874_255 : Prog (BitVec 64) :=
.seq body874_22 body874_254

def body874_256 : Prog (BitVec 64) :=
.seq body874_21 body874_255

def body874_257 : Prog (BitVec 64) :=
.seq body874_20 body874_256

def body874_258 : Prog (BitVec 64) :=
.seq body874_19 body874_257

def body874_259 : Prog (BitVec 64) :=
.seq body874_18 body874_258

def body874_260 : Prog (BitVec 64) :=
.seq body874_17 body874_259

def body874_261 : Prog (BitVec 64) :=
.decCall ("te") (Flapjack.Shape.one) ("te_new") ([]) body874_260

def body874_262 : Prog (BitVec 64) :=
.seq body874_4 body874_261

def body874_263 : Prog (BitVec 64) :=
.seq body874_16 body874_262

def body874_264 : Prog (BitVec 64) :=
.seq body874_15 body874_263

def body874_265 : Prog (BitVec 64) :=
.seq body874_14 body874_264

def body874_266 : Prog (BitVec 64) :=
.dec ("bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 8#64])) body874_265

def body874_267 : Prog (BitVec 64) :=
.seq body874_13 body874_266

def body874_268 : Prog (BitVec 64) :=
.dec ("reservoir") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "execution_gas", Flapjack.Exp.var Flapjack.VarKind.local "mgas"]) body874_267

def body874_269 : Prog (BitVec 64) :=
.decCall ("mgas") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.var Flapjack.VarKind.local "regular_budget", Flapjack.Exp.var Flapjack.VarKind.local "execution_gas"]) body874_268

def body874_270 : Prog (BitVec 64) :=
.dec ("regular_budget") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.const 16777216#64, Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body874_269

def body874_271 : Prog (BitVec 64) :=
.dec ("execution_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "intrinsic_gas"]) body874_270

def body874_272 : Prog (BitVec 64) :=
.dec ("effective_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "egf")]) body874_271

def body874_273 : Prog (BitVec 64) :=
.decCall ("egf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "price"]) body874_272

def body874_274 : Prog (BitVec 64) :=
.dec ("gas") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])) body874_273

def body874_275 : Prog (BitVec 64) :=
.seq body874_12 body874_274

def body874_276 : Prog (BitVec 64) :=
.dec ("blob_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body874_275

def body874_277 : Prog (BitVec 64) :=
.seq body874_4 body874_276

def body874_278 : Prog (BitVec 64) :=
.decCall ("acct") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body874_277

def body874_279 : Prog (BitVec 64) :=
.decCall ("tx_blob_gas_used") (Flapjack.Shape.one) ("calculate_total_blob_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body874_278

def body874_280 : Prog (BitVec 64) :=
.seq body874_4 body874_279

def body874_281 : Prog (BitVec 64) :=
.decCall ("price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("check_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body874_280

def body874_282 : Prog (BitVec 64) :=
.dec ("intrinsic_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body874_281

def body874_283 : Prog (BitVec 64) :=
.seq body874_4 body874_282

def body874_284 : Prog (BitVec 64) :=
.decCall ("intrinsic") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("validate_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body874_283

def body874_285 : Prog (BitVec 64) :=
.seq body874_4 body874_284

def body874_286 : Prog (BitVec 64) :=
.seq body874_8 body874_285

def body874_287 : Prog (BitVec 64) :=
.decCall ("sender") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) body874_286

def body874_288 : Prog (BitVec 64) :=
.seq body874_7 body874_287

def body874_289 : Prog (BitVec 64) :=
.decCall ("cid") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_chain_id") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body874_288

def body874_290 : Prog (BitVec 64) :=
.seq body874_4 body874_289

def body874_291 : Prog (BitVec 64) :=
.seq body874_3 body874_290

def body874_292 : Prog (BitVec 64) :=
.seq body874_2 body874_291

def body874_293 : Prog (BitVec 64) :=
.decCall ("enc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body874_292

def body874_294 : Prog (BitVec 64) :=
.seq body874_1 body874_293

def body874_295 : Prog (BitVec 64) :=
.seq body874_0 body874_294

def body874_296 : Prog (BitVec 64) :=
.seq body874_0 body874_1

def body874_297 : Prog (BitVec 64) :=
.seq body874_2 body874_3

def body874_298 : Prog (BitVec 64) :=
.seq body874_14 body874_15

def body874_299 : Prog (BitVec 64) :=
.seq body874_298 body874_16

def body874_300 : Prog (BitVec 64) :=
.seq body874_17 body874_18

def body874_301 : Prog (BitVec 64) :=
.seq body874_300 body874_19

def body874_302 : Prog (BitVec 64) :=
.seq body874_301 body874_20

def body874_303 : Prog (BitVec 64) :=
.seq body874_302 body874_21

def body874_304 : Prog (BitVec 64) :=
.seq body874_303 body874_22

def body874_305 : Prog (BitVec 64) :=
.seq body874_26 body874_27

def body874_306 : Prog (BitVec 64) :=
.seq body874_305 body874_28

def body874_307 : Prog (BitVec 64) :=
.dec ("acc") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) body874_306

def body874_308 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nal")) body874_307

def body874_309 : Prog (BitVec 64) :=
.seq body874_34 body874_35

def body874_310 : Prog (BitVec 64) :=
.seq body874_309 body874_36

def body874_311 : Prog (BitVec 64) :=
.seq body874_310 body874_37

def body874_312 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "ns")) body874_311

def body874_313 : Prog (BitVec 64) :=
.seq body874_312 body874_28

def body874_314 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body874_313

def body874_315 : Prog (BitVec 64) :=
.dec ("ns") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc2", Flapjack.Exp.const 16#64])) body874_314

def body874_316 : Prog (BitVec 64) :=
.dec ("acc2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) body874_315

def body874_317 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nal")) body874_316

def body874_318 : Prog (BitVec 64) :=
.seq body874_33 body874_317

def body874_319 : Prog (BitVec 64) :=
.seq body874_318 body874_47

def body874_320 : Prog (BitVec 64) :=
.seq body874_319 body874_48

def body874_321 : Prog (BitVec 64) :=
.seq body874_320 body874_49

def body874_322 : Prog (BitVec 64) :=
.seq body874_321 body874_50

def body874_323 : Prog (BitVec 64) :=
.seq body874_58 body874_59

def body874_324 : Prog (BitVec 64) :=
.seq body874_323 body874_60

def body874_325 : Prog (BitVec 64) :=
.seq body874_61 body874_62

def body874_326 : Prog (BitVec 64) :=
.seq body874_325 body874_63

def body874_327 : Prog (BitVec 64) :=
.seq body874_326 body874_64

def body874_328 : Prog (BitVec 64) :=
.seq body874_65 body874_66

def body874_329 : Prog (BitVec 64) :=
.seq body874_328 body874_67

def body874_330 : Prog (BitVec 64) :=
.seq body874_329 body874_68

def body874_331 : Prog (BitVec 64) :=
.seq body874_330 body874_69

def body874_332 : Prog (BitVec 64) :=
.seq body874_331 body874_70

def body874_333 : Prog (BitVec 64) :=
.seq body874_332 body874_71

def body874_334 : Prog (BitVec 64) :=
.seq body874_72 body874_33

def body874_335 : Prog (BitVec 64) :=
.seq body874_334 body874_75

def body874_336 : Prog (BitVec 64) :=
.seq body874_335 body874_33

def body874_337 : Prog (BitVec 64) :=
.seq body874_336 body874_78

def body874_338 : Prog (BitVec 64) :=
.seq body874_33 body874_81

def body874_339 : Prog (BitVec 64) :=
.seq body874_82 body874_83

def body874_340 : Prog (BitVec 64) :=
.seq body874_339 body874_84

def body874_341 : Prog (BitVec 64) :=
.seq body874_340 body874_85

def body874_342 : Prog (BitVec 64) :=
.seq body874_341 body874_86

def body874_343 : Prog (BitVec 64) :=
.seq body874_342 body874_87

def body874_344 : Prog (BitVec 64) :=
.seq body874_343 body874_88

def body874_345 : Prog (BitVec 64) :=
.decCall ("ct") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) body874_344

def body874_346 : Prog (BitVec 64) :=
.decCall ("sa") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body874_345

def body874_347 : Prog (BitVec 64) :=
.seq body874_97 body874_98

def body874_348 : Prog (BitVec 64) :=
.seq body874_347 body874_99

def body874_349 : Prog (BitVec 64) :=
.seq body874_348 body874_100

def body874_350 : Prog (BitVec 64) :=
.seq body874_349 body874_101

def body874_351 : Prog (BitVec 64) :=
.seq body874_350 body874_102

def body874_352 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))
  (Flapjack.Exp.const 0#64)) body874_346 body874_351

def body874_353 : Prog (BitVec 64) :=
.seq body874_352 body874_109

def body874_354 : Prog (BitVec 64) :=
.seq body874_353 body874_110

def body874_355 : Prog (BitVec 64) :=
.seq body874_354 body874_111

def body874_356 : Prog (BitVec 64) :=
.seq body874_355 body874_112

def body874_357 : Prog (BitVec 64) :=
.seq body874_113 body874_114

def body874_358 : Prog (BitVec 64) :=
.seq body874_117 body874_118

def body874_359 : Prog (BitVec 64) :=
.seq body874_358 body874_119

def body874_360 : Prog (BitVec 64) :=
.seq body874_359 body874_120

def body874_361 : Prog (BitVec 64) :=
.seq body874_125 body874_126

def body874_362 : Prog (BitVec 64) :=
.seq body874_33 body874_130

def body874_363 : Prog (BitVec 64) :=
.seq body874_33 body874_136

def body874_364 : Prog (BitVec 64) :=
.seq body874_145 body874_146

def body874_365 : Prog (BitVec 64) :=
.seq body874_364 body874_153

def body874_366 : Prog (BitVec 64) :=
.dec ("del") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 24#64])) body874_365

def body874_367 : Prog (BitVec 64) :=
.seq body874_137 body874_366

def body874_368 : Prog (BitVec 64) :=
.decCall ("rl") (Flapjack.Shape.one) ("lst_push") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 72#64]),
  Flapjack.Exp.const 8#64]) body874_367

def body874_369 : Prog (BitVec 64) :=
.seq body874_363 body874_368

def body874_370 : Prog (BitVec 64) :=
.dec ("stable_lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stable_logs", Flapjack.Exp.const 0#64])) body874_369

def body874_371 : Prog (BitVec 64) :=
.seq body874_133 body874_370

def body874_372 : Prog (BitVec 64) :=
.decCall ("stable_logs") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.var Flapjack.VarKind.local "stable_log_cap"]) body874_371

def body874_373 : Prog (BitVec 64) :=
.seq body874_132 body874_372

def body874_374 : Prog (BitVec 64) :=
.dec ("stable_log_cap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "nl") body874_373

def body874_375 : Prog (BitVec 64) :=
.seq body874_362 body874_374

def body874_376 : Prog (BitVec 64) :=
.dec ("lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 0#64])) body874_375

def body874_377 : Prog (BitVec 64) :=
.dec ("nl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 8#64])) body874_376

def body874_378 : Prog (BitVec 64) :=
.seq body874_361 body874_377

def body874_379 : Prog (BitVec 64) :=
.decCall ("rc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_receipt") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "succeeded",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 16#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "logs"]) body874_378

def body874_380 : Prog (BitVec 64) :=
.seq body874_124 body874_379

def body874_381 : Prog (BitVec 64) :=
.dec ("succeeded") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body874_380

def body874_382 : Prog (BitVec 64) :=
.seq body874_122 body874_381

def body874_383 : Prog (BitVec 64) :=
.dec ("logs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64])) body874_382

def body874_384 : Prog (BitVec 64) :=
.seq body874_360 body874_383

def body874_385 : Prog (BitVec 64) :=
.decCall ("tx_regular_gas") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund",
      Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas_nat"],
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body874_384

def body874_386 : Prog (BitVec 64) :=
.seq body874_116 body874_385

def body874_387 : Prog (BitVec 64) :=
.dec ("tx_state_gas_nat") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas") body874_386

def body874_388 : Prog (BitVec 64) :=
.dec ("tx_state_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 72#64])]) body874_387

def body874_389 : Prog (BitVec 64) :=
.seq body874_357 body874_388

def body874_390 : Prog (BitVec 64) :=
.decCall ("tf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used", Flapjack.Exp.var Flapjack.VarKind.local "priority_fee"]) body874_389

def body874_391 : Prog (BitVec 64) :=
.decCall ("priority_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "price",
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 48#64])]) body874_390

def body874_392 : Prog (BitVec 64) :=
.decCall ("gra") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_left", Flapjack.Exp.var Flapjack.VarKind.local "price"]) body874_391

def body874_393 : Prog (BitVec 64) :=
.dec ("tx_gas_left") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used"]) body874_392

def body874_394 : Prog (BitVec 64) :=
.decCall ("tx_gas_used") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "used_after_refund",
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body874_393

def body874_395 : Prog (BitVec 64) :=
.dec ("used_after_refund") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund", Flapjack.Exp.var Flapjack.VarKind.local "refund"]) body874_394

def body874_396 : Prog (BitVec 64) :=
.decCall ("refund") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.var Flapjack.VarKind.local "ubr5",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 8#64])]) body874_395

def body874_397 : Prog (BitVec 64) :=
.decCall ("ubr5") (Flapjack.Shape.one) ("udiv_small5") ([Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund"]) body874_396

def body874_398 : Prog (BitVec 64) :=
.dec ("used_before_refund") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "gas",
        Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 0#64])],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 56#64])]) body874_397

def body874_399 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("process_message_call") ([Flapjack.Exp.var Flapjack.VarKind.local "m"]) body874_398

def body874_400 : Prog (BitVec 64) :=
.seq body874_356 body874_399

def body874_401 : Prog (BitVec 64) :=
.decCall ("empty") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) body874_400

def body874_402 : Prog (BitVec 64) :=
.seq body874_338 body874_401

def body874_403 : Prog (BitVec 64) :=
.decCall ("ak") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 52#64, Flapjack.Exp.const 16#64]) body874_402

def body874_404 : Prog (BitVec 64) :=
.seq body874_337 body874_403

def body874_405 : Prog (BitVec 64) :=
.decCall ("aa") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]) body874_404

def body874_406 : Prog (BitVec 64) :=
.seq body874_333 body874_405

def body874_407 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("msg_new") ([]) body874_406

def body874_408 : Prog (BitVec 64) :=
.seq body874_327 body874_407

def body874_409 : Prog (BitVec 64) :=
.decCall ("txh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body874_408

def body874_410 : Prog (BitVec 64) :=
.seq body874_324 body874_409

def body874_411 : Prog (BitVec 64) :=
.decCall ("issc") (Flapjack.Shape.one) ("tx_is_setcode") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body874_410

def body874_412 : Prog (BitVec 64) :=
.seq body874_54 body874_411

def body874_413 : Prog (BitVec 64) :=
.decCall ("isb") (Flapjack.Shape.one) ("tx_is_blob") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body874_412

def body874_414 : Prog (BitVec 64) :=
.seq body874_322 body874_413

def body874_415 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body874_414

def body874_416 : Prog (BitVec 64) :=
.decCall ("al_keys") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nkeys", Flapjack.Exp.const 52#64],
      Flapjack.Exp.const 8#64]]) body874_415

def body874_417 : Prog (BitVec 64) :=
.seq body874_308 body874_416

def body874_418 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body874_417

def body874_419 : Prog (BitVec 64) :=
.dec ("nkeys") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body874_418

def body874_420 : Prog (BitVec 64) :=
.seq body874_25 body874_419

def body874_421 : Prog (BitVec 64) :=
.decCall ("al_addrs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nal", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) body874_420

def body874_422 : Prog (BitVec 64) :=
.seq body874_24 body874_421

def body874_423 : Prog (BitVec 64) :=
.decCall ("hal") (Flapjack.Shape.one) ("tx_has_access_list") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body874_422

def body874_424 : Prog (BitVec 64) :=
.dec ("nal") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body874_423

def body874_425 : Prog (BitVec 64) :=
.seq body874_304 body874_424

def body874_426 : Prog (BitVec 64) :=
.decCall ("te") (Flapjack.Shape.one) ("te_new") ([]) body874_425

def body874_427 : Prog (BitVec 64) :=
.seq body874_299 body874_426

def body874_428 : Prog (BitVec 64) :=
.dec ("bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 8#64])) body874_427

def body874_429 : Prog (BitVec 64) :=
.seq body874_13 body874_428

def body874_430 : Prog (BitVec 64) :=
.dec ("reservoir") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "execution_gas", Flapjack.Exp.var Flapjack.VarKind.local "mgas"]) body874_429

def body874_431 : Prog (BitVec 64) :=
.decCall ("mgas") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.var Flapjack.VarKind.local "regular_budget", Flapjack.Exp.var Flapjack.VarKind.local "execution_gas"]) body874_430

def body874_432 : Prog (BitVec 64) :=
.dec ("regular_budget") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.const 16777216#64, Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body874_431

def body874_433 : Prog (BitVec 64) :=
.dec ("execution_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "intrinsic_gas"]) body874_432

def body874_434 : Prog (BitVec 64) :=
.dec ("effective_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "egf")]) body874_433

def body874_435 : Prog (BitVec 64) :=
.decCall ("egf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "price"]) body874_434

def body874_436 : Prog (BitVec 64) :=
.dec ("gas") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])) body874_435

def body874_437 : Prog (BitVec 64) :=
.seq body874_12 body874_436

def body874_438 : Prog (BitVec 64) :=
.dec ("blob_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body874_437

def body874_439 : Prog (BitVec 64) :=
.decCall ("acct") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body874_438

def body874_440 : Prog (BitVec 64) :=
.decCall ("tx_blob_gas_used") (Flapjack.Shape.one) ("calculate_total_blob_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body874_439

def body874_441 : Prog (BitVec 64) :=
.decCall ("price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("check_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body874_440

def body874_442 : Prog (BitVec 64) :=
.dec ("intrinsic_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) body874_441

def body874_443 : Prog (BitVec 64) :=
.decCall ("intrinsic") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("validate_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body874_442

def body874_444 : Prog (BitVec 64) :=
.seq body874_8 body874_443

def body874_445 : Prog (BitVec 64) :=
.decCall ("sender") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) body874_444

def body874_446 : Prog (BitVec 64) :=
.seq body874_7 body874_445

def body874_447 : Prog (BitVec 64) :=
.decCall ("cid") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_chain_id") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body874_446

def body874_448 : Prog (BitVec 64) :=
.seq body874_297 body874_447

def body874_449 : Prog (BitVec 64) :=
.decCall ("enc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body874_448

def body874_450 : Prog (BitVec 64) :=
.seq body874_296 body874_449

def originalData874 : Decl (BitVec 64) :=
.function { name := "process_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("index", Flapjack.Shape.one)], body := body874_295, returnShape := (Flapjack.Shape.one) }
def simplifiedData874 : Decl (BitVec 64) :=
.function { name := "process_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("index", Flapjack.Shape.one)], body := body874_450, returnShape := (Flapjack.Shape.one) }
def original874 := Pancake.PanLang.declToHOL originalData874
def simplified874 := Pancake.PanLang.declToHOL simplifiedData874
end InitECandidate.Proofs.FrontendStages.Declarations
