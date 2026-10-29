import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify752
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body768_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body768_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body768_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "okx") (Flapjack.Exp.const 0#64)) body768_0 body768_1

def body768_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "oky") (Flapjack.Exp.const 0#64)) body768_0 body768_1

def body768_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body768_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body768_6 : Prog (BitVec 64) :=
.seq body768_4 body768_5

def body768_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "xz") (Flapjack.Exp.const 1#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "yz") (Flapjack.Exp.const 1#64))]) body768_6 body768_1

def body768_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 8505329371266088957#64, Flapjack.Exp.const 17002214543764226050#64,
      Flapjack.Exp.const 6865905132761471162#64, Flapjack.Exp.const 8632934651105793861#64,
      Flapjack.Exp.const 6631298214892334189#64, Flapjack.Exp.const 1582556514881692819#64])

def body768_9 : Prog (BitVec 64) :=
Flapjack.Prog.call none "g1_on_curve"
  [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]

def body768_10 : Prog (BitVec 64) :=
.seq body768_8 body768_9

def body768_11 : Prog (BitVec 64) :=
.seq body768_7 body768_10

def body768_12 : Prog (BitVec 64) :=
.decCall ("yz") (Flapjack.Shape.one) ("bls_fp_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) body768_11

def body768_13 : Prog (BitVec 64) :=
.decCall ("xz") (Flapjack.Shape.one) ("bls_fp_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) body768_12

def body768_14 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 48#64])) body768_13

def body768_15 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "r")) body768_14

def body768_16 : Prog (BitVec 64) :=
.seq body768_3 body768_15

def body768_17 : Prog (BitVec 64) :=
.decCall ("oky") (Flapjack.Shape.one) ("bls_fp_decode64") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 64#64],
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 48#64]]) body768_16

def body768_18 : Prog (BitVec 64) :=
.seq body768_2 body768_17

def body768_19 : Prog (BitVec 64) :=
.decCall ("okx") (Flapjack.Shape.one) ("bls_fp_decode64") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "r"]) body768_18

def body768_20 : Prog (BitVec 64) :=
.seq body768_7 body768_8

def body768_21 : Prog (BitVec 64) :=
.seq body768_20 body768_9

def body768_22 : Prog (BitVec 64) :=
.decCall ("yz") (Flapjack.Shape.one) ("bls_fp_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) body768_21

def body768_23 : Prog (BitVec 64) :=
.decCall ("xz") (Flapjack.Shape.one) ("bls_fp_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) body768_22

def body768_24 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 48#64])) body768_23

def body768_25 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "r")) body768_24

def body768_26 : Prog (BitVec 64) :=
.seq body768_3 body768_25

def body768_27 : Prog (BitVec 64) :=
.decCall ("oky") (Flapjack.Shape.one) ("bls_fp_decode64") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 64#64],
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 48#64]]) body768_26

def body768_28 : Prog (BitVec 64) :=
.seq body768_2 body768_27

def body768_29 : Prog (BitVec 64) :=
.decCall ("okx") (Flapjack.Shape.one) ("bls_fp_decode64") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "r"]) body768_28

def originalData768 : Decl (BitVec 64) :=
.function { name := "g1_decode", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("r", Flapjack.Shape.one)], body := body768_19, returnShape := (Flapjack.Shape.one) }
def simplifiedData768 : Decl (BitVec 64) :=
.function { name := "g1_decode", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("r", Flapjack.Shape.one)], body := body768_29, returnShape := (Flapjack.Shape.one) }
def original768 := Pancake.PanLang.declToHOL originalData768
def simplified768 := Pancake.PanLang.declToHOL simplifiedData768
end InitECandidate.Proofs.FrontendStages.Declarations
