import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify863
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body879_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "bo"), none)) "alloc" [Flapjack.Exp.const 88#64]

def body879_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 88#64]

def body879_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "txs")

def body879_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "rcs")

def body879_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "logs")

def body879_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "reqs")

def body879_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "rls")

def body879_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")

def body879_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bal_init" []

def body879_9 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body879_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_unchecked_system_transaction"
  [Flapjack.Exp.var Flapjack.VarKind.global "beacon_roots_address",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.const 32#64]

def body879_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "lasth"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "block_hashes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.var Flapjack.VarKind.global "block_hashes_n", Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 32#64]])

def body879_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.var Flapjack.VarKind.global "block_hashes_n")) body879_11 body879_9

def body879_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_unchecked_system_transaction"
  [Flapjack.Exp.var Flapjack.VarKind.global "history_storage_address", Flapjack.Exp.var Flapjack.VarKind.local "lasth",
    Flapjack.Exp.const 32#64]

def body879_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_fresh_tx" []

def body879_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "track_ancestor_access" [Flapjack.Exp.const 1#64]

def body879_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_transaction"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "i"]

def body879_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body879_18 : Prog (BitVec 64) :=
.seq body879_9 body879_17

def body879_19 : Prog (BitVec 64) :=
.seq body879_16 body879_18

def body879_20 : Prog (BitVec 64) :=
.seq body879_9 body879_19

def body879_21 : Prog (BitVec 64) :=
.decCall ("tx") (Flapjack.Shape.one) ("decode_transaction") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "ptxs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "ptxs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body879_20

def body879_22 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")) body879_21

def body879_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "bal_index"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 1#64])

def body879_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_withdrawals" [Flapjack.Exp.var Flapjack.VarKind.local "pl"]

def body879_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_general_purpose_requests" []

def body879_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "validate_block_access_list_gas_limit"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 8#64])]

def body879_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "compute_state_root" [Flapjack.Exp.var Flapjack.VarKind.local "root"]

def body879_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "build_mpt_indexed"
  [Flapjack.Exp.var Flapjack.VarKind.local "txs", Flapjack.Exp.var Flapjack.VarKind.local "ntx",
    Flapjack.Exp.var Flapjack.VarKind.local "txroot"]

def body879_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "build_mpt_indexed"
  [Flapjack.Exp.var Flapjack.VarKind.local "rcs", Flapjack.Exp.var Flapjack.VarKind.local "ntx",
    Flapjack.Exp.var Flapjack.VarKind.local "rroot"]

def body879_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "logs_bloom"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "bloom"]

def body879_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "build_mpt_indexed"
  [Flapjack.Exp.var Flapjack.VarKind.global "wd_rlp_slices",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 56#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "wroot"]

def body879_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "compute_requests_hash"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 56#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 64#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "rqh"]

def body879_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "bal"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bal"),
    Flapjack.Exp.var Flapjack.VarKind.local "balh"]

def body879_34 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 110#64)

def body879_35 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "bgu")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 112#64]))) body879_34 body879_9

def body879_36 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 111#64)

def body879_37 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body879_36 body879_9

def body879_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "root",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 32#64]

def body879_39 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 112#64)

def body879_40 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body879_39 body879_9

def body879_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "rroot",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.const 32#64]

def body879_42 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 113#64)

def body879_43 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body879_42 body879_9

def body879_44 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "bloom",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 56#64]),
    Flapjack.Exp.const 256#64]

def body879_45 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 114#64)

def body879_46 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body879_45 body879_9

def body879_47 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "wroot",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 192#64]),
    Flapjack.Exp.const 32#64]

def body879_48 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 115#64)

def body879_49 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body879_48 body879_9

def body879_50 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 116#64)

def body879_51 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 48#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 200#64]))) body879_50 body879_9

def body879_52 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "rqh",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 224#64]),
    Flapjack.Exp.const 32#64]

def body879_53 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 117#64)

def body879_54 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body879_53 body879_9

def body879_55 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "balh",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 232#64]),
    Flapjack.Exp.const 32#64]

def body879_56 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 118#64)

def body879_57 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body879_56 body879_9

def body879_58 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body879_59 : Prog (BitVec 64) :=
.seq body879_57 body879_58

def body879_60 : Prog (BitVec 64) :=
.seq body879_55 body879_59

def body879_61 : Prog (BitVec 64) :=
.seq body879_54 body879_60

def body879_62 : Prog (BitVec 64) :=
.seq body879_52 body879_61

def body879_63 : Prog (BitVec 64) :=
.seq body879_51 body879_62

def body879_64 : Prog (BitVec 64) :=
.seq body879_49 body879_63

def body879_65 : Prog (BitVec 64) :=
.seq body879_47 body879_64

def body879_66 : Prog (BitVec 64) :=
.seq body879_46 body879_65

def body879_67 : Prog (BitVec 64) :=
.seq body879_44 body879_66

def body879_68 : Prog (BitVec 64) :=
.seq body879_43 body879_67

def body879_69 : Prog (BitVec 64) :=
.seq body879_41 body879_68

def body879_70 : Prog (BitVec 64) :=
.seq body879_40 body879_69

def body879_71 : Prog (BitVec 64) :=
.seq body879_38 body879_70

def body879_72 : Prog (BitVec 64) :=
.seq body879_37 body879_71

def body879_73 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "txroot",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 40#64]),
  Flapjack.Exp.const 32#64]) body879_72

def body879_74 : Prog (BitVec 64) :=
.seq body879_35 body879_73

def body879_75 : Prog (BitVec 64) :=
.decCall ("bgu") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 8#64])]) body879_74

def body879_76 : Prog (BitVec 64) :=
.seq body879_33 body879_75

def body879_77 : Prog (BitVec 64) :=
.decCall ("balh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body879_76

def body879_78 : Prog (BitVec 64) :=
.seq body879_32 body879_77

def body879_79 : Prog (BitVec 64) :=
.decCall ("rqh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body879_78

def body879_80 : Prog (BitVec 64) :=
.seq body879_31 body879_79

def body879_81 : Prog (BitVec 64) :=
.decCall ("wroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body879_80

def body879_82 : Prog (BitVec 64) :=
.seq body879_30 body879_81

def body879_83 : Prog (BitVec 64) :=
.decCall ("bloom") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) body879_82

def body879_84 : Prog (BitVec 64) :=
.seq body879_29 body879_83

def body879_85 : Prog (BitVec 64) :=
.decCall ("rroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body879_84

def body879_86 : Prog (BitVec 64) :=
.seq body879_28 body879_85

def body879_87 : Prog (BitVec 64) :=
.decCall ("txroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body879_86

def body879_88 : Prog (BitVec 64) :=
.seq body879_9 body879_87

def body879_89 : Prog (BitVec 64) :=
.seq body879_27 body879_88

def body879_90 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body879_89

def body879_91 : Prog (BitVec 64) :=
.seq body879_9 body879_90

def body879_92 : Prog (BitVec 64) :=
.seq body879_26 body879_91

def body879_93 : Prog (BitVec 64) :=
.decCall ("bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("build_block_access_list_rlp") ([]) body879_92

def body879_94 : Prog (BitVec 64) :=
.seq body879_9 body879_93

def body879_95 : Prog (BitVec 64) :=
.seq body879_25 body879_94

def body879_96 : Prog (BitVec 64) :=
.seq body879_9 body879_95

def body879_97 : Prog (BitVec 64) :=
.seq body879_24 body879_96

def body879_98 : Prog (BitVec 64) :=
.seq body879_9 body879_97

def body879_99 : Prog (BitVec 64) :=
.seq body879_23 body879_98

def body879_100 : Prog (BitVec 64) :=
.seq body879_22 body879_99

def body879_101 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body879_100

def body879_102 : Prog (BitVec 64) :=
.dec ("ptxs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) body879_101

def body879_103 : Prog (BitVec 64) :=
.seq body879_15 body879_102

def body879_104 : Prog (BitVec 64) :=
.seq body879_14 body879_103

def body879_105 : Prog (BitVec 64) :=
.seq body879_9 body879_104

def body879_106 : Prog (BitVec 64) :=
.seq body879_13 body879_105

def body879_107 : Prog (BitVec 64) :=
.seq body879_12 body879_106

def body879_108 : Prog (BitVec 64) :=
.dec ("lasth") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "zero32") body879_107

def body879_109 : Prog (BitVec 64) :=
.seq body879_10 body879_108

def body879_110 : Prog (BitVec 64) :=
.seq body879_9 body879_109

def body879_111 : Prog (BitVec 64) :=
.seq body879_8 body879_110

def body879_112 : Prog (BitVec 64) :=
.seq body879_7 body879_111

def body879_113 : Prog (BitVec 64) :=
.seq body879_6 body879_112

def body879_114 : Prog (BitVec 64) :=
.decCall ("rls") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]) body879_113

def body879_115 : Prog (BitVec 64) :=
.seq body879_5 body879_114

def body879_116 : Prog (BitVec 64) :=
.decCall ("reqs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]]) body879_115

def body879_117 : Prog (BitVec 64) :=
.seq body879_4 body879_116

def body879_118 : Prog (BitVec 64) :=
.decCall ("logs") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]) body879_117

def body879_119 : Prog (BitVec 64) :=
.seq body879_3 body879_118

def body879_120 : Prog (BitVec 64) :=
.decCall ("rcs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 16#64]]) body879_119

def body879_121 : Prog (BitVec 64) :=
.seq body879_2 body879_120

def body879_122 : Prog (BitVec 64) :=
.decCall ("txs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 16#64]]) body879_121

def body879_123 : Prog (BitVec 64) :=
.seq body879_1 body879_122

def body879_124 : Prog (BitVec 64) :=
.seq body879_0 body879_123

def body879_125 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) body879_124

def body879_126 : Prog (BitVec 64) :=
.dec ("pl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 0#64])) body879_125

def body879_127 : Prog (BitVec 64) :=
.seq body879_0 body879_1

def body879_128 : Prog (BitVec 64) :=
.seq body879_6 body879_7

def body879_129 : Prog (BitVec 64) :=
.seq body879_128 body879_8

def body879_130 : Prog (BitVec 64) :=
.seq body879_129 body879_10

def body879_131 : Prog (BitVec 64) :=
.seq body879_12 body879_13

def body879_132 : Prog (BitVec 64) :=
.seq body879_131 body879_14

def body879_133 : Prog (BitVec 64) :=
.seq body879_132 body879_15

def body879_134 : Prog (BitVec 64) :=
.seq body879_16 body879_17

def body879_135 : Prog (BitVec 64) :=
.decCall ("tx") (Flapjack.Shape.one) ("decode_transaction") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "ptxs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "ptxs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body879_134

def body879_136 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")) body879_135

def body879_137 : Prog (BitVec 64) :=
.seq body879_136 body879_23

def body879_138 : Prog (BitVec 64) :=
.seq body879_137 body879_24

def body879_139 : Prog (BitVec 64) :=
.seq body879_138 body879_25

def body879_140 : Prog (BitVec 64) :=
.seq body879_37 body879_38

def body879_141 : Prog (BitVec 64) :=
.seq body879_140 body879_40

def body879_142 : Prog (BitVec 64) :=
.seq body879_141 body879_41

def body879_143 : Prog (BitVec 64) :=
.seq body879_142 body879_43

def body879_144 : Prog (BitVec 64) :=
.seq body879_143 body879_44

def body879_145 : Prog (BitVec 64) :=
.seq body879_144 body879_46

def body879_146 : Prog (BitVec 64) :=
.seq body879_145 body879_47

def body879_147 : Prog (BitVec 64) :=
.seq body879_146 body879_49

def body879_148 : Prog (BitVec 64) :=
.seq body879_147 body879_51

def body879_149 : Prog (BitVec 64) :=
.seq body879_148 body879_52

def body879_150 : Prog (BitVec 64) :=
.seq body879_149 body879_54

def body879_151 : Prog (BitVec 64) :=
.seq body879_150 body879_55

def body879_152 : Prog (BitVec 64) :=
.seq body879_151 body879_57

def body879_153 : Prog (BitVec 64) :=
.seq body879_152 body879_58

def body879_154 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "txroot",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 40#64]),
  Flapjack.Exp.const 32#64]) body879_153

def body879_155 : Prog (BitVec 64) :=
.seq body879_35 body879_154

def body879_156 : Prog (BitVec 64) :=
.decCall ("bgu") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 8#64])]) body879_155

def body879_157 : Prog (BitVec 64) :=
.seq body879_33 body879_156

def body879_158 : Prog (BitVec 64) :=
.decCall ("balh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body879_157

def body879_159 : Prog (BitVec 64) :=
.seq body879_32 body879_158

def body879_160 : Prog (BitVec 64) :=
.decCall ("rqh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body879_159

def body879_161 : Prog (BitVec 64) :=
.seq body879_31 body879_160

def body879_162 : Prog (BitVec 64) :=
.decCall ("wroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body879_161

def body879_163 : Prog (BitVec 64) :=
.seq body879_30 body879_162

def body879_164 : Prog (BitVec 64) :=
.decCall ("bloom") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) body879_163

def body879_165 : Prog (BitVec 64) :=
.seq body879_29 body879_164

def body879_166 : Prog (BitVec 64) :=
.decCall ("rroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body879_165

def body879_167 : Prog (BitVec 64) :=
.seq body879_28 body879_166

def body879_168 : Prog (BitVec 64) :=
.decCall ("txroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body879_167

def body879_169 : Prog (BitVec 64) :=
.seq body879_27 body879_168

def body879_170 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body879_169

def body879_171 : Prog (BitVec 64) :=
.seq body879_26 body879_170

def body879_172 : Prog (BitVec 64) :=
.decCall ("bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("build_block_access_list_rlp") ([]) body879_171

def body879_173 : Prog (BitVec 64) :=
.seq body879_139 body879_172

def body879_174 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body879_173

def body879_175 : Prog (BitVec 64) :=
.dec ("ptxs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) body879_174

def body879_176 : Prog (BitVec 64) :=
.seq body879_133 body879_175

def body879_177 : Prog (BitVec 64) :=
.dec ("lasth") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "zero32") body879_176

def body879_178 : Prog (BitVec 64) :=
.seq body879_130 body879_177

def body879_179 : Prog (BitVec 64) :=
.decCall ("rls") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]) body879_178

def body879_180 : Prog (BitVec 64) :=
.seq body879_5 body879_179

def body879_181 : Prog (BitVec 64) :=
.decCall ("reqs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]]) body879_180

def body879_182 : Prog (BitVec 64) :=
.seq body879_4 body879_181

def body879_183 : Prog (BitVec 64) :=
.decCall ("logs") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]) body879_182

def body879_184 : Prog (BitVec 64) :=
.seq body879_3 body879_183

def body879_185 : Prog (BitVec 64) :=
.decCall ("rcs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 16#64]]) body879_184

def body879_186 : Prog (BitVec 64) :=
.seq body879_2 body879_185

def body879_187 : Prog (BitVec 64) :=
.decCall ("txs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 16#64]]) body879_186

def body879_188 : Prog (BitVec 64) :=
.seq body879_127 body879_187

def body879_189 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) body879_188

def body879_190 : Prog (BitVec 64) :=
.dec ("pl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 0#64])) body879_189

def originalData879 : Decl (BitVec 64) :=
.function { name := "execute_block", inline := false, exported := false, params := [("si", Flapjack.Shape.one), ("hdr", Flapjack.Shape.one)], body := body879_126, returnShape := (Flapjack.Shape.one) }
def simplifiedData879 : Decl (BitVec 64) :=
.function { name := "execute_block", inline := false, exported := false, params := [("si", Flapjack.Shape.one), ("hdr", Flapjack.Shape.one)], body := body879_190, returnShape := (Flapjack.Shape.one) }
def original879 := Pancake.PanLang.declToHOL originalData879
def simplified879 := Pancake.PanLang.declToHOL simplifiedData879
end InitECandidate.Proofs.FrontendStages.Declarations
