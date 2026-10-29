import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify498
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body514_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body514_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body514_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body514_3 : Prog (BitVec 64) :=
.seq body514_1 body514_2

def body514_4 : Prog (BitVec 64) :=
.seq body514_0 body514_3

def body514_5 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body514_4

def body514_6 : Prog (BitVec 64) :=
.seq body514_0 body514_1

def body514_7 : Prog (BitVec 64) :=
.seq body514_6 body514_2

def body514_8 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body514_7

def originalData514 : Decl (BitVec 64) :=
.function { name := "op_pop", inline := false, exported := false, params := [], body := body514_5, returnShape := (Flapjack.Shape.one) }
def simplifiedData514 : Decl (BitVec 64) :=
.function { name := "op_pop", inline := false, exported := false, params := [], body := body514_8, returnShape := (Flapjack.Shape.one) }
def original514 := Pancake.PanLang.declToHOL originalData514
def simplified514 := Pancake.PanLang.declToHOL simplifiedData514
end InitECandidate.Proofs.FrontendStages.Declarations
