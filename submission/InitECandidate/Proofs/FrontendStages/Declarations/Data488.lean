import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify472
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body488_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body488_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_bool" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body488_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body488_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body488_4 : Prog (BitVec 64) :=
.seq body488_2 body488_3

def body488_5 : Prog (BitVec 64) :=
.seq body488_1 body488_4

def body488_6 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("u256_gt") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]) body488_5

def body488_7 : Prog (BitVec 64) :=
.seq body488_0 body488_6

def body488_8 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body488_7

def body488_9 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body488_8

def body488_10 : Prog (BitVec 64) :=
.seq body488_1 body488_2

def body488_11 : Prog (BitVec 64) :=
.seq body488_10 body488_3

def body488_12 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("u256_gt") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]) body488_11

def body488_13 : Prog (BitVec 64) :=
.seq body488_0 body488_12

def body488_14 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body488_13

def body488_15 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body488_14

def originalData488 : Decl (BitVec 64) :=
.function { name := "op_gt", inline := false, exported := false, params := [], body := body488_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData488 : Decl (BitVec 64) :=
.function { name := "op_gt", inline := false, exported := false, params := [], body := body488_15, returnShape := (Flapjack.Shape.one) }
def original488 := Pancake.PanLang.declToHOL originalData488
def simplified488 := Pancake.PanLang.declToHOL simplifiedData488
end InitECandidate.Proofs.FrontendStages.Declarations
