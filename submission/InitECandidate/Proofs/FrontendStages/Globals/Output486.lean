import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data486
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate470
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody486_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 5#64]

def globalBody486_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody486_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody486_3 : Prog (BitVec 64) :=
.seq globalBody486_1 globalBody486_2

def globalBody486_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody486_5 : Prog (BitVec 64) :=
.seq globalBody486_3 globalBody486_4

def globalBody486_6 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_signextend") ([Flapjack.Exp.var Flapjack.VarKind.local "bw", Flapjack.Exp.var Flapjack.VarKind.local "x"]) globalBody486_5

def globalBody486_7 : Prog (BitVec 64) :=
.decCall ("bw") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody486_6

def globalBody486_8 : Prog (BitVec 64) :=
.seq globalBody486_0 globalBody486_7

def globalBody486_9 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody486_8

def globalBody486_10 : Prog (BitVec 64) :=
.decCall ("b") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody486_9

def globalData486 : Decl (BitVec 64) :=
.function { name := "op_signextend", inline := false, exported := false, params := [], body := globalBody486_10, returnShape := (Flapjack.Shape.one) }
def globalOutput486 := Pancake.PanLang.declToHOL globalData486
end InitECandidate.Proofs.FrontendStages.Declarations
