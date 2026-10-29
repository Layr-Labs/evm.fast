import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify462
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body478_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body478_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body478_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body478_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body478_4 : Prog (BitVec 64) :=
.seq body478_2 body478_3

def body478_5 : Prog (BitVec 64) :=
.seq body478_1 body478_4

def body478_6 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]) body478_5

def body478_7 : Prog (BitVec 64) :=
.seq body478_0 body478_6

def body478_8 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body478_7

def body478_9 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body478_8

def body478_10 : Prog (BitVec 64) :=
.seq body478_1 body478_2

def body478_11 : Prog (BitVec 64) :=
.seq body478_10 body478_3

def body478_12 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]) body478_11

def body478_13 : Prog (BitVec 64) :=
.seq body478_0 body478_12

def body478_14 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body478_13

def body478_15 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body478_14

def originalData478 : Decl (BitVec 64) :=
.function { name := "op_sub", inline := false, exported := false, params := [], body := body478_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData478 : Decl (BitVec 64) :=
.function { name := "op_sub", inline := false, exported := false, params := [], body := body478_15, returnShape := (Flapjack.Shape.one) }
def original478 := Pancake.PanLang.declToHOL originalData478
def simplified478 := Pancake.PanLang.declToHOL simplifiedData478
end InitECandidate.Proofs.FrontendStages.Declarations
