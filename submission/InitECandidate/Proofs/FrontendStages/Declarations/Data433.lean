import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify417
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body433_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def body433_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sort_elems"
  [Flapjack.Exp.var Flapjack.VarKind.local "lp", Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 40#64,
    Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "tmp"]

def body433_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "sv"]

def body433_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def body433_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "c",
    Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "e")]

def body433_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def body433_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "c",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 8#64])]

def body433_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "cs", Flapjack.Exp.var Flapjack.VarKind.local "hl"],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cs", Flapjack.Exp.const 9#64],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "c",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cs", Flapjack.Exp.const 9#64]]]

def body433_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "cs",
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "c",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cs", Flapjack.Exp.const 9#64]]]

def body433_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cs"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "cs", Flapjack.Exp.var Flapjack.VarKind.local "hl",
      Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "c",
          Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cs", Flapjack.Exp.const 9#64]]])

def body433_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body433_11 : Prog (BitVec 64) :=
.seq body433_9 body433_10

def body433_12 : Prog (BitVec 64) :=
.seq body433_8 body433_11

def body433_13 : Prog (BitVec 64) :=
.seq body433_7 body433_12

def body433_14 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "c",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cs", Flapjack.Exp.const 9#64]]]) body433_13

def body433_15 : Prog (BitVec 64) :=
.seq body433_5 body433_14

def body433_16 : Prog (BitVec 64) :=
.seq body433_6 body433_15

def body433_17 : Prog (BitVec 64) :=
.seq body433_5 body433_16

def body433_18 : Prog (BitVec 64) :=
.seq body433_4 body433_17

def body433_19 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cs", Flapjack.Exp.const 9#64]) body433_18

def body433_20 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "lp",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 40#64]]) body433_19

def body433_21 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body433_20

def body433_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "hl2"],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 9#64],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "cs",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 9#64]]]

def body433_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "cs",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 9#64]]]

def body433_24 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "hl2",
      Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "cs",
          Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 9#64]]])

def body433_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "hl3"],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "r",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]

def body433_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "q",
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "r",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]

def body433_27 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "q"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "hl3",
      Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "r",
          Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]])

def body433_28 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body433_29 : Prog (BitVec 64) :=
.seq body433_27 body433_28

def body433_30 : Prog (BitVec 64) :=
.seq body433_26 body433_29

def body433_31 : Prog (BitVec 64) :=
.seq body433_25 body433_30

def body433_32 : Prog (BitVec 64) :=
.decCall ("hl3") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "r",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]) body433_31

def body433_33 : Prog (BitVec 64) :=
.seq body433_24 body433_32

def body433_34 : Prog (BitVec 64) :=
.seq body433_23 body433_33

def body433_35 : Prog (BitVec 64) :=
.seq body433_22 body433_34

def body433_36 : Prog (BitVec 64) :=
.decCall ("hl2") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "cs",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 9#64]]]) body433_35

def body433_37 : Prog (BitVec 64) :=
.seq body433_21 body433_36

def body433_38 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body433_37

def body433_39 : Prog (BitVec 64) :=
.dec ("cs") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 9#64]) body433_38

def body433_40 : Prog (BitVec 64) :=
.seq body433_3 body433_39

def body433_41 : Prog (BitVec 64) :=
.seq body433_2 body433_40

def body433_42 : Prog (BitVec 64) :=
.decCall ("sv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "slot", Flapjack.Exp.const 32#64]) body433_41

def body433_43 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]) body433_42

def body433_44 : Prog (BitVec 64) :=
.seq body433_1 body433_43

def body433_45 : Prog (BitVec 64) :=
.dec ("lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 0#64])) body433_44

def body433_46 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 8#64])) body433_45

def body433_47 : Prog (BitVec 64) :=
.dec ("l") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m")) body433_46

def body433_48 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "sc", Flapjack.Exp.var Flapjack.VarKind.local "slot"]) body433_47

def body433_49 : Prog (BitVec 64) :=
.dec ("slot") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "slots"),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]]) body433_48

def body433_50 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "slots"))) body433_49

def body433_51 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "hl4"],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "q",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]

def body433_52 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "q",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]

def body433_53 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "hl4",
      Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "q",
          Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]])

def body433_54 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def body433_55 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "rk"),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "kept", Flapjack.Exp.const 32#64]])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "rk"),
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]]))

def body433_56 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "kept"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "kept", Flapjack.Exp.const 1#64])

def body433_57 : Prog (BitVec 64) :=
.seq body433_55 body433_56

def body433_58 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body433_59 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "hasw") (Flapjack.Exp.const 0#64)) body433_57 body433_58

def body433_60 : Prog (BitVec 64) :=
.seq body433_59 body433_28

def body433_61 : Prog (BitVec 64) :=
.decCall ("hasw") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.var Flapjack.VarKind.local "sc",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "rk"),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]]]) body433_60

def body433_62 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "rk"))) body433_61

def body433_63 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sort_elems"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "rk"), Flapjack.Exp.var Flapjack.VarKind.local "kept",
    Flapjack.Exp.const 32#64, Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "tmp"]

def body433_64 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "q"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64])

def body433_65 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "sv2"]

def body433_66 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "q"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def body433_67 : Prog (BitVec 64) :=
.seq body433_66 body433_28

def body433_68 : Prog (BitVec 64) :=
.seq body433_65 body433_67

def body433_69 : Prog (BitVec 64) :=
.decCall ("sv2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "rk"),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]],
  Flapjack.Exp.const 32#64]) body433_68

def body433_70 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "kept")) body433_69

def body433_71 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "hl5"],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "q",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]

def body433_72 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "hl5",
      Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "q",
          Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]])

def body433_73 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sort_elems"
  [Flapjack.Exp.var Flapjack.VarKind.local "lp2", Flapjack.Exp.var Flapjack.VarKind.local "n2",
    Flapjack.Exp.const 40#64, Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "tmp"]

def body433_74 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "c2",
    Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "e2")]

def body433_75 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c2"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "c2", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def body433_76 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "c2",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e2", Flapjack.Exp.const 8#64])]

def body433_77 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "hl6"],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "c2",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]

def body433_78 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "q",
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "c2",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]

def body433_79 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "q"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "hl6",
      Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "c2",
          Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]])

def body433_80 : Prog (BitVec 64) :=
.seq body433_79 body433_28

def body433_81 : Prog (BitVec 64) :=
.seq body433_78 body433_80

def body433_82 : Prog (BitVec 64) :=
.seq body433_77 body433_81

def body433_83 : Prog (BitVec 64) :=
.decCall ("hl6") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "c2",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]) body433_82

def body433_84 : Prog (BitVec 64) :=
.seq body433_75 body433_83

def body433_85 : Prog (BitVec 64) :=
.seq body433_76 body433_84

def body433_86 : Prog (BitVec 64) :=
.seq body433_75 body433_85

def body433_87 : Prog (BitVec 64) :=
.seq body433_74 body433_86

def body433_88 : Prog (BitVec 64) :=
.dec ("c2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]) body433_87

def body433_89 : Prog (BitVec 64) :=
.dec ("e2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "lp2",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 40#64]]) body433_88

def body433_90 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n2")) body433_89

def body433_91 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "hl7"],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "q",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]

def body433_92 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "hl7",
      Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "q",
          Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]])

def body433_93 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sort_elems"
  [Flapjack.Exp.var Flapjack.VarKind.local "lp3", Flapjack.Exp.var Flapjack.VarKind.local "n3",
    Flapjack.Exp.const 16#64, Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "tmp"]

def body433_94 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "c3",
    Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "e3")]

def body433_95 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c3"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "c3", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def body433_96 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "c3",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e3", Flapjack.Exp.const 8#64])]

def body433_97 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "hl8"],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "c3",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]

def body433_98 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "q",
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "c3",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]

def body433_99 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "q"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "hl8",
      Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "c3",
          Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]])

def body433_100 : Prog (BitVec 64) :=
.seq body433_99 body433_28

def body433_101 : Prog (BitVec 64) :=
.seq body433_98 body433_100

def body433_102 : Prog (BitVec 64) :=
.seq body433_97 body433_101

def body433_103 : Prog (BitVec 64) :=
.decCall ("hl8") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "c3",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]) body433_102

def body433_104 : Prog (BitVec 64) :=
.seq body433_95 body433_103

def body433_105 : Prog (BitVec 64) :=
.seq body433_96 body433_104

def body433_106 : Prog (BitVec 64) :=
.seq body433_95 body433_105

def body433_107 : Prog (BitVec 64) :=
.seq body433_94 body433_106

def body433_108 : Prog (BitVec 64) :=
.dec ("c3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]) body433_107

def body433_109 : Prog (BitVec 64) :=
.dec ("e3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "lp3",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]) body433_108

def body433_110 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n3")) body433_109

def body433_111 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "hl9"],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "q",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]

def body433_112 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "hl9",
      Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "q",
          Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]])

def body433_113 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sort_elems"
  [Flapjack.Exp.var Flapjack.VarKind.local "lp4", Flapjack.Exp.var Flapjack.VarKind.local "n4",
    Flapjack.Exp.const 24#64, Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "tmp"]

def body433_114 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "c4",
    Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "e4")]

def body433_115 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c4"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "c4", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def body433_116 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "c4",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e4", Flapjack.Exp.const 8#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e4", Flapjack.Exp.const 16#64])]

def body433_117 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "hl10"],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "c4",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]

def body433_118 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "q",
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "c4",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]

def body433_119 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "q"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "hl10",
      Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "c4",
          Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]])

def body433_120 : Prog (BitVec 64) :=
.seq body433_119 body433_28

def body433_121 : Prog (BitVec 64) :=
.seq body433_118 body433_120

def body433_122 : Prog (BitVec 64) :=
.seq body433_117 body433_121

def body433_123 : Prog (BitVec 64) :=
.decCall ("hl10") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "c4",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]) body433_122

def body433_124 : Prog (BitVec 64) :=
.seq body433_115 body433_123

def body433_125 : Prog (BitVec 64) :=
.seq body433_116 body433_124

def body433_126 : Prog (BitVec 64) :=
.seq body433_115 body433_125

def body433_127 : Prog (BitVec 64) :=
.seq body433_114 body433_126

def body433_128 : Prog (BitVec 64) :=
.dec ("c4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]) body433_127

def body433_129 : Prog (BitVec 64) :=
.dec ("e4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "lp4",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) body433_128

def body433_130 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n4")) body433_129

def body433_131 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "hl11"],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "q",
        Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]

def body433_132 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "hl11",
      Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "q",
          Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]])

def body433_133 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body433_134 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "hl12"],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 9#64],
    Flapjack.Exp.var Flapjack.VarKind.local "payload"]

def body433_135 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "payload"]

def body433_136 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "hl12", Flapjack.Exp.var Flapjack.VarKind.local "payload"])

def body433_137 : Prog (BitVec 64) :=
.seq body433_135 body433_136

def body433_138 : Prog (BitVec 64) :=
.seq body433_134 body433_137

def body433_139 : Prog (BitVec 64) :=
.decCall ("hl12") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "payload"]) body433_138

def body433_140 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 9#64]]) body433_139

def body433_141 : Prog (BitVec 64) :=
.seq body433_133 body433_140

def body433_142 : Prog (BitVec 64) :=
.seq body433_132 body433_141

def body433_143 : Prog (BitVec 64) :=
.seq body433_52 body433_142

def body433_144 : Prog (BitVec 64) :=
.seq body433_131 body433_143

def body433_145 : Prog (BitVec 64) :=
.decCall ("hl11") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]) body433_144

def body433_146 : Prog (BitVec 64) :=
.seq body433_130 body433_145

def body433_147 : Prog (BitVec 64) :=
.seq body433_54 body433_146

def body433_148 : Prog (BitVec 64) :=
.seq body433_64 body433_147

def body433_149 : Prog (BitVec 64) :=
.seq body433_113 body433_148

def body433_150 : Prog (BitVec 64) :=
.dec ("lp4") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l4", Flapjack.Exp.const 0#64])) body433_149

def body433_151 : Prog (BitVec 64) :=
.dec ("n4") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l4", Flapjack.Exp.const 8#64])) body433_150

def body433_152 : Prog (BitVec 64) :=
.dec ("l4") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 32#64])) body433_151

def body433_153 : Prog (BitVec 64) :=
.seq body433_112 body433_152

def body433_154 : Prog (BitVec 64) :=
.seq body433_52 body433_153

def body433_155 : Prog (BitVec 64) :=
.seq body433_111 body433_154

def body433_156 : Prog (BitVec 64) :=
.decCall ("hl9") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]) body433_155

def body433_157 : Prog (BitVec 64) :=
.seq body433_110 body433_156

def body433_158 : Prog (BitVec 64) :=
.seq body433_54 body433_157

def body433_159 : Prog (BitVec 64) :=
.seq body433_64 body433_158

def body433_160 : Prog (BitVec 64) :=
.seq body433_93 body433_159

def body433_161 : Prog (BitVec 64) :=
.dec ("lp3") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l3", Flapjack.Exp.const 0#64])) body433_160

def body433_162 : Prog (BitVec 64) :=
.dec ("n3") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l3", Flapjack.Exp.const 8#64])) body433_161

def body433_163 : Prog (BitVec 64) :=
.dec ("l3") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 24#64])) body433_162

def body433_164 : Prog (BitVec 64) :=
.seq body433_92 body433_163

def body433_165 : Prog (BitVec 64) :=
.seq body433_52 body433_164

def body433_166 : Prog (BitVec 64) :=
.seq body433_91 body433_165

def body433_167 : Prog (BitVec 64) :=
.decCall ("hl7") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]) body433_166

def body433_168 : Prog (BitVec 64) :=
.seq body433_90 body433_167

def body433_169 : Prog (BitVec 64) :=
.seq body433_54 body433_168

def body433_170 : Prog (BitVec 64) :=
.seq body433_64 body433_169

def body433_171 : Prog (BitVec 64) :=
.seq body433_73 body433_170

def body433_172 : Prog (BitVec 64) :=
.dec ("lp2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.const 0#64])) body433_171

def body433_173 : Prog (BitVec 64) :=
.dec ("n2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.const 8#64])) body433_172

def body433_174 : Prog (BitVec 64) :=
.dec ("l2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 16#64])) body433_173

def body433_175 : Prog (BitVec 64) :=
.seq body433_72 body433_174

def body433_176 : Prog (BitVec 64) :=
.seq body433_52 body433_175

def body433_177 : Prog (BitVec 64) :=
.seq body433_71 body433_176

def body433_178 : Prog (BitVec 64) :=
.decCall ("hl5") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]) body433_177

def body433_179 : Prog (BitVec 64) :=
.seq body433_70 body433_178

def body433_180 : Prog (BitVec 64) :=
.seq body433_54 body433_179

def body433_181 : Prog (BitVec 64) :=
.seq body433_64 body433_180

def body433_182 : Prog (BitVec 64) :=
.seq body433_63 body433_181

def body433_183 : Prog (BitVec 64) :=
.seq body433_62 body433_182

def body433_184 : Prog (BitVec 64) :=
.seq body433_54 body433_183

def body433_185 : Prog (BitVec 64) :=
.dec ("kept") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body433_184

def body433_186 : Prog (BitVec 64) :=
.decCall ("rk") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_keys") ([Flapjack.Exp.var Flapjack.VarKind.local "sr"]) body433_185

def body433_187 : Prog (BitVec 64) :=
.dec ("sr") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 8#64])) body433_186

def body433_188 : Prog (BitVec 64) :=
.seq body433_53 body433_187

def body433_189 : Prog (BitVec 64) :=
.seq body433_52 body433_188

def body433_190 : Prog (BitVec 64) :=
.seq body433_51 body433_189

def body433_191 : Prog (BitVec 64) :=
.decCall ("hl4") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]) body433_190

def body433_192 : Prog (BitVec 64) :=
.seq body433_50 body433_191

def body433_193 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body433_192

def body433_194 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]) body433_193

def body433_195 : Prog (BitVec 64) :=
.decCall ("slots") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("sorted_keys32") ([Flapjack.Exp.var Flapjack.VarKind.local "sc", Flapjack.Exp.var Flapjack.VarKind.local "tmp"]) body433_194

def body433_196 : Prog (BitVec 64) :=
.dec ("sc") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 0#64])) body433_195

def body433_197 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body433_196

def body433_198 : Prog (BitVec 64) :=
.seq body433_0 body433_197

def body433_199 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 20#64]) body433_198

def body433_200 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 9#64]) body433_199

def body433_201 : Prog (BitVec 64) :=
.seq body433_2 body433_3

def body433_202 : Prog (BitVec 64) :=
.seq body433_4 body433_5

def body433_203 : Prog (BitVec 64) :=
.seq body433_202 body433_6

def body433_204 : Prog (BitVec 64) :=
.seq body433_203 body433_5

def body433_205 : Prog (BitVec 64) :=
.seq body433_7 body433_8

def body433_206 : Prog (BitVec 64) :=
.seq body433_205 body433_9

def body433_207 : Prog (BitVec 64) :=
.seq body433_206 body433_10

def body433_208 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "c",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cs", Flapjack.Exp.const 9#64]]]) body433_207

def body433_209 : Prog (BitVec 64) :=
.seq body433_204 body433_208

def body433_210 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cs", Flapjack.Exp.const 9#64]) body433_209

def body433_211 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "lp",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 40#64]]) body433_210

def body433_212 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body433_211

def body433_213 : Prog (BitVec 64) :=
.seq body433_22 body433_23

def body433_214 : Prog (BitVec 64) :=
.seq body433_213 body433_24

def body433_215 : Prog (BitVec 64) :=
.seq body433_25 body433_26

def body433_216 : Prog (BitVec 64) :=
.seq body433_215 body433_27

def body433_217 : Prog (BitVec 64) :=
.seq body433_216 body433_28

def body433_218 : Prog (BitVec 64) :=
.decCall ("hl3") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "r",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]) body433_217

def body433_219 : Prog (BitVec 64) :=
.seq body433_214 body433_218

def body433_220 : Prog (BitVec 64) :=
.decCall ("hl2") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "cs",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 9#64]]]) body433_219

def body433_221 : Prog (BitVec 64) :=
.seq body433_212 body433_220

def body433_222 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body433_221

def body433_223 : Prog (BitVec 64) :=
.dec ("cs") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 9#64]) body433_222

def body433_224 : Prog (BitVec 64) :=
.seq body433_201 body433_223

def body433_225 : Prog (BitVec 64) :=
.decCall ("sv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "slot", Flapjack.Exp.const 32#64]) body433_224

def body433_226 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]) body433_225

def body433_227 : Prog (BitVec 64) :=
.seq body433_1 body433_226

def body433_228 : Prog (BitVec 64) :=
.dec ("lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 0#64])) body433_227

def body433_229 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 8#64])) body433_228

def body433_230 : Prog (BitVec 64) :=
.dec ("l") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m")) body433_229

def body433_231 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "sc", Flapjack.Exp.var Flapjack.VarKind.local "slot"]) body433_230

def body433_232 : Prog (BitVec 64) :=
.dec ("slot") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "slots"),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]]) body433_231

def body433_233 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "slots"))) body433_232

def body433_234 : Prog (BitVec 64) :=
.seq body433_51 body433_52

def body433_235 : Prog (BitVec 64) :=
.seq body433_234 body433_53

def body433_236 : Prog (BitVec 64) :=
.seq body433_54 body433_62

def body433_237 : Prog (BitVec 64) :=
.seq body433_236 body433_63

def body433_238 : Prog (BitVec 64) :=
.seq body433_237 body433_64

def body433_239 : Prog (BitVec 64) :=
.seq body433_238 body433_54

def body433_240 : Prog (BitVec 64) :=
.seq body433_65 body433_66

def body433_241 : Prog (BitVec 64) :=
.seq body433_240 body433_28

def body433_242 : Prog (BitVec 64) :=
.decCall ("sv2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "rk"),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]],
  Flapjack.Exp.const 32#64]) body433_241

def body433_243 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "kept")) body433_242

def body433_244 : Prog (BitVec 64) :=
.seq body433_239 body433_243

def body433_245 : Prog (BitVec 64) :=
.seq body433_71 body433_52

def body433_246 : Prog (BitVec 64) :=
.seq body433_245 body433_72

def body433_247 : Prog (BitVec 64) :=
.seq body433_73 body433_64

def body433_248 : Prog (BitVec 64) :=
.seq body433_247 body433_54

def body433_249 : Prog (BitVec 64) :=
.seq body433_74 body433_75

def body433_250 : Prog (BitVec 64) :=
.seq body433_249 body433_76

def body433_251 : Prog (BitVec 64) :=
.seq body433_250 body433_75

def body433_252 : Prog (BitVec 64) :=
.seq body433_77 body433_78

def body433_253 : Prog (BitVec 64) :=
.seq body433_252 body433_79

def body433_254 : Prog (BitVec 64) :=
.seq body433_253 body433_28

def body433_255 : Prog (BitVec 64) :=
.decCall ("hl6") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "c2",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]) body433_254

def body433_256 : Prog (BitVec 64) :=
.seq body433_251 body433_255

def body433_257 : Prog (BitVec 64) :=
.dec ("c2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]) body433_256

def body433_258 : Prog (BitVec 64) :=
.dec ("e2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "lp2",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 40#64]]) body433_257

def body433_259 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n2")) body433_258

def body433_260 : Prog (BitVec 64) :=
.seq body433_248 body433_259

def body433_261 : Prog (BitVec 64) :=
.seq body433_91 body433_52

def body433_262 : Prog (BitVec 64) :=
.seq body433_261 body433_92

def body433_263 : Prog (BitVec 64) :=
.seq body433_93 body433_64

def body433_264 : Prog (BitVec 64) :=
.seq body433_263 body433_54

def body433_265 : Prog (BitVec 64) :=
.seq body433_94 body433_95

def body433_266 : Prog (BitVec 64) :=
.seq body433_265 body433_96

def body433_267 : Prog (BitVec 64) :=
.seq body433_266 body433_95

def body433_268 : Prog (BitVec 64) :=
.seq body433_97 body433_98

def body433_269 : Prog (BitVec 64) :=
.seq body433_268 body433_99

def body433_270 : Prog (BitVec 64) :=
.seq body433_269 body433_28

def body433_271 : Prog (BitVec 64) :=
.decCall ("hl8") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "c3",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]) body433_270

def body433_272 : Prog (BitVec 64) :=
.seq body433_267 body433_271

def body433_273 : Prog (BitVec 64) :=
.dec ("c3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]) body433_272

def body433_274 : Prog (BitVec 64) :=
.dec ("e3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "lp3",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]) body433_273

def body433_275 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n3")) body433_274

def body433_276 : Prog (BitVec 64) :=
.seq body433_264 body433_275

def body433_277 : Prog (BitVec 64) :=
.seq body433_111 body433_52

def body433_278 : Prog (BitVec 64) :=
.seq body433_277 body433_112

def body433_279 : Prog (BitVec 64) :=
.seq body433_113 body433_64

def body433_280 : Prog (BitVec 64) :=
.seq body433_279 body433_54

def body433_281 : Prog (BitVec 64) :=
.seq body433_114 body433_115

def body433_282 : Prog (BitVec 64) :=
.seq body433_281 body433_116

def body433_283 : Prog (BitVec 64) :=
.seq body433_282 body433_115

def body433_284 : Prog (BitVec 64) :=
.seq body433_117 body433_118

def body433_285 : Prog (BitVec 64) :=
.seq body433_284 body433_119

def body433_286 : Prog (BitVec 64) :=
.seq body433_285 body433_28

def body433_287 : Prog (BitVec 64) :=
.decCall ("hl10") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "c4",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]]]) body433_286

def body433_288 : Prog (BitVec 64) :=
.seq body433_283 body433_287

def body433_289 : Prog (BitVec 64) :=
.dec ("c4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 9#64]) body433_288

def body433_290 : Prog (BitVec 64) :=
.dec ("e4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "lp4",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64]]) body433_289

def body433_291 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n4")) body433_290

def body433_292 : Prog (BitVec 64) :=
.seq body433_280 body433_291

def body433_293 : Prog (BitVec 64) :=
.seq body433_131 body433_52

def body433_294 : Prog (BitVec 64) :=
.seq body433_293 body433_132

def body433_295 : Prog (BitVec 64) :=
.seq body433_294 body433_133

def body433_296 : Prog (BitVec 64) :=
.seq body433_134 body433_135

def body433_297 : Prog (BitVec 64) :=
.seq body433_296 body433_136

def body433_298 : Prog (BitVec 64) :=
.decCall ("hl12") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "payload"]) body433_297

def body433_299 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 9#64]]) body433_298

def body433_300 : Prog (BitVec 64) :=
.seq body433_295 body433_299

def body433_301 : Prog (BitVec 64) :=
.decCall ("hl11") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]) body433_300

def body433_302 : Prog (BitVec 64) :=
.seq body433_292 body433_301

def body433_303 : Prog (BitVec 64) :=
.dec ("lp4") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l4", Flapjack.Exp.const 0#64])) body433_302

def body433_304 : Prog (BitVec 64) :=
.dec ("n4") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l4", Flapjack.Exp.const 8#64])) body433_303

def body433_305 : Prog (BitVec 64) :=
.dec ("l4") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 32#64])) body433_304

def body433_306 : Prog (BitVec 64) :=
.seq body433_278 body433_305

def body433_307 : Prog (BitVec 64) :=
.decCall ("hl9") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]) body433_306

def body433_308 : Prog (BitVec 64) :=
.seq body433_276 body433_307

def body433_309 : Prog (BitVec 64) :=
.dec ("lp3") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l3", Flapjack.Exp.const 0#64])) body433_308

def body433_310 : Prog (BitVec 64) :=
.dec ("n3") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l3", Flapjack.Exp.const 8#64])) body433_309

def body433_311 : Prog (BitVec 64) :=
.dec ("l3") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 24#64])) body433_310

def body433_312 : Prog (BitVec 64) :=
.seq body433_262 body433_311

def body433_313 : Prog (BitVec 64) :=
.decCall ("hl7") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]) body433_312

def body433_314 : Prog (BitVec 64) :=
.seq body433_260 body433_313

def body433_315 : Prog (BitVec 64) :=
.dec ("lp2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.const 0#64])) body433_314

def body433_316 : Prog (BitVec 64) :=
.dec ("n2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.const 8#64])) body433_315

def body433_317 : Prog (BitVec 64) :=
.dec ("l2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 16#64])) body433_316

def body433_318 : Prog (BitVec 64) :=
.seq body433_246 body433_317

def body433_319 : Prog (BitVec 64) :=
.decCall ("hl5") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]) body433_318

def body433_320 : Prog (BitVec 64) :=
.seq body433_244 body433_319

def body433_321 : Prog (BitVec 64) :=
.dec ("kept") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body433_320

def body433_322 : Prog (BitVec 64) :=
.decCall ("rk") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_keys") ([Flapjack.Exp.var Flapjack.VarKind.local "sr"]) body433_321

def body433_323 : Prog (BitVec 64) :=
.dec ("sr") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 8#64])) body433_322

def body433_324 : Prog (BitVec 64) :=
.seq body433_235 body433_323

def body433_325 : Prog (BitVec 64) :=
.decCall ("hl4") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]]]) body433_324

def body433_326 : Prog (BitVec 64) :=
.seq body433_233 body433_325

def body433_327 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body433_326

def body433_328 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 9#64]) body433_327

def body433_329 : Prog (BitVec 64) :=
.decCall ("slots") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("sorted_keys32") ([Flapjack.Exp.var Flapjack.VarKind.local "sc", Flapjack.Exp.var Flapjack.VarKind.local "tmp"]) body433_328

def body433_330 : Prog (BitVec 64) :=
.dec ("sc") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 0#64])) body433_329

def body433_331 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body433_330

def body433_332 : Prog (BitVec 64) :=
.seq body433_0 body433_331

def body433_333 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 20#64]) body433_332

def body433_334 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 9#64]) body433_333

def originalData433 : Decl (BitVec 64) :=
.function { name := "bal_encode_account", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("addr", Flapjack.Shape.one), ("ad", Flapjack.Shape.one), ("tmp", Flapjack.Shape.one)], body := body433_200, returnShape := (Flapjack.Shape.one) }
def simplifiedData433 : Decl (BitVec 64) :=
.function { name := "bal_encode_account", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("addr", Flapjack.Shape.one), ("ad", Flapjack.Shape.one), ("tmp", Flapjack.Shape.one)], body := body433_334, returnShape := (Flapjack.Shape.one) }
def original433 := Pancake.PanLang.declToHOL originalData433
def simplified433 := Pancake.PanLang.declToHOL simplifiedData433
end InitECandidate.Proofs.FrontendStages.Declarations
