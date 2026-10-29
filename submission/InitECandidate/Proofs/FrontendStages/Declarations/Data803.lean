import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify787
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body803_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "g1_decode"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 128#64],
    Flapjack.Exp.var Flapjack.VarKind.local "p2"]

def body803_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body803_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 1#64)) body803_0 body803_1

def body803_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body803_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body803_5 : Prog (BitVec 64) :=
.seq body803_3 body803_4

def body803_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) body803_5 body803_1

def body803_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.var Flapjack.VarKind.local "p1",
    Flapjack.Exp.var Flapjack.VarKind.local "p2"]

def body803_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_encode"
  [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body803_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body803_10 : Prog (BitVec 64) :=
.seq body803_3 body803_9

def body803_11 : Prog (BitVec 64) :=
.seq body803_8 body803_10

def body803_12 : Prog (BitVec 64) :=
.seq body803_7 body803_11

def body803_13 : Prog (BitVec 64) :=
.seq body803_6 body803_12

def body803_14 : Prog (BitVec 64) :=
.seq body803_2 body803_13

def body803_15 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("g1_decode") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "p1"]) body803_14

def body803_16 : Prog (BitVec 64) :=
.decCall ("p2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body803_15

def body803_17 : Prog (BitVec 64) :=
.decCall ("p1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body803_16

def body803_18 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body803_17

def body803_19 : Prog (BitVec 64) :=
.seq body803_2 body803_6

def body803_20 : Prog (BitVec 64) :=
.seq body803_19 body803_7

def body803_21 : Prog (BitVec 64) :=
.seq body803_20 body803_8

def body803_22 : Prog (BitVec 64) :=
.seq body803_21 body803_3

def body803_23 : Prog (BitVec 64) :=
.seq body803_22 body803_9

def body803_24 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("g1_decode") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "p1"]) body803_23

def body803_25 : Prog (BitVec 64) :=
.decCall ("p2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body803_24

def body803_26 : Prog (BitVec 64) :=
.decCall ("p1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body803_25

def body803_27 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body803_26

def originalData803 : Decl (BitVec 64) :=
.function { name := "bls_g1_add_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body803_18, returnShape := (Flapjack.Shape.one) }
def simplifiedData803 : Decl (BitVec 64) :=
.function { name := "bls_g1_add_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body803_27, returnShape := (Flapjack.Shape.one) }
def original803 := Pancake.PanLang.declToHOL originalData803
def simplified803 := Pancake.PanLang.declToHOL simplifiedData803
end InitECandidate.Proofs.FrontendStages.Declarations
