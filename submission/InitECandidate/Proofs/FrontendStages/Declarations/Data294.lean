import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify278
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body294_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (some (Flapjack.VarKind.local, "it"),
      some ("RlpErr", "e", Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 20#64])))
  "rlp_decode_fully" [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body294_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 20#64]

def body294_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body294_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.const 1#64)) body294_1 body294_2

def body294_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sl"))
  (Flapjack.Exp.const 4#64)) body294_1 body294_2

def body294_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "f0"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "f1"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "f2"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "f3")])
  (Flapjack.Exp.const 0#64)) body294_1 body294_2

def body294_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 21#64]

def body294_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 8#64)
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "f0"))) body294_6 body294_2

def body294_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nonce"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "nonce") (Flapjack.Exp.const 8#64),
      Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "f0"),
            Flapjack.Exp.var Flapjack.VarKind.local "i"])])

def body294_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body294_10 : Prog (BitVec 64) :=
.seq body294_8 body294_9

def body294_11 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "f0"))) body294_10

def body294_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct_out", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nonce")

def body294_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 22#64]

def body294_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 32#64)
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "f1"))) body294_13 body294_2

def body294_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct_out", Flapjack.Exp.const 8#64],
    Flapjack.Exp.const 32#64]

def body294_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def body294_17 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "lp")
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "lp"),
      Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "f1"),
              Flapjack.Exp.var Flapjack.VarKind.local "i"]))
        (Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "pos", Flapjack.Exp.const 7#64],
            Flapjack.Exp.const 8#64])])

def body294_18 : Prog (BitVec 64) :=
.seq body294_17 body294_9

def body294_19 : Prog (BitVec 64) :=
.dec ("lp") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "acct_out", Flapjack.Exp.const 8#64,
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "pos") (Flapjack.Exp.const 3#64),
        Flapjack.Exp.const 8#64]]) body294_18

def body294_20 : Prog (BitVec 64) :=
.dec ("pos") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "f1"), Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "i"]) body294_19

def body294_21 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "f1"))) body294_20

def body294_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct_out", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "empty_trie_root")

def body294_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 23#64]

def body294_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "f2"))
  (Flapjack.Exp.const 32#64)) body294_23 body294_2

def body294_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct_out", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "f2"))

def body294_26 : Prog (BitVec 64) :=
.seq body294_24 body294_25

def body294_27 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "f2"))
  (Flapjack.Exp.const 0#64)) body294_22 body294_26

def body294_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct_out", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "empty_code_hash")

def body294_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 24#64]

def body294_30 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "f3"))
  (Flapjack.Exp.const 32#64)) body294_29 body294_2

def body294_31 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct_out", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "f3"))

def body294_32 : Prog (BitVec 64) :=
.seq body294_30 body294_31

def body294_33 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "f3"))
  (Flapjack.Exp.const 0#64)) body294_28 body294_32

def body294_34 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body294_35 : Prog (BitVec 64) :=
.seq body294_33 body294_34

def body294_36 : Prog (BitVec 64) :=
.seq body294_27 body294_35

def body294_37 : Prog (BitVec 64) :=
.seq body294_21 body294_36

def body294_38 : Prog (BitVec 64) :=
.seq body294_16 body294_37

def body294_39 : Prog (BitVec 64) :=
.seq body294_15 body294_38

def body294_40 : Prog (BitVec 64) :=
.seq body294_14 body294_39

def body294_41 : Prog (BitVec 64) :=
.seq body294_12 body294_40

def body294_42 : Prog (BitVec 64) :=
.seq body294_11 body294_41

def body294_43 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body294_42

def body294_44 : Prog (BitVec 64) :=
.dec ("nonce") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body294_43

def body294_45 : Prog (BitVec 64) :=
.seq body294_7 body294_44

def body294_46 : Prog (BitVec 64) :=
.seq body294_5 body294_45

def body294_47 : Prog (BitVec 64) :=
.decCall ("f3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 3#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 3#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body294_46

def body294_48 : Prog (BitVec 64) :=
.decCall ("f2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body294_47

def body294_49 : Prog (BitVec 64) :=
.decCall ("f1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 1#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 1#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body294_48

def body294_50 : Prog (BitVec 64) :=
.decCall ("f0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 0#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 0#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body294_49

def body294_51 : Prog (BitVec 64) :=
.dec ("arr") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "sl")) body294_50

def body294_52 : Prog (BitVec 64) :=
.seq body294_4 body294_51

def body294_53 : Prog (BitVec 64) :=
.decCall ("sl") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it")]) body294_52

def body294_54 : Prog (BitVec 64) :=
.seq body294_3 body294_53

def body294_55 : Prog (BitVec 64) :=
.seq body294_0 body294_54

def body294_56 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body294_55

def body294_57 : Prog (BitVec 64) :=
.dec ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body294_56

def body294_58 : Prog (BitVec 64) :=
.seq body294_0 body294_3

def body294_59 : Prog (BitVec 64) :=
.seq body294_5 body294_7

def body294_60 : Prog (BitVec 64) :=
.seq body294_11 body294_12

def body294_61 : Prog (BitVec 64) :=
.seq body294_60 body294_14

def body294_62 : Prog (BitVec 64) :=
.seq body294_61 body294_15

def body294_63 : Prog (BitVec 64) :=
.seq body294_62 body294_16

def body294_64 : Prog (BitVec 64) :=
.seq body294_63 body294_21

def body294_65 : Prog (BitVec 64) :=
.seq body294_64 body294_27

def body294_66 : Prog (BitVec 64) :=
.seq body294_65 body294_33

def body294_67 : Prog (BitVec 64) :=
.seq body294_66 body294_34

def body294_68 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body294_67

def body294_69 : Prog (BitVec 64) :=
.dec ("nonce") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body294_68

def body294_70 : Prog (BitVec 64) :=
.seq body294_59 body294_69

def body294_71 : Prog (BitVec 64) :=
.decCall ("f3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 3#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 3#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body294_70

def body294_72 : Prog (BitVec 64) :=
.decCall ("f2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body294_71

def body294_73 : Prog (BitVec 64) :=
.decCall ("f1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 1#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 1#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body294_72

def body294_74 : Prog (BitVec 64) :=
.decCall ("f0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 0#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 0#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body294_73

def body294_75 : Prog (BitVec 64) :=
.dec ("arr") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "sl")) body294_74

def body294_76 : Prog (BitVec 64) :=
.seq body294_4 body294_75

def body294_77 : Prog (BitVec 64) :=
.decCall ("sl") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it")]) body294_76

def body294_78 : Prog (BitVec 64) :=
.seq body294_58 body294_77

def body294_79 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body294_78

def body294_80 : Prog (BitVec 64) :=
.dec ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body294_79

def originalData294 : Decl (BitVec 64) :=
.function { name := "decode_account_from_leaf", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("acct_out", Flapjack.Shape.one)], body := body294_57, returnShape := (Flapjack.Shape.one) }
def simplifiedData294 : Decl (BitVec 64) :=
.function { name := "decode_account_from_leaf", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("acct_out", Flapjack.Shape.one)], body := body294_80, returnShape := (Flapjack.Shape.one) }
def original294 := Pancake.PanLang.declToHOL originalData294
def simplified294 := Pancake.PanLang.declToHOL simplifiedData294
end InitECandidate.Proofs.FrontendStages.Declarations
