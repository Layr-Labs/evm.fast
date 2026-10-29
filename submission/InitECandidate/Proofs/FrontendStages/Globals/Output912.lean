import InitECandidate.Proofs.FrontendStages.Declarations.Data912
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody912_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_fresh_tx" []

def globalBody912_1 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 224#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 1#64])

def globalBody912_2 : Prog (BitVec 64) :=
.seq globalBody912_0 globalBody912_1

def globalBody912_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
            Flapjack.Exp.const 24#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64]])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "enc"))

def globalBody912_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
            Flapjack.Exp.const 24#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "enc"))

def globalBody912_5 : Prog (BitVec 64) :=
.seq globalBody912_3 globalBody912_4

def globalBody912_6 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 100#64)

def globalBody912_7 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody912_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "cid"))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 616#64]),
        Flapjack.Exp.const 0#64]))) globalBody912_6 globalBody912_7

def globalBody912_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "cid"))
  (Flapjack.Exp.const 0#64)) globalBody912_8 globalBody912_7

def globalBody912_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "recover_sender_with_chain_id"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 616#64]),
          Flapjack.Exp.const 0#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "sender"]

def globalBody912_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "blob_gas_fee"
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bgf"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "bgf"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "bgf"),
      Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "bgf")])

def globalBody912_12 : Prog (BitVec 64) :=
.decCall ("bgf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas_used", Flapjack.Exp.var Flapjack.VarKind.local "bgp"]) globalBody912_11

def globalBody912_13 : Prog (BitVec 64) :=
.decCall ("bgp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_blob_gas_price") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 616#64]),
        Flapjack.Exp.const 96#64])]) globalBody912_12

def globalBody912_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas_used")
  (Flapjack.Exp.const 0#64)) globalBody912_13 globalBody912_7

def globalBody912_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "increment_nonce" [Flapjack.Exp.var Flapjack.VarKind.local "sender"]

def globalBody912_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "bal"), none)) "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "bal", Flapjack.Exp.var Flapjack.VarKind.local "effective_gas_fee"]

def globalBody912_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "bal"), none)) "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "bal", Flapjack.Exp.var Flapjack.VarKind.local "blob_gas_fee"]

def globalBody912_18 : Prog (BitVec 64) :=
.seq globalBody912_16 globalBody912_17

def globalBody912_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_account_balance"
  [Flapjack.Exp.var Flapjack.VarKind.local "sender", Flapjack.Exp.var Flapjack.VarKind.local "bal"]

def globalBody912_20 : Prog (BitVec 64) :=
.seq globalBody912_18 globalBody912_19

def globalBody912_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "sender")

def globalBody912_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def globalBody912_23 : Prog (BitVec 64) :=
.seq globalBody912_21 globalBody912_22

def globalBody912_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64]))

def globalBody912_25 : Prog (BitVec 64) :=
.seq globalBody912_23 globalBody912_24

def globalBody912_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "price")

def globalBody912_27 : Prog (BitVec 64) :=
.seq globalBody912_25 globalBody912_26

def globalBody912_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "mgas")

def globalBody912_29 : Prog (BitVec 64) :=
.seq globalBody912_27 globalBody912_28

def globalBody912_30 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "reservoir")

def globalBody912_31 : Prog (BitVec 64) :=
.seq globalBody912_29 globalBody912_30

def globalBody912_32 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nal"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 216#64]))

def globalBody912_33 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "hal") (Flapjack.Exp.const 0#64)) globalBody912_32 globalBody912_7

def globalBody912_34 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "al_addrs")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 616#64]),
        Flapjack.Exp.const 32#64]))

def globalBody912_35 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "al_addrs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.const 0#64]))

def globalBody912_36 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nkeys"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nkeys",
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.const 16#64])])

def globalBody912_37 : Prog (BitVec 64) :=
.seq globalBody912_35 globalBody912_36

def globalBody912_38 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody912_39 : Prog (BitVec 64) :=
.seq globalBody912_37 globalBody912_38

def globalBody912_40 : Prog (BitVec 64) :=
.dec ("acc") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) globalBody912_39

def globalBody912_41 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nal")) globalBody912_40

def globalBody912_42 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def globalBody912_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "al_keys",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 52#64]],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc2", Flapjack.Exp.const 0#64]),
    Flapjack.Exp.const 20#64]

def globalBody912_44 : Prog (BitVec 64) :=
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

def globalBody912_45 : Prog (BitVec 64) :=
.seq globalBody912_43 globalBody912_44

def globalBody912_46 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def globalBody912_47 : Prog (BitVec 64) :=
.seq globalBody912_45 globalBody912_46

def globalBody912_48 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody912_49 : Prog (BitVec 64) :=
.seq globalBody912_47 globalBody912_48

def globalBody912_50 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "ns")) globalBody912_49

def globalBody912_51 : Prog (BitVec 64) :=
.seq globalBody912_50 globalBody912_38

def globalBody912_52 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody912_51

def globalBody912_53 : Prog (BitVec 64) :=
.dec ("ns") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc2", Flapjack.Exp.const 16#64])) globalBody912_52

def globalBody912_54 : Prog (BitVec 64) :=
.dec ("acc2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) globalBody912_53

def globalBody912_55 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nal")) globalBody912_54

def globalBody912_56 : Prog (BitVec 64) :=
.seq globalBody912_42 globalBody912_55

def globalBody912_57 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "al_addrs")

def globalBody912_58 : Prog (BitVec 64) :=
.seq globalBody912_56 globalBody912_57

def globalBody912_59 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nal", Flapjack.Exp.const 1#64])

def globalBody912_60 : Prog (BitVec 64) :=
.seq globalBody912_58 globalBody912_59

def globalBody912_61 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "al_keys")

def globalBody912_62 : Prog (BitVec 64) :=
.seq globalBody912_60 globalBody912_61

def globalBody912_63 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nkeys")

def globalBody912_64 : Prog (BitVec 64) :=
.seq globalBody912_62 globalBody912_63

def globalBody912_65 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 256#64]))

def globalBody912_66 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64]))

def globalBody912_67 : Prog (BitVec 64) :=
.seq globalBody912_65 globalBody912_66

def globalBody912_68 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "isb") (Flapjack.Exp.const 0#64)) globalBody912_67 globalBody912_7

def globalBody912_69 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 272#64]))

def globalBody912_70 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 280#64]))

def globalBody912_71 : Prog (BitVec 64) :=
.seq globalBody912_69 globalBody912_70

def globalBody912_72 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "issc") (Flapjack.Exp.const 0#64)) globalBody912_71 globalBody912_7

def globalBody912_73 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.const 1#64)

def globalBody912_74 : Prog (BitVec 64) :=
.seq globalBody912_72 globalBody912_73

def globalBody912_75 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "index")

def globalBody912_76 : Prog (BitVec 64) :=
.seq globalBody912_74 globalBody912_75

def globalBody912_77 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "enc"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "enc"),
    Flapjack.Exp.var Flapjack.VarKind.local "txh"]

def globalBody912_78 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 176#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "txh")

def globalBody912_79 : Prog (BitVec 64) :=
.seq globalBody912_77 globalBody912_78

def globalBody912_80 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 184#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"))

def globalBody912_81 : Prog (BitVec 64) :=
.seq globalBody912_79 globalBody912_80

def globalBody912_82 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"))

def globalBody912_83 : Prog (BitVec 64) :=
.seq globalBody912_81 globalBody912_82

def globalBody912_84 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 616#64]))

def globalBody912_85 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "te")

def globalBody912_86 : Prog (BitVec 64) :=
.seq globalBody912_84 globalBody912_85

def globalBody912_87 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "sender")

def globalBody912_88 : Prog (BitVec 64) :=
.seq globalBody912_86 globalBody912_87

def globalBody912_89 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def globalBody912_90 : Prog (BitVec 64) :=
.seq globalBody912_88 globalBody912_89

def globalBody912_91 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "mgas")

def globalBody912_92 : Prog (BitVec 64) :=
.seq globalBody912_90 globalBody912_91

def globalBody912_93 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "reservoir")

def globalBody912_94 : Prog (BitVec 64) :=
.seq globalBody912_92 globalBody912_93

def globalBody912_95 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64]))

def globalBody912_96 : Prog (BitVec 64) :=
.seq globalBody912_94 globalBody912_95

def globalBody912_97 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa", Flapjack.Exp.var Flapjack.VarKind.local "sender",
    Flapjack.Exp.const 1#64]

def globalBody912_98 : Prog (BitVec 64) :=
.seq globalBody912_97 globalBody912_42

def globalBody912_99 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 632#64]),
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 20#64]],
    Flapjack.Exp.const 1#64]

def globalBody912_100 : Prog (BitVec 64) :=
.seq globalBody912_99 globalBody912_38

def globalBody912_101 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 18#64)) globalBody912_100

def globalBody912_102 : Prog (BitVec 64) :=
.seq globalBody912_98 globalBody912_101

def globalBody912_103 : Prog (BitVec 64) :=
.seq globalBody912_102 globalBody912_42

def globalBody912_104 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "al_addrs",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.const 1#64]

def globalBody912_105 : Prog (BitVec 64) :=
.seq globalBody912_104 globalBody912_38

def globalBody912_106 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nal", Flapjack.Exp.const 1#64])) globalBody912_105

def globalBody912_107 : Prog (BitVec 64) :=
.seq globalBody912_103 globalBody912_106

def globalBody912_108 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "ak",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "al_keys",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 52#64]],
    Flapjack.Exp.const 1#64]

def globalBody912_109 : Prog (BitVec 64) :=
.seq globalBody912_108 globalBody912_38

def globalBody912_110 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nkeys")) globalBody912_109

def globalBody912_111 : Prog (BitVec 64) :=
.seq globalBody912_42 globalBody912_110

def globalBody912_112 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "compute_contract_address"
  [Flapjack.Exp.var Flapjack.VarKind.local "sender",
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sa", Flapjack.Exp.const 0#64]),
        Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "ct"]

def globalBody912_113 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ct")

def globalBody912_114 : Prog (BitVec 64) :=
.seq globalBody912_112 globalBody912_113

def globalBody912_115 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "empty")

def globalBody912_116 : Prog (BitVec 64) :=
.seq globalBody912_114 globalBody912_115

def globalBody912_117 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.const 0#64)

def globalBody912_118 : Prog (BitVec 64) :=
.seq globalBody912_116 globalBody912_117

def globalBody912_119 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 192#64]))

def globalBody912_120 : Prog (BitVec 64) :=
.seq globalBody912_118 globalBody912_119

def globalBody912_121 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64]))

def globalBody912_122 : Prog (BitVec 64) :=
.seq globalBody912_120 globalBody912_121

def globalBody912_123 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 0#64)

def globalBody912_124 : Prog (BitVec 64) :=
.seq globalBody912_122 globalBody912_123

def globalBody912_125 : Prog (BitVec 64) :=
.decCall ("ct") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody912_124

def globalBody912_126 : Prog (BitVec 64) :=
.decCall ("sa") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) globalBody912_125

def globalBody912_127 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def globalBody912_128 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 192#64]))

def globalBody912_129 : Prog (BitVec 64) :=
.seq globalBody912_127 globalBody912_128

def globalBody912_130 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64]))

def globalBody912_131 : Prog (BitVec 64) :=
.seq globalBody912_129 globalBody912_130

def globalBody912_132 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "empty")

def globalBody912_133 : Prog (BitVec 64) :=
.seq globalBody912_131 globalBody912_132

def globalBody912_134 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.const 0#64)

def globalBody912_135 : Prog (BitVec 64) :=
.seq globalBody912_133 globalBody912_134

def globalBody912_136 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def globalBody912_137 : Prog (BitVec 64) :=
.seq globalBody912_135 globalBody912_136

def globalBody912_138 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))
  (Flapjack.Exp.const 0#64)) globalBody912_126 globalBody912_137

def globalBody912_139 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.const 1#64)

def globalBody912_140 : Prog (BitVec 64) :=
.seq globalBody912_138 globalBody912_139

def globalBody912_141 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 1#64]

def globalBody912_142 : Prog (BitVec 64) :=
.seq globalBody912_140 globalBody912_141

def globalBody912_143 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "aa")

def globalBody912_144 : Prog (BitVec 64) :=
.seq globalBody912_142 globalBody912_143

def globalBody912_145 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ak")

def globalBody912_146 : Prog (BitVec 64) :=
.seq globalBody912_144 globalBody912_145

def globalBody912_147 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "create_ether"
  [Flapjack.Exp.var Flapjack.VarKind.local "sender",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "gra"),
        Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "gra"),
        Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "gra"),
        Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "gra")]]

def globalBody912_148 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "create_ether"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 616#64]),
          Flapjack.Exp.const 32#64]),
    Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "tf"),
        Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "tf"),
        Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "tf"),
        Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "tf")]]

def globalBody912_149 : Prog (BitVec 64) :=
.seq globalBody912_147 globalBody912_148

def globalBody912_150 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "tx_state_gas_nat" (Flapjack.Exp.const 0#64)

def globalBody912_151 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas") (Flapjack.Exp.const 0#64)) globalBody912_150 globalBody912_7

def globalBody912_152 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
            Flapjack.Exp.const 0#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_regular_gas"])

def globalBody912_153 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
            Flapjack.Exp.const 8#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas_nat"])

def globalBody912_154 : Prog (BitVec 64) :=
.seq globalBody912_152 globalBody912_153

def globalBody912_155 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
      Flapjack.Exp.const 48#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
            Flapjack.Exp.const 48#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas_used"])

def globalBody912_156 : Prog (BitVec 64) :=
.seq globalBody912_154 globalBody912_155

def globalBody912_157 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
            Flapjack.Exp.const 16#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used"])

def globalBody912_158 : Prog (BitVec 64) :=
.seq globalBody912_156 globalBody912_157

def globalBody912_159 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "logs"), none)) "lst_new"
  [Flapjack.Exp.const 8#64, Flapjack.Exp.const 1#64]

def globalBody912_160 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "logs") (Flapjack.Exp.const 0#64)) globalBody912_159 globalBody912_7

def globalBody912_161 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "succeeded" (Flapjack.Exp.const 0#64)

def globalBody912_162 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]))
  (Flapjack.Exp.const 0#64)) globalBody912_161 globalBody912_7

def globalBody912_163 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
            Flapjack.Exp.const 32#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64]])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "rc"))

def globalBody912_164 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
            Flapjack.Exp.const 32#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "rc"))

def globalBody912_165 : Prog (BitVec 64) :=
.seq globalBody912_163 globalBody912_164

def globalBody912_166 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "slot")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "lp",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]))

def globalBody912_167 : Prog (BitVec 64) :=
.seq globalBody912_166 globalBody912_38

def globalBody912_168 : Prog (BitVec 64) :=
.decCall ("slot") (Flapjack.Shape.one) ("lst_push") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
        Flapjack.Exp.const 40#64]),
  Flapjack.Exp.const 8#64]) globalBody912_167

def globalBody912_169 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")) globalBody912_168

def globalBody912_170 : Prog (BitVec 64) :=
.seq globalBody912_42 globalBody912_169

def globalBody912_171 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "stable_log_cap" (Flapjack.Exp.const 1#64)

def globalBody912_172 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "stable_log_cap") (Flapjack.Exp.const 0#64)) globalBody912_171 globalBody912_7

def globalBody912_173 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stable_logs", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")

def globalBody912_174 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "stable_lp",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "lp",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]))

def globalBody912_175 : Prog (BitVec 64) :=
.seq globalBody912_174 globalBody912_38

def globalBody912_176 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")) globalBody912_175

def globalBody912_177 : Prog (BitVec 64) :=
.seq globalBody912_42 globalBody912_176

def globalBody912_178 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "rl")
  (Flapjack.Exp.var Flapjack.VarKind.local "stable_logs")

def globalBody912_179 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "clear_account_preserving_balance"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s")]

def globalBody912_180 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) globalBody912_179 globalBody912_7

def globalBody912_181 : Prog (BitVec 64) :=
.seq globalBody912_180 globalBody912_38

def globalBody912_182 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "del", Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody912_181

def globalBody912_183 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "dcap")) globalBody912_182

def globalBody912_184 : Prog (BitVec 64) :=
.seq globalBody912_42 globalBody912_183

def globalBody912_185 : Prog (BitVec 64) :=
.dec ("dcap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "del", Flapjack.Exp.const 24#64])) globalBody912_184

def globalBody912_186 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "del") (Flapjack.Exp.const 0#64)) globalBody912_185 globalBody912_7

def globalBody912_187 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "incorporate_tx_into_block" []

def globalBody912_188 : Prog (BitVec 64) :=
.seq globalBody912_186 globalBody912_187

def globalBody912_189 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "tx_frame_mark"]

def globalBody912_190 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_mem_release"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 88#64])]

def globalBody912_191 : Prog (BitVec 64) :=
.seq globalBody912_189 globalBody912_190

def globalBody912_192 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "tx_frame_mark")
  (Flapjack.Exp.const 0#64)) globalBody912_191 globalBody912_7

def globalBody912_193 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody912_194 : Prog (BitVec 64) :=
.seq globalBody912_192 globalBody912_193

def globalBody912_195 : Prog (BitVec 64) :=
.dec ("tx_frame_mark") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 80#64])) globalBody912_194

def globalBody912_196 : Prog (BitVec 64) :=
.seq globalBody912_188 globalBody912_195

def globalBody912_197 : Prog (BitVec 64) :=
.dec ("del") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 24#64])) globalBody912_196

def globalBody912_198 : Prog (BitVec 64) :=
.seq globalBody912_178 globalBody912_197

def globalBody912_199 : Prog (BitVec 64) :=
.decCall ("rl") (Flapjack.Shape.one) ("lst_push") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
        Flapjack.Exp.const 72#64]),
  Flapjack.Exp.const 8#64]) globalBody912_198

def globalBody912_200 : Prog (BitVec 64) :=
.seq globalBody912_177 globalBody912_199

def globalBody912_201 : Prog (BitVec 64) :=
.dec ("stable_lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stable_logs", Flapjack.Exp.const 0#64])) globalBody912_200

def globalBody912_202 : Prog (BitVec 64) :=
.seq globalBody912_173 globalBody912_201

def globalBody912_203 : Prog (BitVec 64) :=
.decCall ("stable_logs") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.var Flapjack.VarKind.local "stable_log_cap"]) globalBody912_202

def globalBody912_204 : Prog (BitVec 64) :=
.seq globalBody912_172 globalBody912_203

def globalBody912_205 : Prog (BitVec 64) :=
.dec ("stable_log_cap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "nl") globalBody912_204

def globalBody912_206 : Prog (BitVec 64) :=
.seq globalBody912_170 globalBody912_205

def globalBody912_207 : Prog (BitVec 64) :=
.dec ("lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 0#64])) globalBody912_206

def globalBody912_208 : Prog (BitVec 64) :=
.dec ("nl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 8#64])) globalBody912_207

def globalBody912_209 : Prog (BitVec 64) :=
.seq globalBody912_165 globalBody912_208

def globalBody912_210 : Prog (BitVec 64) :=
.decCall ("rc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_receipt") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "succeeded",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
        Flapjack.Exp.const 16#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "logs"]) globalBody912_209

def globalBody912_211 : Prog (BitVec 64) :=
.seq globalBody912_162 globalBody912_210

def globalBody912_212 : Prog (BitVec 64) :=
.dec ("succeeded") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) globalBody912_211

def globalBody912_213 : Prog (BitVec 64) :=
.seq globalBody912_160 globalBody912_212

def globalBody912_214 : Prog (BitVec 64) :=
.dec ("logs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64])) globalBody912_213

def globalBody912_215 : Prog (BitVec 64) :=
.seq globalBody912_158 globalBody912_214

def globalBody912_216 : Prog (BitVec 64) :=
.decCall ("tx_regular_gas") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund",
      Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas_nat"],
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) globalBody912_215

def globalBody912_217 : Prog (BitVec 64) :=
.seq globalBody912_151 globalBody912_216

def globalBody912_218 : Prog (BitVec 64) :=
.dec ("tx_state_gas_nat") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas") globalBody912_217

def globalBody912_219 : Prog (BitVec 64) :=
.dec ("tx_state_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 72#64])]) globalBody912_218

def globalBody912_220 : Prog (BitVec 64) :=
.seq globalBody912_149 globalBody912_219

def globalBody912_221 : Prog (BitVec 64) :=
.decCall ("tf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used", Flapjack.Exp.var Flapjack.VarKind.local "priority_fee"]) globalBody912_220

def globalBody912_222 : Prog (BitVec 64) :=
.decCall ("priority_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "price",
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 616#64]),
        Flapjack.Exp.const 48#64])]) globalBody912_221

def globalBody912_223 : Prog (BitVec 64) :=
.decCall ("gra") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_left", Flapjack.Exp.var Flapjack.VarKind.local "price"]) globalBody912_222

def globalBody912_224 : Prog (BitVec 64) :=
.dec ("tx_gas_left") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used"]) globalBody912_223

def globalBody912_225 : Prog (BitVec 64) :=
.decCall ("tx_gas_used") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "used_after_refund",
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) globalBody912_224

def globalBody912_226 : Prog (BitVec 64) :=
.dec ("used_after_refund") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund", Flapjack.Exp.var Flapjack.VarKind.local "refund"]) globalBody912_225

def globalBody912_227 : Prog (BitVec 64) :=
.decCall ("refund") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.var Flapjack.VarKind.local "ubr5",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 8#64])]) globalBody912_226

def globalBody912_228 : Prog (BitVec 64) :=
.decCall ("ubr5") (Flapjack.Shape.one) ("udiv_small5") ([Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund"]) globalBody912_227

def globalBody912_229 : Prog (BitVec 64) :=
.dec ("used_before_refund") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "gas",
        Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 0#64])],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 56#64])]) globalBody912_228

def globalBody912_230 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("process_message_call") ([Flapjack.Exp.var Flapjack.VarKind.local "m"]) globalBody912_229

def globalBody912_231 : Prog (BitVec 64) :=
.seq globalBody912_146 globalBody912_230

def globalBody912_232 : Prog (BitVec 64) :=
.decCall ("empty") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) globalBody912_231

def globalBody912_233 : Prog (BitVec 64) :=
.seq globalBody912_111 globalBody912_232

def globalBody912_234 : Prog (BitVec 64) :=
.decCall ("ak") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 52#64, Flapjack.Exp.const 16#64]) globalBody912_233

def globalBody912_235 : Prog (BitVec 64) :=
.seq globalBody912_107 globalBody912_234

def globalBody912_236 : Prog (BitVec 64) :=
.decCall ("aa") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]) globalBody912_235

def globalBody912_237 : Prog (BitVec 64) :=
.seq globalBody912_96 globalBody912_236

def globalBody912_238 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("msg_new") ([]) globalBody912_237

def globalBody912_239 : Prog (BitVec 64) :=
.seq globalBody912_83 globalBody912_238

def globalBody912_240 : Prog (BitVec 64) :=
.decCall ("txh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody912_239

def globalBody912_241 : Prog (BitVec 64) :=
.seq globalBody912_76 globalBody912_240

def globalBody912_242 : Prog (BitVec 64) :=
.decCall ("issc") (Flapjack.Shape.one) ("tx_is_setcode") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) globalBody912_241

def globalBody912_243 : Prog (BitVec 64) :=
.seq globalBody912_68 globalBody912_242

def globalBody912_244 : Prog (BitVec 64) :=
.decCall ("isb") (Flapjack.Shape.one) ("tx_is_blob") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) globalBody912_243

def globalBody912_245 : Prog (BitVec 64) :=
.seq globalBody912_64 globalBody912_244

def globalBody912_246 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody912_245

def globalBody912_247 : Prog (BitVec 64) :=
.decCall ("al_keys") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nkeys", Flapjack.Exp.const 52#64],
      Flapjack.Exp.const 8#64]]) globalBody912_246

def globalBody912_248 : Prog (BitVec 64) :=
.seq globalBody912_41 globalBody912_247

def globalBody912_249 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody912_248

def globalBody912_250 : Prog (BitVec 64) :=
.dec ("nkeys") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody912_249

def globalBody912_251 : Prog (BitVec 64) :=
.seq globalBody912_34 globalBody912_250

def globalBody912_252 : Prog (BitVec 64) :=
.decCall ("al_addrs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nal", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) globalBody912_251

def globalBody912_253 : Prog (BitVec 64) :=
.seq globalBody912_33 globalBody912_252

def globalBody912_254 : Prog (BitVec 64) :=
.decCall ("hal") (Flapjack.Shape.one) ("tx_has_access_list") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) globalBody912_253

def globalBody912_255 : Prog (BitVec 64) :=
.dec ("nal") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody912_254

def globalBody912_256 : Prog (BitVec 64) :=
.seq globalBody912_31 globalBody912_255

def globalBody912_257 : Prog (BitVec 64) :=
.decCall ("te") (Flapjack.Shape.one) ("te_new") ([]) globalBody912_256

def globalBody912_258 : Prog (BitVec 64) :=
.seq globalBody912_20 globalBody912_257

def globalBody912_259 : Prog (BitVec 64) :=
.dec ("bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 8#64])) globalBody912_258

def globalBody912_260 : Prog (BitVec 64) :=
.seq globalBody912_15 globalBody912_259

def globalBody912_261 : Prog (BitVec 64) :=
.dec ("reservoir") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "execution_gas", Flapjack.Exp.var Flapjack.VarKind.local "mgas"]) globalBody912_260

def globalBody912_262 : Prog (BitVec 64) :=
.decCall ("mgas") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.var Flapjack.VarKind.local "regular_budget", Flapjack.Exp.var Flapjack.VarKind.local "execution_gas"]) globalBody912_261

def globalBody912_263 : Prog (BitVec 64) :=
.dec ("regular_budget") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.const 16777216#64, Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) globalBody912_262

def globalBody912_264 : Prog (BitVec 64) :=
.dec ("execution_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "intrinsic_gas"]) globalBody912_263

def globalBody912_265 : Prog (BitVec 64) :=
.dec ("effective_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "egf")]) globalBody912_264

def globalBody912_266 : Prog (BitVec 64) :=
.decCall ("egf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "price"]) globalBody912_265

def globalBody912_267 : Prog (BitVec 64) :=
.dec ("gas") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])) globalBody912_266

def globalBody912_268 : Prog (BitVec 64) :=
.seq globalBody912_14 globalBody912_267

def globalBody912_269 : Prog (BitVec 64) :=
.dec ("blob_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody912_268

def globalBody912_270 : Prog (BitVec 64) :=
.decCall ("acct") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) globalBody912_269

def globalBody912_271 : Prog (BitVec 64) :=
.decCall ("tx_blob_gas_used") (Flapjack.Shape.one) ("calculate_total_blob_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) globalBody912_270

def globalBody912_272 : Prog (BitVec 64) :=
.decCall ("price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("check_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) globalBody912_271

def globalBody912_273 : Prog (BitVec 64) :=
.dec ("intrinsic_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) globalBody912_272

def globalBody912_274 : Prog (BitVec 64) :=
.decCall ("intrinsic") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("validate_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) globalBody912_273

def globalBody912_275 : Prog (BitVec 64) :=
.seq globalBody912_10 globalBody912_274

def globalBody912_276 : Prog (BitVec 64) :=
.decCall ("sender") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody912_275

def globalBody912_277 : Prog (BitVec 64) :=
.seq globalBody912_9 globalBody912_276

def globalBody912_278 : Prog (BitVec 64) :=
.decCall ("cid") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_chain_id") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) globalBody912_277

def globalBody912_279 : Prog (BitVec 64) :=
.seq globalBody912_5 globalBody912_278

def globalBody912_280 : Prog (BitVec 64) :=
.decCall ("enc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) globalBody912_279

def globalBody912_281 : Prog (BitVec 64) :=
.seq globalBody912_2 globalBody912_280

def globalData912 : Decl (BitVec 64) := .function { name := "process_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("index", Flapjack.Shape.one)], body := globalBody912_281, returnShape := (Flapjack.Shape.one) }
def globalOutput912 := Pancake.PanLang.declToHOL globalData912
end InitECandidate.Proofs.FrontendStages.Declarations
