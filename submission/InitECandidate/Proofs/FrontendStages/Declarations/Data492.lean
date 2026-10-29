import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify476
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body492_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body492_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_bool" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body492_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body492_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body492_4 : Prog (BitVec 64) :=
.seq body492_2 body492_3

def body492_5 : Prog (BitVec 64) :=
.seq body492_1 body492_4

def body492_6 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) body492_5

def body492_7 : Prog (BitVec 64) :=
.seq body492_0 body492_6

def body492_8 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body492_7

def body492_9 : Prog (BitVec 64) :=
.seq body492_1 body492_2

def body492_10 : Prog (BitVec 64) :=
.seq body492_9 body492_3

def body492_11 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) body492_10

def body492_12 : Prog (BitVec 64) :=
.seq body492_0 body492_11

def body492_13 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body492_12

def originalData492 : Decl (BitVec 64) :=
.function { name := "op_iszero", inline := false, exported := false, params := [], body := body492_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData492 : Decl (BitVec 64) :=
.function { name := "op_iszero", inline := false, exported := false, params := [], body := body492_13, returnShape := (Flapjack.Shape.one) }
def original492 := Pancake.PanLang.declToHOL originalData492
def simplified492 := Pancake.PanLang.declToHOL simplifiedData492
end InitECandidate.Proofs.FrontendStages.Declarations
