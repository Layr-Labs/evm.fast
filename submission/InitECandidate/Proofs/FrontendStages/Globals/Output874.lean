import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data874
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate841
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody874_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_fresh_tx" []

def globalBody874_1 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 224#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 1#64])

def globalBody874_2 : Prog (BitVec 64) :=
.seq globalBody874_0 globalBody874_1

def globalBody874_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
            Flapjack.Exp.const 24#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64]])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "enc"))

def globalBody874_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
            Flapjack.Exp.const 24#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "enc"))

def globalBody874_5 : Prog (BitVec 64) :=
.seq globalBody874_3 globalBody874_4

def globalBody874_6 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 100#64)

def globalBody874_7 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody874_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "cid"))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 408#64]),
        Flapjack.Exp.const 0#64]))) globalBody874_6 globalBody874_7

def globalBody874_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "cid"))
  (Flapjack.Exp.const 0#64)) globalBody874_8 globalBody874_7

def globalBody874_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "recover_sender_with_chain_id"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 408#64]),
          Flapjack.Exp.const 0#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "sender"]

def globalBody874_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "blob_gas_fee"
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bgf"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "bgf"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "bgf"),
      Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "bgf")])

def globalBody874_12 : Prog (BitVec 64) :=
.decCall ("bgf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas_used", Flapjack.Exp.var Flapjack.VarKind.local "bgp"]) globalBody874_11

def globalBody874_13 : Prog (BitVec 64) :=
.decCall ("bgp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_blob_gas_price") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 408#64]),
        Flapjack.Exp.const 96#64])]) globalBody874_12

def globalBody874_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas_used")
  (Flapjack.Exp.const 0#64)) globalBody874_13 globalBody874_7

def globalBody874_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "increment_nonce" [Flapjack.Exp.var Flapjack.VarKind.local "sender"]

def globalBody874_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "bal"), none)) "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "bal", Flapjack.Exp.var Flapjack.VarKind.local "effective_gas_fee"]

def globalBody874_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "bal"), none)) "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "bal", Flapjack.Exp.var Flapjack.VarKind.local "blob_gas_fee"]

def globalBody874_18 : Prog (BitVec 64) :=
.seq globalBody874_16 globalBody874_17

def globalBody874_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_account_balance"
  [Flapjack.Exp.var Flapjack.VarKind.local "sender", Flapjack.Exp.var Flapjack.VarKind.local "bal"]

def globalBody874_20 : Prog (BitVec 64) :=
.seq globalBody874_18 globalBody874_19

def globalBody874_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "sender")

def globalBody874_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def globalBody874_23 : Prog (BitVec 64) :=
.seq globalBody874_21 globalBody874_22

def globalBody874_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64]))

def globalBody874_25 : Prog (BitVec 64) :=
.seq globalBody874_23 globalBody874_24

def globalBody874_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "price")

def globalBody874_27 : Prog (BitVec 64) :=
.seq globalBody874_25 globalBody874_26

def globalBody874_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "mgas")

def globalBody874_29 : Prog (BitVec 64) :=
.seq globalBody874_27 globalBody874_28

def globalBody874_30 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "reservoir")

def globalBody874_31 : Prog (BitVec 64) :=
.seq globalBody874_29 globalBody874_30

def globalBody874_32 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nal"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 216#64]))

def globalBody874_33 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "hal") (Flapjack.Exp.const 0#64)) globalBody874_32 globalBody874_7

def globalBody874_34 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "al_addrs")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 408#64]),
        Flapjack.Exp.const 32#64]))

def globalBody874_35 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "al_addrs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.const 0#64]))

def globalBody874_36 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nkeys"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nkeys",
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.const 16#64])])

def globalBody874_37 : Prog (BitVec 64) :=
.seq globalBody874_35 globalBody874_36

def globalBody874_38 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody874_39 : Prog (BitVec 64) :=
.seq globalBody874_37 globalBody874_38

def globalBody874_40 : Prog (BitVec 64) :=
.dec ("acc") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) globalBody874_39

def globalBody874_41 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nal")) globalBody874_40

def globalBody874_42 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def globalBody874_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "al_keys",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 52#64]],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc2", Flapjack.Exp.const 0#64]),
    Flapjack.Exp.const 20#64]

def globalBody874_44 : Prog (BitVec 64) :=
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

def globalBody874_45 : Prog (BitVec 64) :=
.seq globalBody874_43 globalBody874_44

def globalBody874_46 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def globalBody874_47 : Prog (BitVec 64) :=
.seq globalBody874_45 globalBody874_46

def globalBody874_48 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody874_49 : Prog (BitVec 64) :=
.seq globalBody874_47 globalBody874_48

def globalBody874_50 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "ns")) globalBody874_49

def globalBody874_51 : Prog (BitVec 64) :=
.seq globalBody874_50 globalBody874_38

def globalBody874_52 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody874_51

def globalBody874_53 : Prog (BitVec 64) :=
.dec ("ns") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acc2", Flapjack.Exp.const 16#64])) globalBody874_52

def globalBody874_54 : Prog (BitVec 64) :=
.dec ("acc2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) globalBody874_53

def globalBody874_55 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nal")) globalBody874_54

def globalBody874_56 : Prog (BitVec 64) :=
.seq globalBody874_42 globalBody874_55

def globalBody874_57 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "al_addrs")

def globalBody874_58 : Prog (BitVec 64) :=
.seq globalBody874_56 globalBody874_57

def globalBody874_59 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nal", Flapjack.Exp.const 1#64])

def globalBody874_60 : Prog (BitVec 64) :=
.seq globalBody874_58 globalBody874_59

def globalBody874_61 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "al_keys")

def globalBody874_62 : Prog (BitVec 64) :=
.seq globalBody874_60 globalBody874_61

def globalBody874_63 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nkeys")

def globalBody874_64 : Prog (BitVec 64) :=
.seq globalBody874_62 globalBody874_63

def globalBody874_65 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 256#64]))

def globalBody874_66 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64]))

def globalBody874_67 : Prog (BitVec 64) :=
.seq globalBody874_65 globalBody874_66

def globalBody874_68 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "isb") (Flapjack.Exp.const 0#64)) globalBody874_67 globalBody874_7

def globalBody874_69 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 272#64]))

def globalBody874_70 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 280#64]))

def globalBody874_71 : Prog (BitVec 64) :=
.seq globalBody874_69 globalBody874_70

def globalBody874_72 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "issc") (Flapjack.Exp.const 0#64)) globalBody874_71 globalBody874_7

def globalBody874_73 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.const 1#64)

def globalBody874_74 : Prog (BitVec 64) :=
.seq globalBody874_72 globalBody874_73

def globalBody874_75 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "index")

def globalBody874_76 : Prog (BitVec 64) :=
.seq globalBody874_74 globalBody874_75

def globalBody874_77 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "enc"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "enc"),
    Flapjack.Exp.var Flapjack.VarKind.local "txh"]

def globalBody874_78 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 176#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "txh")

def globalBody874_79 : Prog (BitVec 64) :=
.seq globalBody874_77 globalBody874_78

def globalBody874_80 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 184#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"))

def globalBody874_81 : Prog (BitVec 64) :=
.seq globalBody874_79 globalBody874_80

def globalBody874_82 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"))

def globalBody874_83 : Prog (BitVec 64) :=
.seq globalBody874_81 globalBody874_82

def globalBody874_84 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 408#64]))

def globalBody874_85 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "te")

def globalBody874_86 : Prog (BitVec 64) :=
.seq globalBody874_84 globalBody874_85

def globalBody874_87 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "sender")

def globalBody874_88 : Prog (BitVec 64) :=
.seq globalBody874_86 globalBody874_87

def globalBody874_89 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def globalBody874_90 : Prog (BitVec 64) :=
.seq globalBody874_88 globalBody874_89

def globalBody874_91 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "mgas")

def globalBody874_92 : Prog (BitVec 64) :=
.seq globalBody874_90 globalBody874_91

def globalBody874_93 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "reservoir")

def globalBody874_94 : Prog (BitVec 64) :=
.seq globalBody874_92 globalBody874_93

def globalBody874_95 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64]))

def globalBody874_96 : Prog (BitVec 64) :=
.seq globalBody874_94 globalBody874_95

def globalBody874_97 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa", Flapjack.Exp.var Flapjack.VarKind.local "sender",
    Flapjack.Exp.const 1#64]

def globalBody874_98 : Prog (BitVec 64) :=
.seq globalBody874_97 globalBody874_42

def globalBody874_99 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 424#64]),
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 20#64]],
    Flapjack.Exp.const 1#64]

def globalBody874_100 : Prog (BitVec 64) :=
.seq globalBody874_99 globalBody874_38

def globalBody874_101 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 18#64)) globalBody874_100

def globalBody874_102 : Prog (BitVec 64) :=
.seq globalBody874_98 globalBody874_101

def globalBody874_103 : Prog (BitVec 64) :=
.seq globalBody874_102 globalBody874_42

def globalBody874_104 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "al_addrs",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.const 1#64]

def globalBody874_105 : Prog (BitVec 64) :=
.seq globalBody874_104 globalBody874_38

def globalBody874_106 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nal", Flapjack.Exp.const 1#64])) globalBody874_105

def globalBody874_107 : Prog (BitVec 64) :=
.seq globalBody874_103 globalBody874_106

def globalBody874_108 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "ak",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "al_keys",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 52#64]],
    Flapjack.Exp.const 1#64]

def globalBody874_109 : Prog (BitVec 64) :=
.seq globalBody874_108 globalBody874_38

def globalBody874_110 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nkeys")) globalBody874_109

def globalBody874_111 : Prog (BitVec 64) :=
.seq globalBody874_42 globalBody874_110

def globalBody874_112 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "compute_contract_address"
  [Flapjack.Exp.var Flapjack.VarKind.local "sender",
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sa", Flapjack.Exp.const 0#64]),
        Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "ct"]

def globalBody874_113 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ct")

def globalBody874_114 : Prog (BitVec 64) :=
.seq globalBody874_112 globalBody874_113

def globalBody874_115 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "empty")

def globalBody874_116 : Prog (BitVec 64) :=
.seq globalBody874_114 globalBody874_115

def globalBody874_117 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.const 0#64)

def globalBody874_118 : Prog (BitVec 64) :=
.seq globalBody874_116 globalBody874_117

def globalBody874_119 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 192#64]))

def globalBody874_120 : Prog (BitVec 64) :=
.seq globalBody874_118 globalBody874_119

def globalBody874_121 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64]))

def globalBody874_122 : Prog (BitVec 64) :=
.seq globalBody874_120 globalBody874_121

def globalBody874_123 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 0#64)

def globalBody874_124 : Prog (BitVec 64) :=
.seq globalBody874_122 globalBody874_123

def globalBody874_125 : Prog (BitVec 64) :=
.decCall ("ct") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody874_124

def globalBody874_126 : Prog (BitVec 64) :=
.decCall ("sa") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) globalBody874_125

def globalBody874_127 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def globalBody874_128 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 192#64]))

def globalBody874_129 : Prog (BitVec 64) :=
.seq globalBody874_127 globalBody874_128

def globalBody874_130 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64]))

def globalBody874_131 : Prog (BitVec 64) :=
.seq globalBody874_129 globalBody874_130

def globalBody874_132 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "empty")

def globalBody874_133 : Prog (BitVec 64) :=
.seq globalBody874_131 globalBody874_132

def globalBody874_134 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.const 0#64)

def globalBody874_135 : Prog (BitVec 64) :=
.seq globalBody874_133 globalBody874_134

def globalBody874_136 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def globalBody874_137 : Prog (BitVec 64) :=
.seq globalBody874_135 globalBody874_136

def globalBody874_138 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))
  (Flapjack.Exp.const 0#64)) globalBody874_126 globalBody874_137

def globalBody874_139 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.const 1#64)

def globalBody874_140 : Prog (BitVec 64) :=
.seq globalBody874_138 globalBody874_139

def globalBody874_141 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "aa",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 1#64]

def globalBody874_142 : Prog (BitVec 64) :=
.seq globalBody874_140 globalBody874_141

def globalBody874_143 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "aa")

def globalBody874_144 : Prog (BitVec 64) :=
.seq globalBody874_142 globalBody874_143

def globalBody874_145 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ak")

def globalBody874_146 : Prog (BitVec 64) :=
.seq globalBody874_144 globalBody874_145

def globalBody874_147 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "create_ether"
  [Flapjack.Exp.var Flapjack.VarKind.local "sender",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "gra"),
        Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "gra"),
        Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "gra"),
        Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "gra")]]

def globalBody874_148 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "create_ether"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 408#64]),
          Flapjack.Exp.const 32#64]),
    Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "tf"),
        Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "tf"),
        Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "tf"),
        Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "tf")]]

def globalBody874_149 : Prog (BitVec 64) :=
.seq globalBody874_147 globalBody874_148

def globalBody874_150 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "tx_state_gas_nat" (Flapjack.Exp.const 0#64)

def globalBody874_151 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas") (Flapjack.Exp.const 0#64)) globalBody874_150 globalBody874_7

def globalBody874_152 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
            Flapjack.Exp.const 0#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_regular_gas"])

def globalBody874_153 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
            Flapjack.Exp.const 8#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas_nat"])

def globalBody874_154 : Prog (BitVec 64) :=
.seq globalBody874_152 globalBody874_153

def globalBody874_155 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
      Flapjack.Exp.const 48#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
            Flapjack.Exp.const 48#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas_used"])

def globalBody874_156 : Prog (BitVec 64) :=
.seq globalBody874_154 globalBody874_155

def globalBody874_157 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
            Flapjack.Exp.const 16#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used"])

def globalBody874_158 : Prog (BitVec 64) :=
.seq globalBody874_156 globalBody874_157

def globalBody874_159 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "logs"), none)) "lst_new"
  [Flapjack.Exp.const 8#64, Flapjack.Exp.const 1#64]

def globalBody874_160 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "logs") (Flapjack.Exp.const 0#64)) globalBody874_159 globalBody874_7

def globalBody874_161 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "succeeded" (Flapjack.Exp.const 0#64)

def globalBody874_162 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]))
  (Flapjack.Exp.const 0#64)) globalBody874_161 globalBody874_7

def globalBody874_163 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
            Flapjack.Exp.const 32#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64]])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "rc"))

def globalBody874_164 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
            Flapjack.Exp.const 32#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "index", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "rc"))

def globalBody874_165 : Prog (BitVec 64) :=
.seq globalBody874_163 globalBody874_164

def globalBody874_166 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "slot")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "lp",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]))

def globalBody874_167 : Prog (BitVec 64) :=
.seq globalBody874_166 globalBody874_38

def globalBody874_168 : Prog (BitVec 64) :=
.decCall ("slot") (Flapjack.Shape.one) ("lst_push") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
        Flapjack.Exp.const 40#64]),
  Flapjack.Exp.const 8#64]) globalBody874_167

def globalBody874_169 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")) globalBody874_168

def globalBody874_170 : Prog (BitVec 64) :=
.seq globalBody874_42 globalBody874_169

def globalBody874_171 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "stable_log_cap" (Flapjack.Exp.const 1#64)

def globalBody874_172 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "stable_log_cap") (Flapjack.Exp.const 0#64)) globalBody874_171 globalBody874_7

def globalBody874_173 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stable_logs", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")

def globalBody874_174 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "stable_lp",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "lp",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]))

def globalBody874_175 : Prog (BitVec 64) :=
.seq globalBody874_174 globalBody874_38

def globalBody874_176 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")) globalBody874_175

def globalBody874_177 : Prog (BitVec 64) :=
.seq globalBody874_42 globalBody874_176

def globalBody874_178 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "rl")
  (Flapjack.Exp.var Flapjack.VarKind.local "stable_logs")

def globalBody874_179 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "clear_account_preserving_balance"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s")]

def globalBody874_180 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) globalBody874_179 globalBody874_7

def globalBody874_181 : Prog (BitVec 64) :=
.seq globalBody874_180 globalBody874_38

def globalBody874_182 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "del", Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody874_181

def globalBody874_183 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "dcap")) globalBody874_182

def globalBody874_184 : Prog (BitVec 64) :=
.seq globalBody874_42 globalBody874_183

def globalBody874_185 : Prog (BitVec 64) :=
.dec ("dcap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "del", Flapjack.Exp.const 24#64])) globalBody874_184

def globalBody874_186 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "del") (Flapjack.Exp.const 0#64)) globalBody874_185 globalBody874_7

def globalBody874_187 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "incorporate_tx_into_block" []

def globalBody874_188 : Prog (BitVec 64) :=
.seq globalBody874_186 globalBody874_187

def globalBody874_189 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "tx_frame_mark"]

def globalBody874_190 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_mem_release"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 88#64])]

def globalBody874_191 : Prog (BitVec 64) :=
.seq globalBody874_189 globalBody874_190

def globalBody874_192 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "tx_frame_mark")
  (Flapjack.Exp.const 0#64)) globalBody874_191 globalBody874_7

def globalBody874_193 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody874_194 : Prog (BitVec 64) :=
.seq globalBody874_192 globalBody874_193

def globalBody874_195 : Prog (BitVec 64) :=
.dec ("tx_frame_mark") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 80#64])) globalBody874_194

def globalBody874_196 : Prog (BitVec 64) :=
.seq globalBody874_188 globalBody874_195

def globalBody874_197 : Prog (BitVec 64) :=
.dec ("del") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 24#64])) globalBody874_196

def globalBody874_198 : Prog (BitVec 64) :=
.seq globalBody874_178 globalBody874_197

def globalBody874_199 : Prog (BitVec 64) :=
.decCall ("rl") (Flapjack.Shape.one) ("lst_push") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
        Flapjack.Exp.const 72#64]),
  Flapjack.Exp.const 8#64]) globalBody874_198

def globalBody874_200 : Prog (BitVec 64) :=
.seq globalBody874_177 globalBody874_199

def globalBody874_201 : Prog (BitVec 64) :=
.dec ("stable_lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stable_logs", Flapjack.Exp.const 0#64])) globalBody874_200

def globalBody874_202 : Prog (BitVec 64) :=
.seq globalBody874_173 globalBody874_201

def globalBody874_203 : Prog (BitVec 64) :=
.decCall ("stable_logs") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.var Flapjack.VarKind.local "stable_log_cap"]) globalBody874_202

def globalBody874_204 : Prog (BitVec 64) :=
.seq globalBody874_172 globalBody874_203

def globalBody874_205 : Prog (BitVec 64) :=
.dec ("stable_log_cap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "nl") globalBody874_204

def globalBody874_206 : Prog (BitVec 64) :=
.seq globalBody874_170 globalBody874_205

def globalBody874_207 : Prog (BitVec 64) :=
.dec ("lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 0#64])) globalBody874_206

def globalBody874_208 : Prog (BitVec 64) :=
.dec ("nl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 8#64])) globalBody874_207

def globalBody874_209 : Prog (BitVec 64) :=
.seq globalBody874_165 globalBody874_208

def globalBody874_210 : Prog (BitVec 64) :=
.decCall ("rc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_receipt") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "succeeded",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
        Flapjack.Exp.const 16#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "logs"]) globalBody874_209

def globalBody874_211 : Prog (BitVec 64) :=
.seq globalBody874_162 globalBody874_210

def globalBody874_212 : Prog (BitVec 64) :=
.dec ("succeeded") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) globalBody874_211

def globalBody874_213 : Prog (BitVec 64) :=
.seq globalBody874_160 globalBody874_212

def globalBody874_214 : Prog (BitVec 64) :=
.dec ("logs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64])) globalBody874_213

def globalBody874_215 : Prog (BitVec 64) :=
.seq globalBody874_158 globalBody874_214

def globalBody874_216 : Prog (BitVec 64) :=
.decCall ("tx_regular_gas") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund",
      Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas_nat"],
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) globalBody874_215

def globalBody874_217 : Prog (BitVec 64) :=
.seq globalBody874_151 globalBody874_216

def globalBody874_218 : Prog (BitVec 64) :=
.dec ("tx_state_gas_nat") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "tx_state_gas") globalBody874_217

def globalBody874_219 : Prog (BitVec 64) :=
.dec ("tx_state_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 72#64])]) globalBody874_218

def globalBody874_220 : Prog (BitVec 64) :=
.seq globalBody874_149 globalBody874_219

def globalBody874_221 : Prog (BitVec 64) :=
.decCall ("tf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used", Flapjack.Exp.var Flapjack.VarKind.local "priority_fee"]) globalBody874_220

def globalBody874_222 : Prog (BitVec 64) :=
.decCall ("priority_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "price",
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 408#64]),
        Flapjack.Exp.const 48#64])]) globalBody874_221

def globalBody874_223 : Prog (BitVec 64) :=
.decCall ("gra") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_left", Flapjack.Exp.var Flapjack.VarKind.local "price"]) globalBody874_222

def globalBody874_224 : Prog (BitVec 64) :=
.dec ("tx_gas_left") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "tx_gas_used"]) globalBody874_223

def globalBody874_225 : Prog (BitVec 64) :=
.decCall ("tx_gas_used") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "used_after_refund",
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) globalBody874_224

def globalBody874_226 : Prog (BitVec 64) :=
.dec ("used_after_refund") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund", Flapjack.Exp.var Flapjack.VarKind.local "refund"]) globalBody874_225

def globalBody874_227 : Prog (BitVec 64) :=
.decCall ("refund") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.var Flapjack.VarKind.local "ubr5",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 8#64])]) globalBody874_226

def globalBody874_228 : Prog (BitVec 64) :=
.decCall ("ubr5") (Flapjack.Shape.one) ("udiv_small5") ([Flapjack.Exp.var Flapjack.VarKind.local "used_before_refund"]) globalBody874_227

def globalBody874_229 : Prog (BitVec 64) :=
.dec ("used_before_refund") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "gas",
        Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 0#64])],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 56#64])]) globalBody874_228

def globalBody874_230 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("process_message_call") ([Flapjack.Exp.var Flapjack.VarKind.local "m"]) globalBody874_229

def globalBody874_231 : Prog (BitVec 64) :=
.seq globalBody874_146 globalBody874_230

def globalBody874_232 : Prog (BitVec 64) :=
.decCall ("empty") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) globalBody874_231

def globalBody874_233 : Prog (BitVec 64) :=
.seq globalBody874_111 globalBody874_232

def globalBody874_234 : Prog (BitVec 64) :=
.decCall ("ak") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 52#64, Flapjack.Exp.const 16#64]) globalBody874_233

def globalBody874_235 : Prog (BitVec 64) :=
.seq globalBody874_107 globalBody874_234

def globalBody874_236 : Prog (BitVec 64) :=
.decCall ("aa") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]) globalBody874_235

def globalBody874_237 : Prog (BitVec 64) :=
.seq globalBody874_96 globalBody874_236

def globalBody874_238 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("msg_new") ([]) globalBody874_237

def globalBody874_239 : Prog (BitVec 64) :=
.seq globalBody874_83 globalBody874_238

def globalBody874_240 : Prog (BitVec 64) :=
.decCall ("txh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody874_239

def globalBody874_241 : Prog (BitVec 64) :=
.seq globalBody874_76 globalBody874_240

def globalBody874_242 : Prog (BitVec 64) :=
.decCall ("issc") (Flapjack.Shape.one) ("tx_is_setcode") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) globalBody874_241

def globalBody874_243 : Prog (BitVec 64) :=
.seq globalBody874_68 globalBody874_242

def globalBody874_244 : Prog (BitVec 64) :=
.decCall ("isb") (Flapjack.Shape.one) ("tx_is_blob") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) globalBody874_243

def globalBody874_245 : Prog (BitVec 64) :=
.seq globalBody874_64 globalBody874_244

def globalBody874_246 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody874_245

def globalBody874_247 : Prog (BitVec 64) :=
.decCall ("al_keys") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nkeys", Flapjack.Exp.const 52#64],
      Flapjack.Exp.const 8#64]]) globalBody874_246

def globalBody874_248 : Prog (BitVec 64) :=
.seq globalBody874_41 globalBody874_247

def globalBody874_249 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody874_248

def globalBody874_250 : Prog (BitVec 64) :=
.dec ("nkeys") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody874_249

def globalBody874_251 : Prog (BitVec 64) :=
.seq globalBody874_34 globalBody874_250

def globalBody874_252 : Prog (BitVec 64) :=
.decCall ("al_addrs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nal", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) globalBody874_251

def globalBody874_253 : Prog (BitVec 64) :=
.seq globalBody874_33 globalBody874_252

def globalBody874_254 : Prog (BitVec 64) :=
.decCall ("hal") (Flapjack.Shape.one) ("tx_has_access_list") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) globalBody874_253

def globalBody874_255 : Prog (BitVec 64) :=
.dec ("nal") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody874_254

def globalBody874_256 : Prog (BitVec 64) :=
.seq globalBody874_31 globalBody874_255

def globalBody874_257 : Prog (BitVec 64) :=
.decCall ("te") (Flapjack.Shape.one) ("te_new") ([]) globalBody874_256

def globalBody874_258 : Prog (BitVec 64) :=
.seq globalBody874_20 globalBody874_257

def globalBody874_259 : Prog (BitVec 64) :=
.dec ("bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 8#64])) globalBody874_258

def globalBody874_260 : Prog (BitVec 64) :=
.seq globalBody874_15 globalBody874_259

def globalBody874_261 : Prog (BitVec 64) :=
.dec ("reservoir") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "execution_gas", Flapjack.Exp.var Flapjack.VarKind.local "mgas"]) globalBody874_260

def globalBody874_262 : Prog (BitVec 64) :=
.decCall ("mgas") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.var Flapjack.VarKind.local "regular_budget", Flapjack.Exp.var Flapjack.VarKind.local "execution_gas"]) globalBody874_261

def globalBody874_263 : Prog (BitVec 64) :=
.dec ("regular_budget") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.const 16777216#64, Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) globalBody874_262

def globalBody874_264 : Prog (BitVec 64) :=
.dec ("execution_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "intrinsic_gas"]) globalBody874_263

def globalBody874_265 : Prog (BitVec 64) :=
.dec ("effective_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "egf"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "egf")]) globalBody874_264

def globalBody874_266 : Prog (BitVec 64) :=
.decCall ("egf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "price"]) globalBody874_265

def globalBody874_267 : Prog (BitVec 64) :=
.dec ("gas") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])) globalBody874_266

def globalBody874_268 : Prog (BitVec 64) :=
.seq globalBody874_14 globalBody874_267

def globalBody874_269 : Prog (BitVec 64) :=
.dec ("blob_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody874_268

def globalBody874_270 : Prog (BitVec 64) :=
.decCall ("acct") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) globalBody874_269

def globalBody874_271 : Prog (BitVec 64) :=
.decCall ("tx_blob_gas_used") (Flapjack.Shape.one) ("calculate_total_blob_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) globalBody874_270

def globalBody874_272 : Prog (BitVec 64) :=
.decCall ("price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("check_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) globalBody874_271

def globalBody874_273 : Prog (BitVec 64) :=
.dec ("intrinsic_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "intrinsic")]) globalBody874_272

def globalBody874_274 : Prog (BitVec 64) :=
.decCall ("intrinsic") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("validate_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) globalBody874_273

def globalBody874_275 : Prog (BitVec 64) :=
.seq globalBody874_10 globalBody874_274

def globalBody874_276 : Prog (BitVec 64) :=
.decCall ("sender") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody874_275

def globalBody874_277 : Prog (BitVec 64) :=
.seq globalBody874_9 globalBody874_276

def globalBody874_278 : Prog (BitVec 64) :=
.decCall ("cid") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_chain_id") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) globalBody874_277

def globalBody874_279 : Prog (BitVec 64) :=
.seq globalBody874_5 globalBody874_278

def globalBody874_280 : Prog (BitVec 64) :=
.decCall ("enc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) globalBody874_279

def globalBody874_281 : Prog (BitVec 64) :=
.seq globalBody874_2 globalBody874_280

def globalData874 : Decl (BitVec 64) :=
.function { name := "process_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("index", Flapjack.Shape.one)], body := globalBody874_281, returnShape := (Flapjack.Shape.one) }
def globalOutput874 := Pancake.PanLang.declToHOL globalData874
end InitECandidate.Proofs.FrontendStages.Declarations
