import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data490
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate474
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody490_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def globalBody490_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_bool" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody490_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody490_3 : Prog (BitVec 64) :=
.seq globalBody490_1 globalBody490_2

def globalBody490_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody490_5 : Prog (BitVec 64) :=
.seq globalBody490_3 globalBody490_4

def globalBody490_6 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("u256_sgt") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]) globalBody490_5

def globalBody490_7 : Prog (BitVec 64) :=
.seq globalBody490_0 globalBody490_6

def globalBody490_8 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody490_7

def globalBody490_9 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody490_8

def globalData490 : Decl (BitVec 64) :=
.function { name := "op_sgt", inline := false, exported := false, params := [], body := globalBody490_9, returnShape := (Flapjack.Shape.one) }
def globalOutput490 := Pancake.PanLang.declToHOL globalData490
end InitECandidate.Proofs.FrontendStages.Declarations
