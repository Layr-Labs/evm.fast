import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify901
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body917_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "bo"), none)) "alloc" [Flapjack.Exp.const 88#64]

def body917_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 88#64]

def body917_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "txs")

def body917_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "rcs")

def body917_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "logs")

def body917_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "reqs")

def body917_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "rls")

def body917_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")

def body917_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bal_init" []

def body917_9 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body917_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_unchecked_system_transaction"
  [Flapjack.Exp.var Flapjack.VarKind.global "beacon_roots_address",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.const 32#64]

def body917_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "lasth"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "block_hashes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.var Flapjack.VarKind.global "block_hashes_n", Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 32#64]])

def body917_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.var Flapjack.VarKind.global "block_hashes_n")) body917_11 body917_9

def body917_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_unchecked_system_transaction"
  [Flapjack.Exp.var Flapjack.VarKind.global "history_storage_address", Flapjack.Exp.var Flapjack.VarKind.local "lasth",
    Flapjack.Exp.const 32#64]

def body917_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_fresh_tx" []

def body917_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "track_ancestor_access" [Flapjack.Exp.const 1#64]

def body917_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_transaction"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "i"]

def body917_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body917_18 : Prog (BitVec 64) :=
.seq body917_9 body917_17

def body917_19 : Prog (BitVec 64) :=
.seq body917_16 body917_18

def body917_20 : Prog (BitVec 64) :=
.seq body917_9 body917_19

def body917_21 : Prog (BitVec 64) :=
.decCall ("tx") (Flapjack.Shape.one) ("decode_transaction") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "ptxs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "ptxs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body917_20

def body917_22 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")) body917_21

def body917_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "bal_index"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 1#64])

def body917_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_withdrawals" [Flapjack.Exp.var Flapjack.VarKind.local "pl"]

def body917_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "process_general_purpose_requests" []

def body917_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "validate_block_access_list_gas_limit"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 8#64])]

def body917_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "compute_state_root" [Flapjack.Exp.var Flapjack.VarKind.local "root"]

def body917_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "build_mpt_indexed"
  [Flapjack.Exp.var Flapjack.VarKind.local "txs", Flapjack.Exp.var Flapjack.VarKind.local "ntx",
    Flapjack.Exp.var Flapjack.VarKind.local "txroot"]

def body917_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "build_mpt_indexed"
  [Flapjack.Exp.var Flapjack.VarKind.local "rcs", Flapjack.Exp.var Flapjack.VarKind.local "ntx",
    Flapjack.Exp.var Flapjack.VarKind.local "rroot"]

def body917_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "logs_bloom"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "bloom"]

def body917_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "build_mpt_indexed"
  [Flapjack.Exp.var Flapjack.VarKind.global "wd_rlp_slices",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 56#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "wroot"]

def body917_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "compute_requests_hash"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 56#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 64#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "rqh"]

def body917_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "bal"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bal"),
    Flapjack.Exp.var Flapjack.VarKind.local "balh"]

def body917_34 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 110#64)

def body917_35 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "bgu")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 112#64]))) body917_34 body917_9

def body917_36 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 111#64)

def body917_37 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body917_36 body917_9

def body917_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "root",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 32#64]

def body917_39 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 112#64)

def body917_40 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body917_39 body917_9

def body917_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "rroot",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.const 32#64]

def body917_42 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 113#64)

def body917_43 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body917_42 body917_9

def body917_44 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "bloom",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 56#64]),
    Flapjack.Exp.const 256#64]

def body917_45 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 114#64)

def body917_46 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body917_45 body917_9

def body917_47 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "wroot",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 192#64]),
    Flapjack.Exp.const 32#64]

def body917_48 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 115#64)

def body917_49 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body917_48 body917_9

def body917_50 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 116#64)

def body917_51 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 48#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 200#64]))) body917_50 body917_9

def body917_52 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "rqh",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 224#64]),
    Flapjack.Exp.const 32#64]

def body917_53 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 117#64)

def body917_54 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body917_53 body917_9

def body917_55 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "balh",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 232#64]),
    Flapjack.Exp.const 32#64]

def body917_56 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 118#64)

def body917_57 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body917_56 body917_9

def body917_58 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body917_59 : Prog (BitVec 64) :=
.seq body917_57 body917_58

def body917_60 : Prog (BitVec 64) :=
.seq body917_55 body917_59

def body917_61 : Prog (BitVec 64) :=
.seq body917_54 body917_60

def body917_62 : Prog (BitVec 64) :=
.seq body917_52 body917_61

def body917_63 : Prog (BitVec 64) :=
.seq body917_51 body917_62

def body917_64 : Prog (BitVec 64) :=
.seq body917_49 body917_63

def body917_65 : Prog (BitVec 64) :=
.seq body917_47 body917_64

def body917_66 : Prog (BitVec 64) :=
.seq body917_46 body917_65

def body917_67 : Prog (BitVec 64) :=
.seq body917_44 body917_66

def body917_68 : Prog (BitVec 64) :=
.seq body917_43 body917_67

def body917_69 : Prog (BitVec 64) :=
.seq body917_41 body917_68

def body917_70 : Prog (BitVec 64) :=
.seq body917_40 body917_69

def body917_71 : Prog (BitVec 64) :=
.seq body917_38 body917_70

def body917_72 : Prog (BitVec 64) :=
.seq body917_37 body917_71

def body917_73 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "txroot",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 40#64]),
  Flapjack.Exp.const 32#64]) body917_72

def body917_74 : Prog (BitVec 64) :=
.seq body917_35 body917_73

def body917_75 : Prog (BitVec 64) :=
.decCall ("bgu") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 8#64])]) body917_74

def body917_76 : Prog (BitVec 64) :=
.seq body917_33 body917_75

def body917_77 : Prog (BitVec 64) :=
.decCall ("balh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body917_76

def body917_78 : Prog (BitVec 64) :=
.seq body917_32 body917_77

def body917_79 : Prog (BitVec 64) :=
.decCall ("rqh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body917_78

def body917_80 : Prog (BitVec 64) :=
.seq body917_31 body917_79

def body917_81 : Prog (BitVec 64) :=
.decCall ("wroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body917_80

def body917_82 : Prog (BitVec 64) :=
.seq body917_30 body917_81

def body917_83 : Prog (BitVec 64) :=
.decCall ("bloom") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) body917_82

def body917_84 : Prog (BitVec 64) :=
.seq body917_29 body917_83

def body917_85 : Prog (BitVec 64) :=
.decCall ("rroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body917_84

def body917_86 : Prog (BitVec 64) :=
.seq body917_28 body917_85

def body917_87 : Prog (BitVec 64) :=
.decCall ("txroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body917_86

def body917_88 : Prog (BitVec 64) :=
.seq body917_9 body917_87

def body917_89 : Prog (BitVec 64) :=
.seq body917_27 body917_88

def body917_90 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body917_89

def body917_91 : Prog (BitVec 64) :=
.seq body917_9 body917_90

def body917_92 : Prog (BitVec 64) :=
.seq body917_26 body917_91

def body917_93 : Prog (BitVec 64) :=
.decCall ("bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("build_block_access_list_rlp") ([]) body917_92

def body917_94 : Prog (BitVec 64) :=
.seq body917_9 body917_93

def body917_95 : Prog (BitVec 64) :=
.seq body917_25 body917_94

def body917_96 : Prog (BitVec 64) :=
.seq body917_9 body917_95

def body917_97 : Prog (BitVec 64) :=
.seq body917_24 body917_96

def body917_98 : Prog (BitVec 64) :=
.seq body917_9 body917_97

def body917_99 : Prog (BitVec 64) :=
.seq body917_23 body917_98

def body917_100 : Prog (BitVec 64) :=
.seq body917_22 body917_99

def body917_101 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body917_100

def body917_102 : Prog (BitVec 64) :=
.dec ("ptxs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) body917_101

def body917_103 : Prog (BitVec 64) :=
.seq body917_15 body917_102

def body917_104 : Prog (BitVec 64) :=
.seq body917_14 body917_103

def body917_105 : Prog (BitVec 64) :=
.seq body917_9 body917_104

def body917_106 : Prog (BitVec 64) :=
.seq body917_13 body917_105

def body917_107 : Prog (BitVec 64) :=
.seq body917_12 body917_106

def body917_108 : Prog (BitVec 64) :=
.dec ("lasth") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "zero32") body917_107

def body917_109 : Prog (BitVec 64) :=
.seq body917_10 body917_108

def body917_110 : Prog (BitVec 64) :=
.seq body917_9 body917_109

def body917_111 : Prog (BitVec 64) :=
.seq body917_8 body917_110

def body917_112 : Prog (BitVec 64) :=
.seq body917_7 body917_111

def body917_113 : Prog (BitVec 64) :=
.seq body917_6 body917_112

def body917_114 : Prog (BitVec 64) :=
.decCall ("rls") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]) body917_113

def body917_115 : Prog (BitVec 64) :=
.seq body917_5 body917_114

def body917_116 : Prog (BitVec 64) :=
.decCall ("reqs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]]) body917_115

def body917_117 : Prog (BitVec 64) :=
.seq body917_4 body917_116

def body917_118 : Prog (BitVec 64) :=
.decCall ("logs") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]) body917_117

def body917_119 : Prog (BitVec 64) :=
.seq body917_3 body917_118

def body917_120 : Prog (BitVec 64) :=
.decCall ("rcs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 16#64]]) body917_119

def body917_121 : Prog (BitVec 64) :=
.seq body917_2 body917_120

def body917_122 : Prog (BitVec 64) :=
.decCall ("txs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 16#64]]) body917_121

def body917_123 : Prog (BitVec 64) :=
.seq body917_1 body917_122

def body917_124 : Prog (BitVec 64) :=
.seq body917_0 body917_123

def body917_125 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) body917_124

def body917_126 : Prog (BitVec 64) :=
.dec ("pl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 0#64])) body917_125

def body917_127 : Prog (BitVec 64) :=
.seq body917_0 body917_1

def body917_128 : Prog (BitVec 64) :=
.seq body917_6 body917_7

def body917_129 : Prog (BitVec 64) :=
.seq body917_128 body917_8

def body917_130 : Prog (BitVec 64) :=
.seq body917_129 body917_10

def body917_131 : Prog (BitVec 64) :=
.seq body917_12 body917_13

def body917_132 : Prog (BitVec 64) :=
.seq body917_131 body917_14

def body917_133 : Prog (BitVec 64) :=
.seq body917_132 body917_15

def body917_134 : Prog (BitVec 64) :=
.seq body917_16 body917_17

def body917_135 : Prog (BitVec 64) :=
.decCall ("tx") (Flapjack.Shape.one) ("decode_transaction") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "ptxs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "ptxs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body917_134

def body917_136 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")) body917_135

def body917_137 : Prog (BitVec 64) :=
.seq body917_136 body917_23

def body917_138 : Prog (BitVec 64) :=
.seq body917_137 body917_24

def body917_139 : Prog (BitVec 64) :=
.seq body917_138 body917_25

def body917_140 : Prog (BitVec 64) :=
.seq body917_37 body917_38

def body917_141 : Prog (BitVec 64) :=
.seq body917_140 body917_40

def body917_142 : Prog (BitVec 64) :=
.seq body917_141 body917_41

def body917_143 : Prog (BitVec 64) :=
.seq body917_142 body917_43

def body917_144 : Prog (BitVec 64) :=
.seq body917_143 body917_44

def body917_145 : Prog (BitVec 64) :=
.seq body917_144 body917_46

def body917_146 : Prog (BitVec 64) :=
.seq body917_145 body917_47

def body917_147 : Prog (BitVec 64) :=
.seq body917_146 body917_49

def body917_148 : Prog (BitVec 64) :=
.seq body917_147 body917_51

def body917_149 : Prog (BitVec 64) :=
.seq body917_148 body917_52

def body917_150 : Prog (BitVec 64) :=
.seq body917_149 body917_54

def body917_151 : Prog (BitVec 64) :=
.seq body917_150 body917_55

def body917_152 : Prog (BitVec 64) :=
.seq body917_151 body917_57

def body917_153 : Prog (BitVec 64) :=
.seq body917_152 body917_58

def body917_154 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "txroot",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 40#64]),
  Flapjack.Exp.const 32#64]) body917_153

def body917_155 : Prog (BitVec 64) :=
.seq body917_35 body917_154

def body917_156 : Prog (BitVec 64) :=
.decCall ("bgu") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 8#64])]) body917_155

def body917_157 : Prog (BitVec 64) :=
.seq body917_33 body917_156

def body917_158 : Prog (BitVec 64) :=
.decCall ("balh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body917_157

def body917_159 : Prog (BitVec 64) :=
.seq body917_32 body917_158

def body917_160 : Prog (BitVec 64) :=
.decCall ("rqh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body917_159

def body917_161 : Prog (BitVec 64) :=
.seq body917_31 body917_160

def body917_162 : Prog (BitVec 64) :=
.decCall ("wroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body917_161

def body917_163 : Prog (BitVec 64) :=
.seq body917_30 body917_162

def body917_164 : Prog (BitVec 64) :=
.decCall ("bloom") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) body917_163

def body917_165 : Prog (BitVec 64) :=
.seq body917_29 body917_164

def body917_166 : Prog (BitVec 64) :=
.decCall ("rroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body917_165

def body917_167 : Prog (BitVec 64) :=
.seq body917_28 body917_166

def body917_168 : Prog (BitVec 64) :=
.decCall ("txroot") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body917_167

def body917_169 : Prog (BitVec 64) :=
.seq body917_27 body917_168

def body917_170 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body917_169

def body917_171 : Prog (BitVec 64) :=
.seq body917_26 body917_170

def body917_172 : Prog (BitVec 64) :=
.decCall ("bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("build_block_access_list_rlp") ([]) body917_171

def body917_173 : Prog (BitVec 64) :=
.seq body917_139 body917_172

def body917_174 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body917_173

def body917_175 : Prog (BitVec 64) :=
.dec ("ptxs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) body917_174

def body917_176 : Prog (BitVec 64) :=
.seq body917_133 body917_175

def body917_177 : Prog (BitVec 64) :=
.dec ("lasth") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "zero32") body917_176

def body917_178 : Prog (BitVec 64) :=
.seq body917_130 body917_177

def body917_179 : Prog (BitVec 64) :=
.decCall ("rls") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]) body917_178

def body917_180 : Prog (BitVec 64) :=
.seq body917_5 body917_179

def body917_181 : Prog (BitVec 64) :=
.decCall ("reqs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]]) body917_180

def body917_182 : Prog (BitVec 64) :=
.seq body917_4 body917_181

def body917_183 : Prog (BitVec 64) :=
.decCall ("logs") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 8#64, Flapjack.Exp.const 16#64]) body917_182

def body917_184 : Prog (BitVec 64) :=
.seq body917_3 body917_183

def body917_185 : Prog (BitVec 64) :=
.decCall ("rcs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 16#64]]) body917_184

def body917_186 : Prog (BitVec 64) :=
.seq body917_2 body917_185

def body917_187 : Prog (BitVec 64) :=
.decCall ("txs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 16#64]]) body917_186

def body917_188 : Prog (BitVec 64) :=
.seq body917_127 body917_187

def body917_189 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) body917_188

def body917_190 : Prog (BitVec 64) :=
.dec ("pl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 0#64])) body917_189

def originalData917 : Decl (BitVec 64) :=
.function { name := "execute_block", inline := false, exported := false, params := [("si", Flapjack.Shape.one), ("hdr", Flapjack.Shape.one)], body := body917_126, returnShape := (Flapjack.Shape.one) }
def simplifiedData917 : Decl (BitVec 64) :=
.function { name := "execute_block", inline := false, exported := false, params := [("si", Flapjack.Shape.one), ("hdr", Flapjack.Shape.one)], body := body917_190, returnShape := (Flapjack.Shape.one) }
def original917 := Pancake.PanLang.declToHOL originalData917
def simplified917 := Pancake.PanLang.declToHOL simplifiedData917
end InitECandidate.Proofs.FrontendStages.Declarations
