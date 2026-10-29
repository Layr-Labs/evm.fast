import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify471
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body487_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body487_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_bool" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body487_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body487_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body487_4 : Prog (BitVec 64) :=
.seq body487_2 body487_3

def body487_5 : Prog (BitVec 64) :=
.seq body487_1 body487_4

def body487_6 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]) body487_5

def body487_7 : Prog (BitVec 64) :=
.seq body487_0 body487_6

def body487_8 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body487_7

def body487_9 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body487_8

def body487_10 : Prog (BitVec 64) :=
.seq body487_1 body487_2

def body487_11 : Prog (BitVec 64) :=
.seq body487_10 body487_3

def body487_12 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]) body487_11

def body487_13 : Prog (BitVec 64) :=
.seq body487_0 body487_12

def body487_14 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body487_13

def body487_15 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body487_14

def originalData487 : Decl (BitVec 64) :=
.function { name := "op_lt", inline := false, exported := false, params := [], body := body487_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData487 : Decl (BitVec 64) :=
.function { name := "op_lt", inline := false, exported := false, params := [], body := body487_15, returnShape := (Flapjack.Shape.one) }
def original487 := Pancake.PanLang.declToHOL originalData487
def simplified487 := Pancake.PanLang.declToHOL simplifiedData487
end InitECandidate.Proofs.FrontendStages.Declarations
