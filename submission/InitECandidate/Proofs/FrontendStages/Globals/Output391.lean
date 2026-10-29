import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data391
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate375
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody391_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "destroy_storage" [Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def globalBody391_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_account"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 1#64]

def globalBody391_2 : Prog (BitVec 64) :=
.seq globalBody391_0 globalBody391_1

def globalBody391_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody391_4 : Prog (BitVec 64) :=
.seq globalBody391_2 globalBody391_3

def globalData391 : Decl (BitVec 64) :=
.function { name := "destroy_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody391_4, returnShape := (Flapjack.Shape.one) }
def globalOutput391 := Pancake.PanLang.declToHOL globalData391
end InitECandidate.Proofs.FrontendStages.Declarations
