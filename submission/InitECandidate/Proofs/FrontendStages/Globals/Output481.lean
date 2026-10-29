import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data481
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate465
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody481_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 5#64]

def globalBody481_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody481_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody481_3 : Prog (BitVec 64) :=
.seq globalBody481_1 globalBody481_2

def globalBody481_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody481_5 : Prog (BitVec 64) :=
.seq globalBody481_3 globalBody481_4

def globalBody481_6 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mod") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]) globalBody481_5

def globalBody481_7 : Prog (BitVec 64) :=
.seq globalBody481_0 globalBody481_6

def globalBody481_8 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody481_7

def globalBody481_9 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody481_8

def globalData481 : Decl (BitVec 64) :=
.function { name := "op_mod", inline := false, exported := false, params := [], body := globalBody481_9, returnShape := (Flapjack.Shape.one) }
def globalOutput481 := Pancake.PanLang.declToHOL globalData481
end InitECandidate.Proofs.FrontendStages.Declarations
