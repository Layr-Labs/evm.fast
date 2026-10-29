import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify828
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body844_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "cache", Flapjack.Exp.var Flapjack.VarKind.local "addr",
    Flapjack.Exp.const 1#64]

def body844_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body844_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "has") (Flapjack.Exp.const 0#64)) body844_0 body844_1

def body844_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "enc",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "vbuf", Flapjack.Exp.const 40#64],
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def body844_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "mpt", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "e"),
    Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "enc",
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def body844_5 : Prog (BitVec 64) :=
.seq body844_3 body844_4

def body844_6 : Prog (BitVec 64) :=
.decCall ("enc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) body844_5

def body844_7 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vbuf", Flapjack.Exp.const 8#64, Flapjack.Exp.const 32#64],
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "vbuf", Flapjack.Exp.const 8#64],
  Flapjack.Exp.var Flapjack.VarKind.local "n"]) body844_6

def body844_8 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("u256_to_be_min") ([Flapjack.Exp.var Flapjack.VarKind.local "v",
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "vbuf", Flapjack.Exp.const 8#64]]) body844_7

def body844_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "pass") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64))]) body844_8 body844_1

def body844_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "mpt", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "e"),
    Flapjack.Exp.const 32#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]

def body844_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "pass") (Flapjack.Exp.const 1#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64))]) body844_10 body844_1

def body844_12 : Prog (BitVec 64) :=
.seq body844_9 body844_11

def body844_13 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "v"]) body844_12

def body844_14 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "e"))) body844_13

def body844_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "e"))
  (Flapjack.Exp.const 0#64)) body844_14 body844_1

def body844_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body844_17 : Prog (BitVec 64) :=
.seq body844_15 body844_16

def body844_18 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "inner", Flapjack.Exp.var Flapjack.VarKind.local "j"]) body844_17

def body844_19 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "icount")) body844_18

def body844_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pass"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pass", Flapjack.Exp.const 1#64])

def body844_21 : Prog (BitVec 64) :=
.seq body844_19 body844_20

def body844_22 : Prog (BitVec 64) :=
.dec ("icount") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "inner", Flapjack.Exp.const 24#64])) body844_21

def body844_23 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body844_22

def body844_24 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "pass") (Flapjack.Exp.const 2#64)) body844_23

def body844_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_root"
  [Flapjack.Exp.var Flapjack.VarKind.local "mpt", Flapjack.Exp.var Flapjack.VarKind.local "root"]

def body844_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "new_roots", Flapjack.Exp.var Flapjack.VarKind.local "addr",
    Flapjack.Exp.var Flapjack.VarKind.local "root"]

def body844_27 : Prog (BitVec 64) :=
.seq body844_25 body844_26

def body844_28 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body844_27

def body844_29 : Prog (BitVec 64) :=
.seq body844_24 body844_28

def body844_30 : Prog (BitVec 64) :=
.dec ("pass") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body844_29

def body844_31 : Prog (BitVec 64) :=
.decCall ("vbuf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body844_30

def body844_32 : Prog (BitVec 64) :=
.decCall ("mpt") (Flapjack.Shape.one) ("mpt_from_witness") ([Flapjack.Exp.var Flapjack.VarKind.local "nodedb", Flapjack.Exp.var Flapjack.VarKind.local "old_root",
  Flapjack.Exp.const 1#64]) body844_31

def body844_33 : Prog (BitVec 64) :=
.decCall ("old_root") (Flapjack.Shape.one) ("ws_storage_root_of") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body844_32

def body844_34 : Prog (BitVec 64) :=
.seq body844_2 body844_33

def body844_35 : Prog (BitVec 64) :=
.decCall ("has") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.var Flapjack.VarKind.local "cache", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body844_34

def body844_36 : Prog (BitVec 64) :=
.dec ("inner") (Flapjack.Shape.one) (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "s")) body844_35

def body844_37 : Prog (BitVec 64) :=
.dec ("addr") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s")) body844_36

def body844_38 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) body844_37 body844_1

def body844_39 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body844_40 : Prog (BitVec 64) :=
.seq body844_38 body844_39

def body844_41 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "sw", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body844_40

def body844_42 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) body844_41

def body844_43 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def body844_44 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "cache",
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s2"), Flapjack.Exp.const 1#64]

def body844_45 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "sr" (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "nr"))

def body844_46 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "nr"))
  (Flapjack.Exp.const 0#64)) body844_45 body844_1

def body844_47 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "state_mpt",
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s2"), Flapjack.Exp.const 20#64,
    Flapjack.Exp.var Flapjack.VarKind.local "enc", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body844_48 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("encode_account") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "sr",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "enc"]) body844_47

def body844_49 : Prog (BitVec 64) :=
.decCall ("enc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 128#64]) body844_48

def body844_50 : Prog (BitVec 64) :=
.seq body844_46 body844_49

def body844_51 : Prog (BitVec 64) :=
.dec ("sr") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "empty_trie_root") body844_50

def body844_52 : Prog (BitVec 64) :=
.decCall ("nr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "new_roots",
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s2")]) body844_51

def body844_53 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "a") (Flapjack.Exp.const 1#64)) body844_52 body844_1

def body844_54 : Prog (BitVec 64) :=
.seq body844_44 body844_53

def body844_55 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("ws_get_account_optional") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s2")]) body844_54

def body844_56 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "inaw") (Flapjack.Exp.const 0#64)) body844_55 body844_1

def body844_57 : Prog (BitVec 64) :=
.decCall ("inaw") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.var Flapjack.VarKind.local "aw", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s2")]) body844_56

def body844_58 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s2"))
  (Flapjack.Exp.const 0#64)) body844_57 body844_1

def body844_59 : Prog (BitVec 64) :=
.seq body844_58 body844_39

def body844_60 : Prog (BitVec 64) :=
.decCall ("s2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "sw", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body844_59

def body844_61 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) body844_60

def body844_62 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "state_mpt", Flapjack.Exp.var Flapjack.VarKind.local "addr3",
    Flapjack.Exp.const 20#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]

def body844_63 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "sr2"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "nr2"))

def body844_64 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "sr2"), none)) "cache_get_root"
  [Flapjack.Exp.var Flapjack.VarKind.local "cache", Flapjack.Exp.var Flapjack.VarKind.local "addr3"]

def body844_65 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "nr2"))
  (Flapjack.Exp.const 0#64)) body844_63 body844_64

def body844_66 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "state_mpt", Flapjack.Exp.var Flapjack.VarKind.local "addr3",
    Flapjack.Exp.const 20#64, Flapjack.Exp.var Flapjack.VarKind.local "enc2",
    Flapjack.Exp.var Flapjack.VarKind.local "n2"]

def body844_67 : Prog (BitVec 64) :=
.decCall ("n2") (Flapjack.Shape.one) ("encode_account") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "sr2",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "enc2"]) body844_66

def body844_68 : Prog (BitVec 64) :=
.decCall ("enc2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 128#64]) body844_67

def body844_69 : Prog (BitVec 64) :=
.seq body844_65 body844_68

def body844_70 : Prog (BitVec 64) :=
.dec ("sr2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body844_69

def body844_71 : Prog (BitVec 64) :=
.decCall ("nr2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "new_roots", Flapjack.Exp.var Flapjack.VarKind.local "addr3"]) body844_70

def body844_72 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "acct") (Flapjack.Exp.const 1#64)) body844_62 body844_71

def body844_73 : Prog (BitVec 64) :=
.dec ("acct") (Flapjack.Shape.one) (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "s3")) body844_72

def body844_74 : Prog (BitVec 64) :=
.dec ("addr3") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s3")) body844_73

def body844_75 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s3"))
  (Flapjack.Exp.const 0#64)) body844_74 body844_1

def body844_76 : Prog (BitVec 64) :=
.seq body844_75 body844_39

def body844_77 : Prog (BitVec 64) :=
.decCall ("s3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "aw", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body844_76

def body844_78 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "acap")) body844_77

def body844_79 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_root"
  [Flapjack.Exp.var Flapjack.VarKind.local "state_mpt", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body844_80 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body844_81 : Prog (BitVec 64) :=
.seq body844_79 body844_80

def body844_82 : Prog (BitVec 64) :=
.seq body844_78 body844_81

def body844_83 : Prog (BitVec 64) :=
.seq body844_43 body844_82

def body844_84 : Prog (BitVec 64) :=
.dec ("acap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "aw", Flapjack.Exp.const 24#64])) body844_83

def body844_85 : Prog (BitVec 64) :=
.seq body844_61 body844_84

def body844_86 : Prog (BitVec 64) :=
.seq body844_43 body844_85

def body844_87 : Prog (BitVec 64) :=
.decCall ("state_mpt") (Flapjack.Shape.one) ("mpt_from_witness") ([Flapjack.Exp.var Flapjack.VarKind.local "nodedb",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ws", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.const 1#64]) body844_86

def body844_88 : Prog (BitVec 64) :=
.seq body844_42 body844_87

def body844_89 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body844_88

def body844_90 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sw", Flapjack.Exp.const 24#64])) body844_89

def body844_91 : Prog (BitVec 64) :=
.dec ("nodedb") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ws", Flapjack.Exp.const 0#64])) body844_90

def body844_92 : Prog (BitVec 64) :=
.dec ("aw") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 16#64])) body844_91

def body844_93 : Prog (BitVec 64) :=
.dec ("sw") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 32#64])) body844_92

def body844_94 : Prog (BitVec 64) :=
.decCall ("new_roots") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]) body844_93

def body844_95 : Prog (BitVec 64) :=
.decCall ("cache") (Flapjack.Shape.one) ("htab_copy") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 72#64])]) body844_94

def body844_96 : Prog (BitVec 64) :=
.seq body844_43 body844_61

def body844_97 : Prog (BitVec 64) :=
.seq body844_43 body844_78

def body844_98 : Prog (BitVec 64) :=
.seq body844_97 body844_79

def body844_99 : Prog (BitVec 64) :=
.seq body844_98 body844_80

def body844_100 : Prog (BitVec 64) :=
.dec ("acap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "aw", Flapjack.Exp.const 24#64])) body844_99

def body844_101 : Prog (BitVec 64) :=
.seq body844_96 body844_100

def body844_102 : Prog (BitVec 64) :=
.decCall ("state_mpt") (Flapjack.Shape.one) ("mpt_from_witness") ([Flapjack.Exp.var Flapjack.VarKind.local "nodedb",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ws", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.const 1#64]) body844_101

def body844_103 : Prog (BitVec 64) :=
.seq body844_42 body844_102

def body844_104 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body844_103

def body844_105 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sw", Flapjack.Exp.const 24#64])) body844_104

def body844_106 : Prog (BitVec 64) :=
.dec ("nodedb") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ws", Flapjack.Exp.const 0#64])) body844_105

def body844_107 : Prog (BitVec 64) :=
.dec ("aw") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 16#64])) body844_106

def body844_108 : Prog (BitVec 64) :=
.dec ("sw") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 32#64])) body844_107

def body844_109 : Prog (BitVec 64) :=
.decCall ("new_roots") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]) body844_108

def body844_110 : Prog (BitVec 64) :=
.decCall ("cache") (Flapjack.Shape.one) ("htab_copy") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 72#64])]) body844_109

def originalData844 : Decl (BitVec 64) :=
.function { name := "compute_state_root", inline := false, exported := false, params := [("out", Flapjack.Shape.one)], body := body844_95, returnShape := (Flapjack.Shape.one) }
def simplifiedData844 : Decl (BitVec 64) :=
.function { name := "compute_state_root", inline := false, exported := false, params := [("out", Flapjack.Shape.one)], body := body844_110, returnShape := (Flapjack.Shape.one) }
def original844 := Pancake.PanLang.declToHOL originalData844
def simplified844 := Pancake.PanLang.declToHOL simplifiedData844
end InitECandidate.Proofs.FrontendStages.Declarations
