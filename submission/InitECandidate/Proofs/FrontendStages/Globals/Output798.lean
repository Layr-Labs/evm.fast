import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data798
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate782
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody798_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody798_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody798_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "c_flag") (Flapjack.Exp.const 1#64)) globalBody798_0 globalBody798_1

def globalBody798_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "xb", Flapjack.Exp.var Flapjack.VarKind.local "bs", Flapjack.Exp.const 48#64]

def globalBody798_4 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "xb")
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 31#64])

def globalBody798_5 : Prog (BitVec 64) :=
.seq globalBody798_3 globalBody798_4

def globalBody798_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody798_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "xz") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "a_flag") (Flapjack.Exp.const 1#64)])) globalBody798_0 globalBody798_1

def globalBody798_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_set_inf" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody798_9 : Prog (BitVec 64) :=
.seq globalBody798_7 globalBody798_8

def globalBody798_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody798_11 : Prog (BitVec 64) :=
.seq globalBody798_9 globalBody798_10

def globalBody798_12 : Prog (BitVec 64) :=
.decCall ("xz") (Flapjack.Shape.one) ("bls_fp_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "xc"]) globalBody798_11

def globalBody798_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "b_flag") (Flapjack.Exp.const 1#64)) globalBody798_12 globalBody798_1

def globalBody798_14 : Prog (BitVec 64) :=
.seq globalBody798_6 globalBody798_13

def globalBody798_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 0#64)) globalBody798_0 globalBody798_1

def globalBody798_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "rhs"), none)) "bls_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "rhs", Flapjack.Exp.var Flapjack.VarKind.local "x"]

def globalBody798_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "rhs"), none)) "bls_fp_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "rhs", Flapjack.Exp.var Flapjack.VarKind.local "b"]

def globalBody798_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sq") (Flapjack.Exp.const 0#64)) globalBody798_0 globalBody798_1

def globalBody798_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y"), none)) "bls_fp_neg"
  [Flapjack.Exp.var Flapjack.VarKind.local "y"]

def globalBody798_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "hi")
  (Flapjack.Exp.var Flapjack.VarKind.local "a_flag")) globalBody798_19 globalBody798_1

def globalBody798_21 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.var Flapjack.VarKind.local "x")

def globalBody798_22 : Prog (BitVec 64) :=
.seq globalBody798_20 globalBody798_21

def globalBody798_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "y")

def globalBody798_24 : Prog (BitVec 64) :=
.seq globalBody798_22 globalBody798_23

def globalBody798_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 8505329371266088957#64, Flapjack.Exp.const 17002214543764226050#64,
      Flapjack.Exp.const 6865905132761471162#64, Flapjack.Exp.const 8632934651105793861#64,
      Flapjack.Exp.const 6631298214892334189#64, Flapjack.Exp.const 1582556514881692819#64])

def globalBody798_26 : Prog (BitVec 64) :=
.seq globalBody798_24 globalBody798_25

def globalBody798_27 : Prog (BitVec 64) :=
.seq globalBody798_26 globalBody798_10

def globalBody798_28 : Prog (BitVec 64) :=
.decCall ("hi") (Flapjack.Shape.one) ("bls_fp_is_high") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) globalBody798_27

def globalBody798_29 : Prog (BitVec 64) :=
.seq globalBody798_18 globalBody798_28

def globalBody798_30 : Prog (BitVec 64) :=
.decCall ("sq") (Flapjack.Shape.one) ("bls_fp_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "chk", Flapjack.Exp.var Flapjack.VarKind.local "rhs"]) globalBody798_29

def globalBody798_31 : Prog (BitVec 64) :=
.decCall ("chk") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) globalBody798_30

def globalBody798_32 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_pow") ([Flapjack.Exp.var Flapjack.VarKind.local "rhs",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
      Flapjack.Exp.const 1432#64],
  Flapjack.Exp.const 6#64]) globalBody798_31

def globalBody798_33 : Prog (BitVec 64) :=
.seq globalBody798_17 globalBody798_32

def globalBody798_34 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
      Flapjack.Exp.const 240#64])) globalBody798_33

def globalBody798_35 : Prog (BitVec 64) :=
.seq globalBody798_16 globalBody798_34

def globalBody798_36 : Prog (BitVec 64) :=
.decCall ("rhs") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) globalBody798_35

def globalBody798_37 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_to_mont") ([Flapjack.Exp.var Flapjack.VarKind.local "xc"]) globalBody798_36

def globalBody798_38 : Prog (BitVec 64) :=
.seq globalBody798_15 globalBody798_37

def globalBody798_39 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("bls_fp_lt_raw") ([Flapjack.Exp.var Flapjack.VarKind.local "xc",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13402431016077863595#64, Flapjack.Exp.const 2210141511517208575#64,
      Flapjack.Exp.const 7435674573564081700#64, Flapjack.Exp.const 7239337960414712511#64,
      Flapjack.Exp.const 5412103778470702295#64, Flapjack.Exp.const 1873798617647539866#64]]) globalBody798_38

def globalBody798_40 : Prog (BitVec 64) :=
.seq globalBody798_14 globalBody798_39

def globalBody798_41 : Prog (BitVec 64) :=
.decCall ("xc") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_from_be48") ([Flapjack.Exp.var Flapjack.VarKind.local "xb"]) globalBody798_40

def globalBody798_42 : Prog (BitVec 64) :=
.seq globalBody798_5 globalBody798_41

def globalBody798_43 : Prog (BitVec 64) :=
.decCall ("xb") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 48#64]) globalBody798_42

def globalBody798_44 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody798_43

def globalBody798_45 : Prog (BitVec 64) :=
.seq globalBody798_2 globalBody798_44

def globalBody798_46 : Prog (BitVec 64) :=
.dec ("a_flag") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 5#64),
    Flapjack.Exp.const 1#64]) globalBody798_45

def globalBody798_47 : Prog (BitVec 64) :=
.dec ("b_flag") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 6#64),
    Flapjack.Exp.const 1#64]) globalBody798_46

def globalBody798_48 : Prog (BitVec 64) :=
.dec ("c_flag") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 7#64),
    Flapjack.Exp.const 1#64]) globalBody798_47

def globalBody798_49 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "bs")) globalBody798_48

def globalData798 : Decl (BitVec 64) :=
.function { name := "kzg_decompress_g1", inline := false, exported := false, params := [("bs", Flapjack.Shape.one), ("r", Flapjack.Shape.one)], body := globalBody798_49, returnShape := (Flapjack.Shape.one) }
def globalOutput798 := Pancake.PanLang.declToHOL globalData798
end InitECandidate.Proofs.FrontendStages.Declarations
