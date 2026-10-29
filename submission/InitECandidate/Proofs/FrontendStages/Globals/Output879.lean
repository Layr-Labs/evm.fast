import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data879
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate862
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody879_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody879_1 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 88#64]) globalBody879_0

def globalBody879_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
    Flapjack.Exp.const 88#64]

def globalBody879_3 : Prog (BitVec 64) :=
.seq globalBody879_1 globalBody879_2

def globalBody879_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "txs")

def globalBody879_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "rcs")

def globalBody879_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
      Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "logs")

def globalBody879_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
      Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "reqs")

def globalBody879_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
      Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "rls")

def globalBody879_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
      Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")

def globalBody879_10 : Prog (BitVec 64) :=
.seq globalBody879_8 globalBody879_9

def globalBody879_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bal_init" []

def globalBody879_12 : Prog (BitVec 64) :=
.seq globalBody879_10 globalBody879_11

def globalBody879_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_unchecked_system_transaction"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 464#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.const 32#64]

def globalBody879_14 : Prog (BitVec 64) :=
.seq globalBody879_12 globalBody879_13

def globalBody879_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "lasth"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 440#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.load Flapjack.Shape.one
                (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 448#64]),
              Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 32#64]])

def globalBody879_16 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody879_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 448#64]))) globalBody879_15 globalBody879_16

def globalBody879_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_unchecked_system_transaction"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 472#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "lasth", Flapjack.Exp.const 32#64]

def globalBody879_19 : Prog (BitVec 64) :=
.seq globalBody879_17 globalBody879_18

def globalBody879_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_fresh_tx" []

def globalBody879_21 : Prog (BitVec 64) :=
.seq globalBody879_19 globalBody879_20

def globalBody879_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "track_ancestor_access" [Flapjack.Exp.const 1#64]

def globalBody879_23 : Prog (BitVec 64) :=
.seq globalBody879_21 globalBody879_22

def globalBody879_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_transaction"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "i"]

def globalBody879_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody879_26 : Prog (BitVec 64) :=
.seq globalBody879_24 globalBody879_25

def globalBody879_27 : Prog (BitVec 64) :=
.decCall ("tx") (Flapjack.Shape.one) ("decode_transaction") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "ptxs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "ptxs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) globalBody879_26

def globalBody879_28 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")) globalBody879_27

def globalBody879_29 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 224#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 1#64])

def globalBody879_30 : Prog (BitVec 64) :=
.seq globalBody879_28 globalBody879_29

def globalBody879_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_withdrawals" [Flapjack.Exp.var Flapjack.VarKind.local "pl"]

def globalBody879_32 : Prog (BitVec 64) :=
.seq globalBody879_30 globalBody879_31

def globalBody879_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_general_purpose_requests" []

def globalBody879_34 : Prog (BitVec 64) :=
.seq globalBody879_32 globalBody879_33

def globalBody879_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "validate_block_access_list_gas_limit"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 408#64]),
          Flapjack.Exp.const 8#64])]

def globalBody879_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "compute_state_root" [Flapjack.Exp.var Flapjack.VarKind.local "root"]

def globalBody879_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "build_mpt_indexed"
  [Flapjack.Exp.var Flapjack.VarKind.local "txs", Flapjack.Exp.var Flapjack.VarKind.local "ntx",
    Flapjack.Exp.var Flapjack.VarKind.local "txroot"]

def globalBody879_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "build_mpt_indexed"
  [Flapjack.Exp.var Flapjack.VarKind.local "rcs", Flapjack.Exp.var Flapjack.VarKind.local "ntx",
    Flapjack.Exp.var Flapjack.VarKind.local "rroot"]

def globalBody879_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "logs_bloom"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
          Flapjack.Exp.const 40#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "bloom"]

def globalBody879_40 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "build_mpt_indexed"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 528#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 56#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "wroot"]

def globalBody879_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "compute_requests_hash"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
          Flapjack.Exp.const 56#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
          Flapjack.Exp.const 64#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "rqh"]

def globalBody879_42 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "bal"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bal"),
    Flapjack.Exp.var Flapjack.VarKind.local "balh"]

def globalBody879_43 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 110#64)

def globalBody879_44 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "bgu")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 112#64]))) globalBody879_43 globalBody879_16

def globalBody879_45 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 111#64)

def globalBody879_46 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody879_45 globalBody879_16

def globalBody879_47 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "root",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 32#64]

def globalBody879_48 : Prog (BitVec 64) :=
.seq globalBody879_46 globalBody879_47

def globalBody879_49 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 112#64)

def globalBody879_50 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody879_49 globalBody879_16

def globalBody879_51 : Prog (BitVec 64) :=
.seq globalBody879_48 globalBody879_50

def globalBody879_52 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "rroot",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.const 32#64]

def globalBody879_53 : Prog (BitVec 64) :=
.seq globalBody879_51 globalBody879_52

def globalBody879_54 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 113#64)

def globalBody879_55 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody879_54 globalBody879_16

def globalBody879_56 : Prog (BitVec 64) :=
.seq globalBody879_53 globalBody879_55

def globalBody879_57 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "bloom",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 56#64]),
    Flapjack.Exp.const 256#64]

def globalBody879_58 : Prog (BitVec 64) :=
.seq globalBody879_56 globalBody879_57

def globalBody879_59 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 114#64)

def globalBody879_60 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody879_59 globalBody879_16

def globalBody879_61 : Prog (BitVec 64) :=
.seq globalBody879_58 globalBody879_60

def globalBody879_62 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "wroot",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 192#64]),
    Flapjack.Exp.const 32#64]

def globalBody879_63 : Prog (BitVec 64) :=
.seq globalBody879_61 globalBody879_62

def globalBody879_64 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 115#64)

def globalBody879_65 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody879_64 globalBody879_16

def globalBody879_66 : Prog (BitVec 64) :=
.seq globalBody879_63 globalBody879_65

def globalBody879_67 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 116#64)

def globalBody879_68 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
        Flapjack.Exp.const 48#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 200#64]))) globalBody879_67 globalBody879_16

def globalBody879_69 : Prog (BitVec 64) :=
.seq globalBody879_66 globalBody879_68

def globalBody879_70 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "rqh",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 224#64]),
    Flapjack.Exp.const 32#64]

def globalBody879_71 : Prog (BitVec 64) :=
.seq globalBody879_69 globalBody879_70

def globalBody879_72 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 117#64)

def globalBody879_73 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody879_72 globalBody879_16

def globalBody879_74 : Prog (BitVec 64) :=
.seq globalBody879_71 globalBody879_73

def globalBody879_75 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "balh",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 232#64]),
    Flapjack.Exp.const 32#64]

def globalBody879_76 : Prog (BitVec 64) :=
.seq globalBody879_74 globalBody879_75

def globalBody879_77 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 118#64)

def globalBody879_78 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody879_77 globalBody879_16

def globalBody879_79 : Prog (BitVec 64) :=
.seq globalBody879_76 globalBody879_78

def globalBody879_80 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody879_81 : Prog (BitVec 64) :=
.seq globalBody879_79 globalBody879_80

def globalBody879_82 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "txroot",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 40#64]),
  Flapjack.Exp.const 32#64]) globalBody879_81

def globalBody879_83 : Prog (BitVec 64) :=
.seq globalBody879_44 globalBody879_82

def globalBody879_84 : Prog (BitVec 64) :=
.decCall ("bgu") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
        Flapjack.Exp.const 0#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
        Flapjack.Exp.const 8#64])]) globalBody879_83

def globalBody879_85 : Prog (BitVec 64) :=
.seq globalBody879_42 globalBody879_84

def globalBody879_86 : Prog (BitVec 64) :=
.decCall ("balh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody879_85

def globalBody879_87 : Prog (BitVec 64) :=
.seq globalBody879_41 globalBody879_86

def globalBody879_88 : Prog (BitVec 64) :=
.decCall ("rqh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody879_87

def globalBody879_89 : Prog (BitVec 64) :=
.seq globalBody879_40 globalBody879_88

def globalBody879_90 : Prog (BitVec 64) :=
.decCall ("wroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody879_89

def globalBody879_91 : Prog (BitVec 64) :=
.seq globalBody879_39 globalBody879_90

def globalBody879_92 : Prog (BitVec 64) :=
.decCall ("bloom") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) globalBody879_91

def globalBody879_93 : Prog (BitVec 64) :=
.seq globalBody879_38 globalBody879_92

def globalBody879_94 : Prog (BitVec 64) :=
.decCall ("rroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody879_93

def globalBody879_95 : Prog (BitVec 64) :=
.seq globalBody879_37 globalBody879_94

def globalBody879_96 : Prog (BitVec 64) :=
.decCall ("txroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody879_95

def globalBody879_97 : Prog (BitVec 64) :=
.seq globalBody879_36 globalBody879_96

def globalBody879_98 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody879_97

def globalBody879_99 : Prog (BitVec 64) :=
.seq globalBody879_35 globalBody879_98

def globalBody879_100 : Prog (BitVec 64) :=
.decCall ("bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("build_block_access_list_rlp") ([]) globalBody879_99

def globalBody879_101 : Prog (BitVec 64) :=
.seq globalBody879_34 globalBody879_100

def globalBody879_102 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody879_101

def globalBody879_103 : Prog (BitVec 64) :=
.dec ("ptxs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) globalBody879_102

def globalBody879_104 : Prog (BitVec 64) :=
.seq globalBody879_23 globalBody879_103

def globalBody879_105 : Prog (BitVec 64) :=
.dec ("lasth") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 432#64])) globalBody879_104

def globalBody879_106 : Prog (BitVec 64) :=
.seq globalBody879_14 globalBody879_105

def globalBody879_107 : Prog (BitVec 64) :=
.decCall ("rls") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]) globalBody879_106

def globalBody879_108 : Prog (BitVec 64) :=
.seq globalBody879_7 globalBody879_107

def globalBody879_109 : Prog (BitVec 64) :=
.decCall ("reqs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]]) globalBody879_108

def globalBody879_110 : Prog (BitVec 64) :=
.seq globalBody879_6 globalBody879_109

def globalBody879_111 : Prog (BitVec 64) :=
.decCall ("logs") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]) globalBody879_110

def globalBody879_112 : Prog (BitVec 64) :=
.seq globalBody879_5 globalBody879_111

def globalBody879_113 : Prog (BitVec 64) :=
.decCall ("rcs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 16#64]]) globalBody879_112

def globalBody879_114 : Prog (BitVec 64) :=
.seq globalBody879_4 globalBody879_113

def globalBody879_115 : Prog (BitVec 64) :=
.decCall ("txs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 16#64]]) globalBody879_114

def globalBody879_116 : Prog (BitVec 64) :=
.seq globalBody879_3 globalBody879_115

def globalBody879_117 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) globalBody879_116

def globalBody879_118 : Prog (BitVec 64) :=
.dec ("pl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 0#64])) globalBody879_117

def globalData879 : Decl (BitVec 64) :=
.function { name := "execute_block", inline := false, exported := false, params := [("si", Flapjack.Shape.one), ("hdr", Flapjack.Shape.one)], body := globalBody879_118, returnShape := (Flapjack.Shape.one) }
def globalOutput879 := Pancake.PanLang.declToHOL globalData879
end InitECandidate.Proofs.FrontendStages.Declarations
