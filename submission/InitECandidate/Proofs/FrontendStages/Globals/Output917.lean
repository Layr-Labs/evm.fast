import InitECandidate.Proofs.FrontendStages.Declarations.Data917
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody917_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody917_1 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 88#64]) globalBody917_0

def globalBody917_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
    Flapjack.Exp.const 88#64]

def globalBody917_3 : Prog (BitVec 64) :=
.seq globalBody917_1 globalBody917_2

def globalBody917_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "txs")

def globalBody917_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "rcs")

def globalBody917_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
      Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "logs")

def globalBody917_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
      Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "reqs")

def globalBody917_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
      Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "rls")

def globalBody917_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
      Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")

def globalBody917_10 : Prog (BitVec 64) :=
.seq globalBody917_8 globalBody917_9

def globalBody917_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bal_init" []

def globalBody917_12 : Prog (BitVec 64) :=
.seq globalBody917_10 globalBody917_11

def globalBody917_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_unchecked_system_transaction"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 672#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.const 32#64]

def globalBody917_14 : Prog (BitVec 64) :=
.seq globalBody917_12 globalBody917_13

def globalBody917_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "lasth"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 648#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.load Flapjack.Shape.one
                (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 656#64]),
              Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 32#64]])

def globalBody917_16 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody917_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 656#64]))) globalBody917_15 globalBody917_16

def globalBody917_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_unchecked_system_transaction"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 680#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "lasth", Flapjack.Exp.const 32#64]

def globalBody917_19 : Prog (BitVec 64) :=
.seq globalBody917_17 globalBody917_18

def globalBody917_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_fresh_tx" []

def globalBody917_21 : Prog (BitVec 64) :=
.seq globalBody917_19 globalBody917_20

def globalBody917_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "track_ancestor_access" [Flapjack.Exp.const 1#64]

def globalBody917_23 : Prog (BitVec 64) :=
.seq globalBody917_21 globalBody917_22

def globalBody917_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_transaction"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "i"]

def globalBody917_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody917_26 : Prog (BitVec 64) :=
.seq globalBody917_24 globalBody917_25

def globalBody917_27 : Prog (BitVec 64) :=
.decCall ("tx") (Flapjack.Shape.one) ("decode_transaction") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "ptxs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "ptxs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) globalBody917_26

def globalBody917_28 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")) globalBody917_27

def globalBody917_29 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 224#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 1#64])

def globalBody917_30 : Prog (BitVec 64) :=
.seq globalBody917_28 globalBody917_29

def globalBody917_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_withdrawals" [Flapjack.Exp.var Flapjack.VarKind.local "pl"]

def globalBody917_32 : Prog (BitVec 64) :=
.seq globalBody917_30 globalBody917_31

def globalBody917_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_general_purpose_requests" []

def globalBody917_34 : Prog (BitVec 64) :=
.seq globalBody917_32 globalBody917_33

def globalBody917_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "validate_block_access_list_gas_limit"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 616#64]),
          Flapjack.Exp.const 8#64])]

def globalBody917_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "compute_state_root" [Flapjack.Exp.var Flapjack.VarKind.local "root"]

def globalBody917_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "build_mpt_indexed"
  [Flapjack.Exp.var Flapjack.VarKind.local "txs", Flapjack.Exp.var Flapjack.VarKind.local "ntx",
    Flapjack.Exp.var Flapjack.VarKind.local "txroot"]

def globalBody917_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "build_mpt_indexed"
  [Flapjack.Exp.var Flapjack.VarKind.local "rcs", Flapjack.Exp.var Flapjack.VarKind.local "ntx",
    Flapjack.Exp.var Flapjack.VarKind.local "rroot"]

def globalBody917_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "logs_bloom"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
          Flapjack.Exp.const 40#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "bloom"]

def globalBody917_40 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "build_mpt_indexed"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 736#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 56#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "wroot"]

def globalBody917_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "compute_requests_hash"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
          Flapjack.Exp.const 56#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
          Flapjack.Exp.const 64#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "rqh"]

def globalBody917_42 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "bal"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bal"),
    Flapjack.Exp.var Flapjack.VarKind.local "balh"]

def globalBody917_43 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 110#64)

def globalBody917_44 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "bgu")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 112#64]))) globalBody917_43 globalBody917_16

def globalBody917_45 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 111#64)

def globalBody917_46 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody917_45 globalBody917_16

def globalBody917_47 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "root",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 32#64]

def globalBody917_48 : Prog (BitVec 64) :=
.seq globalBody917_46 globalBody917_47

def globalBody917_49 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 112#64)

def globalBody917_50 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody917_49 globalBody917_16

def globalBody917_51 : Prog (BitVec 64) :=
.seq globalBody917_48 globalBody917_50

def globalBody917_52 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "rroot",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.const 32#64]

def globalBody917_53 : Prog (BitVec 64) :=
.seq globalBody917_51 globalBody917_52

def globalBody917_54 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 113#64)

def globalBody917_55 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody917_54 globalBody917_16

def globalBody917_56 : Prog (BitVec 64) :=
.seq globalBody917_53 globalBody917_55

def globalBody917_57 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "bloom",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 56#64]),
    Flapjack.Exp.const 256#64]

def globalBody917_58 : Prog (BitVec 64) :=
.seq globalBody917_56 globalBody917_57

def globalBody917_59 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 114#64)

def globalBody917_60 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody917_59 globalBody917_16

def globalBody917_61 : Prog (BitVec 64) :=
.seq globalBody917_58 globalBody917_60

def globalBody917_62 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "wroot",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 192#64]),
    Flapjack.Exp.const 32#64]

def globalBody917_63 : Prog (BitVec 64) :=
.seq globalBody917_61 globalBody917_62

def globalBody917_64 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 115#64)

def globalBody917_65 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody917_64 globalBody917_16

def globalBody917_66 : Prog (BitVec 64) :=
.seq globalBody917_63 globalBody917_65

def globalBody917_67 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 116#64)

def globalBody917_68 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
        Flapjack.Exp.const 48#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 200#64]))) globalBody917_67 globalBody917_16

def globalBody917_69 : Prog (BitVec 64) :=
.seq globalBody917_66 globalBody917_68

def globalBody917_70 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "rqh",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 224#64]),
    Flapjack.Exp.const 32#64]

def globalBody917_71 : Prog (BitVec 64) :=
.seq globalBody917_69 globalBody917_70

def globalBody917_72 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 117#64)

def globalBody917_73 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody917_72 globalBody917_16

def globalBody917_74 : Prog (BitVec 64) :=
.seq globalBody917_71 globalBody917_73

def globalBody917_75 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "balh",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 232#64]),
    Flapjack.Exp.const 32#64]

def globalBody917_76 : Prog (BitVec 64) :=
.seq globalBody917_74 globalBody917_75

def globalBody917_77 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 118#64)

def globalBody917_78 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody917_77 globalBody917_16

def globalBody917_79 : Prog (BitVec 64) :=
.seq globalBody917_76 globalBody917_78

def globalBody917_80 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody917_81 : Prog (BitVec 64) :=
.seq globalBody917_79 globalBody917_80

def globalBody917_82 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "txroot",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 40#64]),
  Flapjack.Exp.const 32#64]) globalBody917_81

def globalBody917_83 : Prog (BitVec 64) :=
.seq globalBody917_44 globalBody917_82

def globalBody917_84 : Prog (BitVec 64) :=
.decCall ("bgu") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
        Flapjack.Exp.const 0#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
        Flapjack.Exp.const 8#64])]) globalBody917_83

def globalBody917_85 : Prog (BitVec 64) :=
.seq globalBody917_42 globalBody917_84

def globalBody917_86 : Prog (BitVec 64) :=
.decCall ("balh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody917_85

def globalBody917_87 : Prog (BitVec 64) :=
.seq globalBody917_41 globalBody917_86

def globalBody917_88 : Prog (BitVec 64) :=
.decCall ("rqh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody917_87

def globalBody917_89 : Prog (BitVec 64) :=
.seq globalBody917_40 globalBody917_88

def globalBody917_90 : Prog (BitVec 64) :=
.decCall ("wroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody917_89

def globalBody917_91 : Prog (BitVec 64) :=
.seq globalBody917_39 globalBody917_90

def globalBody917_92 : Prog (BitVec 64) :=
.decCall ("bloom") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) globalBody917_91

def globalBody917_93 : Prog (BitVec 64) :=
.seq globalBody917_38 globalBody917_92

def globalBody917_94 : Prog (BitVec 64) :=
.decCall ("rroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody917_93

def globalBody917_95 : Prog (BitVec 64) :=
.seq globalBody917_37 globalBody917_94

def globalBody917_96 : Prog (BitVec 64) :=
.decCall ("txroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody917_95

def globalBody917_97 : Prog (BitVec 64) :=
.seq globalBody917_36 globalBody917_96

def globalBody917_98 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody917_97

def globalBody917_99 : Prog (BitVec 64) :=
.seq globalBody917_35 globalBody917_98

def globalBody917_100 : Prog (BitVec 64) :=
.decCall ("bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("build_block_access_list_rlp") ([]) globalBody917_99

def globalBody917_101 : Prog (BitVec 64) :=
.seq globalBody917_34 globalBody917_100

def globalBody917_102 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody917_101

def globalBody917_103 : Prog (BitVec 64) :=
.dec ("ptxs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) globalBody917_102

def globalBody917_104 : Prog (BitVec 64) :=
.seq globalBody917_23 globalBody917_103

def globalBody917_105 : Prog (BitVec 64) :=
.dec ("lasth") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 640#64])) globalBody917_104

def globalBody917_106 : Prog (BitVec 64) :=
.seq globalBody917_14 globalBody917_105

def globalBody917_107 : Prog (BitVec 64) :=
.decCall ("rls") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]) globalBody917_106

def globalBody917_108 : Prog (BitVec 64) :=
.seq globalBody917_7 globalBody917_107

def globalBody917_109 : Prog (BitVec 64) :=
.decCall ("reqs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]]) globalBody917_108

def globalBody917_110 : Prog (BitVec 64) :=
.seq globalBody917_6 globalBody917_109

def globalBody917_111 : Prog (BitVec 64) :=
.decCall ("logs") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]) globalBody917_110

def globalBody917_112 : Prog (BitVec 64) :=
.seq globalBody917_5 globalBody917_111

def globalBody917_113 : Prog (BitVec 64) :=
.decCall ("rcs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 16#64]]) globalBody917_112

def globalBody917_114 : Prog (BitVec 64) :=
.seq globalBody917_4 globalBody917_113

def globalBody917_115 : Prog (BitVec 64) :=
.decCall ("txs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 16#64]]) globalBody917_114

def globalBody917_116 : Prog (BitVec 64) :=
.seq globalBody917_3 globalBody917_115

def globalBody917_117 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) globalBody917_116

def globalBody917_118 : Prog (BitVec 64) :=
.dec ("pl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 0#64])) globalBody917_117

def globalData917 : Decl (BitVec 64) := .function { name := "execute_block", inline := false, exported := false, params := [("si", Flapjack.Shape.one), ("hdr", Flapjack.Shape.one)], body := globalBody917_118, returnShape := (Flapjack.Shape.one) }
def globalOutput917 := Pancake.PanLang.declToHOL globalData917
end InitECandidate.Proofs.FrontendStages.Declarations
