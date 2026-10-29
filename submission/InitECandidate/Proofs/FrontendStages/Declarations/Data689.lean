import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify673
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body689_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64]

def body689_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body689_2 : Prog (BitVec 64) :=
.seq body689_0 body689_1

def body689_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body689_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "zz") (Flapjack.Exp.const 1#64)) body689_2 body689_3

def body689_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x"), none)) "fq_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "zi"]

def body689_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y"), none)) "fq_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "zi"]

def body689_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x"), none)) "fq_from_mont"
  [Flapjack.Exp.var Flapjack.VarKind.local "x"]

def body689_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y"), none)) "fq_from_mont"
  [Flapjack.Exp.var Flapjack.VarKind.local "y"]

def body689_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body689_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "y",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]]

def body689_11 : Prog (BitVec 64) :=
.seq body689_10 body689_1

def body689_12 : Prog (BitVec 64) :=
.seq body689_9 body689_11

def body689_13 : Prog (BitVec 64) :=
.seq body689_8 body689_12

def body689_14 : Prog (BitVec 64) :=
.seq body689_7 body689_13

def body689_15 : Prog (BitVec 64) :=
.seq body689_6 body689_14

def body689_16 : Prog (BitVec 64) :=
.seq body689_5 body689_15

def body689_17 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 32#64])) body689_16

def body689_18 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pt")) body689_17

def body689_19 : Prog (BitVec 64) :=
.decCall ("zi") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_inv") ([Flapjack.Exp.var Flapjack.VarKind.local "z"]) body689_18

def body689_20 : Prog (BitVec 64) :=
.seq body689_4 body689_19

def body689_21 : Prog (BitVec 64) :=
.decCall ("zz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "z"]) body689_20

def body689_22 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 64#64])) body689_21

def body689_23 : Prog (BitVec 64) :=
.seq body689_5 body689_6

def body689_24 : Prog (BitVec 64) :=
.seq body689_23 body689_7

def body689_25 : Prog (BitVec 64) :=
.seq body689_24 body689_8

def body689_26 : Prog (BitVec 64) :=
.seq body689_25 body689_9

def body689_27 : Prog (BitVec 64) :=
.seq body689_26 body689_10

def body689_28 : Prog (BitVec 64) :=
.seq body689_27 body689_1

def body689_29 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 32#64])) body689_28

def body689_30 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pt")) body689_29

def body689_31 : Prog (BitVec 64) :=
.decCall ("zi") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_inv") ([Flapjack.Exp.var Flapjack.VarKind.local "z"]) body689_30

def body689_32 : Prog (BitVec 64) :=
.seq body689_4 body689_31

def body689_33 : Prog (BitVec 64) :=
.decCall ("zz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "z"]) body689_32

def body689_34 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 64#64])) body689_33

def originalData689 : Decl (BitVec 64) :=
.function { name := "bn254_g1_to_bytes", inline := false, exported := false, params := [("pt", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body689_22, returnShape := (Flapjack.Shape.one) }
def simplifiedData689 : Decl (BitVec 64) :=
.function { name := "bn254_g1_to_bytes", inline := false, exported := false, params := [("pt", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body689_34, returnShape := (Flapjack.Shape.one) }
def original689 := Pancake.PanLang.declToHOL originalData689
def simplified689 := Pancake.PanLang.declToHOL simplifiedData689
end InitECandidate.Proofs.FrontendStages.Declarations
