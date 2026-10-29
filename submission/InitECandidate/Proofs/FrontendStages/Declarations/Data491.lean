import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify475
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body491_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body491_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_bool" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body491_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body491_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body491_4 : Prog (BitVec 64) :=
.seq body491_2 body491_3

def body491_5 : Prog (BitVec 64) :=
.seq body491_1 body491_4

def body491_6 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]) body491_5

def body491_7 : Prog (BitVec 64) :=
.seq body491_0 body491_6

def body491_8 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body491_7

def body491_9 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body491_8

def body491_10 : Prog (BitVec 64) :=
.seq body491_1 body491_2

def body491_11 : Prog (BitVec 64) :=
.seq body491_10 body491_3

def body491_12 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]) body491_11

def body491_13 : Prog (BitVec 64) :=
.seq body491_0 body491_12

def body491_14 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body491_13

def body491_15 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body491_14

def originalData491 : Decl (BitVec 64) :=
.function { name := "op_eq", inline := false, exported := false, params := [], body := body491_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData491 : Decl (BitVec 64) :=
.function { name := "op_eq", inline := false, exported := false, params := [], body := body491_15, returnShape := (Flapjack.Shape.one) }
def original491 := Pancake.PanLang.declToHOL originalData491
def simplified491 := Pancake.PanLang.declToHOL simplifiedData491
end InitECandidate.Proofs.FrontendStages.Declarations
