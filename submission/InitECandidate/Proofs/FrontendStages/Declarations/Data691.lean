import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify675
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body691_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body691_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body691_2 : Prog (BitVec 64) :=
.seq body691_0 body691_1

def body691_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body691_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "e0") (Flapjack.Exp.const 0#64)) body691_2 body691_3

def body691_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_mul"
  [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "p0", Flapjack.Exp.var Flapjack.VarKind.local "p0",
    Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body691_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn254_g1_to_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p0", Flapjack.Exp.var Flapjack.VarKind.local "out64"]

def body691_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body691_8 : Prog (BitVec 64) :=
.seq body691_0 body691_7

def body691_9 : Prog (BitVec 64) :=
.seq body691_6 body691_8

def body691_10 : Prog (BitVec 64) :=
.seq body691_5 body691_9

def body691_11 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "in96", Flapjack.Exp.const 64#64],
  Flapjack.Exp.const 32#64]) body691_10

def body691_12 : Prog (BitVec 64) :=
.seq body691_4 body691_11

def body691_13 : Prog (BitVec 64) :=
.decCall ("e0") (Flapjack.Shape.one) ("bn254_parse_g1") ([Flapjack.Exp.var Flapjack.VarKind.local "in96", Flapjack.Exp.var Flapjack.VarKind.local "p0"]) body691_12

def body691_14 : Prog (BitVec 64) :=
.decCall ("p0") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body691_13

def body691_15 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body691_14

def body691_16 : Prog (BitVec 64) :=
.seq body691_5 body691_6

def body691_17 : Prog (BitVec 64) :=
.seq body691_16 body691_0

def body691_18 : Prog (BitVec 64) :=
.seq body691_17 body691_7

def body691_19 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "in96", Flapjack.Exp.const 64#64],
  Flapjack.Exp.const 32#64]) body691_18

def body691_20 : Prog (BitVec 64) :=
.seq body691_4 body691_19

def body691_21 : Prog (BitVec 64) :=
.decCall ("e0") (Flapjack.Shape.one) ("bn254_parse_g1") ([Flapjack.Exp.var Flapjack.VarKind.local "in96", Flapjack.Exp.var Flapjack.VarKind.local "p0"]) body691_20

def body691_22 : Prog (BitVec 64) :=
.decCall ("p0") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body691_21

def body691_23 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body691_22

def originalData691 : Decl (BitVec 64) :=
.function { name := "bn254_g1_mul", inline := false, exported := false, params := [("in96", Flapjack.Shape.one), ("out64", Flapjack.Shape.one)], body := body691_15, returnShape := (Flapjack.Shape.one) }
def simplifiedData691 : Decl (BitVec 64) :=
.function { name := "bn254_g1_mul", inline := false, exported := false, params := [("in96", Flapjack.Shape.one), ("out64", Flapjack.Shape.one)], body := body691_23, returnShape := (Flapjack.Shape.one) }
def original691 := Pancake.PanLang.declToHOL originalData691
def simplified691 := Pancake.PanLang.declToHOL simplifiedData691
end InitECandidate.Proofs.FrontendStages.Declarations
