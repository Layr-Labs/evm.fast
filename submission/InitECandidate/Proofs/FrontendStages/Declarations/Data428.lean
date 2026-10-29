import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify412
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body428_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "post_bal"
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "post", Flapjack.Exp.const 8#64]))

def body428_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "post_nonce"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "post", Flapjack.Exp.const 0#64]))

def body428_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "post_ch"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "post", Flapjack.Exp.const 48#64]))

def body428_3 : Prog (BitVec 64) :=
.seq body428_1 body428_2

def body428_4 : Prog (BitVec 64) :=
.seq body428_0 body428_3

def body428_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body428_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "post") (Flapjack.Exp.const 1#64)) body428_4 body428_5

def body428_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "add_balance_change"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "idx",
    Flapjack.Exp.var Flapjack.VarKind.local "post_bal"]

def body428_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bal_remove_change"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 16#64, Flapjack.Exp.const 40#64,
    Flapjack.Exp.var Flapjack.VarKind.local "idx"]

def body428_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body428_7 body428_8

def body428_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "add_nonce_change"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "idx",
    Flapjack.Exp.var Flapjack.VarKind.local "post_nonce"]

def body428_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bal_remove_change"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 24#64, Flapjack.Exp.const 16#64,
    Flapjack.Exp.var Flapjack.VarKind.local "idx"]

def body428_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "pre_nonce")
  (Flapjack.Exp.var Flapjack.VarKind.local "post_nonce")) body428_10 body428_11

def body428_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "pre_ch", Flapjack.Exp.var Flapjack.VarKind.local "post_ch",
    Flapjack.Exp.const 32#64]

def body428_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "add_code_change"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "idx",
    Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "code"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "code")]

def body428_15 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("get_code") ([Flapjack.Exp.var Flapjack.VarKind.local "post_ch", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body428_14

def body428_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bal_remove_change"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 32#64, Flapjack.Exp.const 24#64,
    Flapjack.Exp.var Flapjack.VarKind.local "idx"]

def body428_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body428_15 body428_16

def body428_18 : Prog (BitVec 64) :=
.seq body428_13 body428_17

def body428_19 : Prog (BitVec 64) :=
.seq body428_12 body428_18

def body428_20 : Prog (BitVec 64) :=
.seq body428_9 body428_19

def body428_21 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "pre_bal", Flapjack.Exp.var Flapjack.VarKind.local "post_bal"]) body428_20

def body428_22 : Prog (BitVec 64) :=
.seq body428_6 body428_21

def body428_23 : Prog (BitVec 64) :=
.dec ("post_ch") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "empty_code_hash") body428_22

def body428_24 : Prog (BitVec 64) :=
.dec ("post_nonce") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body428_23

def body428_25 : Prog (BitVec 64) :=
.dec ("post_bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body428_24

def body428_26 : Prog (BitVec 64) :=
.dec ("pre_ch") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pre", Flapjack.Exp.const 48#64]) body428_25

def body428_27 : Prog (BitVec 64) :=
.dec ("pre_nonce") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pre", Flapjack.Exp.const 8#64])) body428_26

def body428_28 : Prog (BitVec 64) :=
.dec ("pre_bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pre", Flapjack.Exp.const 16#64])) body428_27

def body428_29 : Prog (BitVec 64) :=
.decCall ("pre") (Flapjack.Shape.one) ("idx_start_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body428_28

def body428_30 : Prog (BitVec 64) :=
.dec ("post") (Flapjack.Shape.one) (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "s")) body428_29

def body428_31 : Prog (BitVec 64) :=
.dec ("addr") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s")) body428_30

def body428_32 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) body428_31 body428_5

def body428_33 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body428_34 : Prog (BitVec 64) :=
.seq body428_32 body428_33

def body428_35 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "aw", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body428_34

def body428_36 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) body428_35

def body428_37 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cap"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "outer", Flapjack.Exp.const 24#64]))

def body428_38 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def body428_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "add_storage_write"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s2"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "e"), Flapjack.Exp.var Flapjack.VarKind.local "idx",
    Flapjack.Exp.var Flapjack.VarKind.local "post_v"]

def body428_40 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "remove_storage_write"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s2"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "e"), Flapjack.Exp.var Flapjack.VarKind.local "idx"]

def body428_41 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq2") (Flapjack.Exp.const 0#64)) body428_39 body428_40

def body428_42 : Prog (BitVec 64) :=
.decCall ("eq2") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "pre_v", Flapjack.Exp.var Flapjack.VarKind.local "post_v"]) body428_41

def body428_43 : Prog (BitVec 64) :=
.dec ("post_v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "e"))) body428_42

def body428_44 : Prog (BitVec 64) :=
.decCall ("pre_v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("idx_start_storage") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s2"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "e")]) body428_43

def body428_45 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "e"))
  (Flapjack.Exp.const 0#64)) body428_44 body428_5

def body428_46 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body428_47 : Prog (BitVec 64) :=
.seq body428_45 body428_46

def body428_48 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "inner", Flapjack.Exp.var Flapjack.VarKind.local "j"]) body428_47

def body428_49 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "icap")) body428_48

def body428_50 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body428_49

def body428_51 : Prog (BitVec 64) :=
.dec ("icap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "inner", Flapjack.Exp.const 24#64])) body428_50

def body428_52 : Prog (BitVec 64) :=
.dec ("inner") (Flapjack.Shape.one) (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "s2")) body428_51

def body428_53 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s2"))
  (Flapjack.Exp.const 0#64)) body428_52 body428_5

def body428_54 : Prog (BitVec 64) :=
.seq body428_53 body428_33

def body428_55 : Prog (BitVec 64) :=
.decCall ("s2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "outer", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body428_54

def body428_56 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) body428_55

def body428_57 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body428_58 : Prog (BitVec 64) :=
.seq body428_56 body428_57

def body428_59 : Prog (BitVec 64) :=
.seq body428_38 body428_58

def body428_60 : Prog (BitVec 64) :=
.seq body428_37 body428_59

def body428_61 : Prog (BitVec 64) :=
.dec ("outer") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 32#64])) body428_60

def body428_62 : Prog (BitVec 64) :=
.seq body428_36 body428_61

def body428_63 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body428_62

def body428_64 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "aw", Flapjack.Exp.const 24#64])) body428_63

def body428_65 : Prog (BitVec 64) :=
.dec ("aw") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 16#64])) body428_64

def body428_66 : Prog (BitVec 64) :=
.dec ("idx") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "bal_index") body428_65

def body428_67 : Prog (BitVec 64) :=
.seq body428_0 body428_1

def body428_68 : Prog (BitVec 64) :=
.seq body428_67 body428_2

def body428_69 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "post") (Flapjack.Exp.const 1#64)) body428_68 body428_5

def body428_70 : Prog (BitVec 64) :=
.seq body428_9 body428_12

def body428_71 : Prog (BitVec 64) :=
.seq body428_70 body428_13

def body428_72 : Prog (BitVec 64) :=
.seq body428_71 body428_17

def body428_73 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "pre_bal", Flapjack.Exp.var Flapjack.VarKind.local "post_bal"]) body428_72

def body428_74 : Prog (BitVec 64) :=
.seq body428_69 body428_73

def body428_75 : Prog (BitVec 64) :=
.dec ("post_ch") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "empty_code_hash") body428_74

def body428_76 : Prog (BitVec 64) :=
.dec ("post_nonce") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body428_75

def body428_77 : Prog (BitVec 64) :=
.dec ("post_bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body428_76

def body428_78 : Prog (BitVec 64) :=
.dec ("pre_ch") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pre", Flapjack.Exp.const 48#64]) body428_77

def body428_79 : Prog (BitVec 64) :=
.dec ("pre_nonce") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pre", Flapjack.Exp.const 8#64])) body428_78

def body428_80 : Prog (BitVec 64) :=
.dec ("pre_bal") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pre", Flapjack.Exp.const 16#64])) body428_79

def body428_81 : Prog (BitVec 64) :=
.decCall ("pre") (Flapjack.Shape.one) ("idx_start_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body428_80

def body428_82 : Prog (BitVec 64) :=
.dec ("post") (Flapjack.Shape.one) (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "s")) body428_81

def body428_83 : Prog (BitVec 64) :=
.dec ("addr") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s")) body428_82

def body428_84 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) body428_83 body428_5

def body428_85 : Prog (BitVec 64) :=
.seq body428_84 body428_33

def body428_86 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "aw", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body428_85

def body428_87 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) body428_86

def body428_88 : Prog (BitVec 64) :=
.seq body428_37 body428_38

def body428_89 : Prog (BitVec 64) :=
.seq body428_88 body428_56

def body428_90 : Prog (BitVec 64) :=
.seq body428_89 body428_57

def body428_91 : Prog (BitVec 64) :=
.dec ("outer") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 32#64])) body428_90

def body428_92 : Prog (BitVec 64) :=
.seq body428_87 body428_91

def body428_93 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body428_92

def body428_94 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "aw", Flapjack.Exp.const 24#64])) body428_93

def body428_95 : Prog (BitVec 64) :=
.dec ("aw") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 16#64])) body428_94

def body428_96 : Prog (BitVec 64) :=
.dec ("idx") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "bal_index") body428_95

def originalData428 : Decl (BitVec 64) :=
.function { name := "update_builder_from_tx", inline := false, exported := false, params := [], body := body428_66, returnShape := (Flapjack.Shape.one) }
def simplifiedData428 : Decl (BitVec 64) :=
.function { name := "update_builder_from_tx", inline := false, exported := false, params := [], body := body428_96, returnShape := (Flapjack.Shape.one) }
def original428 := Pancake.PanLang.declToHOL originalData428
def simplified428 := Pancake.PanLang.declToHOL simplifiedData428
end InitECandidate.Proofs.FrontendStages.Declarations
