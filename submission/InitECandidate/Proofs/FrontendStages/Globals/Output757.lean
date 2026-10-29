import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data757
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate741
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody757_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_pow_absx"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody757_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_conj"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody757_2 : Prog (BitVec 64) :=
.seq globalBody757_0 globalBody757_1

def globalBody757_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody757_4 : Prog (BitVec 64) :=
.seq globalBody757_2 globalBody757_3

def globalData757 : Decl (BitVec 64) :=
.function { name := "fp12_exp_x", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := globalBody757_4, returnShape := (Flapjack.Shape.one) }
def globalOutput757 := Pancake.PanLang.declToHOL globalData757
end InitECandidate.Proofs.FrontendStages.Declarations
