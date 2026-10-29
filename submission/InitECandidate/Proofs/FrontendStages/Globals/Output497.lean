import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data497
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate481
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody497_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def globalBody497_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody497_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody497_3 : Prog (BitVec 64) :=
.seq globalBody497_1 globalBody497_2

def globalBody497_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody497_5 : Prog (BitVec 64) :=
.seq globalBody497_3 globalBody497_4

def globalBody497_6 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("u256_byte") ([Flapjack.Exp.var Flapjack.VarKind.local "iw", Flapjack.Exp.var Flapjack.VarKind.local "x"]) globalBody497_5

def globalBody497_7 : Prog (BitVec 64) :=
.decCall ("iw") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody497_6

def globalBody497_8 : Prog (BitVec 64) :=
.seq globalBody497_0 globalBody497_7

def globalBody497_9 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody497_8

def globalBody497_10 : Prog (BitVec 64) :=
.decCall ("i") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody497_9

def globalData497 : Decl (BitVec 64) :=
.function { name := "op_byte", inline := false, exported := false, params := [], body := globalBody497_10, returnShape := (Flapjack.Shape.one) }
def globalOutput497 := Pancake.PanLang.declToHOL globalData497
end InitECandidate.Proofs.FrontendStages.Declarations
