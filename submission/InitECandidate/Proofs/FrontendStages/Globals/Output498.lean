import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data498
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate482
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody498_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def globalBody498_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody498_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody498_3 : Prog (BitVec 64) :=
.seq globalBody498_1 globalBody498_2

def globalBody498_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody498_5 : Prog (BitVec 64) :=
.seq globalBody498_3 globalBody498_4

def globalBody498_6 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_shl") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "n"]) globalBody498_5

def globalBody498_7 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "sh"]) globalBody498_6

def globalBody498_8 : Prog (BitVec 64) :=
.seq globalBody498_0 globalBody498_7

def globalBody498_9 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody498_8

def globalBody498_10 : Prog (BitVec 64) :=
.decCall ("sh") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody498_9

def globalData498 : Decl (BitVec 64) :=
.function { name := "op_shl", inline := false, exported := false, params := [], body := globalBody498_10, returnShape := (Flapjack.Shape.one) }
def globalOutput498 := Pancake.PanLang.declToHOL globalData498
end InitECandidate.Proofs.FrontendStages.Declarations
